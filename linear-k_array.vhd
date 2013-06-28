
-- File: linear-k_array.vhd
-- Date: 9 October 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      Top level Zuker systolic array for linear along axis k array

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.zuker_pkg.all;
use work.energy_pkg.all;

entity zuker is
  port (
    clk                : in  sl;
    reset              : in  sl;

    -- INPUTS
    in_sequence        : in  RESIDUE_ARRAY;
    in_start           : in  sl;

    -- array is busy
    wait_upstrm        : out sl;

    -- OUTPUTS
    out_sequence_score : out slv(31 downto 0);
    out_vld            : out sl
  );
end entity zuker;

architecture top_level of zuker is

  component pe_init_fsm is
    port (
      clk                  : in  sl;
      reset                : in  sl;

      in_sequence          : in  RESIDUE_ARRAY;
      in_start             : in  sl;

      wait_upstrm          : out sl;

      j_m_i_le_2           : out sl;
      j_m_i_le_3           : out sl;
      j_m_i_le_4           : out sl;
      j_m_i_le_5_pe1       : out sl;
      j_m_i_le_5_pe2       : out sl;
      j_m_i_le_6           : out sl;

      size                 : out slv (HAIRPIN_SIZE_WIDTH-1 downto 0);

      init_PA              : out sl;
      initial_PA           : out slv(RESIDUE_WIDTH-1 downto 0);
      init_PB              : out sl;
      initial_PB           : out slv(RESIDUE_WIDTH-1 downto 0);

      k_eq_j_m_i_m_2       : out sl;
      k_eq_j_m_i_div_2     : out sl;
      k2_eq_j_m_i          : out sl;

      matrix_vld           : out sl;
      matrix_reset         : out sl
    );
  end component;

  component pe_k_1 is
    generic (
      USE_BRAM                 : boolean := false
      );
    port (
      clk                      : in  sl;
      reset                    : in  sl;

      in_j_m_i_le_2            : in  sl;
      in_j_m_i_le_3            : in  sl;
      in_j_m_i_le_4            : in  sl;
      in_j_m_i_le_5            : in  sl;
      in_j_m_i_le_6            : in  sl;

      in_size                  : in  slv (HAIRPIN_SIZE_WIDTH-1 downto 0);

      init_PA                  : in  sl;
      initial_PA               : in  slv(RESIDUE_WIDTH-1 downto 0);
      init_PB                  : in  sl;
      initial_PB               : in  slv(RESIDUE_WIDTH-1 downto 0);

      in_INT_A_i_j_kp1         : in  slv (CELL_WIDTH-1 downto 0);
      in_INT_B_i_j_kp1         : in  slv (CELL_WIDTH-1 downto 0);
      in_INT_C_i_j_kp1         : in  slv (CELL_WIDTH-1 downto 0);
      in_VBI_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);
      in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
      in_VBB_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);

      in_k_eq_j_m_i_m_2        : in  sl;
      in_k_eq_j_m_i_div_2      : in  sl;
      in_k2_eq_j_m_i           : in  sl;

      out_INT12_INF_i_j_k      : out sl;
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

      out_k_eq_j_m_i_m_2       : out sl;
      out_k_eq_j_m_i_div_2     : out sl;
      out_k2_eq_j_m_i          : out sl
      );
  end component;

  component pe_k_2 is
    generic (
      USE_BRAM                 : boolean := false
      );
    port (
      clk                      : in  sl;
      reset                    : in  sl;

      in_j_m_i_le_5            : in  sl;

      in_INT12_inf_i_j_k       : in  sl;
      in_INT12_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

      in_INT21_inf_i_j_k       : in  sl;
      in_INT21_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

      in_INT11_inf_i_j_k       : in  sl;
      in_INT11_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

      in_INT22_inf_i_j_k       : in  sl;
      in_INT22_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

      in_INT31_inf_i_j_k       : in  sl;
      in_INT31_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

      in_INT13_inf_i_j_k       : in  sl;
      in_INT13_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);

      in_PVI1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_PVI2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);

      in_V_ip2_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_V_ip2_jm3_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_V_ip2_jm4_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_V_ip3_jm3_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_V_ip3_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_V_ip4_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);

      in_VBI_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);
      in_PVB1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_PVB2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
      in_PW2_ip1_j_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_PW3_i_jm1_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_VBB_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);

      in_PA_ip1_j_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);
      in_PA_ip2_j_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);
      in_PB_i_jm1_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);
      in_PB_i_jm2_km1          : in  slv (RESIDUE_WIDTH-1 downto 0);

      in_k_eq_j_m_i_m_2        : in  sl;
      in_k_eq_j_m_i_div_2      : in  sl;
      in_k2_eq_j_m_i           : in  sl;

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

      out_k_eq_j_m_i_m_2       : out sl;
      out_k_eq_j_m_i_div_2     : out sl;
      out_k2_eq_j_m_i          : out sl
      );
  end component;

  component pe_k_3to4 is
    generic (
      K                        : natural := 5;
      USE_BRAM                 : boolean := false
      );
    port (
      clk                      : in  sl;
      reset                    : in  sl;

      in_PVI1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_PVI2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_VBIP_ip1_jm1_km2      : in  slv (CELL_WIDTH-1 downto 0);
      in_V_ip2_jm2_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_VBI_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);
      in_PVB1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_PVB2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
      in_PW2_ip1_j_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_PW3_i_jm1_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_VBB_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);

      in_k_eq_j_m_i_m_2        : in  sl;
      in_k_eq_j_m_i_div_2      : in  sl;
      in_k2_eq_j_m_i           : in  sl;

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

      out_k_eq_j_m_i_m_2       : out sl;
      out_k_eq_j_m_i_div_2     : out sl;
      out_k2_eq_j_m_i          : out sl
      );
  end component;

  component pe_k_5to30 is
    generic (
      K                        : natural := 5;
      USE_BRAM                 : boolean := false
      );
    port (
      clk                      : in  sl;
      reset                    : in  sl;

      in_PVI1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_PVI2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_VBIP_ip1_jm1_km2      : in  slv (CELL_WIDTH-1 downto 0);
      in_VBI_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);
      in_PVB1_i_jm1_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_PVB2_ip1_j_km1        : in  slv (CELL_WIDTH-1 downto 0);
      in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
      in_PW2_ip1_j_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_PW3_i_jm1_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_VBB_i_j_kp1           : in  slv (CELL_WIDTH-1 downto 0);

      in_k_eq_j_m_i_m_2        : in  sl;
      in_k_eq_j_m_i_div_2      : in  sl;
      in_k2_eq_j_m_i           : in  sl;

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

      out_k_eq_j_m_i_m_2       : out sl;
      out_k_eq_j_m_i_div_2     : out sl;
      out_k2_eq_j_m_i          : out sl
      );
  end component;

  component pe_k_gt30 is
    generic (
      USE_BRAM                 : boolean := false
      );
    port (
      clk                      : in  sl;
      reset                    : in  sl;

      in_T_i_j_kp1             : in  slv (CELL_WIDTH-1 downto 0);
      in_PW2_ip1_j_km1         : in  slv (CELL_WIDTH-1 downto 0);
      in_PW3_i_jm1_km1         : in  slv (CELL_WIDTH-1 downto 0);

      in_k_eq_j_m_i_div_2      : in  sl;
      in_k2_eq_j_m_i           : in  sl;

      out_PW1_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
      out_PW2_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
      out_PW3_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
      out_PW4_i_j_k            : out slv (CELL_WIDTH-1 downto 0);
      out_T_i_j_k              : out slv (CELL_WIDTH-1 downto 0);

      out_k_eq_j_m_i_div_2     : out sl;
      out_k2_eq_j_m_i          : out sl
      );
  end component;

  component min_energy is
    port (
      clk                : in  sl;
      reset              : in  sl;

      in_matrix_reset    : in  sl;

      in_matrix_cell     : in  slv(CELL_WIDTH-1 downto 0);
      in_UZ_V1_i_j_k     : in  slv (CELL_WIDTH-1 downto 0);
      in_UZ_V2_i_j_k     : in  slv (CELL_WIDTH-1 downto 0);
      in_matrix_vld      : in  sl;

      out_matrix_cell    : out slv(CELL_WIDTH-1 downto 0);
      out_matrix_vld     : out sl
    );
  end component;

  -- signals from initialization FSM
  signal j_m_i_le_2           : sl;
  signal j_m_i_le_3           : sl;
  signal j_m_i_le_4           : sl;
  signal j_m_i_le_5_pe1       : sl;
  signal j_m_i_le_5_pe2       : sl;
  signal j_m_i_le_6           : sl;

  signal size                 : slv (HAIRPIN_SIZE_WIDTH-1 downto 0);

  signal init_PA              : sl;
  signal initial_PA           : slv(RESIDUE_WIDTH-1 downto 0);
  signal init_PB              : sl;
  signal initial_PB           : slv(RESIDUE_WIDTH-1 downto 0);

  -- max k value
  --constant MAX_K              : integer := SEQ_LEN-3;
  constant MAX_K              : integer := (SEQ_LEN - 1) / 2;

  -- wires connecting the processing elements
  type PE_CELL_ARRAY is array (1 to MAX_K + 1) of slv(CELL_WIDTH-1 downto 0);
  type PE_RESIDUE_ARRAY is array (1 to MAX_K + 1) of slv(RESIDUE_WIDTH-1 downto 0);

  signal INT12_INF_i_j_1      : sl;
  signal INT12_i_j_1          : slv(CELL_WIDTH-1 downto 0);

  signal INT21_INF_i_j_1      : sl;
  signal INT21_i_j_1          : slv(CELL_WIDTH-1 downto 0);

  signal INT11_INF_i_j_1      : sl;
  signal INT11_i_j_1          : slv(CELL_WIDTH-1 downto 0);

  signal INT22_INF_i_j_1      : sl;
  signal INT22_i_j_1          : slv(CELL_WIDTH-1 downto 0);

  signal INT31_INF_i_j_1      : sl;
  signal INT31_i_j_1          : slv(CELL_WIDTH-1 downto 0);

  signal INT13_INF_i_j_1      : sl;
  signal INT13_i_j_1          : slv(CELL_WIDTH-1 downto 0);

  signal PVI1_i_j_k           : PE_CELL_ARRAY;
  signal PVI2_i_j_k           : PE_CELL_ARRAY;
  signal VBIP_i_j_k           : PE_CELL_ARRAY;
  signal INT_A_i_j_k_2        : slv(CELL_WIDTH-1 downto 0);
  signal INT_B_i_j_k_2        : slv(CELL_WIDTH-1 downto 0);
  signal INT_C_i_j_k_2        : slv(CELL_WIDTH-1 downto 0);
  signal VBI_i_j_k            : PE_CELL_ARRAY;

  signal PVB1_i_j_k           : PE_CELL_ARRAY;
  signal PVB2_i_j_k           : PE_CELL_ARRAY;
  signal VBB_i_j_k            : PE_CELL_ARRAY;

  signal PW1_i_j_k            : PE_CELL_ARRAY;
  signal PW2_i_j_k            : PE_CELL_ARRAY;
  signal PW3_i_j_k            : PE_CELL_ARRAY;
  signal PW4_i_j_k            : PE_CELL_ARRAY;
  signal T_i_j_k              : PE_CELL_ARRAY;

  signal V_i_j_k              : PE_CELL_ARRAY;
  signal W_i_j_k              : PE_CELL_ARRAY;

  signal UZ_V1_i_j_k          : slv(CELL_WIDTH-1 downto 0);
  signal UZ_V2_i_j_k          : slv(CELL_WIDTH-1 downto 0);

  signal PA_i_j_k             : PE_RESIDUE_ARRAY;
  signal PB_i_j_k             : PE_RESIDUE_ARRAY;

  signal k_eq_j_m_i_m_2       : slv(0 to MAX_K);
  signal k_eq_j_m_i_div_2     : slv(0 to MAX_K);
  signal k2_eq_j_m_i          : slv(0 to MAX_K);

  -- signals to matrix store
  signal matrix_vld           : sl;
  signal matrix_reset         : sl;

begin

  -----------------------------------------------------------------------------
  -- Initialize bottom PE using a finite state machine
  -----------------------------------------------------------------------------
  initialize_pes : pe_init_fsm
    port map (
      clk                  => clk,
      reset                => reset,

      in_sequence          => in_sequence,
      in_start             => in_start,

      wait_upstrm          => wait_upstrm,

      j_m_i_le_2           => j_m_i_le_2,
      j_m_i_le_3           => j_m_i_le_3,
      j_m_i_le_4           => j_m_i_le_4,
      j_m_i_le_5_pe1       => j_m_i_le_5_pe1,
      j_m_i_le_5_pe2       => j_m_i_le_5_pe2,
      j_m_i_le_6           => j_m_i_le_6,

      size                 => size,

      init_PA              => init_PA,
      initial_PA           => initial_PA,
      init_PB              => init_PB,
      initial_PB           => initial_PB,

      k_eq_j_m_i_m_2       => k_eq_j_m_i_m_2(0),
      k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(0),
      k2_eq_j_m_i          => k2_eq_j_m_i(0),

      matrix_vld           => matrix_vld,
      matrix_reset         => matrix_reset
    );

  -----------------------------------------------------------------------------
  -- Generate k=1 PE
  -----------------------------------------------------------------------------
  array_pe_k_1 : pe_k_1
    generic map (
      USE_BRAM                 => false
      )
    port map (
      clk                      => clk,
      reset                    => reset,

      in_j_m_i_le_2            => j_m_i_le_2,
      in_j_m_i_le_3            => j_m_i_le_3,
      in_j_m_i_le_4            => j_m_i_le_4,
      in_j_m_i_le_5            => j_m_i_le_5_pe1,
      in_j_m_i_le_6            => j_m_i_le_6,

      in_size                  => size,

      init_PA                  => init_PA,
      initial_PA               => initial_PA,
      init_PB                  => init_PB,
      initial_PB               => initial_PB,

      in_INT_A_i_j_kp1         => INT_A_i_j_k_2,
      in_INT_B_i_j_kp1         => INT_B_i_j_k_2,
      in_INT_C_i_j_kp1         => INT_C_i_j_k_2,
      in_VBI_i_j_kp1           => VBI_i_j_k(2),
      in_T_i_j_kp1             => T_i_j_k(2),
      in_VBB_i_j_kp1           => VBB_i_j_k(2),

      in_k_eq_j_m_i_m_2        => k_eq_j_m_i_m_2(0),
      in_k_eq_j_m_i_div_2      => k_eq_j_m_i_div_2(0),
      in_k2_eq_j_m_i           => k2_eq_j_m_i(0),

      out_INT12_INF_i_j_k      => INT12_INF_i_j_1,
      out_INT12_i_j_k          => INT12_i_j_1,

      out_INT21_INF_i_j_k      => INT21_INF_i_j_1,
      out_INT21_i_j_k          => INT21_i_j_1,

      out_INT11_INF_i_j_k      => INT11_INF_i_j_1,
      out_INT11_i_j_k          => INT11_i_j_1,

      out_INT22_INF_i_j_k      => INT22_INF_i_j_1,
      out_INT22_i_j_k          => INT22_i_j_1,

      out_INT31_inf_i_j_k      => INT31_INF_i_j_1,
      out_INT31_i_j_k          => INT31_i_j_1,

      out_INT13_inf_i_j_k      => INT13_INF_i_j_1,
      out_INT13_i_j_k          => INT13_i_j_1,

      out_PVI1_i_j_k           => PVI1_i_j_k(1),
      out_PVI2_i_j_k           => PVI2_i_j_k(1),
      out_VBIP_i_j_k           => VBIP_i_j_k(1),

      out_PVB1_i_j_k           => PVB1_i_j_k(1),
      out_PVB2_i_j_k           => PVB2_i_j_k(1),
      out_VBB_i_j_k            => VBB_i_j_k(1),

      out_PW1_i_j_k            => PW1_i_j_k(1),
      out_PW2_i_j_k            => PW2_i_j_k(1),
      out_PW3_i_j_k            => PW3_i_j_k(1),
      out_PW4_i_j_k            => PW4_i_j_k(1),
      out_T_i_j_k              => T_i_j_k(1),

      out_V_i_j_k              => V_i_j_k(1),
      out_W_i_j_k              => W_i_j_k(1),

      out_UZ_V1_i_j_k          => UZ_V1_i_j_k,
      out_UZ_V2_i_j_k          => UZ_V2_i_j_k,

      out_PA_i_j_k             => PA_i_j_k(1),
      out_PB_i_j_k             => PB_i_j_k(1),

      out_k_eq_j_m_i_m_2       => k_eq_j_m_i_m_2(1),
      out_k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(1),
      out_k2_eq_j_m_i          => k2_eq_j_m_i(1)
      );

  -----------------------------------------------------------------------------
  -- Generate k=2 PE
  -----------------------------------------------------------------------------
  array_pe_k_2 : pe_k_2
    generic map (
      USE_BRAM                 => (2 <= MAX_BRAM_PE)
      )
    port map (
      clk                      => clk,
      reset                    => reset,

      in_j_m_i_le_5            => j_m_i_le_5_pe2,

      in_INT12_inf_i_j_k       => INT12_INF_i_j_1,
      in_INT12_i_j_k           => INT12_i_j_1,

      in_INT21_inf_i_j_k       => INT21_INF_i_j_1,
      in_INT21_i_j_k           => INT21_i_j_1,

      in_INT11_inf_i_j_k       => INT11_INF_i_j_1,
      in_INT11_i_j_k           => INT11_i_j_1,

      in_INT22_inf_i_j_k       => INT22_INF_i_j_1,
      in_INT22_i_j_k           => INT22_i_j_1,

      in_INT31_inf_i_j_k       => INT31_INF_i_j_1,
      in_INT31_i_j_k           => INT31_i_j_1,

      in_INT13_inf_i_j_k       => INT13_INF_i_j_1,
      in_INT13_i_j_k           => INT13_i_j_1,

      in_PVI1_i_jm1_km1        => PVI1_i_j_k(1),
      in_PVI2_ip1_j_km1        => PVI2_i_j_k(1),

      in_V_ip2_jm2_km1         => V_i_j_k(1),
      in_V_ip2_jm3_km1         => V_i_j_k(1),
      in_V_ip2_jm4_km1         => V_i_j_k(1),
      in_V_ip3_jm3_km1         => V_i_j_k(1),
      in_V_ip3_jm2_km1         => V_i_j_k(1),
      in_V_ip4_jm2_km1         => V_i_j_k(1),

      in_VBI_i_j_kp1           => VBI_i_j_k(3),
      in_PVB1_i_jm1_km1        => PVB1_i_j_k(1),
      in_PVB2_ip1_j_km1        => PVB2_i_j_k(1),
      in_T_i_j_kp1             => T_i_j_k(3),
      in_PW2_ip1_j_km1         => PW2_i_j_k(1),
      in_PW3_i_jm1_km1         => PW3_i_j_k(1),
      in_VBB_i_j_kp1           => VBB_i_j_k(3),

      in_PA_ip1_j_km1          => PA_i_j_k(1),
      in_PA_ip2_j_km1          => PA_i_j_k(1),
      in_PB_i_jm1_km1          => PB_i_j_k(1),
      in_PB_i_jm2_km1          => PB_i_j_k(1),

      in_k_eq_j_m_i_m_2        => k_eq_j_m_i_m_2(1),
      in_k_eq_j_m_i_div_2      => k_eq_j_m_i_div_2(1),
      in_k2_eq_j_m_i           => k2_eq_j_m_i(1),

      out_PVI1_i_j_k           => PVI1_i_j_k(2),
      out_PVI2_i_j_k           => PVI2_i_j_k(2),
      out_VBIP_i_j_k           => VBIP_i_j_k(2),
      out_INT_A_i_j_k          => INT_A_i_j_k_2,
      out_INT_B_i_j_k          => INT_B_i_j_k_2,
      out_INT_C_i_j_k          => INT_C_i_j_k_2,
      out_VBI_i_j_k            => VBI_i_j_k(2),

      out_PVB1_i_j_k           => PVB1_i_j_k(2),
      out_PVB2_i_j_k           => PVB2_i_j_k(2),
      out_VBB_i_j_k            => VBB_i_j_k(2),

      out_PW1_i_j_k            => PW1_i_j_k(2),
      out_PW2_i_j_k            => PW2_i_j_k(2),
      out_PW3_i_j_k            => PW3_i_j_k(2),
      out_PW4_i_j_k            => PW4_i_j_k(2),
      out_T_i_j_k              => T_i_j_k(2),

      out_k_eq_j_m_i_m_2       => k_eq_j_m_i_m_2(2),
      out_k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(2),
      out_k2_eq_j_m_i          => k2_eq_j_m_i(2)
      );

  -----------------------------------------------------------------------------
  -- Generate k=3 PE
  -----------------------------------------------------------------------------
  array_pe_k_3 : pe_k_3to4
   generic map (
     K                         => 3,
     USE_BRAM                  => (3 <= MAX_BRAM_PE)
     )
    port map (
      clk                      => clk,
      reset                    => reset,

      in_PVI1_i_jm1_km1        => PVI1_i_j_k(2),
      in_PVI2_ip1_j_km1        => PVI2_i_j_k(2),
      in_VBIP_ip1_jm1_km2      => VBIP_i_j_k(1),
      in_V_ip2_jm2_km1         => V_i_j_k(2),
      in_VBI_i_j_kp1           => VBI_i_j_k(4),
      in_PVB1_i_jm1_km1        => PVB1_i_j_k(2),
      in_PVB2_ip1_j_km1        => PVB2_i_j_k(2),
      in_T_i_j_kp1             => T_i_j_k(4),
      in_PW2_ip1_j_km1         => PW2_i_j_k(2),
      in_PW3_i_jm1_km1         => PW3_i_j_k(2),
      in_VBB_i_j_kp1           => VBB_i_j_k(4),

      in_k_eq_j_m_i_m_2        => k_eq_j_m_i_m_2(2),
      in_k_eq_j_m_i_div_2      => k_eq_j_m_i_div_2(2),
      in_k2_eq_j_m_i           => k2_eq_j_m_i(2),

      out_PVI1_i_j_k           => PVI1_i_j_k(3),
      out_PVI2_i_j_k           => PVI2_i_j_k(3),
      out_VBIP_i_j_k           => VBIP_i_j_k(3),
      out_VBI_i_j_k            => VBI_i_j_k(3),

      out_PVB1_i_j_k           => PVB1_i_j_k(3),
      out_PVB2_i_j_k           => PVB2_i_j_k(3),
      out_VBB_i_j_k            => VBB_i_j_k(3),

      out_PW1_i_j_k            => PW1_i_j_k(3),
      out_PW2_i_j_k            => PW2_i_j_k(3),
      out_PW3_i_j_k            => PW3_i_j_k(3),
      out_PW4_i_j_k            => PW4_i_j_k(3),
      out_T_i_j_k              => T_i_j_k(3),

      out_k_eq_j_m_i_m_2       => k_eq_j_m_i_m_2(3),
      out_k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(3),
      out_k2_eq_j_m_i          => k2_eq_j_m_i(3)
      );

  -----------------------------------------------------------------------------
  -- Generate k=4 PE
  -----------------------------------------------------------------------------
  array_pe_k_4 : pe_k_3to4
   generic map (
     K                         => 4,
     USE_BRAM                  => (4 <= MAX_BRAM_PE)
     )
    port map (
      clk                      => clk,
      reset                    => reset,

      in_PVI1_i_jm1_km1        => PVI1_i_j_k(3),
      in_PVI2_ip1_j_km1        => PVI2_i_j_k(3),
      in_VBIP_ip1_jm1_km2      => VBIP_i_j_k(2),
      in_V_ip2_jm2_km1         => V_i_j_k(3),
      in_VBI_i_j_kp1           => VBI_i_j_k(5),
      in_PVB1_i_jm1_km1        => PVB1_i_j_k(3),
      in_PVB2_ip1_j_km1        => PVB2_i_j_k(3),
      in_T_i_j_kp1             => T_i_j_k(5),
      in_PW2_ip1_j_km1         => PW2_i_j_k(3),
      in_PW3_i_jm1_km1         => PW3_i_j_k(3),
      in_VBB_i_j_kp1           => VBB_i_j_k(5),

      in_k_eq_j_m_i_m_2        => k_eq_j_m_i_m_2(3),
      in_k_eq_j_m_i_div_2      => k_eq_j_m_i_div_2(3),
      in_k2_eq_j_m_i           => k2_eq_j_m_i(3),

      out_PVI1_i_j_k           => PVI1_i_j_k(4),
      out_PVI2_i_j_k           => PVI2_i_j_k(4),
      out_VBIP_i_j_k           => VBIP_i_j_k(4),
      out_VBI_i_j_k            => VBI_i_j_k(4),

      out_PVB1_i_j_k           => PVB1_i_j_k(4),
      out_PVB2_i_j_k           => PVB2_i_j_k(4),
      out_VBB_i_j_k            => VBB_i_j_k(4),

      out_PW1_i_j_k            => PW1_i_j_k(4),
      out_PW2_i_j_k            => PW2_i_j_k(4),
      out_PW3_i_j_k            => PW3_i_j_k(4),
      out_PW4_i_j_k            => PW4_i_j_k(4),
      out_T_i_j_k              => T_i_j_k(4),

      out_k_eq_j_m_i_m_2       => k_eq_j_m_i_m_2(4),
      out_k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(4),
      out_k2_eq_j_m_i          => k2_eq_j_m_i(4)
      );

  -----------------------------------------------------------------------------
  -- Generate VBB, VBI + T, PW PEs, k > 4 .. <= 30  (SEQ_LEN - 1 - 2)
  -----------------------------------------------------------------------------
  --array_pe_k_5to30 : for k in 5 to MAX_K
  array_pe_k_5to30 : for k in 5 to MAXLOOP_SIZE
    generate
      indiv_pe : pe_k_5to30
        generic map (
          K                        => k,
          USE_BRAM                 => (k <= MAX_BRAM_PE)
          )
        port map (
          clk                      => clk,
          reset                    => reset,

          in_PVI1_i_jm1_km1        => PVI1_i_j_k(k-1),
          in_PVI2_ip1_j_km1        => PVI2_i_j_k(k-1),
          in_VBIP_ip1_jm1_km2      => VBIP_i_j_k(k-2),
          in_VBI_i_j_kp1           => VBI_i_j_k(k+1),
          in_PVB1_i_jm1_km1        => PVB1_i_j_k(k-1),
          in_PVB2_ip1_j_km1        => PVB2_i_j_k(k-1),
          in_T_i_j_kp1             => T_i_j_k(k+1),
          in_PW2_ip1_j_km1         => PW2_i_j_k(k-1),
          in_PW3_i_jm1_km1         => PW3_i_j_k(k-1),
          in_VBB_i_j_kp1           => VBB_i_j_k(k+1),

          in_k_eq_j_m_i_m_2        => k_eq_j_m_i_m_2(k-1),
          in_k_eq_j_m_i_div_2      => k_eq_j_m_i_div_2(k-1),
          in_k2_eq_j_m_i           => k2_eq_j_m_i(k-1),

          out_PVI1_i_j_k           => PVI1_i_j_k(k),
          out_PVI2_i_j_k           => PVI2_i_j_k(k),
          out_VBIP_i_j_k           => VBIP_i_j_k(k),
          out_VBI_i_j_k            => VBI_i_j_k(k),

          out_PVB1_i_j_k           => PVB1_i_j_k(k),
          out_PVB2_i_j_k           => PVB2_i_j_k(k),
          out_VBB_i_j_k            => VBB_i_j_k(k),

          out_PW1_i_j_k            => PW1_i_j_k(k),
          out_PW2_i_j_k            => PW2_i_j_k(k),
          out_PW3_i_j_k            => PW3_i_j_k(k),
          out_PW4_i_j_k            => PW4_i_j_k(k),
          out_T_i_j_k              => T_i_j_k(k),

          out_k_eq_j_m_i_m_2       => k_eq_j_m_i_m_2(k),
          out_k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(k),
          out_k2_eq_j_m_i          => k2_eq_j_m_i(k)
          );
    end generate;

  -- initialize border dependencies
  VBI_i_j_k(MAXLOOP_SIZE + 1) <= PVE_INFINITY;
  VBB_i_j_k(MAXLOOP_SIZE + 1) <= PVE_INFINITY;

  -----------------------------------------------------------------------------
  -- Generate only T, PW PEs, k > 30  (SEQ_LEN - 1 - 2)
  -----------------------------------------------------------------------------
  array_pe_k_gt30 : for k in MAXLOOP_SIZE + 1 to MAX_K
    generate
      indiv_pe : pe_k_gt30
        generic map (
          USE_BRAM        => (k <= MAX_BRAM_PE)
                                 -- use block rams for some PEs
                                 -- 'true' to use block rams for
                                 -- large delays, 'false' to use
                                 -- LUT memories.
          )
        port map (
          clk                      => clk,
          reset                    => reset,

          in_T_i_j_kp1             => T_i_j_k(k+1),
          in_PW2_ip1_j_km1         => PW2_i_j_k(k-1),
          in_PW3_i_jm1_km1         => PW3_i_j_k(k-1),

          in_k_eq_j_m_i_div_2      => k_eq_j_m_i_div_2(k-1),
          in_k2_eq_j_m_i           => k2_eq_j_m_i(k-1),

          out_PW1_i_j_k            => PW1_i_j_k(k),
          out_PW2_i_j_k            => PW2_i_j_k(k),
          out_PW3_i_j_k            => PW3_i_j_k(k),
          out_PW4_i_j_k            => PW4_i_j_k(k),
          out_T_i_j_k              => T_i_j_k(k),

          out_k_eq_j_m_i_div_2     => k_eq_j_m_i_div_2(k),
          out_k2_eq_j_m_i          => k2_eq_j_m_i(k)
          );
    end generate;

  -- store matrix cell values from PE 1 and compute minimum fold energy
  compute_fold_energy : min_energy
    port map (
      clk              => clk,
      reset            => reset,

      in_matrix_reset  => matrix_reset,

      in_matrix_cell   => V_i_j_k(1),
      in_UZ_V1_i_j_k   => UZ_V1_i_j_k,
      in_UZ_V2_i_j_k   => UZ_V2_i_j_k,
      in_matrix_vld    => matrix_vld,

      out_matrix_cell  => out_sequence_score(CELL_WIDTH-1 downto 0),
      out_matrix_vld   => out_vld
    );

    out_sequence_score(31 downto CELL_WIDTH) <= ZEROES(31 downto CELL_WIDTH);

    assert (out_vld = '0') report
      "Processing completed" severity note;

end architecture top_level;
