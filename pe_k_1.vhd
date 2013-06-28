
-- File: pe_k_1.vhd
-- Date: 18 November 2009
-- Project: Zuker 
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Processing element implementing the bottom cell, k=1 of the zuker linear
-- array.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

library work;
use work.zuker_pkg.all;

entity pe_k_1 is
  generic (
    -- When true delay registers are placed in block ram memories
    USE_BRAM                 : boolean := false
    );
  port (
    clk                      : in  sl;
    reset                    : in  sl;

    --
    -- INPUT
    --
    -- INITIALIZATION
    --
    in_j_m_i_le_2            : in  sl;
    in_j_m_i_le_3            : in  sl;
    in_j_m_i_le_4            : in  sl;
    in_j_m_i_le_5            : in  sl;
    in_j_m_i_le_6            : in  sl;

    -- size = j - i - 1
    in_size                  : in  slv (HAIRPIN_SIZE_WIDTH-1 downto 0);

    -- SEQUENCE IN
    --
    -- sequence characters: initialization input
    -- sequence character PA
    init_PA                  : in  sl;
    initial_PA               : in  slv(RESIDUE_WIDTH-1 downto 0);
    -- sequence character PB
    init_PB                  : in  sl;
    initial_PB               : in  slv(RESIDUE_WIDTH-1 downto 0);

    -- DEPENDENCIES
    --
    in_INT_A_i_j_kp1         : in  slv (CELL_WIDTH-1 downto 0);
    in_INT_B_i_j_kp1         : in  slv (CELL_WIDTH-1 downto 0);
    in_INT_C_i_j_kp1         : in  slv (CELL_WIDTH-1 downto 0);
    in_VBI_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);
    in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
    in_VBB_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);

    -- CONTROL SIGNALS
    --
    in_k_eq_j_m_i_m_2        : in  sl;
    in_k_eq_j_m_i_div_2      : in  sl;
    in_k2_eq_j_m_i           : in  sl;

    --
    -- OUTPUT
    --
    -- internal loop energies
    out_INT12_inf_i_j_k      : out sl;
    out_INT12_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    out_INT21_inf_i_j_k      : out sl;
    out_INT21_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    out_INT11_inf_i_j_k      : out sl;
    out_INT11_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    out_INT22_inf_i_j_k      : out sl;
    out_INT22_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    out_INT31_inf_i_j_k      : out sl;
    out_INT31_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    out_INT13_inf_i_j_k      : out sl;
    out_INT13_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    -- output dependencies
    out_PVI1_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_PVI2_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_VBIP_i_j_k           : out slv (CELL_WIDTH-1 downto 0);

    out_PVB1_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_PVB2_i_j_k           : out slv (CELL_WIDTH-1 downto 0);
    out_VBB_i_j_k            : out slv (CELL_WIDTH-1 downto 0);

    out_PW1_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_PW2_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_PW3_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_PW4_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
    out_T_i_j_k              : out slv (CELL_WIDTH-1 downto 0);

    out_V_i_j_k              : out slv (CELL_WIDTH-1 downto 0);
    out_W_i_j_k              : out slv (CELL_WIDTH-1 downto 0);

    out_UZ_V1_i_j_k          : out slv (CELL_WIDTH-1 downto 0);
    out_UZ_V2_i_j_k          : out slv (CELL_WIDTH-1 downto 0);

    out_PA_i_j_k             : out slv (RESIDUE_WIDTH-1 downto 0);
    out_PB_i_j_k             : out slv (RESIDUE_WIDTH-1 downto 0);

    -- output control signals
    out_k_eq_j_m_i_m_2       : out sl;
    out_k_eq_j_m_i_div_2     : out sl;
    out_k2_eq_j_m_i          : out sl
    );
end entity;

architecture rtl of pe_k_1 is

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

  component int21 is
    port (
      clk           : in  sl;
      reset         : in  sl;

      j_m_i_le_5    : in  sl;

      A_base1       : in  slv (RESIDUE_WIDTH-1 downto 0);
      A_base2       : in  slv (RESIDUE_WIDTH-1 downto 0);
      A_base3       : in  slv (RESIDUE_WIDTH-1 downto 0);
      A_base4       : in  slv (RESIDUE_WIDTH-1 downto 0);
      A_base5       : in  slv (RESIDUE_WIDTH-1 downto 0);
      A_base6       : in  slv (RESIDUE_WIDTH-1 downto 0);
      A_base7       : in  slv (RESIDUE_WIDTH-1 downto 0);

      B_base1       : in  slv (RESIDUE_WIDTH-1 downto 0);
      B_base2       : in  slv (RESIDUE_WIDTH-1 downto 0);
      B_base3       : in  slv (RESIDUE_WIDTH-1 downto 0);
      B_base4       : in  slv (RESIDUE_WIDTH-1 downto 0);
      B_base5       : in  slv (RESIDUE_WIDTH-1 downto 0);
      B_base6       : in  slv (RESIDUE_WIDTH-1 downto 0);
      B_base7       : in  slv (RESIDUE_WIDTH-1 downto 0);

      A_inf         : out sl;
      A_energy      : out slv (CELL_WIDTH-1 downto 0);
      B_inf         : out sl;
      B_energy      : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component int22and11 is
    port (
      clk        : in  sl;
      reset      : in  sl;

      j_m_i_le_4 : in  sl;
      j_m_i_le_6 : in  sl;

      base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base5      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base6      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base7      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base8      : in  slv (RESIDUE_WIDTH-1 downto 0);

      A_inf      : out sl;
      A_energy   : out slv (CELL_WIDTH-1 downto 0);
      B_inf      : out sl;
      B_energy   : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component int31 is
    port (
      clk        : in  sl;
      reset      : in  sl;

      j_m_i_le_6 : in  sl;

      base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base5      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base6      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base7      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base8      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base9      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base10     : in  slv (RESIDUE_WIDTH-1 downto 0);
      base11     : in  slv (RESIDUE_WIDTH-1 downto 0);
      base12     : in  slv (RESIDUE_WIDTH-1 downto 0);

      A_inf      : out sl;
      A_energy   : out slv (CELL_WIDTH-1 downto 0);
      B_inf      : out sl;
      B_energy   : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pa is
    port (
      PA_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
      S_i        : in  slv (RESIDUE_WIDTH-1 downto 0);

      j_m_i_eq_1 : in  sl;

      PA         : out slv (RESIDUE_WIDTH-1 downto 0)
      );
  end component;

  component pb is
    port (
      PB_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
      S_j        : in  slv (RESIDUE_WIDTH-1 downto 0);

      j_m_i_eq_1 : in  sl;

      PB         : out slv (RESIDUE_WIDTH-1 downto 0)
      );
  end component;

  component pvi_keq1 is
    port (
      V          : in  slv (CELL_WIDTH-1 downto 0);
      base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4      : in  slv (RESIDUE_WIDTH-1 downto 0);

      j_m_i_le_4 : in  sl;

      PVI        : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbip_keq1 is
    port (
      PVI1  : in  slv (CELL_WIDTH-1 downto 0);
      PVI2  : in  slv (CELL_WIDTH-1 downto 0);

      VBIP  : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbi_keq1 is
    port (
      INT_A          : in  slv (CELL_WIDTH-1 downto 0);
      INT_B          : in  slv (CELL_WIDTH-1 downto 0);
      INT_C          : in  slv (CELL_WIDTH-1 downto 0);
      VBI_in         : in  slv (CELL_WIDTH-1 downto 0);
      base1          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4          : in  slv (RESIDUE_WIDTH-1 downto 0);

      k_eq_j_m_i_m_2 : in  sl;

      VBI            : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pvb_keq1 is
    port (
      V          : in  slv (CELL_WIDTH-1 downto 0);
      base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2      : in  slv (RESIDUE_WIDTH-1 downto 0);

      j_m_i_le_4 : in  sl;

      PVB        : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component vbb_keq1 is
    port (
      VBB_in         : in  slv (CELL_WIDTH-1 downto 0);
      V_1            : in  slv (CELL_WIDTH-1 downto 0);
      V_2            : in  slv (CELL_WIDTH-1 downto 0);
      base1          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base5          : in  slv (RESIDUE_WIDTH-1 downto 0);
      base6          : in  slv (RESIDUE_WIDTH-1 downto 0);

      j_m_i_le_4     : in  sl;

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

  component pw2_keq1
    port (
      W          : in  slv (CELL_WIDTH-1 downto 0);

      j_m_i_le_3 : in  sl;

      PW2        : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component pw3_keq1
    port (
      W          : in  slv (CELL_WIDTH-1 downto 0);

      j_m_i_le_2 : in  sl;

      PW3        : out slv (CELL_WIDTH-1 downto 0)
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

  component v is
    port (
      size         : in  slv (HAIRPIN_SIZE_WIDTH-1 downto 0);
      base1        : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2        : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3        : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4        : in  slv (RESIDUE_WIDTH-1 downto 0);

      tetra_base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base5  : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base6  : in  slv (RESIDUE_WIDTH-1 downto 0);

      T_ip1_jm1_1  : in  slv (CELL_WIDTH-1 downto 0);
      T_ip2_jm1_1  : in  slv (CELL_WIDTH-1 downto 0);
      T_ip1_jm2_1  : in  slv (CELL_WIDTH-1 downto 0);
      T_ip2_jm2_1  : in  slv (CELL_WIDTH-1 downto 0);

      V_in         : in  slv (CELL_WIDTH-1 downto 0);

      VBB          : in  slv (CELL_WIDTH-1 downto 0);
      VBI          : in  slv (CELL_WIDTH-1 downto 0);

      j_m_i_le_2   : in  sl;
      j_m_i_le_3   : in  sl;
      j_m_i_le_4   : in  sl;
      j_m_i_le_5   : in  sl;

      V            : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component w is
    port (
      W_ip1_j_k   : in  slv (CELL_WIDTH-1 downto 0);
      W_i_jm1_k   : in  slv (CELL_WIDTH-1 downto 0);
      V_i_j_k     : in  slv (CELL_WIDTH-1 downto 0);

      base1       : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2       : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3       : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4       : in  slv (RESIDUE_WIDTH-1 downto 0);

      T           : in  slv (CELL_WIDTH-1 downto 0);

      V_ip1_j_1   : in  slv (CELL_WIDTH-1 downto 0);
      V_i_jm1_1   : in  slv (CELL_WIDTH-1 downto 0);
      V_ip1_jm1_1 : in  slv (CELL_WIDTH-1 downto 0);

      j_m_i_le_2  : in  sl;

      W           : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component uz_f is
    port (
      clk           : in  sl;
      reset         : in  sl;

      j_m_i_le_3_in : in  sl;

      base1_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4_in      : in  slv (RESIDUE_WIDTH-1 downto 0);

      V_i_j_k_in    : in  slv (CELL_WIDTH-1 downto 0);
      V_i_jm1_k_in  : in  slv (CELL_WIDTH-1 downto 0);

      V1            : out slv (CELL_WIDTH-1 downto 0);
      V2            : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  -----------------------------------------------------------------------------
  -- Mux signal along communication link: either an initialization value, or
  -- the value sent from a processing element
  -----------------------------------------------------------------------------
  signal mux_PA              : slv (RESIDUE_WIDTH-1 downto 0);
  signal mux_PB              : slv (RESIDUE_WIDTH-1 downto 0);

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

  signal fifo_retiming6_1        : slv(17 downto 0);
  signal fifo_retiming6_2        : slv(17 downto 0);

  -----------------------------------------------------------------------------
  -- Link signals
  -----------------------------------------------------------------------------

  signal in_W_ip1_j_k_link     : slv (CELL_WIDTH-1 downto 0);
  signal in_W_i_jm1_k_link     : slv (CELL_WIDTH-1 downto 0);

  signal in_V_ip1_jm1_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip1_j_k_link     : slv (CELL_WIDTH-1 downto 0);
  signal in_V_i_jm1_k_link     : slv (CELL_WIDTH-1 downto 0);

  signal in_INT_A_i_j_kp1_link : slv (CELL_WIDTH-1 downto 0);
  signal in_INT_B_i_j_kp1_link : slv (CELL_WIDTH-1 downto 0);
  signal in_INT_C_i_j_kp1_link : slv (CELL_WIDTH-1 downto 0);
  signal in_VBI_i_j_kp1_link   : slv (CELL_WIDTH-1 downto 0);

  signal in_T_ip1_jm1_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_T_ip2_jm1_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_T_ip1_jm2_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_T_ip2_jm2_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_T_i_j_kp1_link     : slv (CELL_WIDTH-1 downto 0);

  signal in_PW1_i_jm1_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_W_ip2_j_k_link     : slv (CELL_WIDTH-1 downto 0);
  signal in_PW4_ip1_j_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_VBB_i_j_kp1_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip1_jm2_k_link   : slv (CELL_WIDTH-1 downto 0);
  signal in_V_ip2_jm1_k_link   : slv (CELL_WIDTH-1 downto 0);

  signal in_PA_ip1_j_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_ip2_j_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_ip3_j_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_ip4_j_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_ip5_j_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_i_jm1_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PA_im1_jm1_k_link  : slv (RESIDUE_WIDTH-1 downto 0);

  signal in_PB_i_jm1_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_ip1_j_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_i_jm2_k_link    : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_im1_jm4_k_link  : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_im1_jm3_k_link  : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_im1_jm2_k_link  : slv (RESIDUE_WIDTH-1 downto 0);
  signal in_PB_im1_jm1_k_link  : slv (RESIDUE_WIDTH-1 downto 0);

  -----------------------------------------------------------------------------
  -- Intermediate computation signals
  -----------------------------------------------------------------------------

  signal PVI1_i_j_k          : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_i_j_k          : slv (CELL_WIDTH-1 downto 0);
  signal VBIP_i_j_k          : slv (CELL_WIDTH-1 downto 0);
  signal VBI_i_j_k           : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_i_j_k          : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_i_j_k          : slv (CELL_WIDTH-1 downto 0);
  signal VBB_i_j_k           : slv (CELL_WIDTH-1 downto 0);

  signal PW1_i_j_k           : slv (CELL_WIDTH-1 downto 0);
  signal PW2_i_j_k           : slv (CELL_WIDTH-1 downto 0);
  signal PW3_i_j_k           : slv (CELL_WIDTH-1 downto 0);
  signal PW4_i_j_k           : slv (CELL_WIDTH-1 downto 0);
  signal T_i_j_k             : slv (CELL_WIDTH-1 downto 0);

  signal V_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal W_i_j_k             : slv (CELL_WIDTH-1 downto 0);

  signal PA_i_j_k            : slv (RESIDUE_WIDTH-1 downto 0);
  signal PB_i_j_k            : slv (RESIDUE_WIDTH-1 downto 0);

  -----------------------------------------------------------------------------
  -- Output signals
  -----------------------------------------------------------------------------
  signal INT12_INF_reg       : sl;
  signal INT12_reg           : slv (CELL_WIDTH-1 downto 0);

  signal INT21_INF_reg       : sl;
  signal INT21_reg           : slv (CELL_WIDTH-1 downto 0);

  signal INT11_INF_reg       : sl;
  signal INT11_reg           : slv (CELL_WIDTH-1 downto 0);

  signal INT22_INF_reg       : sl;
  signal INT22_reg           : slv (CELL_WIDTH-1 downto 0);

  signal INT31_INF_reg       : sl;
  signal INT31_reg           : slv (CELL_WIDTH-1 downto 0);

  signal INT13_INF_reg       : sl;
  signal INT13_reg           : slv (CELL_WIDTH-1 downto 0);

  signal PVI1_i_j_k_reg      : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_i_j_k_reg      : slv (CELL_WIDTH-1 downto 0);
  signal VBIP_i_j_k_reg      : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_i_j_k_reg      : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_i_j_k_reg      : slv (CELL_WIDTH-1 downto 0);
  signal VBB_i_j_k_reg       : slv (CELL_WIDTH-1 downto 0);

  signal PW1_i_j_k_reg       : slv (CELL_WIDTH-1 downto 0);
  signal PW2_i_j_k_reg       : slv (CELL_WIDTH-1 downto 0);
  signal PW3_i_j_k_reg       : slv (CELL_WIDTH-1 downto 0);
  signal PW4_i_j_k_reg       : slv (CELL_WIDTH-1 downto 0);
  signal T_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);

  signal V_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);
  signal W_i_j_k_reg         : slv (CELL_WIDTH-1 downto 0);

  signal PA_i_j_k_reg        : slv (RESIDUE_WIDTH-1 downto 0);
  signal PB_i_j_k_reg        : slv (RESIDUE_WIDTH-1 downto 0);

begin

  -----------------------------------------------------------------------------
  -- Delay communication links according to the schedule
  -----------------------------------------------------------------------------
  -- W(i+1, j, k): delay by 2 clock cycles
  delay_W_ip1_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => CELL_WIDTH,
      DELAY_STATES   => 1,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => W_i_j_k_reg,
      dout           => in_W_ip1_j_k_link
      );

  -- V(i+1, j, k): delay by 2 clock cycles
  delay_V_ip1_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => CELL_WIDTH,
      DELAY_STATES   => 1,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => V_i_j_k_reg,
      dout           => in_V_ip1_j_k_link
      );

  -- INT_A(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_INT_A_i_j_kp1_link <= in_INT_A_i_j_kp1;

  -- INT_B(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_INT_B_i_j_kp1_link <= in_INT_B_i_j_kp1;

  -- INT_C(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_INT_C_i_j_kp1_link <= in_INT_C_i_j_kp1;

  -- VBI(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_VBI_i_j_kp1_link <= in_VBI_i_j_kp1;

  -- T(i, j, k+1): delay by 1 clock cycle. 1 clock cycle when output is
  -- registered at source, so no need to register anymore
  in_T_i_j_kp1_link <= in_T_i_j_kp1;

  -- W(i+2, j, k): delay by 4 clock cycles
  delay_W_ip2_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => CELL_WIDTH,
      DELAY_STATES   => 3,  -- delay = 4
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => W_i_j_k_reg,
      dout           => in_W_ip2_j_k_link
      );

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


  -- PA(i+1, j, k): delay by 2 clock cycles
  delay_PA_ip1_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 1,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PA_i_j_k_reg,
      dout           => in_PA_ip1_j_k_link
      );

  -- PA(i+2, j, k): delay by 4 clock cycles
  delay_PA_ip2_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 3,  -- delay = 4
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PA_i_j_k_reg,
      dout           => in_PA_ip2_j_k_link
      );

  -- PA(i+3, j, k): delay by 6 clock cycles
  delay_PA_ip3_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 5,  -- delay = 6
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PA_i_j_k_reg,
      dout           => in_PA_ip3_j_k_link
      );

  -- PA(i+4, j, k): delay by 8 clock cycles
  delay_PA_ip4_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 7,  -- delay = 8
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PA_i_j_k_reg,
      dout           => in_PA_ip4_j_k_link
      );

  -- PA(i+5, j, k): delay by 10 clock cycles
  delay_PA_ip5_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 9,  -- delay = 10
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PA_i_j_k_reg,
      dout           => in_PA_ip5_j_k_link
      );

  -- PB(i+1, j, k): delay by 2 clock cycles
  delay_PB_ip1_j_k : delay_pipe
    generic map (
      DATA_WIDTH     => RESIDUE_WIDTH,
      DELAY_STATES   => 1,  -- delay = 2
      NEEDS_RESET    => NEEDS_RESET,
      RESET_VAL_HIGH => false
      )
    port map (
      clk            => clk,
      reset          => reset,
      din            => PB_i_j_k_reg,
      dout           => in_PB_ip1_j_k_link
      );

  -----------------------------------------------------------------------------
  -- Generate memory intensive link delays using LUTS
  -----------------------------------------------------------------------------
  gen_delays_luts : if (not USE_BRAM) generate
    -- W(i, j-1, k): delay by N clock cycles
    delay_W_i_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-1,  -- delay = SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => W_i_j_k_reg,
        dout           => in_W_i_jm1_k_link
        );

    -- V(i, j-1, k): delay by N clock cycles
    delay_V_i_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN-1,  -- delay = SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => V_i_j_k_reg,
        dout           => in_V_i_jm1_k_link
        );

    -- V(i+1, j-1, k): delay by N+2 clock cycles
    delay_V_ip1_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN+1,  -- delay = SEQ_LEN+2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => V_i_j_k_reg,
        dout           => in_V_ip1_jm1_k_link
        );

    -- T(i+1, j-1, k): delay by N+2 clock cycles
    delay_T_ip1_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN+1,  -- delay = SEQ_LEN+2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
       )
      port map (
        clk            => clk,
        reset          => reset,
        din            => T_i_j_k_reg,
        dout           => in_T_ip1_jm1_k_link
        );

    -- T(i+2, j-1, k): delay by N+4 clock cycles
    delay_T_ip2_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN+3,  -- delay = SEQ_LEN+4
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
       )
      port map (
        clk            => clk,
        reset          => reset,
        din            => T_i_j_k_reg,
        dout           => in_T_ip2_jm1_k_link
        );

    -- T(i+1, j-2, k): delay by 2N+2 clock cycles
    delay_T_ip1_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN+1,  -- delay = 2*SEQ_LEN+2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
       )
      port map (
        clk            => clk,
        reset          => reset,
        din            => T_i_j_k_reg,
        dout           => in_T_ip1_jm2_k_link
        );

    -- T(i+2, j-2, k): delay by 2N+4 clock cycles
    delay_T_ip2_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN+3,  -- delay = 2*SEQ_LEN+4
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
       )
      port map (
        clk            => clk,
        reset          => reset,
        din            => T_i_j_k_reg,
        dout           => in_T_ip2_jm2_k_link
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

    -- V(i+1, j-2, k): delay by 2N + 2 clock cycles
    delay_V_ip1_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => 2 * SEQ_LEN + 1,  -- delay = 2 * SEQ_LEN + 2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => V_i_j_k_reg,
        dout           => in_V_ip1_jm2_k_link
        );

    -- V(i+2, j-1, k): delay by N + 4 clock cycles
    delay_V_ip2_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => CELL_WIDTH,
        DELAY_STATES   => SEQ_LEN + 3,  -- delay = SEQ_LEN + 4
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => V_i_j_k_reg,
        dout           => in_V_ip2_jm1_k_link
        );

    -- PA(i, j-1, k): delay by N clock cycles
    delay_PA_i_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-1,  -- delay = SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PA_i_j_k_reg,
        dout           => in_PA_i_jm1_k_link
        );

    -- PA(i-1, j-1, k): delay by N-2 clock cycles
    delay_PA_im_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-3,  -- delay = SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PA_i_j_k_reg,
        dout           => in_PA_im1_jm1_k_link
        );

    -- PB(i, j-1, k): delay by N clock cycles
    delay_PB_i_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-1,  -- delay = SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_i_jm1_k_link
        );

    -- PB(i-1, j-1, k): delay by N-2 clock cycles
    delay_PB_im1_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-3,  -- delay = SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm1_k_link
        );

    -- PB(i, j-2, k): delay by 2N clock cycles
    delay_PB_i_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN-1,  -- delay = 2*SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_i_jm2_k_link
        );

    -- PB(i-1, j-2, k): delay by 2N-2 clock cycles
    delay_PB_im1_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN-3,  -- delay = 2*SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm2_k_link
        );

    -- PB(i-1, j-3, k): delay by 3N-2 clock cycles
    delay_PB_im1_jm3_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 3*SEQ_LEN-3,  -- delay = 3*SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm3_k_link
        );

    -- PB(i-1, j-4, k): delay by 4N-2 clock cycles
    delay_PB_im1_jm4_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 4*SEQ_LEN-3,  -- delay = 4*SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm4_k_link
        );
  end generate gen_delays_luts;

  -----------------------------------------------------------------------------
  -- Generate memory intensive link delays using block RAMs
  -----------------------------------------------------------------------------
  gen_delays_bram : if (USE_BRAM) generate
    -- delay of SEQ_LEN should not exceed capacity of block ram which is
    -- 1024.
    assert (SEQ_LEN <= 1024/2) report
      "pe_k_1 block ram has insufficient capacity" severity error;

    -- please note, we have not implemented V and T delays to compute dangling
    -- energies in V and W
    assert (true) report
      "haven't implemented V and T delays" severity error;

    ---------------------------------------------------------------------------
    -- W(i, j-1, k): delay by N clock cycles
    -- PA(i, j-1, k): delay by N clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din1 <= PA_i_j_k_reg(1 downto 0) & W_i_j_k_reg;

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
        DELAY_STATES   => SEQ_LEN-2-NO_RETIMING_REGS,  -- delay = SEQ_LEN
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
    -- W(i, j-1, k): delay by N clock cycles
    in_W_i_jm1_k_link  <= fifo_retiming1(NO_RETIMING_REGS)
                                        (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    -- PA(i, j-1, k): delay by N clock cycles
    in_PA_i_jm1_k_link(1 downto 0) <= fifo_retiming1(NO_RETIMING_REGS)
                                        (CELL_WIDTH+1 downto CELL_WIDTH);

    ---------------------------------------------------------------------------
    -- V(i+1, j-1, k): delay by N+2 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din2 <= PB_i_j_k_reg(2) & PA_i_j_k_reg(2) & V_i_j_k_reg;

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
        DELAY_STATES   => SEQ_LEN-NO_RETIMING_REGS,  -- delay = SEQ_LEN+2
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
    in_V_ip1_jm1_k_link <= fifo_retiming2(NO_RETIMING_REGS)
                                         (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    -- PA(i, j-1, k): delay by N clock cycles
    in_PA_i_jm1_k_link(2 downto 2) <= fifo_retiming2(NO_RETIMING_REGS-2)
                                           (CELL_WIDTH downto CELL_WIDTH);

    -- output: data from this link goes into PE logic
    -- PB(i, j-1, k): delay by N clock cycles
    in_PB_i_jm1_k_link(2 downto 2) <= fifo_retiming2(NO_RETIMING_REGS-2)
                                            (CELL_WIDTH+1 downto CELL_WIDTH+1);

    ---------------------------------------------------------------------------
    -- T(i+1, j-1, k): delay by N+2 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din3 <= PB_i_j_k_reg(1 downto 0) & T_i_j_k_reg;

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
        DELAY_STATES   => SEQ_LEN-NO_RETIMING_REGS,  -- delay = SEQ_LEN+2
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
    -- T(i+1, j-1, k): delay by N+2 clock cycles
    in_T_ip1_jm1_k_link <= fifo_retiming3(NO_RETIMING_REGS)
                                         (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    -- PB(i, j-1, k): delay by N clock cycles
    in_PB_i_jm1_k_link(1 downto 0) <= fifo_retiming3(NO_RETIMING_REGS-2)
                                        (CELL_WIDTH+1 downto CELL_WIDTH);

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
    -- V(i+1, j-2, k): delay by 2N + 2 clock cycles
    ---------------------------------------------------------------------------
    -- input into delay block ram
    delay_fifo_din5 <= PB_i_j_k_reg(1 downto 0) & V_i_j_k_reg;

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
        DELAY_STATES   => 2*SEQ_LEN-NO_RETIMING_REGS,  -- delay = 2*SEQ_LEN+2
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
    in_V_ip1_jm2_k_link <= fifo_retiming5(NO_RETIMING_REGS)
                                         (CELL_WIDTH-1 downto 0);

    -- output: data from this link goes into PE logic
    -- PB(i, j-2, k): delay by N clock cycles
    in_PB_i_jm2_k_link(1 downto 0) <= fifo_retiming5(NO_RETIMING_REGS-2)
                                        (CELL_WIDTH+1 downto CELL_WIDTH);

    -- PB(i, j-2, k): delay by 2N clock cycles
    delay_PB_i_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => 1,
        DELAY_STATES   => 2*SEQ_LEN-1,  -- delay = 2*SEQ_LEN
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg(2 downto 2),
        dout           => in_PB_i_jm2_k_link(2 downto 2)
        );

    -- PA(i-1, j-1, k): delay by N-2 clock cycles
    delay_PA_im_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-3,  -- delay = SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PA_i_j_k_reg,
        dout           => in_PA_im1_jm1_k_link
        );


    -- PB(i-1, j-1, k): delay by N-2 clock cycles
    delay_PB_im1_jm1_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => SEQ_LEN-3,  -- delay = SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm1_k_link
        );

    -- PB(i-1, j-2, k): delay by 2N-2 clock cycles
    delay_PB_im1_jm2_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 2*SEQ_LEN-3,  -- delay = 2*SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm2_k_link
        );

    -- PB(i-1, j-3, k): delay by 3N-2 clock cycles
    delay_PB_im1_jm3_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 3*SEQ_LEN-3,  -- delay = 3*SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm3_k_link
        );

    -- PB(i-1, j-4, k): delay by 4N-2 clock cycles
    delay_PB_im1_jm4_k : delay_pipe
      generic map (
        DATA_WIDTH     => RESIDUE_WIDTH,
        DELAY_STATES   => 4*SEQ_LEN-3,  -- delay = 4*SEQ_LEN-2
        NEEDS_RESET    => NEEDS_RESET,
        RESET_VAL_HIGH => false
        )
      port map (
        clk            => clk,
        reset          => reset,
        din            => PB_i_j_k_reg,
        dout           => in_PB_im1_jm4_k_link
        );

    ---------------------------------------------------------------------------
    -- V(i+2, j-1, k): delay by N + 4 clock cycles
    ---------------------------------------------------------------------------
    reg_output_delay6 : process (clk)
    begin 
      if rising_edge(clk) then
        fifo_retiming6_1 <= fifo_retiming2(NO_RETIMING_REGS);
        fifo_retiming6_2 <= fifo_retiming6_1;
      end if;
    end process reg_output_delay6;

    in_V_ip2_jm1_k_link <= fifo_retiming6_2(CELL_WIDTH-1 downto 0);

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
  -- Generate 1x2 and 2x1 internal loop energies
  -----------------------------------------------------------------------------

  energy_int2x1and1x2 : int21
    port map (
      clk           => clk,
      reset         => reset,

      j_m_i_le_5    => in_j_m_i_le_5,

      A_base1       => in_PA_im1_jm1_k_link,
      A_base2       => PB_i_j_k,
      A_base3       => in_PA_ip1_j_k_link,
      A_base4       => in_PB_im1_jm3_k_link,
      A_base5       => PA_i_j_k,
      A_base6       => in_PB_im1_jm2_k_link,
      A_base7       => in_PB_im1_jm1_k_link,

      B_base1       => in_PA_ip2_j_k_link,
      B_base2       => in_PB_im1_jm2_k_link,
      B_base3       => in_PA_im1_jm1_k_link,
      B_base4       => PB_i_j_k,
      B_base5       => in_PB_im1_jm1_k_link,
      B_base6       => PA_i_j_k,
      B_base7       => in_PA_ip1_j_k_link,

      A_inf         => INT12_INF_reg,
      A_energy      => INT12_reg,
      B_inf         => INT21_INF_reg,
      B_energy      => INT21_reg
      );

  -----------------------------------------------------------------------------
  -- Generate 1x1 and 2x2 internal loop energies
  -----------------------------------------------------------------------------

  energy_int2x2and1x1 : int22and11
    port map (
      clk        => clk,
      reset      => reset,

      j_m_i_le_4 => in_j_m_i_le_4,
      j_m_i_le_6 => in_j_m_i_le_6,

      base1      => in_PA_im1_jm1_k_link,
      base2      => PB_i_j_k,
      base3      => in_PA_ip2_j_k_link,
      base4      => in_PB_im1_jm3_k_link,
      base5      => PA_i_j_k,
      base6      => in_PA_ip1_j_k_link,
      base7      => in_PB_im1_jm2_k_link,
      base8      => in_PB_im1_jm1_k_link,

      A_inf      => INT11_INF_reg,
      A_energy   => INT11_reg,
      B_inf      => INT22_INF_reg,
      B_energy   => INT22_reg
      );

  -----------------------------------------------------------------------------
  -- Generate 3x1 and 1x3 internal loop energies
  -----------------------------------------------------------------------------

  energy_int3x1and1x3 : int31
    port map (
      clk        => clk,
      reset      => reset,

      j_m_i_le_6 => in_j_m_i_le_6,

      base1      => in_PA_im1_jm1_k_link,
      base2      => PB_i_j_k,
      base3      => PA_i_j_k,
      base4      => in_PB_im1_jm1_k_link,
      base5      => in_PA_ip1_j_k_link,
      base6      => in_PB_im1_jm4_k_link,
      base7      => in_PB_im1_jm3_k_link,
      base8      => PA_i_j_k,
      base9      => in_PA_ip3_j_k_link,
      base10     => in_PB_im1_jm2_k_link,
      base11     => in_PB_im1_jm1_k_link,
      base12     => in_PA_ip2_j_k_link,

      A_inf      => INT13_INF_reg,
      A_energy   => INT13_reg,
      B_inf      => INT31_INF_reg,
      B_energy   => INT31_reg
      );

  -----------------------------------------------------------------------------
  -- Pipeline variable PA
  -----------------------------------------------------------------------------

  variable_pa : pa
    port map (
      PA_in      => in_PA_i_jm1_k_link,
      S_i        => initial_PA,

      j_m_i_eq_1 => init_PA,

      PA         => PA_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Pipeline variable PB
  -----------------------------------------------------------------------------

  variable_pb : pb
    port map (
      PB_in      => in_PB_ip1_j_k_link,
      S_j        => initial_PB,

      j_m_i_eq_1 => init_PB,

      PB         => PB_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Pipeline variable PVI1
  -----------------------------------------------------------------------------

   variable_pvi1 : pvi_keq1
     port map (
       V          => in_V_ip1_jm2_k_link,
       base1      => in_PA_ip1_j_k_link,
       base2      => in_PB_i_jm2_k_link,
       base3      => in_PB_i_jm1_k_link,
       base4      => PA_i_j_k,

       j_m_i_le_4 => in_j_m_i_le_4,

       PVI        => PVI1_i_j_k
       );

  -----------------------------------------------------------------------------
  -- Pipeline variable PVI2
  -----------------------------------------------------------------------------

   variable_pvi2 : pvi_keq1
     port map (
       V          => in_V_ip2_jm1_k_link,
       base1      => in_PA_ip2_j_k_link,
       base2      => in_PB_i_jm1_k_link,
       base3      => PB_i_j_k,
       base4      => in_PA_ip1_j_k_link,

       j_m_i_le_4 => in_j_m_i_le_4,

       PVI        => PVI2_i_j_k
       );

  -----------------------------------------------------------------------------
  -- Data variable VBI'
  -----------------------------------------------------------------------------

  variable_vbip : vbip_keq1
    port map (
      PVI1  => PVI1_i_j_k,
      PVI2  => PVI2_i_j_k,

      VBIP  => VBIP_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable VBI
  -----------------------------------------------------------------------------

  variable_vbi : vbi_keq1
    port map (
      INT_A          => in_INT_A_i_j_kp1_link,
      INT_B          => in_INT_B_i_j_kp1_link,
      INT_C          => in_INT_C_i_j_kp1_link,
      VBI_in         => in_VBI_i_j_kp1_link,
      base1          => PA_i_j_k,
      base2          => PB_i_j_k,
      base3          => in_PA_ip1_j_k_link,
      base4          => in_PB_i_jm1_k_link,

      k_eq_j_m_i_m_2 => in_k_eq_j_m_i_m_2,

      VBI            => VBI_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PVB1
  -----------------------------------------------------------------------------

  variable_pvb1 : pvb_keq1
    port map (
      V          => in_V_ip1_jm2_k_link,
      base1      => in_PA_ip1_j_k_link,
      base2      => in_PB_i_jm2_k_link,

      j_m_i_le_4 => in_j_m_i_le_4,

      PVB        => PVB1_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PVB2
  -----------------------------------------------------------------------------

  variable_pvb2 : pvb_keq1
    port map (
      V          => in_V_ip2_jm1_k_link,
      base1      => in_PA_ip2_j_k_link,
      base2      => in_PB_i_jm1_k_link,

      j_m_i_le_4 => in_j_m_i_le_4,

      PVB        => PVB2_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable VBB
  -----------------------------------------------------------------------------

  variable_vbb : vbb_keq1
    port map (
      VBB_in         => in_VBB_i_j_kp1_link,
      V_1            => in_V_ip1_jm2_k_link,
      V_2            => in_V_ip2_jm1_k_link,
      base1          => PA_i_j_k,
      base2          => PB_i_j_k,
      base3          => in_PA_ip1_j_k_link,
      base4          => in_PB_i_jm2_k_link,
      base5          => in_PA_ip2_j_k_link,
      base6          => in_PB_i_jm1_k_link,

      j_m_i_le_4     => in_j_m_i_le_4,

      k_eq_j_m_i_m_2 => in_k_eq_j_m_i_m_2,

      VBB            => VBB_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW1
  -----------------------------------------------------------------------------

  variable_pw1 : pw1
    port map (
      PW1_in      => in_PW1_i_jm1_k_link,
      PW3         => PW3_i_j_k,

      k2_eq_j_m_i => in_k2_eq_j_m_i,

      PW1         => PW1_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW2
  -----------------------------------------------------------------------------

  variable_pw2 : pw2_keq1
    port map (
      W          => in_W_ip2_j_k_link,

      j_m_i_le_3 => in_j_m_i_le_3,

      PW2        => PW2_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW3
  -----------------------------------------------------------------------------

  variable_pw3 : pw3_keq1
    port map (
      W          => in_W_i_jm1_k_link,

      j_m_i_le_2 => in_j_m_i_le_2,

      PW3        => PW3_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable PW4
  -----------------------------------------------------------------------------

  variable_pw4 : pw4
    port map (
      PW4_in      => in_PW4_ip1_j_k_link,
      PW2         => PW2_i_j_k,

      k2_eq_j_m_i => in_k2_eq_j_m_i,

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

      k_eq_j_m_i_div_2 => in_k_eq_j_m_i_div_2,

      T                => T_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable V
  -----------------------------------------------------------------------------

  variable_v : v
    port map (
      size         => in_size,
      base1        => PA_i_j_k,
      base2        => PB_i_j_k,
      base3        => in_PA_ip1_j_k_link,
      base4        => in_PB_i_jm1_k_link,

      tetra_base1  => PA_i_j_k,
      tetra_base2  => in_PA_ip1_j_k_link,
      tetra_base3  => in_PA_ip2_j_k_link,
      tetra_base4  => in_PA_ip3_j_k_link,
      tetra_base5  => in_PA_ip4_j_k_link,
      tetra_base6  => in_PA_ip5_j_k_link,

      T_ip1_jm1_1  => in_T_ip1_jm1_k_link,
      T_ip2_jm1_1  => in_T_ip2_jm1_k_link,
      T_ip1_jm2_1  => in_T_ip1_jm2_k_link,
      T_ip2_jm2_1  => in_T_ip2_jm2_k_link,

      V_in         => in_V_ip1_jm1_k_link,

      VBB          => VBB_i_j_k,
      VBI          => VBI_i_j_k,

      j_m_i_le_2   => in_j_m_i_le_2,
      j_m_i_le_3   => in_j_m_i_le_3,
      j_m_i_le_4   => in_j_m_i_le_4,
      j_m_i_le_5   => in_j_m_i_le_5,

      V            => V_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Data variable W
  -----------------------------------------------------------------------------

  variable_w : w
    port map (
      W_ip1_j_k   => in_W_ip1_j_k_link,
      W_i_jm1_k   => in_W_i_jm1_k_link,
      V_i_j_k     => V_i_j_k,

      base1       => PA_i_j_k,
      base2       => PB_i_j_k,
      base3       => in_PA_ip1_j_k_link,
      base4       => in_PB_i_jm1_k_link,

      T           => T_i_j_k,

      V_ip1_j_1   => in_V_ip1_j_k_link,
      V_i_jm1_1   => in_V_i_jm1_k_link,
      V_ip1_jm1_1 => in_V_ip1_jm1_k_link,

      j_m_i_le_2  => in_j_m_i_le_2,

      W           => W_i_j_k
      );

  variable_uz_f : uz_f
    port map (
      clk           => clk,
      reset         => reset,

      j_m_i_le_3_in => in_j_m_i_le_3,

      base1_in      => PA_i_j_k,
      base2_in      => PB_i_j_k,
      base3_in      => in_PB_i_jm1_k_link,
      base4_in      => in_PA_im1_jm1_k_link,

      V_i_j_k_in    => V_i_j_k,
      V_i_jm1_k_in  => in_V_i_jm1_k_link,

      V1            => out_UZ_V1_i_j_k,
      V2            => out_UZ_V2_i_j_k
      );

  -----------------------------------------------------------------------------
  -- Process to register computed values for data variables
  -----------------------------------------------------------------------------
  reg_values_noreset: process (clk)
  begin 
    if rising_edge(clk) then
      -- register computed values: output
      PVI1_i_j_k_reg   <= PVI1_i_j_k;
      PVI2_i_j_k_reg   <= PVI2_i_j_k;
      VBIP_i_j_k_reg   <= VBIP_i_j_k;

      PVB1_i_j_k_reg   <= PVB1_i_j_k;
      PVB2_i_j_k_reg   <= PVB2_i_j_k;
      VBB_i_j_k_reg    <= VBB_i_j_k;

      PW1_i_j_k_reg    <= PW1_i_j_k;
      PW2_i_j_k_reg    <= PW2_i_j_k;
      PW3_i_j_k_reg    <= PW3_i_j_k;
      PW4_i_j_k_reg    <= PW4_i_j_k;
      T_i_j_k_reg      <= T_i_j_k;

      V_i_j_k_reg      <= V_i_j_k;
      W_i_j_k_reg      <= W_i_j_k;

      -- register sequence
      PA_i_j_k_reg     <= PA_i_j_k;
      PB_i_j_k_reg     <= PB_i_j_k;
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
        out_k_eq_j_m_i_m_2   <= in_k_eq_j_m_i_m_2;
        out_k_eq_j_m_i_div_2 <= in_k_eq_j_m_i_div_2;
        out_k2_eq_j_m_i      <= in_k2_eq_j_m_i;
      end if;
    end if;  -- end rising_edge
  end process reg_values;

    out_INT12_INF_i_j_k <= INT12_INF_reg;
    out_INT12_i_j_k     <= INT12_reg;

    out_INT21_INF_i_j_k <= INT21_INF_reg;
    out_INT21_i_j_k     <= INT21_reg;

    out_INT11_INF_i_j_k <= INT11_INF_reg;
    out_INT11_i_j_k     <= INT11_reg;

    out_INT22_INF_i_j_k <= INT22_INF_reg;
    out_INT22_i_j_k     <= INT22_reg;

    out_INT31_INF_i_j_k <= INT31_INF_reg;
    out_INT31_i_j_k     <= INT31_reg;

    out_INT13_INF_i_j_k <= INT13_INF_reg;
    out_INT13_i_j_k     <= INT13_reg;

    out_PVI1_i_j_k      <= PVI1_i_j_k_reg;
    out_PVI2_i_j_k      <= PVI2_i_j_k_reg;
    out_VBIP_i_j_k      <= VBIP_i_j_k_reg;

    out_PVB1_i_j_k      <= PVB1_i_j_k_reg;
    out_PVB2_i_j_k      <= PVB2_i_j_k_reg;
    out_VBB_i_j_k       <= VBB_i_j_k_reg;

    out_PW1_i_j_k       <= PW1_i_j_k_reg;
    out_PW2_i_j_k       <= PW2_i_j_k_reg;
    out_PW3_i_j_k       <= PW3_i_j_k_reg;
    out_PW4_i_j_k       <= PW4_i_j_k_reg;
    out_T_i_j_k         <= T_i_j_k_reg;

    out_V_i_j_k         <= V_i_j_k_reg;
    out_W_i_j_k         <= W_i_j_k_reg;

    out_PA_i_j_k        <= PA_i_j_k_reg;
    out_PB_i_j_k        <= PB_i_j_k_reg;

end rtl;
