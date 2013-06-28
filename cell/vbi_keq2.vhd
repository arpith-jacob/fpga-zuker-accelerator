
-- File: vbi_keq2.vhd
-- Date: 10 Dec 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI for k=2.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbi_keq2 is
  port (
    VBI_in                : in  slv (CELL_WIDTH-1 downto 0);

    -- internal loop special case energies
    -- 1x2 internal loop
    INT12_inf_i_j_k       : in  sl;
    INT12_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
    V_ip2_jm3_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

    -- 2x1 internal loop
    INT21_inf_i_j_k       : in  sl;
    INT21_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
    V_ip3_jm2_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

    -- 1x1 internal loop
    INT11_inf_i_j_k       : in  sl;
    INT11_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
    V_ip2_jm2_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

    -- 2x2 internal loop
    INT22_inf_i_j_k       : in  sl;
    INT22_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
    V_ip3_jm3_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

    -- 3x1 internal loop
    INT31_inf_i_j_k       : in  sl;
    INT31_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
    V_ip4_jm2_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

    -- 1x3 internal loop
    INT13_inf_i_j_k       : in  sl;
    INT13_i_j_k           : in  slv (CELL_WIDTH-1 downto 0);
    V_ip2_jm4_km1_link    : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition for k = j - i - 2
    k_eq_j_m_i_m_2        : in  sl;

    INT_A                 : out slv (CELL_WIDTH-1 downto 0);
    INT_B                 : out slv (CELL_WIDTH-1 downto 0);
    INT_C                 : out slv (CELL_WIDTH-1 downto 0);
    VBI                   : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbi_keq2 is

  signal energy_INT12_inf    : sl;
  signal energy_INT12        : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT21_inf    : sl;
  signal energy_INT21        : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT11_inf    : sl;
  signal energy_INT11        : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT22_inf    : sl;
  signal energy_INT22        : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT31_inf    : sl;
  signal energy_INT31        : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT13_inf    : sl;
  signal energy_INT13        : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT1221_inf  : sl;
  signal energy_INT1221_lt   : sl;
  signal energy_INT1221      : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT1122_inf  : sl;
  signal energy_INT1122_lt   : sl;
  signal energy_INT1122      : slv (CELL_WIDTH-1 downto 0);

  signal energy_INT1331_inf  : sl;
  signal energy_INT1331_lt   : sl;
  signal energy_INT1331      : slv (CELL_WIDTH-1 downto 0);

begin

  -----------------------------------------------------------------------------
  -- Compute internal loop, special cases energy contributions
  -----------------------------------------------------------------------------

  -----------------------------------------------------------------------------
  -- internal loop 1x2 = loop energy + V(i+2, j-3, k-1)
  -----------------------------------------------------------------------------
  energy_INT12       <= INT12_i_j_k + V_ip2_jm3_km1_link;
  energy_INT12_inf   <= '1' when V_ip2_jm3_km1_link >= PVE_INFINITY else
                        INT12_inf_i_j_k;

  -----------------------------------------------------------------------------
  -- internal loop 2x1 = loop energy + V(i+3, j-2, k-1)
  -----------------------------------------------------------------------------
  energy_INT21       <= INT21_i_j_k + V_ip3_jm2_km1_link;
  energy_INT21_inf   <= '1' when V_ip3_jm2_km1_link >= PVE_INFINITY else
                        INT21_inf_i_j_k;

  energy_INT1221_lt  <= '1' when energy_INT12 < energy_INT21 else '0';
  energy_INT1221_inf <= energy_INT12_inf and energy_INT21_inf;
  energy_INT1221     <= PVE_INFINITY when energy_INT1221_inf = '1' else
                        energy_INT12 when (energy_INT1221_lt = '1' and
                                           energy_INT12_inf = '0') or
                                           energy_INT21_inf = '1' else
                        energy_INT21;

  -----------------------------------------------------------------------------
  -- internal loop 3x1 = loop energy + V(i+4, j-2, k-1)
  -----------------------------------------------------------------------------
  energy_INT31       <= INT31_i_j_k + V_ip4_jm2_km1_link;
  energy_INT31_inf   <= '1' when V_ip4_jm2_km1_link >= PVE_INFINITY else
                        INT31_inf_i_j_k;

  -----------------------------------------------------------------------------
  -- internal loop 1x3 = loop energy + V(i+2, j-4, k-1)
  -----------------------------------------------------------------------------
  energy_INT13       <= INT13_i_j_k + V_ip2_jm4_km1_link;
  energy_INT13_inf   <= '1' when V_ip2_jm4_km1_link >= PVE_INFINITY else
                        INT13_inf_i_j_k;

  energy_INT1331_lt  <= '1' when energy_INT13 < energy_INT31 else '0';
  energy_INT1331_inf <= energy_INT13_inf and energy_INT31_inf;
  energy_INT1331     <= PVE_INFINITY when energy_INT1331_inf = '1' else
                        energy_INT13 when (energy_INT1331_lt = '1' and
                                           energy_INT13_inf = '0') or
                                           energy_INT31_inf = '1' else
                        energy_INT31;

  -----------------------------------------------------------------------------
  -- internal loop 1x1 = loop energy + V(i+2, j-2, k-1)
  -----------------------------------------------------------------------------
  energy_INT11       <= INT11_i_j_k + V_ip2_jm2_km1_link;
  energy_INT11_inf   <= '1' when V_ip2_jm2_km1_link >= PVE_INFINITY else
                        INT11_inf_i_j_k;

  -----------------------------------------------------------------------------
  -- internal loop 2x2 = loop energy + V(i+3, j-3, k-1)
  -----------------------------------------------------------------------------
  energy_INT22       <= INT22_i_j_k + V_ip3_jm3_km1_link;
  energy_INT22_inf   <= '1' when V_ip3_jm3_km1_link >= PVE_INFINITY else
                        INT22_inf_i_j_k;

  energy_INT1122_lt  <= '1' when energy_INT11 < energy_INT22 else '0';
  energy_INT1122_inf <= energy_INT11_inf and energy_INT22_inf;
  energy_INT1122     <= PVE_INFINITY when energy_INT1122_inf = '1' else
                        energy_INT11 when (energy_INT1122_lt = '1' and
                                           energy_INT11_inf = '0') or
                                           energy_INT22_inf = '1' else
                        energy_INT22;

  -----------------------------------------------------------------------------
  -- Send output.  We minimize among the three in PE k=1 to improve timing
  -----------------------------------------------------------------------------
  INT_A   <= energy_INT1221;

  INT_B   <= energy_INT1331;

  INT_C   <= energy_INT1122;

  -----------------------------------------------------------------------------
  -- Pipeline VBI contribution for larger internal loops
  -----------------------------------------------------------------------------
  -- VBI_in is VBI(i, j, k + 1) which is undefined when k = j - i - 2
  VBI <= PVE_INFINITY when k_eq_j_m_i_m_2 = '1' else VBI_in;

end behav;
