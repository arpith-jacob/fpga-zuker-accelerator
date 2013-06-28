
-- File: pe_k_2.vhd
-- Date: 19 November 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Processing element implementing the cell k=2 of the zuker linear
-- array.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

library work;
use work.zuker_pkg.all;

entity pe_k_2 is
  generic (
    -- When true delay registers are placed in block ram memories
    USE_BRAM                 : boolean := false
    );
  port (
    clk                      : in  sl;
    reset                    : in  sl;

    -- INITIALIZATION
    --
    in_j_m_i_le_5            : in  sl;

    --
    -- INPUT
    -- DEPENDENCIES
    --
    -- internal loop special case energies
    -- 1x2 internal loop
    in_INT12_inf_i_j_k       : in  sl;
    in_INT12_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

    -- 2x1 internal loop
    in_INT21_inf_i_j_k       : in  sl;
    in_INT21_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

    -- 1x1 internal loop
    in_INT11_inf_i_j_k       : in  sl;
    in_INT11_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

    -- 2x2 internal loop
    in_INT22_inf_i_j_k       : in  sl;
    in_INT22_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

    -- 3x1 internal loop
    in_INT31_inf_i_j_k       : in  sl;
    in_INT31_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

    -- 1x3 internal loop
    in_INT13_inf_i_j_k       : in  sl;
    in_INT13_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

    -- PVI1(i, j-1, k-1)
    in_PVI1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
    -- PVI2(i+1, j, k-1)
    in_PVI2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);

    -- V(i+2, j-2, k-1)
    in_V_ip2_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- V(i+2, j-3, k-1)
    in_V_ip2_jm3_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- V(i+2, j-4, k-1)
    in_V_ip2_jm4_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- V(i+3, j-3, k-1)
    in_V_ip3_jm3_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- V(i+3, j-2, k-1)
    in_V_ip3_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);
    -- V(i+4, j-2, k-1)
    in_V_ip4_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);

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

    -- PA(i+1, j, k-1)
    in_PA_ip1_j_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PA(i+2, j, k-1)
    in_PA_ip2_j_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PB(i, j-1, k-1)
    in_PB_i_jm1_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PB(i, j-2, k-1)
    in_PB_i_jm2_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);

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
    out_INT_A_i_j_k          : out slv (CELL_WIDTH-1 downto 0);
    out_INT_B_i_j_k          : out slv (CELL_WIDTH-1 downto 0);
    out_INT_C_i_j_k          : out slv (CELL_WIDTH-1 downto 0);
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

architecture rtl of pe_k_2 is

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

  component vbip_keq2 is
    port (
      PVI1       : in  slv (CELL_WIDTH-1 downto 0);
      PVI2       : in  slv (CELL_WIDTH-1 downto 0);
      V          : in  slv (CELL_WIDTH-1 downto 0);
      base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4      : in  slv (RESIDUE_WIDTH-1 downto 0);

      j_m_i_le_5 : in  sl;

      VBIP       : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbi_keq2 is
    port (
      VBI_in                   : in  slv (CELL_WIDTH-1 downto 0);

      INT12_inf_i_j_k       : in  sl;
      INT12_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
      V_ip2_jm3_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

      INT21_inf_i_j_k       : in  sl;
      INT21_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
      V_ip3_jm2_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

      INT11_inf_i_j_k       : in  sl;
      INT11_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
      V_ip2_jm2_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

      INT22_inf_i_j_k       : in  sl;
      INT22_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
      V_ip3_jm3_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

      INT31_inf_i_j_k       : in  sl;
      INT31_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
      V_ip4_jm2_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

      INT13_inf_i_j_k       : in  sl;
      INT13_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
      V_ip2_jm4_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

      k_eq_j_m_i_m_2        : in  sl;

      INT_A                 : out slv (CELL_WIDTH-1 downto 0);
      INT_B                 : out slv (CELL_WIDTH-1 downto 0);
      INT_C                 : out slv (CELL_WIDTH-1 downto 0);
      VBI                   : out slv (CELL_WIDTH-1 downto 0)
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

  signal in_V_ip2_jm2_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip2_jm3_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip2_jm4_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip3_jm3_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip3_jm2_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip4_jm2_km1_link    : slv (CELL_WIDTH-1 downto 0);

  signal in_VBI_i_j_kp1_link      : slv (CELL_WIDTH-1 downto 0);
  signal in_PVB1_i_jm1_km1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_PVB2_ip1_j_km1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_T_i_j_kp1_link        : slv (CELL_WIDTH-1 downto 0);
  signal in_PW1_i_jm1_k_link      : slv (CELL_WIDTH-1 downto 0);
  signal in_PW2_ip1_j_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_PW3_i_jm1_km1_link    : slv (CELL_WIDTH-1 downto 0);
  signal in_PW4_ip1_j_k_link      : slv (CELL_WIDTH-1 downto 0);
  signal in_VBB_i_j_kp1_link      : slv (CELL_WIDTH-1 downto 0);

  signal in_PA_ip1_j_km1_link     : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_ip2_j_km1_link     : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_i_jm1_km1_link     : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_i_jm2_km1_link     : slv (RESIDUE_WIDTH-1 downto 0);

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

  signal delay_fifo_din6         : slv(17 downto 0); 
  signal delay_fifo_rd6          : slv(0 downto 0);
  signal delay_fifo_dout6        : slv(17 downto 0); 

  signal delay_fifo_din7         : slv(17 downto 0); 
  signal delay_fifo_wr7          : slv(0 downto 0);
  signal delay_fifo_rd7          : slv(0 downto 0);
  signal delay_fifo_dout7        : slv(17 downto 0); 

  type RETIMING_ARRAY is array (1 to NO_RETIMING_REGS_PE2) of slv(17 downto 0);
  signal fifo_retiming1          : RETIMING_ARRAY;
  signal fifo_retiming2          : RETIMING_ARRAY;
  signal fifo_retiming3          : RETIMING_ARRAY;
  signal fifo_retiming4          : RETIMING_ARRAY;
  signal fifo_retiming5          : RETIMING_ARRAY;
  signal fifo_retiming6          : RETIMING_ARRAY;
  signal fifo_retiming7          : RETIMING_ARRAY;

  -----------------------------------------------------------------------------
  -- Intermediate computation signals
  -----------------------------------------------------------------------------

  signal PVI1_i_j_k               : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_i_j_k               : slv (CELL_WIDTH-1 downto 0);
  signal VBIP_i_j_k               : slv (CELL_WIDTH-1 downto 0);
  signal INT_A_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal INT_B_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal INT_C_i_j_k              : slv (CELL_WIDTH-1 downto 0);
  signal VBI_i_j_k                : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_i_j_k               : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_i_j_k               : slv (CELL_WIDTH-1 downto 0);
  signal VBB_i_j_k                : slv (CELL_WIDTH-1 downto 0);

  signal PW1_i_j_k                : slv (CELL_WIDTH-1 downto 0);
  signal PW2_i_j_k                : slv (CELL_WIDTH-1 downto 0);
  signal PW3_i_j_k                : slv (CELL_WIDTH-1 downto 0);
  signal PW4_i_j_k                : slv (CELL_WIDTH-1 downto 0);
  signal T_i_j_k                  : slv (CELL_WIDTH-1 downto 0);

  -----------------------------------------------------------------------------
  -- Output signals
  -----------------------------------------------------------------------------
  signal PVI1_i_j_k_reg           : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_i_j_k_reg           : slv (CELL_WIDTH-1 downto 0);
  signal VBIP_i_j_k_reg           : slv (CELL_WIDTH-1 downto 0);
  signal INT_A_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal INT_B_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal INT_C_i_j_k_reg          : slv (CELL_WIDTH-1 downto 0);
  signal VBI_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_i_j_k_reg           : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_i_j_k_reg           : slv (CELL_WIDTH-1 downto 0);
  signal VBB_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);

  signal PW1_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);
  signal PW2_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);
  signal PW3_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);
  signal PW4_i_j_k_reg            : slv (CELL_WIDTH-1 downto 0);
  signal T_i_j_k_reg              : slv (CELL_WIDTH-1 downto 0);

begin

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

  -- PA(i+1, j, k-1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_PA_ip1_j_km1_link <= in_PA_ip1_j_km1;

  -- PA(i+2, j, k-1): delay by 3 clock cycles
  delay_PA_ip2_j_km1 : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 2,  -- delay = 3
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => in_PA_ip2_j_km1,
      dout           => in_PA_ip2_j_km1_link
      );

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

    -- V(i+2, j-2, k-1): delay by 2N+3 clock cycles
    delay_V_ip2_jm2_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN+2,  -- delay = 2*SEQ_LEN+3
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_V_ip2_jm2_km1,
        dout           => in_V_ip2_jm2_km1_link
        );

    -- V(i+2, j-3, k-1): delay by 3N+3 clock cycles
    delay_V_ip2_jm3_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 3*SEQ_LEN+2,  -- delay = 3*SEQ_LEN+3
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_V_ip2_jm3_km1,
        dout           => in_V_ip2_jm3_km1_link
        );

    -- V(i+2, j-4, k-1): delay by 4N+3 clock cycles
    delay_V_ip2_jm4_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 4*SEQ_LEN+2,  -- delay = 4*SEQ_LEN+3
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_V_ip2_jm4_km1,
        dout           => in_V_ip2_jm4_km1_link
        );

    -- V(i+3, j-3, k-1): delay by 3N+5 clock cycles
    delay_V_ip3_jm3_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 3*SEQ_LEN+4,  -- delay = 3*SEQ_LEN+5
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_V_ip3_jm3_km1,
        dout           => in_V_ip3_jm3_km1_link
        );

    -- V(i+3, j-2, k-1): delay by 2N+5 clock cycles
    delay_V_ip3_jm2_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN+4,  -- delay = 2*SEQ_LEN+5
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_V_ip3_jm2_km1,
        dout           => in_V_ip3_jm2_km1_link
        );

    -- V(i+4, j-2, k-1): delay by 2N+7 clock cycles
    delay_V_ip4_jm2_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN+6,  -- delay = 2*SEQ_LEN+7
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_V_ip4_jm2_km1,
        dout           => in_V_ip4_jm2_km1_link
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

    -- PB(i, j-1, k-1): delay by N-1 clock cycles
    delay_PB_i_jm1_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_PB_i_jm1_km1,
        dout           => in_PB_i_jm1_km1_link
        );

    -- PB(i, j-2, k-1): delay by 2N-1 clock cycles
    delay_PB_i_jm2_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN-2,  -- delay = 2*SEQ_LEN-1
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_PB_i_jm2_km1,
        dout           => in_PB_i_jm2_km1_link
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
    -- V(i+2, j-2, k-1): delay by 2N+3 clock cycles
    -- V(i+3, j-2, k-1): delay by 2N+5 clock cycles
    -- V(i+4, j-2, k-1): delay by 2N+7 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    -- in_V_ip2_jm2_km1 and in_V_ip3_jm2_km1 and in_V_ip4_jm2_km1 are the same
    delay_fifo_din2 <= "00" & in_V_ip2_jm2_km1;

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
        DELAY_STATES   => 2*SEQ_LEN+5-NO_RETIMING_REGS_PE2,  -- delay = 2*SEQ_LEN+7
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
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
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming2(i) <= fifo_retiming2(i-1);
        end loop;
      end if;
    end process reg_output_delay2;

    -- V(i+2, j-2, k-1): delay by 2N+3 clock cycles
    -- output: data from this link goes into PE logic
    in_V_ip2_jm2_km1_link <= fifo_retiming2(NO_RETIMING_REGS_PE2-4)
                                           (CELL_WIDTH-1 downto 0);

    -- V(i+3, j-2, k-1): delay by 2N+5 clock cycles
    -- output: data from this link goes into PE logic
    in_V_ip3_jm2_km1_link <= fifo_retiming2(NO_RETIMING_REGS_PE2-2)
                                           (CELL_WIDTH-1 downto 0);

    -- V(i+4, j-2, k-1): delay by 2N+7 clock cycles
    -- output: data from this link goes into PE logic
    in_V_ip4_jm2_km1_link <= fifo_retiming2(NO_RETIMING_REGS_PE2)
                                           (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- V(i+2, j-3, k-1): delay by 3N+3 clock cycles
    -- V(i+3, j-3, k-1): delay by 3N+5 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    -- in_V_ip2_jm3_km1 and in_V_ip3_jm3_km1 are the same
    delay_fifo_din6 <= "00" & in_V_ip2_jm3_km1;

    -- instantiates block ram
    delay_link6 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd6(0),
        dout   => delay_fifo_dout6,
        full   => open,

        wr_en  => delay_wr(0),
        din    => delay_fifo_din6,
        empty  => open
      );

    -- delay element to read from fifo at correct time
    fifo_rd6 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => 3*SEQ_LEN+3-NO_RETIMING_REGS_PE2,  -- delay = 3*SEQ_LEN+5
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_wr,
        dout           => delay_fifo_rd6
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay6 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming6(1)   <= delay_fifo_dout6;
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming6(i) <= fifo_retiming6(i-1);
        end loop;
      end if;
    end process reg_output_delay6;

    -- output: data from this link goes into PE logic
    in_V_ip2_jm3_km1_link <= fifo_retiming6(NO_RETIMING_REGS_PE2-2)
                                           (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    in_V_ip3_jm3_km1_link <= fifo_retiming6(NO_RETIMING_REGS_PE2)
                                           (CELL_WIDTH-1 downto 0);


    ---------------------------------------------------------------------------
    -- V(i+2, j-4, k-1): delay by 4N+3 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    -- use output of previous block ram, which is 3N+5 clocks
    delay_fifo_din7 <= fifo_retiming6(NO_RETIMING_REGS_PE2);

    -- instantiates block ram
    delay_link7 : delay_fifo
      port map (
        clk    => clk,
        srst   => reset,

        rd_en  => delay_fifo_rd7(0),
        dout   => delay_fifo_dout7,
        full   => open,

        wr_en  => delay_fifo_wr7(0),
        din    => delay_fifo_din7,
        empty  => open
      );

    -- delay element to write to fifo at correct time
    -- taking into account delay from link above
    fifo_wr7 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => 1+NO_RETIMING_REGS_PE2,  -- 1 for block ram latency and
        NEEDS_RESET    => true,                -- NO_RETIMING_REGS_PE2
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_fifo_rd6,
        dout           => delay_fifo_wr7
        );

    -- delay element to read from fifo at correct time
    fifo_rd7 : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        -- using output of previous block ram, which is 3N+5 clocks
        -- so we have to wait for only 4N+3 - 3N+5 = N-2 clocks
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS_PE2,  -- delay = SEQ_LEN-2
        NEEDS_RESET    => true,
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
      port map (
        clk            => clk,
        reset          => reset,
        din            => delay_fifo_wr7,
        dout           => delay_fifo_rd7
        );

    -- output from delay block ram is registered multiple clocks to help
    -- improve timing using retiming.
    reg_output_delay7 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming7(1)   <= delay_fifo_dout7;
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming7(i) <= fifo_retiming7(i-1);
        end loop;
      end if;
    end process reg_output_delay7;

    -- output: data from this link goes into PE logic
    in_V_ip2_jm4_km1_link <= fifo_retiming7(NO_RETIMING_REGS_PE2)
                                           (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- PVI1(i, j-1, k-1): delay by N-1 clock cycles
    -- PB(i, j-1, k-1): delay by N-1 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din1 <= in_PB_i_jm1_km1(1 downto 0) & in_PVI1_i_jm1_km1;

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
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS_PE2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
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
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming1(i) <= fifo_retiming1(i-1);
        end loop;
      end if;
    end process reg_output_delay1;

    -- output: data from this link goes into PE logic
    -- PVI1(i, j-1, k-1): delay by N-1 clock cycles
    in_PVI1_i_jm1_km1_link <= fifo_retiming1(NO_RETIMING_REGS_PE2)
                                            (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    -- PB(i, j-1, k-1): delay by N-1 clock cycles
    in_PB_i_jm1_km1_link(1 downto 0) <= fifo_retiming1(NO_RETIMING_REGS_PE2)
                                             (CELL_WIDTH+1 downto CELL_WIDTH);

    ---------------------------------------------------------------------------
    -- PVB1(i, j-1, k-1): delay by N-1 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din3 <= "0" & in_PB_i_jm1_km1(2) & in_PVB1_i_jm1_km1;

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
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS_PE2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
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
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming3(i) <= fifo_retiming3(i-1);
        end loop;
      end if;
    end process reg_output_delay3;

    -- output: data from this link goes into PE logic
    in_PVB1_i_jm1_km1_link <= fifo_retiming3(NO_RETIMING_REGS_PE2)
                                            (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    -- PB(i, j-1, k-1): delay by N-1 clock cycles
    in_PB_i_jm1_km1_link(2 downto 2) <= fifo_retiming3(NO_RETIMING_REGS_PE2-2)
                                             (CELL_WIDTH downto CELL_WIDTH);

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
        DELAY_STATES   => SEQ_LEN-2-NO_RETIMING_REGS_PE2,  -- delay = SEQ_LEN
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
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
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming4(i) <= fifo_retiming4(i-1);
        end loop;
      end if;
    end process reg_output_delay4;

    -- output: data from this link goes into PE logic
    in_PW1_i_jm1_k_link <= fifo_retiming4(NO_RETIMING_REGS_PE2)
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
        DELAY_STATES   => SEQ_LEN-3-NO_RETIMING_REGS_PE2,  -- delay = SEQ_LEN-1
        NEEDS_RESET    => true,       -- 1 clock at output of PE
        RESET_VAL_HIGH => false       -- 1 clock latency to read the fifo and
        )                             -- NO_RETIMING_REGS_PE2 clocks to improve timing
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
        for i in 2 to NO_RETIMING_REGS_PE2 loop
          fifo_retiming5(i) <= fifo_retiming5(i-1);
        end loop;
      end if;
    end process reg_output_delay5;

    -- output: data from this link goes into PE logic
    in_PW3_i_jm1_km1_link <= fifo_retiming5(NO_RETIMING_REGS_PE2)
                                           (CELL_WIDTH-1 downto 0);

    ---------------------------------------------------------------------------
    -- PB(i, j-2, k-1): delay by 2N-1 clock cycles
    ---------------------------------------------------------------------------
    delay_PB_i_jm2_km1 : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN-2,  -- delay = 2*SEQ_LEN-1
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => in_PB_i_jm2_km1,
        dout           => in_PB_i_jm2_km1_link
        );

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

  variable_vbip : vbip_keq2
    port map (
      PVI1       => PVI1_i_j_k,
      PVI2       => PVI2_i_j_k,
      V          => in_V_ip2_jm2_km1_link,
      base1      => in_PA_ip1_j_km1_link,
      base2      => in_PB_i_jm1_km1_link,
      base3      => in_PA_ip2_j_km1_link,
      base4      => in_PB_i_jm2_km1_link,

      j_m_i_le_5 => in_j_m_i_le_5,

      VBIP       => VBIP_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable VBI
  -----------------------------------------------------------------------------

  variable_vbi : vbi_keq2
    port map (
      VBI_in                => in_VBI_i_j_kp1_link,

      INT12_inf_i_j_k       => in_INT12_inf_i_j_k,
      INT12_i_j_k           => in_INT12_i_j_k,
      V_ip2_jm3_km1_link    => in_V_ip2_jm3_km1_link,

      INT21_inf_i_j_k       => in_INT21_inf_i_j_k,
      INT21_i_j_k           => in_INT21_i_j_k,
      V_ip3_jm2_km1_link    => in_V_ip3_jm2_km1_link,

      INT11_inf_i_j_k       => in_INT11_inf_i_j_k,
      INT11_i_j_k           => in_INT11_i_j_k,
      V_ip2_jm2_km1_link    => in_V_ip2_jm2_km1_link,

      INT22_inf_i_j_k       => in_INT22_inf_i_j_k,
      INT22_i_j_k           => in_INT22_i_j_k,
      V_ip3_jm3_km1_link    => in_V_ip3_jm3_km1_link,

      INT31_inf_i_j_k       => in_INT31_inf_i_j_k,
      INT31_i_j_k           => in_INT31_i_j_k,
      V_ip4_jm2_km1_link    => in_V_ip4_jm2_km1_link,

      INT13_inf_i_j_k       => in_INT13_inf_i_j_k,
      INT13_i_j_k           => in_INT13_i_j_k,
      V_ip2_jm4_km1_link    => in_V_ip2_jm4_km1_link,

      k_eq_j_m_i_m_2        => in_k_eq_j_m_i_m_2_link(0),

      INT_A                 => INT_A_i_j_k,
      INT_B                 => INT_B_i_j_k,
      INT_C                 => INT_C_i_j_k,

      VBI                   => VBI_i_j_k
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
      K       => 2
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
      PVI1_i_j_k_reg  <= PVI1_i_j_k;
      PVI2_i_j_k_reg  <= PVI2_i_j_k;
      VBIP_i_j_k_reg  <= VBIP_i_j_k;
      INT_A_i_j_k_reg <= INT_A_i_j_k;
      INT_B_i_j_k_reg <= INT_B_i_j_k;
      INT_C_i_j_k_reg <= INT_C_i_j_k;
      VBI_i_j_k_reg   <= VBI_i_j_k;

      PVB1_i_j_k_reg  <= PVB1_i_j_k;
      PVB2_i_j_k_reg  <= PVB2_i_j_k;
      VBB_i_j_k_reg   <= VBB_i_j_k;

      PW1_i_j_k_reg   <= PW1_i_j_k;
      PW2_i_j_k_reg   <= PW2_i_j_k;
      PW3_i_j_k_reg   <= PW3_i_j_k;
      PW4_i_j_k_reg   <= PW4_i_j_k;
      T_i_j_k_reg     <= T_i_j_k;
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

    out_PVI1_i_j_k  <= PVI1_i_j_k_reg;
    out_PVI2_i_j_k  <= PVI2_i_j_k_reg;
    out_VBIP_i_j_k  <= VBIP_i_j_k_reg;
    out_INT_A_i_j_k <= INT_A_i_j_k_reg;
    out_INT_B_i_j_k <= INT_B_i_j_k_reg;
    out_INT_C_i_j_k <= INT_C_i_j_k_reg;
    out_VBI_i_j_k   <= VBI_i_j_k_reg;

    out_PVB1_i_j_k  <= PVB1_i_j_k_reg;
    out_PVB2_i_j_k  <= PVB2_i_j_k_reg;
    out_VBB_i_j_k   <= VBB_i_j_k_reg;

    out_PW1_i_j_k   <= PW1_i_j_k_reg;
    out_PW2_i_j_k   <= PW2_i_j_k_reg;
    out_PW3_i_j_k   <= PW3_i_j_k_reg;
    out_PW4_i_j_k   <= PW4_i_j_k_reg;
    out_T_i_j_k     <= T_i_j_k_reg;

end rtl;
