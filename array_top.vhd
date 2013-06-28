
-- File: array_top.vhd
-- Date: 13 Mar 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--
--  The top level accepts query sequences to send to the zuker array.
--  Command xx - returns information on compile time constants for the zuker
--               array.
--  Command xx - Start of Queries.  Prepare state machine to accept RNA
--               sequences.  Each base is 3 bits (111 - invalid base). 
--               Up to 21 bases are transfered in a single clock.  Sequences
--               end with a '1' at bit 64.
--               Once all sequences have been transfered, command EF is sent.
--
--               Accepts multiple sequences to send them to multiple
--               arrays.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.zuker_pkg.all;

entity array_top is
  port (
    clk            : in  sl;
    clk_array      : in  sl;
    reset          : in  sl;
    reset_array    : in  sl;

    module_id      : in  slv(5 downto 0) := "000011";

    -- module chain bus signals
    data_in        : in  slv(63 downto 0);
    data_cnt_in    : in  slv(2 downto 0);
    ctrl_vld_in    : in  sl;
    data_vld_in    : in  sl;
    wait_dnstrm    : in  sl;

    data_out       : out slv(63 downto 0);
    data_cnt_out   : out slv(2 downto 0);
    ctrl_vld_out   : out sl;
    data_vld_out   : out sl;
    wait_upstrm    : out sl
  );
end entity array_top;

architecture top_level of array_top is

  constant MODULE_NAME : std_logic_vector(23 downto 0) := x"4C494B";   -- LIK

  type input_states is (run, read_sequence, reset_module, flush,
                        send_ef, send_ver, send_cmd
                        );

  signal state           : input_states;
  signal next_state      : input_states;

  -- registered module input signals (from inputBuf.v)
  signal data_in_reg     : slv(63 downto 0);
  signal ctrl_vld_in_reg : sl;
  signal data_vld_in_reg : sl;
  signal data_cnt_in_reg : slv(2 downto 0);

  -- input FSM signals, used for output
  signal ifsm_data_vld   : sl;
  signal ifsm_data_cnt   : slv(2 downto 0);
  signal ifsm_ctrl_vld   : sl;
  signal ifsm_data       : slv(63 downto 0);
  signal command_buff_reg: slv(63 downto 0);
  signal ifsm_busy       : sl;
  signal wait2inbuf      : sl;

  -- internal FSM signals
  signal reset_cmd       : sl;
  signal reset_mod       : sl;
  signal passthru_mode   : sl;

  component inputbuffer
    port (
      clk          : in  sl;
      reset        : in  sl;
      data_in      : in  slv(63 downto 0);
      data_cnt_in  : in  slv(2 downto 0);
      data_vld_in  : in  sl;
      ctrl_vld_in  : in  sl;
      wait_dn      : in  sl;
      data_out     : out slv(63 downto 0);
      data_cnt_out : out slv(2 downto 0);
      data_vld_out : out sl;
      ctrl_vld_out : out sl;
      wait_up      : out sl  
    );
  end component;

  component multiple_arrays
    port (
      clk              : in  sl;
      clk_array        : in  sl;

      reset            : in  sl;
      reset_array      : in  sl;

      sequence_word    : in  slv(63 downto 0);
      sequence_vld     : in  sl;

      wait_dnstrm      : in  sl;

      wait_upstrm      : out sl;

      score            : out slv(31 downto 0);
      score_vld        : out sl
    );
  end component;

  -- sequence id
  signal sequence_id_in     : slv(31 downto 0);
  signal sequence_word      : slv(63 downto 0);
  signal sequence_vld       : sl;

  -- zuker array wait from all units
  signal array_wait         : sl;

  signal sequence_id        : slv(31 downto 0);
  signal sequence_score     : slv(31 downto 0);
  signal score_vld          : sl;

begin

  -- reset signal
  reset_mod  <= reset or reset_cmd;

  -- wait to input buffer
  wait2inbuf <= ifsm_busy or wait_dnstrm or array_wait;

  -- buffer module chain input
  in_buff1 : inputbuffer
    port map (
      clk          => clk,
      reset        => reset,
      data_in      => data_in,
      data_cnt_in  => data_cnt_in,
      data_vld_in  => data_vld_in,
      ctrl_vld_in  => ctrl_vld_in,
      wait_dn      => wait2inbuf,
      data_out     => data_in_reg,
      data_cnt_out => data_cnt_in_reg,
      data_vld_out => data_vld_in_reg,
      ctrl_vld_out => ctrl_vld_in_reg,
      wait_up      => wait_upstrm
      );

  -- multiple zuker arrays
  all_arrays : multiple_arrays
    port map (
      clk              => clk,
      clk_array        => clk_array,

      reset            => reset_mod,
      reset_array      => reset_array,

      sequence_word    => sequence_word,
      sequence_vld     => sequence_vld,

      wait_dnstrm      => wait_dnstrm,

      wait_upstrm      => array_wait,

      score            => sequence_score,
      score_vld        => score_vld
    );

  -----------------------------------------------------------------------------
  -- Input FSM state assignment
  -----------------------------------------------------------------------------
  set_curr_state: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        state <= run;
      else
        state <= next_state;
      end if;
    end if;
  end process set_curr_state;

  -----------------------------------------------------------------------------
  -- Input FSM state transition process
  -----------------------------------------------------------------------------
  set_next_state: process (state, ctrl_vld_in_reg, data_in_reg, module_id, 
                           sequence_id_in, sequence_id
                           )
  begin 
    next_state <= state;

    case state is
      when run =>
        if ctrl_vld_in_reg = '1' then
            case data_in_reg(xx downto xx) is
              when x"xxxx" => next_state <= reset_module;    -- ""
              when x"xxxx" => next_state <= flush;           -- ""
              when x"xxxx" => next_state <= send_ver;        -- ""

              when x"xxxx" => next_state <= read_sequence;   -- ""

              when others  => next_state <= run;
            end case;
        end if;

      -- read query sequence
      when read_sequence =>
        if ctrl_vld_in_reg = '1' then
            case data_in_reg(xx downto xx) is
              -- done processing sequences
              when x"xxxx" => next_state <= flush;           -- ""

              -- any other command sends it back to the run state
              when others  => next_state <= run;
            end case;
        end if;

      when reset_module =>
        next_state <= run;

      when flush =>
        -- sequences processed = sequences sent to array
        if sequence_id >= sequence_id_in then
          next_state <= send_ef;
        end if;

      when send_ef =>
        next_state <= send_cmd;

      when send_ver =>
        next_state <= send_cmd;

      when send_cmd =>
        next_state <= run;

    end case;
  end process set_next_state;
  
  -----------------------------------------------------------------------------
  -- Process to handle combinational signals for the input FSM
  -----------------------------------------------------------------------------
  input_comb: process (state, ctrl_vld_in_reg, data_vld_in_reg, wait_dnstrm,
                       data_in_reg, data_cnt_in_reg, module_id,
                       command_buff_reg, sequence_id, sequence_score,
                       score_vld
                      )
  begin  -- process set_outputs
    ifsm_busy     <= '0';
    ifsm_data_vld <= '0';
    ifsm_ctrl_vld <= '0';
    ifsm_data     <= data_in_reg;
    ifsm_data_cnt <= data_cnt_in_reg;

    case state is
      when run =>
        if ctrl_vld_in_reg = '1' then
            case data_in_reg(xx downto xx) is
              when x"xxxx" =>           -- "xx"
                ifsm_busy     <= '1';
                ifsm_data     <= data_in_reg;
                ifsm_data_vld <= '0';
                ifsm_data_cnt <= "000";
                ifsm_ctrl_vld <= '1';

              when x"xxxx" =>           -- "xx"
                ifsm_busy <= '1';
                ifsm_data <= (others => '0');
                ifsm_data_cnt <= "000";
                ifsm_data_vld <= '0';
                ifsm_ctrl_vld <= '1';

              when x"xxxx" =>           -- ""
                ifsm_data     <= data_in_reg;
                ifsm_ctrl_vld <= '1';

              when x"xxxx" =>           -- ""
                ifsm_busy <= '1';

              when x"xxxx" =>           -- Which module is loaded?
                                        -- Return module name + no pes and other
                                        -- information
                ifsm_data     <= MODULE_NAME & 
                                 conv_std_logic_vector(NO_UNITS, 4) &
                                 conv_std_logic_vector(CELL_WIDTH, 4) &
                                 conv_std_logic_vector(NO_RESIDUES, 16) &
                                 conv_std_logic_vector(SEQ_LEN, 16);
                ifsm_data_vld <= '1';
                ifsm_data_cnt <= "000";
                ifsm_ctrl_vld <= '0';

              when others =>
                ifsm_ctrl_vld <= '1';

            end case;
        elsif data_vld_in_reg = '1' then
          ifsm_data     <= data_in_reg;
          ifsm_data_vld <= '1';
        end if;

        -- if there is a zuker score to report, send it
        if score_vld = '1' then
          ifsm_data     <= sequence_id & sequence_score;
          ifsm_data_vld <= '1';
          ifsm_ctrl_vld <= '0';
        end if;

      -- read query sequence
      when read_sequence =>
        if ctrl_vld_in_reg = '1' then
            case data_in_reg(xx downto xx) is
              -- done processing sequences
              when x"xxxx" =>           -- ""  End of Data
                ifsm_busy     <= '1';

              -- any other command sends it back to the run state
              when others  =>
                ifsm_ctrl_vld <= '1';

            end case;
        end if;

        -- if there is a zuker score to report, send it
        if score_vld = '1' then
          ifsm_data     <= sequence_id & sequence_score;
          ifsm_data_vld <= '1';
          ifsm_ctrl_vld <= '0';
        end if;

      when reset_module =>
        ifsm_busy <= '1';

      when flush =>
        ifsm_busy <= '1';

        -- if there is a zuker score to report, send it
        if score_vld = '1' then
          ifsm_data     <= sequence_id & sequence_score;
          ifsm_data_vld <= '1';
          ifsm_ctrl_vld <= '0';
        end if;

      when send_ef =>
        ifsm_busy <= '1';

        ifsm_data <= (others => '0');
        ifsm_data_cnt <= "000";
        ifsm_ctrl_vld <= '1';

      when send_ver =>
        ifsm_busy <= '1';
        ifsm_data <= (others => '0');
        ifsm_data_vld <= '0';
        ifsm_ctrl_vld <= not wait_dnstrm;

      when send_cmd =>
        ifsm_data <= command_buff_reg;
        ifsm_ctrl_vld <= '1';

    end case;
  end process input_comb;

  reg_inputs: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        passthru_mode  <= '0';
        reset_cmd      <= '0';

        sequence_id_in <= (others => '0');

        sequence_word  <= (others => '0');
        sequence_vld   <= '0';
        sequence_id    <= (others => '0');
      else
        reset_cmd      <= '0';

        sequence_vld   <= '0';

        if score_vld = '1' then
          sequence_id  <= sequence_id + 1;
        end if;

        case state is
          when run =>
            if ctrl_vld_in_reg = '1' then
                case data_in_reg(xx downto xx) is
                  when x"xxxx" =>       -- ""
                    reset_cmd      <= '1';

                  when x"xxxx" =>       -- ""
                    sequence_id_in <= (others => '0');
                    sequence_id    <= (others => '0');

                  when others => null;
                end case;
            end if;

          -- read query sequence
          when read_sequence =>
            if data_vld_in_reg = '1' then
              -- increment counter if we've sent a complete sequence
              if data_in_reg(x) = '1' then
                sequence_id_in <= sequence_id_in + 1;
              end if;

              -- send sequence data
              sequence_word <= data_in_reg;
              sequence_vld  <= '1';
            end if;

          when flush =>
            null;

          when others => null;
                         
        end case;        
      end if; -- end reset 
    end if;  -- end rising_edge
  end process reg_inputs;

  -- purpose: Register module outputs
  -- type   : sequential
  -- inputs : clk, reset
  -- outputs: data_out, data_vld_out, ctrl_vld_out
  reg_outputs: process (clk)
  begin  -- process set_outputs
    if rising_edge(clk) then 
      if reset = '1' then
        data_out <= (others => '0');
        data_vld_out <= '0';
        data_cnt_out <= "000";
        ctrl_vld_out <= '0';
        command_buff_reg <= (others => '0');
      else
        data_out     <= ifsm_data;
        data_vld_out <= ifsm_data_vld;
        data_cnt_out <= ifsm_data_cnt;
        ctrl_vld_out <= ifsm_ctrl_vld;

        if ctrl_vld_in_reg = '1' then
          command_buff_reg <= data_in_reg;
        end if;
      end if;
    end if;
  end process reg_outputs;

end architecture top_level; 
