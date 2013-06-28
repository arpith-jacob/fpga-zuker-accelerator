
-- File: min_energy.vhd
-- Date: 25 November 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Module to compute minimum free energy from V matrix values.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

use ieee.std_logic_textio.all;
use std.textio.all;

library work;
use work.zuker_pkg.all;
use work.energy_pkg.all;

entity min_energy is
  port (
    clk                : in  sl;
    reset              : in  sl;

    -- INPUTS
    in_matrix_reset    : in  sl;

    in_matrix_cell     : in  slv(CELL_WIDTH-1 downto 0);
    in_UZ_V1_i_j_k     : in  slv (CELL_WIDTH-1 downto 0);
    in_UZ_V2_i_j_k     : in  slv (CELL_WIDTH-1 downto 0);
    in_matrix_vld      : in  sl;

    out_matrix_cell    : out slv(CELL_WIDTH-1 downto 0);
    out_matrix_vld     : out sl
  );
end entity min_energy;

architecture top_level of min_energy is

  component delay_pipe is
    generic (
      DATA_WIDTH     : natural := 1;
      DELAY_STATES   : natural := 1;
      NEEDS_RESET    : boolean := true;

      -- When needs reset=true, True: set all vals to 1, else 0
      RESET_VAL_HIGH : boolean := false
      );
    port (
      clk   : in  sl;
      reset : in  sl;
      din   : in  slv (DATA_WIDTH-1 downto 0);
      dout  : out slv (DATA_WIDTH-1 downto 0)
      );
  end component;

  component matrix_store is
    port (
      clka  : in sl;
      wea   : in slv ( 0 downto 0 ); 
      addra : in slv ( 9 downto 0 ); 
      dina  : in slv ( 17 downto 0 );

      clkb  : in sl;
      addrb : in slv ( 9 downto 0 ); 
      doutb : out slv ( 17 downto 0 )
    );
  end component;

  signal wr_en            : slv (0 downto 0);
  signal addr_wr          : slv (9 downto 0);
  signal data_wr1         : slv (17 downto 0);
  signal data_wr2         : slv (17 downto 0);
  signal data_wr3         : slv (17 downto 0);

  signal addr_rd          : slv (9 downto 0);
  signal data_rd1         : slv (17 downto 0);
  signal data_rd2         : slv (17 downto 0);
  signal data_rd3         : slv (17 downto 0);

  signal data_vld         : sl;
  signal data_vld_1       : sl;
  signal data_vld_2       : sl;
  signal data_vld_3       : sl;

  type input_states is (idle, preface1, preface2, preface3, preface4, 
                        run, send_score, pause);

  signal state            : input_states;
  signal next_state       : input_states;

  signal base_addr        : slv (9 downto 0);
  signal base_count       : slv (15 downto 0);
  signal rd_count         : slv (15 downto 0);

  signal init_ctrl_in     : slv (0 downto 0);
  signal init_ctrl_out    : slv (0 downto 0);

  -- signals to compute minimum free energy
  signal UZ_F_wr_en       : slv (0 downto 0);
  signal UZ_F_addr_wr     : slv (9 downto 0);
  signal UZ_F_data_wr     : slv (17 downto 0);
  signal UZ_F_addr_rd     : slv (9 downto 0);
  signal UZ_F_addr_rd_reg : slv (9 downto 0);
  signal UZ_F_data_rd     : slv (17 downto 0);
  signal UZ_F_data_rd_1   : slv (17 downto 0);

  signal V_in_1           : slv (CELL_WIDTH-1 downto 0);
  signal V_in_2           : slv (CELL_WIDTH-1 downto 0);

  signal comb_UZ_F        : slv (CELL_WIDTH-1 downto 0);
  signal UZ_F             : slv (CELL_WIDTH-1 downto 0);
  signal comb_energy1     : slv (CELL_WIDTH-1 downto 0);
  signal comb_energy2     : slv (CELL_WIDTH-1 downto 0);
  signal comb_energy      : slv (CELL_WIDTH-1 downto 0);
  signal e1_lt_e2         : sl;
  signal energy           : slv (CELL_WIDTH-1 downto 0);

  signal UZ_F_lt_energy   : sl;
  signal UZ_F_min_energy  : slv (CELL_WIDTH-1 downto 0);

  file out_file  : text open write_mode is "debug.txt";
  file out_file2 : text open write_mode is "debug2.txt";

begin

  -- memory to store matrix values
  -- PE 1 of the linear zuker array sends matrix values as they are computed
  -- They must be read out in reverse column order
  matrix1 : matrix_store
    port map (
      clka  => clk,
      wea   => wr_en,
      addra => addr_wr,
      dina  => data_wr1,

      clkb  => clk,
      addrb => addr_rd,
      doutb => data_rd1
    );

  matrix2 : matrix_store
    port map (
      clka  => clk,
      wea   => wr_en,
      addra => addr_wr,
      dina  => data_wr2,

      clkb  => clk,
      addrb => addr_rd,
      doutb => data_rd2
    );

  matrix3 : matrix_store
    port map (
      clka  => clk,
      wea   => wr_en,
      addra => addr_wr,
      dina  => data_wr3,

      clkb  => clk,
      addrb => addr_rd,
      doutb => data_rd3
    );

  matrix_wr_control : process (clk)
  begin
    if rising_edge(clk) then 
      if reset = '1' then
        V_in_1     <= (others => '0');
        V_in_2     <= (others => '0');

        wr_en      <= (others => '0');
        addr_wr    <= (others => '0');

        data_wr1   <= (others => '0');
        data_wr2   <= (others => '0');
        data_wr3   <= (others => '0');
      else
        V_in_1     <= in_matrix_cell;
        V_in_2     <= V_in_1;

        -- write matrix cell value into memory
        wr_en(0)   <= in_matrix_vld;

        if in_matrix_reset = '1' then
          -- reset write address
          addr_wr  <= (others => '1');
        elsif in_matrix_vld = '1' then
          -- increment write address
          addr_wr  <= addr_wr + 1;
        else
          -- keep old address
          addr_wr  <= addr_wr;
        end if;

        -- send data
        data_wr1   <= "00" & V_in_2;
        data_wr2   <= "00" & in_UZ_V1_i_j_k;
        data_wr3   <= "00" & in_UZ_V2_i_j_k;
      end if;
    end if;
  end process matrix_wr_control;

  -- control pipeline to determine when a cell 1, j, 1 is computed
  -- we use this to start reading a new column
  -- N clocks, when the schedule is Nj - 2i - k.
  delay_init_border : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => SEQ_LEN - 1,  -- delay = SEQ_LEN
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => init_ctrl_in,
      dout           => init_ctrl_out
      );

  -----------------------------------------------------------------------------
  -- Input FSM state assignment
  -----------------------------------------------------------------------------
  set_curr_state: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        state <= idle;
      else
        state <= next_state;
      end if;
    end if;
  end process set_curr_state;

  -----------------------------------------------------------------------------
  -- Input FSM state transition process
  -----------------------------------------------------------------------------
  set_next_state: process (state, in_matrix_reset, rd_count, base_count,
                           init_ctrl_out)
  begin 
    next_state <= state;

    case state is
      when idle =>
        if in_matrix_reset = '1' then
          next_state <= preface1;
        end if;

      when preface1 =>
        next_state <= preface2;

      when preface2 =>
        next_state <= preface3;

      when preface3 =>
        next_state <= preface4;

      when preface4 =>
        next_state <= run;

      when run =>
        if rd_count <= 1 and
           base_count >= conv_std_logic_vector(SEQ_LEN - 1, 10) then
          next_state <= send_score;
        elsif rd_count <= 1 then
          next_state <= pause;
        end if;

      when send_score =>
        next_state <= idle;

      when pause =>
        if init_ctrl_out(0) = '1' then
          next_state <= run;
        end if;

    end case;
  end process set_next_state;

  reg_V_matrix : process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        base_addr       <= (others => '0');
        base_count      <= (others => '0');

        addr_rd         <= (others => '0');
        rd_count        <= (others => '0');

        init_ctrl_in    <= (others => '0');

        data_vld        <= '0';
        data_vld_1      <= '0';
        data_vld_2      <= '0';
        data_vld_3      <= '0';
      else

        base_addr       <= base_addr;
        base_count      <= base_count;

        addr_rd         <= addr_rd;
        rd_count        <= rd_count;

        init_ctrl_in(0) <= '0';

        -- indicates that the data read from the memory is valid 1 clock
        -- after assertion
        data_vld        <= '0';
        data_vld_1      <= data_vld;
        data_vld_2      <= data_vld_1;
        data_vld_3      <= data_vld_2;

        case state is
          when idle =>
            -- initialize reading
            if in_matrix_reset = '1' then
              -- next address to read
              base_addr     <= conv_std_logic_vector(SEQ_LEN, 10);
              base_count    <= x"0002";

              -- current address to read
              addr_rd       <= (others => '0');
              rd_count      <= x"0001";
            end if;

          when preface1 =>
            null;

          when preface2 =>
            null;

          when preface3 =>
            null;

          when preface4 =>
            init_ctrl_in(0) <= '1';
            data_vld        <= '1';

          when run =>
            rd_count        <= rd_count - 1;
            addr_rd         <= addr_rd - 2;

            -- switch to next column
            if rd_count <= 1 then
              addr_rd       <= base_addr;
              rd_count      <= base_count;

              base_count    <= base_count + 1;
              base_addr     <= base_addr + conv_std_logic_vector(SEQ_LEN, 10);
            else
              data_vld      <= '1';
            end if;

          when send_score =>
            null;

          when pause =>
            if init_ctrl_out(0) = '1' then
              init_ctrl_in(0) <= '1';
              
              -- read the first cell in this column
              data_vld        <= '1';
            end if;

        end case;

      end if; -- end reset 
    end if;  -- end rising_edge
  end process reg_V_matrix;

  -- send outputs
  reg_outputs : process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        out_matrix_vld  <= '0';
        out_matrix_cell <= (others => '0');
      else

        out_matrix_vld  <= '0';
        out_matrix_cell <= (others => '0');

        case state is
          when send_score =>
            -- finished computing minimum score, send it out
            out_matrix_cell <= comb_UZ_F;
            out_matrix_vld  <= '1';

          when others =>
            null;

        end case;

      end if;
    end if;
  end process reg_outputs;

--  out_matrix_cell <= data_rd1(CELL_WIDTH-1 downto 0);
--  out_matrix_vld  <= data_vld_1;

-- synopsys translate_off  
  -- debug process
  debug_it : process
    variable line_out    : LINE;
  begin
    wait until rising_edge(clk);

    if data_vld_1 = '1' then
      hwrite(line_out, data_rd1(CELL_WIDTH-1 downto 0));
      writeline(out_file, line_out);
    end if;

    if UZ_F_wr_en(0) = '1' then
      hwrite(line_out, UZ_F_data_wr(15 downto 0));
      writeline(out_file2, line_out);
    end if;

  end process debug_it;
-- synopsys translate_on


  -----------------------------------------------------------------------------
  -- Compute minimum free energy from V matrix values
  -----------------------------------------------------------------------------

  -- memory to UZ_F matrix values
  UZ_F_matrix : matrix_store
    port map (
      clka  => clk,
      wea   => UZ_F_wr_en,
      addra => UZ_F_addr_wr,
      dina  => UZ_F_data_wr,

      clkb  => clk,
      addrb => UZ_F_addr_rd,
      doutb => UZ_F_data_rd
    );

  comb_energy1    <= UZ_F_data_rd(CELL_WIDTH-1 downto 0) + 
                     data_rd2(CELL_WIDTH-1 downto 0);

  comb_energy2    <= UZ_F_data_rd_1(CELL_WIDTH-1 downto 0) + 
                     data_rd3(CELL_WIDTH-1 downto 0);

  e1_lt_e2        <= '1' when comb_energy1 < comb_energy2 else '0';

  -- if we're processing at i = 1, ignore energy2
  comb_energy     <= comb_energy1 when e1_lt_e2 = '1' or
                                      (data_vld_1 = '1' and data_vld_2 = '0')
                                  else comb_energy2;

  UZ_F_addr_rd    <= UZ_F_addr_rd_reg + 1 when data_vld_3 = '1' else
                     UZ_F_addr_rd_reg;

  reg_energy : process (clk)
  begin
    if rising_edge(clk) then 
      if reset = '1' then
        energy <= (others => '0');
      else
        energy <= comb_energy;
      end if;
    end if;
  end process reg_energy;

  UZ_F_lt_energy  <= '1' when UZ_F < energy else '0';
  UZ_F_min_energy <= UZ_F when UZ_F_lt_energy = '1' else energy;

  comb_UZ_F       <= (others => '0') when in_matrix_reset = '1' else
                     UZ_F_min_energy when data_vld_2 = '1'      else
                     UZ_F;

  reg_UZ : process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        UZ_F_data_rd_1   <= (others => '0');

        UZ_F_addr_rd_reg <= (others => '0');

        UZ_F_data_wr     <= (others => '0');
        UZ_F_addr_wr     <= (others => '0');
        UZ_F_wr_en       <= (others => '0');

        UZ_F             <= (others => '0');
      else
        UZ_F_data_rd_1   <= UZ_F_data_rd;

        UZ_F_wr_en       <= (others => '0');

        if in_matrix_reset = '1' then
          UZ_F           <= (others => '0');
        else
          UZ_F           <= comb_UZ_F;
        end if;

        if in_matrix_reset = '1' then
          UZ_F_addr_rd_reg <= (others => '0');
        elsif data_vld_3 = '1' and data_vld_2 = '0' then
          UZ_F_addr_rd_reg <= (others => '0');
        else
          UZ_F_addr_rd_reg <= UZ_F_addr_rd;
        end if;

        if in_matrix_reset = '1' then
          -- store the first row i = 0
          UZ_F_wr_en(0) <= '1';
          UZ_F_addr_wr  <= (others => '0');
          UZ_F_data_wr  <= (others => '0');
        elsif data_vld_2 = '1' and data_vld_1 = '0' then
          -- done with this column, now store UZ_F for this column
          UZ_F_wr_en(0) <= '1';

          UZ_F_data_wr  <= "00" & comb_UZ_F;
          UZ_F_addr_wr  <= UZ_F_addr_wr + 1;
        end if;

      end if; -- end reset 
    end if;  -- end rising_edge
  end process reg_UZ;

end architecture top_level;
