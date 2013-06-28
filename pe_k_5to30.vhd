
-- File: pe_k_5to30.vhd
-- Date: 19 November 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Processing element implementing the cell k=5-30 of the zuker linear
-- array.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

library work;
use work.zuker_pkg.all;

entity pe_k_5to30 is
  generic (
    K                        : natural := 5;

    -- When true delay registers are placed in block ram memories
    USE_BRAM                 : boolean := false
    );
  port (
    clk                      : in  sl;
    reset                    : in  sl;

    --
    -- INPUT
    -- DEPENDENCIES
    --
    -- PVI1(i, j-1, k-1)
    in_PVI1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
    -- PVI2(i+1, j, k-1)
    in_PVI2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
    -- PBI'(i+1, j-1, k-2)
    in_VBIP_ip1_jm1_km2      : in  slv (CELL_WIDTH-1 downto 0);
    -- VBI(i, j, k+1)
    in_VBI_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);
    -- PVB1(i, j-1, k-1)
    in_PVB1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
    -- PVB2(i+1, j, k-1)
    in_PVB2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
    -- T(i, j, k+1)
    in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
    -- PW2(i+1, j, k-1)
    in_PW2_ip1_j_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- PW3(i, j-1, k-1)
    in_PW3_i_jm1_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- VBB(i, j, k+1)
    in_VBB_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);

    -- CONTROL SIGNALS
    --
    in_k_eq_j_m_i_m_2        : in  sl;
    in_k_eq_j_m_i_div_2      : in  sl;
    in_k2_eq_j_m_i           : in  sl;

    --
    -- OUTPUT
    --
    -- output dependencies
    out_PVI1_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_PVI2_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_VBIP_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_VBI_i_j_k            : out slv (CELL_WIDTH-1 downto 0);

    out_PVB1_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_PVB2_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_VBB_i_j_k            : out slv (CELL_WIDTH-1 downto 0);

    out_PW1_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_PW2_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_PW3_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_PW4_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_T_i_j_k              : out slv (CELL_WIDTH-1 downto 0);

    -- output control signals
    out_k_eq_j_m_i_m_2       : out sl;
    out_k_eq_j_m_i_div_2     : out sl;
    out_k2_eq_j_m_i          : out sl
    );
end entity;

architecture rtl of pe_k_5to30 is

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

  component delay_fifo is
    port (
      rd_en : in STD_LOGIC := 'X'; 
      wr_en : in STD_LOGIC := 'X'; 
      full : out STD_LOGIC; 
      empty : out STD_LOGIC; 
      clk : in STD_LOGIC := 'X'; 
      srst : in STD_LOGIC := 'X'; 
      dout : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
      din : in STD_LOGIC_VECTOR ( 17 downto 0 ) 
    );
  end component;

  component pvi_kgt1 is
    port (
      PVI_in : in  slv (CELL_WIDTH-1 downto 0);

      PVI    : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbip_kge3 is
    generic (
      K       : natural := 3
      );
    port (
      VBIP_in : in  slv (CELL_WIDTH-1 downto 0);
      PVI1    : in  slv (CELL_WIDTH-1 downto 0);
      PVI2    : in  slv (CELL_WIDTH-1 downto 0);

      VBIP    : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbi_kgt4 is
    generic (
      K       : natural := 5
      );
    port (
      VBI_in         : in  slv (CELL_WIDTH-1 downto 0);
      VBIP_in        : in  slv (CELL_WIDTH-1 downto 0);

      k_eq_j_m_i_m_2 : in  sl;

      VBI            : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pvb_kgt1 is
    port (
      PVB_in : in  slv (CELL_WIDTH-1 downto 0);

      PVB    : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbb_kgt1 is
    generic (
      K       : natural := 3
      );
    port (
      VBB_in         : in  slv (CELL_WIDTH-1 downto 0);
      PVB1           : in  slv (CELL_WIDTH-1 downto 0);
      PVB2           : in  slv (CELL_WIDTH-1 downto 0);

      k_eq_j_m_i_m_2 : in  sl;

      VBB            : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pw1
    port (
      PW1_in      : in  slv (CELL_WIDTH-1 downto 0);
      PW3         : in  slv (CELL_WIDTH-1 downto 0);

      k2_eq_j_m_i : in  sl;

      PW1         : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pw2_kgt1 is
    port (
      PW2_in : in  slv (CELL_WIDTH-1 downto 0);

      PW2    : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pw3_kgt1 is
    port (
      PW3_in : in  slv (CELL_WIDTH-1 downto 0);

      PW3    : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pw4 is
    port (
      PW4_in      : in  slv (CELL_WIDTH-1 downto 0);
      PW2         : in  slv (CELL_WIDTH-1 downto 0);

      k2_eq_j_m_i : in  sl;

      PW4         : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component t is
    port (
      T_in             : in  slv (CELL_WIDTH-1 downto 0);
      PW1              : in  slv (CELL_WIDTH-1 downto 0);
      PW2              : in  slv (CELL_WIDTH-1 downto 0);
      PW3              : in  slv (CELL_WIDTH-1 downto 0);
      PW4              : in  slv (CELL_WIDTH-1 downto 0);

      k_eq_j_m_i_div_2 : in  sl;

      T                : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  -----------------------------------------------------------------------------
  -- Link signals
  -----------------------------------------------------------------------------

  signal int_k2_eq_j_m_i          : slv (0 downto 0);
  signal int_k_eq_j_m_i_div_2     : slv (0 downto 0);

  signal in_k2_eq_j_m_i_link      : slv (0 downto 0);
  signal in_k_eq_j_m_i_m_2_link   : slv (0 downto 0);
  signal in_k_eq_j_m_i_div_2_link : slv (0 downto 0);

  signal in_PVI1_i_jm1_km1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_PVI2_ip1_j_km1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_VBIP_ip1_jm1_km2_link : slv (CELL_WIDTH-1 downto 0);
  signal in_VBI_i_j_kp1_link      : slv (CELL_WIDTH-1 downto 0);
  signal in_PVB1_i_jm1_km1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_PVB2_ip1_j_km1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_T_i_j_kp1_link        : slv (CELL_WIDTH-1 downto 0);
  signal in_PW1_i_jm1_k_link      : slv (CELL_WIDTH-1 downto 0);
  signal in_PW2_ip1_j_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_PW3_i_jm1_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_PW4_ip1_j_k_link      : slv (CELL_WIDTH-1 downto 0);
  signal in_VBB_i_j_kp1_link      : slv (CELL_WIDTH-1 downto 0);

  -----------------------------------------------------------------------------
  -- Signals used for block ram based delays
  -----------------------------------------------------------------------------

  -- signals used for FIFO delay
  signal wr_start                : slv(0 downto 0);
  signal delay_wr                : slv(0 downto 0);

  signal delay_fifo_din1         : slv(17 downto 0); 
  signal delay_fifo_rd1          : slv(0 downto 0);
  signal delay_fifo_dout1        : slv(17 downto 0); 

  signal delay_fifo_din2         : slv(17 downto 0); 
  signal delay_fifo_rd2          : slv(0 downto 0);
  signal delay_fifo_dout2        : slv(17 downto 0); 

  signal delay_fifo_din3         : slv(17 downto 0); 
  signal delay_fifo_rd3          : slv(0 downto 0);
  signal delay_fifo_dout3        : slv(17 downto 0); 

  signal delay_fifo_din4         : slv(17 downto 0); 
  signal delay_fifo_rd4          : slv(0 downto 0);
  signal delay_fifo_dout4        : slv(17 downto 0); 

  signal delay_fifo_din5         : slv(17 downto 0); 
  signal delay_fifo_rd5          : slv(0 downto 0);
  signal delay_fifo_dout5        : slv(17 downto 0); 

  type RETIMING_ARRAY is array (1 to NO_RETIMING_REGS) of slv(17 downto 0);
  signal fifo_retiming1          : RETIMING_ARRAY;
  signal fifo_retiming2          : RETIMING_ARRAY;
  signal fifo_retiming3          : RETIMING_ARRAY;
  signal fifo_retiming4          : RETIMING_ARRAY;
  signal fifo_retiming5          : RETIMING_ARRAY;

  -----------------------------------------------------------------------------
  -- Intermediate computation signals
  -----------------------------------------------------------------------------

  signal PVI1_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal VBIP_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal VBI_i_j_k              : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal VBB_i_j_k              : slv (CELL_WIDTH-1 downto 0);

  signal PW1_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal PW2_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal PW3_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal PW4_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal T_i_j_k                : slv (CELL_WIDTH-1 downto 0);

  -----------------------------------------------------------------------------
  -- Output signals
  -----------------------------------------------------------------------------
  signal PVI1_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);
  signal VBIP_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);
  signal VBI_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);
  signal VBB_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);

  signal PW1_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal PW2_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal PW3_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal PW4_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal T_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);

begin

  assert (K <= 30) report
    "K must be less than or equal to 30" severity error;

  -----------------------------------------------------------------------------
  -- Delay control pipeline communication links according to the schedule
  -----------------------------------------------------------------------------
  -- in_k2_eq_j_m_i(i+2, j, k-1)   -- to initialize pipelines PW1, PW2
  int_k2_eq_j_m_i(0) <= in_k2_eq_j_m_i;
  delay_k2_eq_j_m_i : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 3
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => int_k2_eq_j_m_i,
      dout           => in_k2_eq_j_m_i_link
      );

  -- in_k_eq_j_m_i_div_2(i+2, j, k-1) -- to start aggregation at k = (j-i)/2
  int_k_eq_j_m_i_div_2(0) <= in_k_eq_j_m_i_div_2;
  delay_k_eq_j_m_i_div_2 : delay_pipe
    generic map (
      DATA_WIDTH     => 1,
      DELAY_STATES   => 2,  -- delay = 3
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => int_k_eq_j_m_i_div_2,
      dout           => in_k_eq_j_m_i_div_2_link
      );

  -- in_k_eq_j_m_i_m_2(i+1, j, k-1) -- to start aggregation at k = j-i-2
  -- delay by 1 clock cycle. 1 clock cycle when output is registered at
  -- source, so no need to register anymore
  in_k_eq_j_m_i_m_2_link(0) <= in_k_eq_j_m_i_m_2;

  -----------------------------------------------------------------------------
  -- Delay communication links according to the schedule
  -----------------------------------------------------------------------------
  -- PVI2(i+1, j, k-1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_PVI2_ip1_j_km1_link <= in_PVI2_ip1_j_km1;

  -- VBI(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_VBI_i_j_kp1_link <= in_VBI_i_j_kp1;

  -- PVB2(i+1, j, k-1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_PVB2_ip1_j_km1_link <= in_PVB2_ip1_j_km1;

  -- T(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_T_i_j_kp1_link <= in_T_i_j_kp1;

  -- PW2(i+1, j, k-1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_PW2_ip1_j_km1_link <= in_PW2_ip1_j_km1;

  -- PW4(i+1, j, k): delay by 2 clock cycles
  delay_PW4_ip1_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => CELL_WIDTH,
      DELAY_STATES   => 1,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PW4_i_j_k_reg,
      dout           => in_PW4_ip1_j_k_link
      );

  -- VBB(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_VBB_i_j_kp1_link <= in_VBB_i_j_kp1;

  -----------------------------------------------------------------------------
  -- Generate memory intensive link delays using LUTS
  -----------------------------------------------------------------------------
  gen_delays_luts : if (not USE_BRAM) generate
    -- PVI1(i, j-1, k-1): delay by N-1 clock cycles
    delay_PVI1_i_jm1_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_PVI1_i_jm1_km1,
        dout           => in_PVI1_i_jm1_km1_link
        );

    -- VBI'(i+1, j-1, k-2): delay by N clock cycles
    delay_VBIP_ip1_jm1_km2 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-1,  -- delay = SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_VBIP_ip1_jm1_km2,
        dout           => in_VBIP_ip1_jm1_km2_link
        );

    -- PVB1(i, j-1, k-1): delay by N-1 clock cycles
    delay_PVB1_i_jm1_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_PVB1_i_jm1_km1,
        dout           => in_PVB1_i_jm1_km1_link
        );

    -- PW1(i, j-1, k): delay by N clock cycles
    delay_PW1_i_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-1,  -- delay = SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PW1_i_j_k_reg,
        dout           => in_PW1_i_jm1_k_link
        );

    -- PW3(i, j-1, k-1): delay by N-1 clock cycles
    delay_PW3_i_jm1_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_PW3_i_jm1_km1,
        dout           => in_PW3_i_jm1_km1_link
        );
  end generate gen_delays_luts;

  -----------------------------------------------------------------------------
  -- Generate memory intensive link delays using block RAMs
  -----------------------------------------------------------------------------
  gen_delays_bram : if (USE_BRAM) generate
    -- delay of SEQ_LEN should not exceed capacity of block ram which is
    -- 1024.
    assert (SEQ_LEN <= 1024/2) report
      "pe_k_2 block ram has insufficient capacity" severity error;

    ---------------------------------------------------------------------------
    -- PVI1(i, j-1, k-1): delay by N-1 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din1 <= "00" & in_PVI1_i_jm1_km1;

    -- instantiates block ram
    delay_link1 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd1(0),
        dout   => delay_fifo_dout1,
        full   => open,

        wr_en  => delay_wr(0),
        din    => delay_fifo_din1,
        empty  => open
      );

    -- delay element to read from fifo at correct time
    fifo_rd1 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_wr,
        dout           => delay_fifo_rd1
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay1 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming1(1)   <= delay_fifo_dout1;
        for i in 2 to NO_RETIMING_REGS loop
          fifo_retiming1(i) <= fifo_retiming1(i-1);
        end loop;
      end if;
    end process reg_output_delay1;

    -- output: data from this link goes into PE logic
    -- PVI1(i, j-1, k-1): delay by N-1 clock cycles
    in_PVI1_i_jm1_km1_link <= fifo_retiming1(NO_RETIMING_REGS)
                                            (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- VBI'(i+1, j-1, k-2): delay by N clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din2 <= "00" & in_VBIP_ip1_jm1_km2;

    -- instantiates block ram
    delay_link2 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd2(0),
        dout   => delay_fifo_dout2,
        full   => open,

        wr_en  => delay_wr(0),
        din    => delay_fifo_din2,
        empty  => open
      );

    -- delay element to read from fifo at correct time
    fifo_rd2 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => SEQ_LEN-2-NO_RETIMING_REGS,  -- delay = SEQ_LEN
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_wr,
        dout           => delay_fifo_rd2
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay2 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming2(1)   <= delay_fifo_dout2;
        for i in 2 to NO_RETIMING_REGS loop
          fifo_retiming2(i) <= fifo_retiming2(i-1);
        end loop;
      end if;
    end process reg_output_delay2;

    -- output: data from this link goes into PE logic
    in_VBIP_ip1_jm1_km2_link <= fifo_retiming2(NO_RETIMING_REGS)
                                              (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- PVB1(i, j-1, k-1): delay by N-1 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din3 <= "00" & in_PVB1_i_jm1_km1;

    -- instantiates block ram
    delay_link3 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd3(0),
        dout   => delay_fifo_dout3,
        full   => open,

        wr_en  => delay_wr(0),
        din    => delay_fifo_din3,
        empty  => open
      );

    -- delay element to read from fifo at correct time
    fifo_rd3 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_wr,
        dout           => delay_fifo_rd3
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay3 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming3(1)   <= delay_fifo_dout3;
        for i in 2 to NO_RETIMING_REGS loop
          fifo_retiming3(i) <= fifo_retiming3(i-1);
        end loop;
      end if;
    end process reg_output_delay3;

    -- output: data from this link goes into PE logic
    in_PVB1_i_jm1_km1_link <= fifo_retiming3(NO_RETIMING_REGS)
                                            (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- PW1(i, j-1, k): delay by N clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din4 <= "00" & PW1_i_j_k_reg;

    -- instantiates block ram
    delay_link4 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd4(0),
        dout   => delay_fifo_dout4,
        full   => open,

        wr_en  => delay_wr(0),
        din    => delay_fifo_din4,
        empty  => open
      );

    -- delay element to read from fifo at correct time
    fifo_rd4 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => SEQ_LEN-2-NO_RETIMING_REGS,  -- delay = SEQ_LEN
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_wr,
        dout           => delay_fifo_rd4
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay4 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming4(1)   <= delay_fifo_dout4;
        for i in 2 to NO_RETIMING_REGS loop
          fifo_retiming4(i) <= fifo_retiming4(i-1);
        end loop;
      end if;
    end process reg_output_delay4;

    -- output: data from this link goes into PE logic
    in_PW1_i_jm1_k_link <= fifo_retiming4(NO_RETIMING_REGS)
                                         (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- PW3(i, j-1, k-1): delay by N-1 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din5 <= "00" & in_PW3_i_jm1_km1;

    -- instantiates block ram
    delay_link5 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd5(0),
        dout   => delay_fifo_dout5,
        full   => open,

        wr_en  => delay_wr(0),
        din    => delay_fifo_din5,
        empty  => open
      );

    -- delay element to read from fifo at correct time
    fifo_rd5 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_wr,
        dout           => delay_fifo_rd5
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay5 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming5(1)   <= delay_fifo_dout5;
        for i in 2 to NO_RETIMING_REGS loop
          fifo_retiming5(i) <= fifo_retiming5(i-1);
        end loop;
      end if;
    end process reg_output_delay5;

    -- output: data from this link goes into PE logic
    in_PW3_i_jm1_km1_link <= fifo_retiming5(NO_RETIMING_REGS)
                                           (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- delay element to write to fifos a few clocks after reset is asserted
    ---------------------------------------------------------------------------
    delay_fifo_wr : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => 5,        -- delay = 5 clocks
        NEEDS_RESET    => true,     -- wait for a few clocks so that block
        RESET_VAL_HIGH => false     -- ram has a chance to settle
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => wr_start,
        dout           => delay_wr
        );

    -- registers to control reading and writing into block ram
    reg_write_fifos : process (clk)
    begin 
      if rising_edge(clk) then
        if reset = '1' then
          wr_start    <= (others => '0');
        else
          -- keep writing into block ram based delay register
          wr_start(0) <= '1';
        end if;
      end if;  -- end rising_edge
    end process reg_write_fifos;
  end generate gen_delays_bram;

  -----------------------------------------------------------------------------
  -- Pipeline variable PVI1
  -----------------------------------------------------------------------------

   variable_pvi1 : pvi_kgt1
    port map (
      PVI_in => in_PVI1_i_jm1_km1_link,

      PVI    => PVI1_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Pipeline variable PVI2
  -----------------------------------------------------------------------------

   variable_pvi2 : pvi_kgt1
    port map (
      PVI_in => in_PVI2_ip1_j_km1_link,

      PVI    => PVI2_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable VBI'
  -----------------------------------------------------------------------------

  variable_vbip : vbip_kge3
    generic map (
      K     => K
      )
    port map (
      VBIP_in => in_VBIP_ip1_jm1_km2_link,
      PVI1    => PVI1_i_j_k,
      PVI2    => PVI2_i_j_k,

      VBIP    => VBIP_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable VBI
  -----------------------------------------------------------------------------

  variable_vbi : vbi_kgt4
    generic map (
      K              => K
      )
    port map (
      VBI_in         => in_VBI_i_j_kp1_link,
      VBIP_in        => in_VBIP_ip1_jm1_km2_link,

      k_eq_j_m_i_m_2 => in_k_eq_j_m_i_m_2_link(0),

      VBI            => VBI_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PVB1
  -----------------------------------------------------------------------------

  variable_pvb1 : pvb_kgt1
    port map (
      PVB_in => in_PVB1_i_jm1_km1_link,

      PVB    => PVB1_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PVB2
  -----------------------------------------------------------------------------

  variable_pvb2 : pvb_kgt1
    port map (
      PVB_in => in_PVB2_ip1_j_km1_link,

      PVB    => PVB2_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable VBB
  -----------------------------------------------------------------------------

  variable_vbb : vbb_kgt1
    generic map (
      K       => K
      )
    port map (
      VBB_in         => in_VBB_i_j_kp1_link,
      PVB1           => PVB1_i_j_k,
      PVB2           => PVB2_i_j_k,

      k_eq_j_m_i_m_2 => in_k_eq_j_m_i_m_2_link(0),

      VBB            => VBB_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW1
  -----------------------------------------------------------------------------

  variable_pw1 : pw1
    port map (
      PW1_in      => in_PW1_i_jm1_k_link,
      PW3         => PW3_i_j_k,

      k2_eq_j_m_i => in_k2_eq_j_m_i_link(0),

      PW1         => PW1_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW2
  -----------------------------------------------------------------------------

  variable_pw2 : pw2_kgt1
    port map (
      PW2_in => in_PW2_ip1_j_km1_link,

      PW2    => PW2_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW3
  -----------------------------------------------------------------------------

  variable_pw3 : pw3_kgt1
    port map (
      PW3_in => in_PW3_i_jm1_km1_link,

      PW3    => PW3_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW4
  -----------------------------------------------------------------------------

  variable_pw4 : pw4
    port map (
      PW4_in      => in_PW4_ip1_j_k_link,
      PW2         => PW2_i_j_k,

      k2_eq_j_m_i => in_k2_eq_j_m_i_link(0),

      PW4         => PW4_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable T
  -----------------------------------------------------------------------------

  variable_t : t
    port map (
      T_in             => in_T_i_j_kp1_link,
      PW1              => PW1_i_j_k,
      PW2              => PW2_i_j_k,
      PW3              => PW3_i_j_k,
      PW4              => PW4_i_j_k,

      k_eq_j_m_i_div_2 => in_k_eq_j_m_i_div_2_link(0),

      T                => T_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Process to register computed values for data variables
  -----------------------------------------------------------------------------
  reg_values_noreset: process (clk)
  begin 
    if rising_edge(clk) then
      -- register computed values: output
      PVI1_i_j_k_reg <= PVI1_i_j_k;
      PVI2_i_j_k_reg <= PVI2_i_j_k;
      VBIP_i_j_k_reg <= VBIP_i_j_k;
      VBI_i_j_k_reg  <= VBI_i_j_k;

      PVB1_i_j_k_reg <= PVB1_i_j_k;
      PVB2_i_j_k_reg <= PVB2_i_j_k;
      VBB_i_j_k_reg  <= VBB_i_j_k;

      PW1_i_j_k_reg  <= PW1_i_j_k;
      PW2_i_j_k_reg  <= PW2_i_j_k;
      PW3_i_j_k_reg  <= PW3_i_j_k;
      PW4_i_j_k_reg  <= PW4_i_j_k;
      T_i_j_k_reg    <= T_i_j_k;
    end if;  -- end rising_edge
  end process reg_values_noreset;

  reg_values: process (clk)
  begin 
    if rising_edge(clk) then
      if reset = '1' then
        -- register control signals
        out_k_eq_j_m_i_m_2   <= '0';
        out_k_eq_j_m_i_div_2 <= '0';
        out_k2_eq_j_m_i      <= '0';
      else
        -- register control signals
        out_k_eq_j_m_i_m_2   <= in_k_eq_j_m_i_m_2_link(0);
        out_k_eq_j_m_i_div_2 <= in_k_eq_j_m_i_div_2_link(0);
        out_k2_eq_j_m_i      <= in_k2_eq_j_m_i_link(0);
      end if;
    end if;  -- end rising_edge
  end process reg_values;

    out_PVI1_i_j_k <= PVI1_i_j_k_reg;
    out_PVI2_i_j_k <= PVI2_i_j_k_reg;
    out_VBIP_i_j_k <= VBIP_i_j_k_reg;
    out_VBI_i_j_k  <= VBI_i_j_k_reg;

    out_PVB1_i_j_k <= PVB1_i_j_k_reg;
    out_PVB2_i_j_k <= PVB2_i_j_k_reg;
    out_VBB_i_j_k  <= VBB_i_j_k_reg;

    out_PW1_i_j_k  <= PW1_i_j_k_reg;
    out_PW2_i_j_k  <= PW2_i_j_k_reg;
    out_PW3_i_j_k  <= PW3_i_j_k_reg;
    out_PW4_i_j_k  <= PW4_i_j_k_reg;
    out_T_i_j_k    <= T_i_j_k_reg;

end rtl;
