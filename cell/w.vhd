
-- File: w.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes W
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity w is
  port (
    W_ip1_j_k   : in  slv (CELL_WIDTH-1 downto 0);
    W_i_jm1_k   : in  slv (CELL_WIDTH-1 downto 0);
    V_i_j_k     : in  slv (CELL_WIDTH-1 downto 0);

    -- PA_i_j_k
    base1       : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PB_i_j_k
    base2       : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PA_ip1_j_k
    base3       : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PB_i_jm1_k
    base4       : in  slv (RESIDUE_WIDTH-1 downto 0);

    T           : in  slv (CELL_WIDTH-1 downto 0);

    V_ip1_j_1   : in  slv (CELL_WIDTH-1 downto 0);
    V_i_jm1_1   : in  slv (CELL_WIDTH-1 downto 0);
    V_ip1_jm1_1 : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition for j - i <= 2
    j_m_i_le_2  : in  sl;

    W           : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of w is

  component delta is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  signal Wb_lt              : sl;
  signal Wb_min             : slv (CELL_WIDTH-1 downto 0);

  signal bases32            : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair32          : slv (3 downto 0);
  signal bases14            : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair14          : slv (3 downto 0);
  signal bases34            : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair34          : slv (3 downto 0);
  signal base1_int          : slv (RESIDUE_WIDTH-1 downto 0);
  signal base2_int          : slv (RESIDUE_WIDTH-1 downto 0);

  signal V_ip1_j_1_inf      : sl;
  signal V_ip1_j_1_dangle   : slv (CELL_WIDTH-1 downto 0);
  signal W_V_lt             : sl;
  signal W_V                : slv (CELL_WIDTH-1 downto 0);

  signal V_i_jm1_1_inf      : sl;
  signal V_i_jm1_1_dangle   : slv (CELL_WIDTH-1 downto 0);
  signal V_ip1_jm1_1_inf    : sl;
  signal V_ip1_jm1_1_dangle : slv (CELL_WIDTH-1 downto 0);

  signal V_2_lt             : sl;
  signal V_2                : slv (CELL_WIDTH-1 downto 0);
  signal WV_lt              : sl;
  signal WV_min             : slv (CELL_WIDTH-1 downto 0);

  signal delta_energy       : slv (CELL_WIDTH-1 downto 0);
  signal delta_inf          : sl;

  signal V_inf              : sl;
  signal V_plus_delta       : slv (CELL_WIDTH-1 downto 0);
  signal TWV_lt             : sl;
  signal TWV_min            : slv (CELL_WIDTH-1 downto 0);

  signal W_lt               : sl;

begin

  -----------------------------------------------------------------------------
  -- Compute min ( W(i+1, j, k) + b, W(i, j-1, k) + b )
  -----------------------------------------------------------------------------

  -- b in our case = 0, so we can ignore it

  Wb_lt  <= '1' when W_ip1_j_k < W_i_jm1_k else '0';
  Wb_min <= W_ip1_j_k when Wb_lt = '1' else W_i_jm1_k;

  -- W is only valid if j - i > 2

  -----------------------------------------------------------------------------
  -- Compute dangling contributions
  -----------------------------------------------------------------------------

  bases32   <= base3(1 downto 0) & base2(1 downto 0);
  bp_pair32 <= "0001" when bases32 = "0110" else
               "0010" when bases32 = "1001" else
               "0011" when bases32 = "1011" else
               "0100" when bases32 = "1110" else
               "0101" when bases32 = "0011" else
               "0110" when bases32 = "1100" else
               "0000";

  bases14   <= base1(1 downto 0) & base4(1 downto 0);
  bp_pair14 <= "0001" when bases14 = "0110" else
               "0010" when bases14 = "1001" else
               "0011" when bases14 = "1011" else
               "0100" when bases14 = "1110" else
               "0101" when bases14 = "0011" else
               "0110" when bases14 = "1100" else
               "0000";

  bases34   <= base3(1 downto 0) & base4(1 downto 0);
  bp_pair34 <= "0001" when bases34 = "0110" else
               "0010" when bases34 = "1001" else
               "0011" when bases34 = "1011" else
               "0100" when bases34 = "1110" else
               "0101" when bases34 = "0011" else
               "0110" when bases34 = "1100" else
               "0000";

  -- treating these bases as signed numbers, need to increase bits
  -- here we're ignoring the valid bit
  base1_int <= "0" & base1(RESIDUE_WIDTH-2 downto 0);
  base2_int <= "0" & base2(RESIDUE_WIDTH-2 downto 0);

  -- invalid when V_in is infinity
  V_ip1_j_1_inf    <= '1' when V_ip1_j_1 >= PVE_INFINITY else '0';
  V_ip1_j_1_dangle <= V_ip1_j_1 +
                          E_DANGLE5_MLINTERN( conv_integer(bp_pair32) )
                                            ( conv_integer(base1_int) );

  -- Compute min ( W(i+1, j, k) + b, W(i, j-1, k) + b, ... )
  W_V_lt             <= '1' when Wb_min < V_ip1_j_1_dangle else
                        '0';
  -- V is not valid when j - i <= 2
  -- W is not valid when j - i <= 2
  W_V                <= PVE_INFINITY when j_m_i_le_2 = '1' else
                        Wb_min       when W_V_lt = '1' or
                                          V_ip1_j_1_inf = '1' else
                        V_ip1_j_1_dangle;


  -- invalid when V_in is infinity or j - i <= 2
  V_i_jm1_1_inf    <= '1' when V_i_jm1_1 >= PVE_INFINITY else j_m_i_le_2;
  V_i_jm1_1_dangle <= V_i_jm1_1 +
                          E_DANGLE3_MLINTERN( conv_integer(bp_pair14) )
                                            ( conv_integer(base2_int) );

  V_ip1_jm1_1_inf    <= '1' when V_ip1_jm1_1 >= PVE_INFINITY else j_m_i_le_2;
  V_ip1_jm1_1_dangle <= V_ip1_jm1_1 +
                          E_DANGLE5_MLINTERN( conv_integer(bp_pair34) )
                                            ( conv_integer(base1_int) ) +
                          E_DANGLE3( conv_integer(bp_pair34) )
                                   ( conv_integer(base2_int) );

  V_2_lt             <= '1' when V_i_jm1_1_dangle < V_ip1_jm1_1_dangle else
                        '0';
  V_2                <= PVE_INFINITY when (V_i_jm1_1_inf = '1' and
                                           V_ip1_jm1_1_inf = '1') else
                        V_i_jm1_1_dangle when (V_2_lt = '1' and
                                                 V_i_jm1_1_inf = '0') or
                                               V_ip1_jm1_1_inf = '1' else
                        V_ip1_jm1_1_dangle;

  WV_lt  <= '1' when W_V < V_2 else '0';
  WV_min <= W_V when WV_lt = '1' else V_2;

  -----------------------------------------------------------------------------
  -- Compute min ( T(i, j, k), WV )
  -----------------------------------------------------------------------------

  -- T is only valid if j - i <= 1 (not computed)
  TWV_lt  <= '1' when T < WV_min else '0';
  TWV_min <= T             when TWV_lt = '1' else
             WV_min;

  -----------------------------------------------------------------------------
  -- Compute V(i, j, k) + delta
  -----------------------------------------------------------------------------

  compute_delta : delta
    port map (
      base1  => base1,
      base2  => base2,
      inf    => delta_inf,
      energy => delta_energy
      );

  V_inf        <= '1' when V_i_j_k >= PVE_INFINITY else delta_inf;

  -- V(i, j, k) + delta
  V_plus_delta <= V_i_j_k + delta_energy;

  -----------------------------------------------------------------------------
  -- Compute final score: min ( TWV, V(i, j, k) + delta )
  -----------------------------------------------------------------------------

  W_lt <= '1' when TWV_min < V_plus_delta else '0';
  W    <= TWV_min when W_lt = '1' or V_inf = '1' else V_plus_delta;

end behav;
