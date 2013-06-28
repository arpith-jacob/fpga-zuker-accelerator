
-- File: pe_init_fsm.vhd
-- Date: 10 October 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      FSM to initialize processing element in array.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.zuker_pkg.all;
use work.energy_pkg.all;

entity pe_init_fsm is
  port (
    clk                  : in  sl;
    reset                : in  sl;

    -- INPUTS
    in_sequence          : in  RESIDUE_ARRAY;
    in_start             : in  sl;

    -- array is busy
    wait_upstrm          : out sl;

    --
    -- INITIALIZATION
    --
    -- input control signals
    j_m_i_le_2           : out sl;
    j_m_i_le_3           : out sl;
    j_m_i_le_4           : out sl;
    j_m_i_le_5_pe1       : out sl;
    j_m_i_le_5_pe2       : out sl;
    j_m_i_le_6           : out sl;

    size                 : out slv (HAIRPIN_SIZE_WIDTH-1 downto 0);

    -- sequence characters: initialization input
    init_PA              : out sl;
    initial_PA           : out slv(RESIDUE_WIDTH-1 downto 0);
    init_PB              : out sl;
    initial_PB           : out slv(RESIDUE_WIDTH-1 downto 0);

    k_eq_j_m_i_m_2       : out sl;
    k_eq_j_m_i_div_2     : out sl;
    k2_eq_j_m_i          : out sl;

    -- when high, PE 1 is sending out a matrix cell value
    matrix_vld           : out sl;
    -- reset store for matrix cell values: high before starting computation
    matrix_reset         : out sl
  );
end entity pe_init_fsm;

architecture top_level of pe_init_fsm is

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

  type input_states is (idle, preface_A, preface_B, preface_C, preface_D,
                        preface_E, run, epilogue);

  signal state                    : input_states;
  signal next_state               : input_states;

  -- store sequence data internally
  signal int_seqdata              : RESIDUE_ARRAY;

  -- internal size value
  signal int_size1                : slv (HAIRPIN_SIZE_WIDTH-1 downto 0);
  signal int_size2                : slv (HAIRPIN_SIZE_WIDTH-1 downto 0);
  signal int_size_state           : sl;

  -- count up to N, the sequence length
  signal counter                  : slv(15 downto 0);

  signal border_init_in           : slv(0 downto 0);
  signal border1_init_out         : slv(0 downto 0);
  signal border2_init_out         : slv(0 downto 0);
  signal border3_init_out         : slv(0 downto 0);
  signal border4_init_out         : slv(0 downto 0);
  signal border5_init_out         : slv(0 downto 0);
  signal border6_init_out         : slv(0 downto 0);
  signal border7_init_out         : slv(0 downto 0);
  signal border8_init_out         : slv(0 downto 0);

  -- valid signal to track matrix cell values
  signal cell_vld                 : slv((SEQ_LEN-3)*3-1 downto 0);
  signal cell_high                : sl;

  -- wait upstream signals
  signal wait_upstrm_int          : sl;

  -- internal output signals
  signal ifsm_init_PA             : sl;
  signal ifsm_initial_PA          : slv(RESIDUE_WIDTH-1 downto 0);
  signal ifsm_init_PB             : sl;
  signal ifsm_initial_PB          : slv(RESIDUE_WIDTH-1 downto 0);

  signal ifsm_k_eq_j_m_i_m_2      : sl;
  signal ifsm_k_eq_j_m_i_div_2    : sl;
  signal ifsm_k2_eq_j_m_i         : sl;

  signal ifsm_j_m_i_le_2          : sl;
  signal ifsm_j_m_i_le_3          : sl;
  signal ifsm_j_m_i_le_4          : sl;
  signal ifsm_j_m_i_le_5_pe1      : sl;
  signal ifsm_j_m_i_le_5_pe2      : sl;
  signal ifsm_j_m_i_le_6          : sl;

  signal ifsm_size_reset          : sl;
  signal ifsm_size_state_reset    : sl;

  signal ifsm_matrix_reset        : sl;

  -----------------------------------------------------------------------------
  -- Register output to improve timing (esp. size, so that the hairpin energy
  -- computation can be retimed)
  -----------------------------------------------------------------------------

  signal j_m_i_le_2_reg           : sl;
  signal j_m_i_le_3_reg           : sl;
  signal j_m_i_le_4_reg           : sl;
  signal j_m_i_le_5_reg_pe1       : sl;
  signal j_m_i_le_5_reg_pe2       : sl;
  signal j_m_i_le_6_reg           : sl;

  signal init_PA_reg              : sl;
  signal initial_PA_reg           : slv(RESIDUE_WIDTH-1 downto 0);
  signal init_PB_reg              : sl;
  signal initial_PB_reg           : slv(RESIDUE_WIDTH-1 downto 0);

  signal k_eq_j_m_i_m_2_reg       : sl;
  signal k_eq_j_m_i_div_2_reg     : sl;
  signal k2_eq_j_m_i_reg          : sl;

  signal matrix_vld_reg           : sl;
  signal matrix_reset_reg         : sl;

  signal matrix_vld_reg2          : sl;
  signal matrix_reset_reg2        : sl;

  signal cell_high_reg            : sl;

begin

  -- control pipeline for j - i = 0 condition.
  -- we need to initialize a border PE on j - i = 0 line every
  -- N-2 clocks, when the schedule is Nj - 2i - k.
  delay_init_border1 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => SEQ_LEN-2,  -- delay = SEQ_LEN - 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border_init_in,
      dout           => border1_init_out
      );

  -- control pipeline for j - i = 1 condition.
  -- we need to initialize a border PE on j - i = 1 line every
  -- according to the schedule, this is two clocks after the j - i = 0.
  delay_init_border2 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border1_init_out,
      dout           => border2_init_out
      );

  -- control pipeline for j - i = 2 condition.
  -- we need to initialize a border PE on j - i = 2 line every
  -- according to the schedule, this is two clocks after the j - i = 1.
  delay_init_border3 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border2_init_out,
      dout           => border3_init_out
      );

  -- control pipeline for j - i = 3 condition.
  -- we need to initialize a border PE on j - i = 3 line.
  -- according to the schedule, this is two clocks after the j - i = 2.
  delay_init_border4 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border3_init_out,
      dout           => border4_init_out
      );

  -- control pipeline for j - i = 4 condition.
  -- we need to initialize a border PE on j - i = 4 line.
  -- according to the schedule, this is two clocks after the j - i = 3.
  delay_init_border5 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border4_init_out,
      dout           => border5_init_out
      );

  -- control pipeline for j - i = 5 condition and k = 2.
  -- we need to initialize a border PE on j - i = 5 line and k = 2.
  -- according to the schedule, this is ONE clock after the j - i = 4 at k = 1.
  delay_init_border6 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 1,  -- delay = 1
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border5_init_out,
      dout           => border6_init_out
      );

  -- control pipeline for j - i = 5 condition and k = 1.
  -- we need to initialize a border PE on j - i = 5 line and k = 1.
  -- according to the schedule, this is two clocks after the j - i = 4 at k = 1.
  delay_init_border7 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border5_init_out,
      dout           => border7_init_out
      );

  -- control pipeline for j - i = 6 condition and k = 1.
  -- we need to initialize a border PE on j - i = 6 line and k = 1.
  -- according to the schedule, this is two clocks after the j - i = 5 at k = 1.
  delay_init_border8 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => border7_init_out,
      dout           => border8_init_out
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
  set_next_state: process (state, in_start, counter, border8_init_out)
  begin 
    next_state <= state;

    case state is
      when idle =>
        if in_start = '1' then
          next_state <= preface_A;
        end if;

      when preface_A =>
        next_state <= preface_B;

      when preface_B =>
        next_state <= preface_C;

      when preface_C =>
        next_state <= preface_D;

      when preface_D =>
        next_state <= preface_E;

      when preface_E =>
        next_state <= run;

      when run =>
        if counter = conv_std_logic_vector(SEQ_LEN - 1, 16) then
          next_state <= epilogue;
        end if;

      when epilogue =>
        if counter = conv_std_logic_vector(SEQ_LEN, 16) and
             border8_init_out(0) = '1' then
          next_state <= idle;
        end if;

    end case;
  end process set_next_state;
  
  reg_inputs: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        -- not resetting int_seqdata

        counter       <= (others => '0');
      else

        case state is
          when idle =>
            if in_start = '1' then
              int_seqdata <= in_sequence;
            end if;

          when preface_A =>

          when preface_B =>

          when preface_C =>

          when preface_D =>

          when preface_E =>
            counter         <= x"0003";

            -- shift down next sequence character
            for i in 1 to SEQ_LEN-1 loop
              int_seqdata(i)   <= int_seqdata(i+1);
            end loop;
            int_seqdata(SEQ_LEN) <= "100";  -- add invalid character

          when run =>
            if border4_init_out(0) = '1' then
              counter            <= counter + 1;

              -- shift down next sequence character
              for i in 1 to SEQ_LEN-1 loop
                int_seqdata(i)   <= int_seqdata(i+1);
              end loop;
              int_seqdata(SEQ_LEN) <= "100";  -- add invalid character
            end if;

          when epilogue =>
            if border4_init_out(0) = '1' then
              counter            <= counter + 1;

              -- shift down next sequence character
              for i in 1 to SEQ_LEN-1 loop
                int_seqdata(i)   <= int_seqdata(i+1);
              end loop;
              int_seqdata(SEQ_LEN) <= "100";  -- add invalid character
            end if;

          when others => null;
                         
        end case;        
      end if; -- end reset 
    end if;  -- end rising_edge
  end process reg_inputs;

  -----------------------------------------------------------------------------
  -- Process to handle combinational signals for the output FSM
  -----------------------------------------------------------------------------
  output_comb: process (state, int_seqdata,
                        in_start, border1_init_out, border2_init_out, 
                        border3_init_out, border4_init_out,
                        border5_init_out, border6_init_out, border7_init_out,
                        border8_init_out)
  begin  -- process set_outputs

    ifsm_j_m_i_le_2          <= '0';
    ifsm_j_m_i_le_3          <= '0';
    ifsm_j_m_i_le_4          <= '0';
    ifsm_j_m_i_le_5_pe1      <= '0';
    ifsm_j_m_i_le_5_pe2      <= '0';
    ifsm_j_m_i_le_6          <= '0';

    ifsm_init_PA             <= '0';
    ifsm_initial_PA          <= (others => '0');
    ifsm_init_PB             <= '0';
    ifsm_initial_PB          <= (others => '0');

    ifsm_k_eq_j_m_i_m_2      <= '0';
    ifsm_k_eq_j_m_i_div_2    <= '0';
    ifsm_k2_eq_j_m_i         <= '0';

    ifsm_size_reset          <= '0';
    ifsm_size_state_reset    <= '0';

    cell_high                <= '0';

    wait_upstrm_int          <= '0';

    border_init_in(0)        <= '0';

    ifsm_matrix_reset        <= '0';

    case state is
      when idle =>
        if in_start = '1' then
          wait_upstrm_int          <= '1';
        end if;

      when preface_A =>
        wait_upstrm_int            <= '1';

        border_init_in(0)          <= '1';

      when preface_B =>
        wait_upstrm_int            <= '1';

      when preface_C =>
        wait_upstrm_int            <= '1';

      when preface_D =>
        wait_upstrm_int            <= '1';

      when preface_E =>
        wait_upstrm_int            <= '1';
        -- array starts sending out values one clock after preface
        -- and continues 
        cell_high                  <= '1';

        -- compute row j - i = 2
        ifsm_j_m_i_le_2            <= '1';
        ifsm_j_m_i_le_3            <= '1';
        ifsm_j_m_i_le_4            <= '1';
        ifsm_j_m_i_le_5_pe1        <= '1';
        ifsm_j_m_i_le_6            <= '1';

        ifsm_init_PA               <= '1';
        ifsm_initial_PA            <= int_seqdata(1);

        ifsm_init_PB               <= '1';
        ifsm_initial_PB            <= int_seqdata(3);

        ifsm_k_eq_j_m_i_div_2      <= '1';
        ifsm_k2_eq_j_m_i           <= '1';

        ifsm_size_reset            <= '1';
        ifsm_size_state_reset      <= '1';

        -- reset matrix store
        ifsm_matrix_reset          <= '1';


      when run =>
        wait_upstrm_int            <= '1';
        cell_high                  <= '1';

        if border1_init_out(0) = '1' then
          ifsm_j_m_i_le_2          <= '1';
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_init_PA             <= '1';
          ifsm_initial_PA          <= int_seqdata(3);

          border_init_in(0)        <= '1';
        end if;

        if border2_init_out(0) = '1' then
          ifsm_j_m_i_le_2          <= '1';
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_init_PA             <= '1';
          ifsm_initial_PA          <= int_seqdata(2);
        end if;

        if border3_init_out(0) = '1' then
          ifsm_j_m_i_le_2          <= '1';
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_init_PA             <= '1';
          ifsm_initial_PA          <= int_seqdata(1);

          ifsm_init_PB             <= '1';
          ifsm_initial_PB          <= int_seqdata(3);

          ifsm_k_eq_j_m_i_div_2    <= '1';
          ifsm_k2_eq_j_m_i         <= '1';

          ifsm_size_reset          <= '1';
        end if;

        if border4_init_out(0) = '1' then
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_k_eq_j_m_i_div_2    <= '1';
          ifsm_k2_eq_j_m_i         <= '0';

          -- k = 1 = j - i - 2 = 3 - 2
          ifsm_k_eq_j_m_i_m_2      <= '1';
        end if;

        if border5_init_out(0) = '1' then
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';
        end if;

        if border6_init_out(0) = '1' then
          ifsm_j_m_i_le_5_pe2      <= '1';
        end if;

        if border7_init_out(0) = '1' then
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';
        end if;

        if border8_init_out(0) = '1' then
          ifsm_j_m_i_le_6          <= '1';
        end if;

      when epilogue =>
        wait_upstrm_int            <= '1';
        cell_high                  <= '1';

        if border1_init_out(0) = '1' then
          ifsm_j_m_i_le_2          <= '1';
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_init_PA             <= '1';
          ifsm_initial_PA          <= int_seqdata(3);

          border_init_in(0)        <= '1';
        end if;

        if border2_init_out(0) = '1' then
          ifsm_j_m_i_le_2          <= '1';
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_init_PA             <= '1';
          ifsm_initial_PA          <= int_seqdata(2);
        end if;

        if border3_init_out(0) = '1' then
          ifsm_j_m_i_le_2          <= '1';
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_init_PA             <= '1';
          ifsm_initial_PA          <= int_seqdata(1);

          ifsm_init_PB             <= '1';
          ifsm_initial_PB          <= int_seqdata(3);

          ifsm_k_eq_j_m_i_div_2    <= '1';
          ifsm_k2_eq_j_m_i         <= '1';

          ifsm_size_reset          <= '1';
        end if;

        if border4_init_out(0) = '1' then
          ifsm_j_m_i_le_3          <= '1';
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';

          ifsm_k_eq_j_m_i_div_2    <= '1';
          ifsm_k2_eq_j_m_i         <= '0';

          -- k = 1 = j - i - 2 = 3 - 2
          ifsm_k_eq_j_m_i_m_2      <= '1';
        end if;

        if border5_init_out(0) = '1' then
          ifsm_j_m_i_le_4          <= '1';
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';
        end if;

        if border6_init_out(0) = '1' then
          ifsm_j_m_i_le_5_pe2      <= '1';
        end if;

        if border7_init_out(0) = '1' then
          ifsm_j_m_i_le_5_pe1      <= '1';
          ifsm_j_m_i_le_6          <= '1';
        end if;

        if border8_init_out(0) = '1' then
          ifsm_j_m_i_le_6          <= '1';
        end if;

    end case;
  end process output_comb;

  reg_outputs: process (clk)
  begin  -- process set_outputs
    if rising_edge(clk) then 
      if reset = '1' then
        j_m_i_le_2_reg       <= '0';
        j_m_i_le_3_reg       <= '0';
        j_m_i_le_4_reg       <= '0';
        j_m_i_le_5_reg_pe1   <= '0';
        j_m_i_le_5_reg_pe2   <= '0';
        j_m_i_le_6_reg       <= '0';

        init_PA_reg          <= '0';
        initial_PA_reg       <= (others => '0');
        init_PB_reg          <= '0';
        initial_PB_reg       <= (others => '0');

        k_eq_j_m_i_m_2_reg   <= '0';
        k_eq_j_m_i_div_2_reg <= '0';
        k2_eq_j_m_i_reg      <= '0';

        matrix_reset_reg     <= '0';
        matrix_reset_reg2    <= '0';

        matrix_vld_reg       <= '0';
        matrix_vld_reg2      <= '0';

        j_m_i_le_2           <= '0';
        j_m_i_le_3           <= '0';
        j_m_i_le_4           <= '0';
        j_m_i_le_5_pe1       <= '0';
        j_m_i_le_5_pe2       <= '0';
        j_m_i_le_6           <= '0';

        j_m_i_le_3_reg       <= '0';

        init_PA              <= '0';
        initial_PA           <= (others => '0');
        init_PB              <= '0';
        initial_PB           <= (others => '0');

        k_eq_j_m_i_m_2       <= '0';
        k_eq_j_m_i_div_2     <= '0';
        k2_eq_j_m_i          <= '0';

        int_size1            <= (others => '0');
        int_size2            <= (others => '0');
        int_size_state       <= '0';

        cell_high_reg        <= '0';
        cell_vld             <= (others => '0');

        matrix_reset         <= '0';
        matrix_vld           <= '0';
      else
        -- reset the state for size values
        if ifsm_size_state_reset = '1' then
          int_size_state     <= '1';
        else
          int_size_state     <= not int_size_state;
        end if;

        -- track size values for the two columns being computed
        if int_size_state = '0' or ifsm_size_state_reset = '1' then
          if ifsm_size_reset = '1' then
            int_size1        <= x"01";
          else
            int_size1        <= int_size1 + 1;
          end if;

          int_size2          <= int_size2;
        else
          int_size1          <= int_size1;

          if ifsm_size_reset = '1' then
            int_size2        <= x"01";
          else
            int_size2        <= int_size2 + 1;
          end if;
        end if;

        ----------------------------------------------------------------------------
        -- Register output to improve timing (esp. size, so that the hairpin energy
        -- computation can be retimed)
        ----------------------------------------------------------------------------
        j_m_i_le_2_reg       <= ifsm_j_m_i_le_2;
        j_m_i_le_3_reg       <= ifsm_j_m_i_le_3;
        j_m_i_le_4_reg       <= ifsm_j_m_i_le_4;
        j_m_i_le_5_reg_pe1   <= ifsm_j_m_i_le_5_pe1;
        j_m_i_le_5_reg_pe2   <= ifsm_j_m_i_le_5_pe2 or j_m_i_le_3_reg;
        j_m_i_le_6_reg       <= ifsm_j_m_i_le_6;

        init_PA_reg          <= ifsm_init_PA;
        initial_PA_reg       <= ifsm_initial_PA;
        init_PB_reg          <= ifsm_init_PB;
        initial_PB_reg       <= ifsm_initial_PB;

        k_eq_j_m_i_m_2_reg   <= ifsm_k_eq_j_m_i_m_2;
        k_eq_j_m_i_div_2_reg <= ifsm_k_eq_j_m_i_div_2;
        k2_eq_j_m_i_reg      <= ifsm_k2_eq_j_m_i;

        matrix_reset_reg     <= ifsm_matrix_reset;

        cell_high_reg        <= cell_high;

        if cell_vld /= 0 then
          matrix_vld_reg     <= '1';
        else
          matrix_vld_reg     <= '0';
        end if;

        ----------------------------------------------------------------------------
        -- Send output
        ----------------------------------------------------------------------------
        -- control signals to initialize PE 1
        j_m_i_le_2           <= j_m_i_le_2_reg;
        j_m_i_le_3           <= j_m_i_le_3_reg;
        j_m_i_le_4           <= j_m_i_le_4_reg;
        j_m_i_le_5_pe1       <= j_m_i_le_5_reg_pe1;
        j_m_i_le_6           <= j_m_i_le_6_reg;

        -- control signals to initialize PE 2
        j_m_i_le_5_pe2       <= j_m_i_le_5_reg_pe2;

        -- send sequence data
        init_PA              <= init_PA_reg;
        initial_PA           <= initial_PA_reg;
        init_PB              <= init_PB_reg;
        initial_PB           <= initial_PB_reg;

        -- initialization for control pipelines at PE 1
        k_eq_j_m_i_m_2       <= k_eq_j_m_i_m_2_reg;
        k_eq_j_m_i_div_2     <= k_eq_j_m_i_div_2_reg;
        k2_eq_j_m_i          <= k2_eq_j_m_i_reg;

        if int_size_state = '1' then
          size               <= int_size1;
        else
          size               <= int_size2;
        end if;

        -- reset matrix store
        -- registered to keep in sync with UZ_F module
        matrix_reset_reg2    <= matrix_reset_reg;
        matrix_reset         <= matrix_reset_reg2;

        -- track when last matrix cell value is computed
        cell_vld             <= cell_high_reg & cell_vld(cell_vld'high downto 1);

        matrix_vld_reg2      <= matrix_vld_reg;
        matrix_vld           <= matrix_vld_reg2;
      end if;
    end if;
  end process reg_outputs;

  -- wait when array is busy computing matrix
  wait_upstrm   <= '1' when cell_vld /= 0 else wait_upstrm_int;

end architecture top_level;
