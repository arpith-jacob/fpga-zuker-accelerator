
-- File: multiple_arrays.vhd
-- Date: 13 Mar 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Instantiate multiple Zuker systolic arrays
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.zuker_pkg.all;

entity multiple_arrays is
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
end entity multiple_arrays;

architecture rtl of multiple_arrays is

  component zuker 
    port (
      clk                : in  sl;
      reset              : in  sl;

      in_sequence        : in  RESIDUE_ARRAY;
      in_start           : in  sl;

      wait_upstrm        : out sl;

      out_sequence_score : out slv(31 downto 0);
      out_vld            : out sl
    );
  end component;

  component fifo_score is
    port (
      valid            : out sl;
      rd_en            : in  sl;
      wr_en            : in  sl;
      full             : out sl;
      empty            : out sl;
      wr_clk           : in  sl;
      rst              : in  sl;
      rd_clk           : in  sl;
      dout             : out slv(98 downto 0);
      din              : in  slv(98 downto 0)
    );
  end component;

  component fifo_sequence is
    port (
      valid            : out sl;
      prog_full        : out sl;
      rd_en            : in  sl;
      wr_en            : in  sl;
      full             : out sl;
      empty            : out sl;
      wr_clk           : in  sl;
      rst              : in  sl;
      rd_clk           : in  sl;
      dout             : out slv(63 downto 0);
      din              : in  slv(63 downto 0)
    );
  end component;

  --
  --  Sequence FIFO
  --
  type seq_input_states is (run, wait4array);

  signal seq_state            : seq_input_states;
  signal seq_next_state       : seq_input_states;

  -- sequence fifo signals
  signal seq_fifo_valid       : sl;
  signal seq_fifo_rd          : sl;
  signal seq_fifo_dout        : slv(63 downto 0);

  -- zuker array busy from all units
  signal arrays_wait          : slv(NO_UNITS-1 downto 0);
  -- wait from the array being addressed
  signal curr_array_wait      : sl;

  -- wires to all arrays
  signal sequences            : UNIT_RESIDUE_ARRAY;
  -- sequence array
  signal sequence             : RESIDUE_ARRAY;
  -- start zuker array
  signal starts               : slv(NO_UNITS-1 downto 0);
  -- indicate which unit is being processed
  signal seq_unit_cntr        : slv(7 downto 0);

  --
  --  Score FIFO
  --
  type input_states is (run, send_scores);

  signal state                : input_states;
  signal next_state           : input_states;

  signal all_scores           : SCORE_ARRAY;
  signal all_scores_vld       : slv(NO_UNITS-1 downto 0);
  signal all_working          : slv(NO_UNITS-1 downto 0);

  -- score fifo signals
  signal score_fifo_valid     : sl;
  signal score_fifo_rd        : sl;
  signal score_fifo_wr        : sl;
  signal score_fifo_dout      : slv(98 downto 0);
  signal score_fifo_din       : slv(98 downto 0);

  -- internal score word
  signal score_word           : slv(98 downto 0);
  signal score_unit_cntr      : slv(7 downto 0);

  signal score_int            : slv(31 downto 0);
  signal score_vld_int        : sl;

begin

  -----------------------------------------------------------------------------
  -- Store scores from all units in a FIFO
  -----------------------------------------------------------------------------

  -- store sequence information
  store_sequence : fifo_sequence
    port map (
      rd_clk      => clk_array,
      rst         => reset,
      valid       => seq_fifo_valid,
      rd_en       => seq_fifo_rd,
      empty       => open,
      dout        => seq_fifo_dout,

      wr_clk      => clk,
      wr_en       => sequence_vld,
      full        => open,
      prog_full   => wait_upstrm,
      din         => sequence_word
    );

  -----------------------------------------------------------------------------
  -- Input FSM state assignment
  -----------------------------------------------------------------------------
  seq_set_curr_state: process (clk_array)
  begin 
    if rising_edge(clk_array) then
      if reset_array = '1' then
        seq_state <= run;
      else
        seq_state <= seq_next_state;
      end if;
    end if;
  end process seq_set_curr_state;

  -----------------------------------------------------------------------------
  -- Input FSM state transition process
  -----------------------------------------------------------------------------
  seq_set_next_state: process (seq_state, seq_fifo_valid, seq_fifo_dout, curr_array_wait)
  begin 
    seq_next_state <= seq_state;

    case seq_state is
      when run =>
        -- received end of sequence separator; send query to array.
        if seq_fifo_valid = '1' and seq_fifo_dout(63) = '1' and curr_array_wait = '1' then
          -- wait for array to free up
          seq_next_state <= wait4array;
        end if;

      when wait4array =>
        if curr_array_wait = '0' then
          seq_next_state <= run;
        end if;

    end case;
  end process seq_set_next_state;

  -----------------------------------------------------------------------------
  -- Process to handle combinational signals for the input FSM
  -----------------------------------------------------------------------------
  seq_input_comb: process (seq_state, seq_fifo_valid)
  begin

    seq_fifo_rd  <= '0';

    case seq_state is
      when run =>
        -- if there is a sequence in the fifo, read it
        seq_fifo_rd  <= seq_fifo_valid;

      when wait4array =>
        null;

    end case;
  end process seq_input_comb;

  seq_reg_outputs: process (clk_array)
  begin 
    if rising_edge(clk_array) then
      if reset_array = '1' then
        seq_unit_cntr  <= (others => '0');

        -- not resetting sequence data
        starts         <= (others => '0');
      else

        -- set start valid to zero, except for current array when sequence
        -- is being sent
        starts         <= (others => '0');

        if starts /= 0 then
          -- send sequence to next unit, wrap on underflow
          if seq_unit_cntr = 0 then
            seq_unit_cntr  <= conv_std_logic_vector(NO_UNITS - 1, 8);
          else
            seq_unit_cntr  <= seq_unit_cntr - 1;
          end if; 
        end if;

        case seq_state is
          when run =>
            if seq_fifo_valid = '1' then
              -- register sequence data

              -- shift residues to make way for 21 input residues
              for i in NO_RESIDUES - RESIDUES_PER_CLK downto 1 loop
                sequence(i) <= sequence(i + RESIDUES_PER_CLK);
              end loop;

              -- now read in the input residues
              -- MSB: last to first
              for i in RESIDUES_PER_CLK downto 1 loop
                sequence(NO_RESIDUES - RESIDUES_PER_CLK + i) <=
                    seq_fifo_dout(i*RESIDUE_WIDTH-1 downto (i-1)*RESIDUE_WIDTH);
              end loop;

              -- received end of query, start array
              if seq_fifo_dout(63) = '1' then
                if curr_array_wait = '0' then
                  starts(conv_integer(seq_unit_cntr)) <= '1';
                end if;
              end if;
            end if;

          when wait4array =>
            if curr_array_wait = '0' then
              starts(conv_integer(seq_unit_cntr)) <= '1';
            end if;

        end case;        

      end if; -- end reset 
    end if;  -- end rising_edge
  end process seq_reg_outputs;

  wire_array_inputs: process (sequence)
  begin
  
    for i in 0 to NO_UNITS-1 loop
      -- simply wire the sequence to all arrays, use vld to indicate active
      sequences(i) <= sequence;
    end loop;

  end process wire_array_inputs;

  wire_array_outputs: process (seq_unit_cntr, arrays_wait)
  begin

    -- signal sent to state machine from currently addressed array unit  
    curr_array_wait    <= arrays_wait(conv_integer(seq_unit_cntr));

  end process wire_array_outputs;


  -----------------------------------------------------------------------------
  -- Instantiate multiple zuker arrays
  -----------------------------------------------------------------------------
  zuker_gen : for i in 0 to NO_UNITS - 1
    generate
      one_array : zuker
        port map (
          clk                => clk_array,
          reset              => reset_array,

          in_sequence        => sequences(i),
          in_start           => starts(i),

          wait_upstrm        => arrays_wait(i),

          out_sequence_score => all_scores(i),
          out_vld            => all_scores_vld(i)
        );
    end generate;

  -- send score and vld
  score     <= score_int;
  score_vld <= score_vld_int;

  -----------------------------------------------------------------------------
  -- Store scores from all units in a FIFO
  -----------------------------------------------------------------------------
  wire_fifo_inputs: process (all_scores, all_scores_vld)
    variable fifo_wr_int : sl;
  begin
  
    -- see if at least one score has been output by the arrays
    fifo_wr_int := '0';
    for i in 0 to NO_UNITS-1 loop
      -- wire the score into the fifo
      score_fifo_din((i+1)*33 - 1 downto i*33) <= all_scores(i) &
                                                  all_scores_vld(i);
      fifo_wr_int := fifo_wr_int or all_scores_vld(i);
    end loop;

    -- write signal is high if any one of the scores is valid
    score_fifo_wr <= fifo_wr_int;
  end process wire_fifo_inputs;

  -- save zuker scores into a fifo
  save_score : fifo_score
    port map (
      rd_clk => clk,
      rst    => reset,
      valid  => score_fifo_valid,
      rd_en  => score_fifo_rd,
      empty  => open,
      dout   => score_fifo_dout,

      wr_clk => clk_array,
      wr_en  => score_fifo_wr,
      full   => open,
      din    => score_fifo_din
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
  set_next_state: process (state, score_fifo_valid, score_unit_cntr, wait_dnstrm
                           )
  begin 
    next_state <= state;

    case state is
      when run =>
        -- if there is a score in the fifo, go process it
        if score_fifo_valid = '1' and wait_dnstrm = '0' then
          next_state <= send_scores;
        end if;

      -- send scores
      when send_scores =>
        -- after sending all the scores, continue to next fifo word
        if score_unit_cntr <= 1 then
          next_state <= run;
        end if;

    end case;
  end process set_next_state;

  -----------------------------------------------------------------------------
  -- Process to handle combinational signals for the input FSM
  -----------------------------------------------------------------------------
  input_comb: process (state, score_fifo_valid, wait_dnstrm
                      )
  begin

    score_fifo_rd  <= '0';

    case state is
      when run =>
        -- if there is a score in the fifo, read it
        score_fifo_rd  <= score_fifo_valid and not wait_dnstrm;

      when send_scores =>
        null;

    end case;
  end process input_comb;

  reg_outputs: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        score_unit_cntr <= (others => '0');
        score_word      <= (others => '0');

        score_int       <= (others => '0');
        score_vld_int   <= '0';
      else

        score_int       <= score_word(32 downto 1);
        score_vld_int   <= '0';

        case state is
          when run =>
            -- if fifo is not empty, then read the current data word
            if score_fifo_valid = '1' and wait_dnstrm = '0' then
              score_word      <= score_fifo_dout;
              score_unit_cntr <= conv_std_logic_vector(NO_UNITS, 8);
            end if;

          -- send scores
          when send_scores =>
            if wait_dnstrm = '0' then
              score_unit_cntr <= score_unit_cntr - 1;

              score_vld_int   <= score_word(0);
              score_word      <= '0' & x"00000000" &
                                 score_word(score_word'length-1 downto 33);
            end if;

        end case;        
      end if; -- end reset 
    end if;  -- end rising_edge
  end process reg_outputs;

end architecture rtl;
