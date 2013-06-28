
-- File: t.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes T
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity t is
  port (
    T_in             : in  slv (CELL_WIDTH-1 downto 0);
    PW1              : in  slv (CELL_WIDTH-1 downto 0);
    PW2              : in  slv (CELL_WIDTH-1 downto 0);
    PW3              : in  slv (CELL_WIDTH-1 downto 0);
    PW4              : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition: 2k = j - i
    -- this is for both exact multiple and not!
    k_eq_j_m_i_div_2 : in  sl;

    T                : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of t is

  signal PW1_inf         : sl;
  signal PW2_inf         : sl;
  signal PW3_inf         : sl;
  signal PW4_inf         : sl;

  signal PW1_plus_PW2       : slv (CELL_WIDTH-1 downto 0);
  signal PW3_plus_PW4       : slv (CELL_WIDTH-1 downto 0);

  signal PW12_lt_PW34       : sl;
  signal PW12_min_PW34      : slv (CELL_WIDTH-1 downto 0);

--  signal T_lt_PW1_plus_PW2  : sl;
--  signal T_min_PW1_plus_PW2 : slv (CELL_WIDTH-1 downto 0);

  signal T_lt               : sl;

begin

  -----------------------------------------------------------------------------
  -- Compute PW1(i, j, k) + PW2(i, j, k)
  -----------------------------------------------------------------------------
  PW1_inf      <= '1' when PW1 >= PVE_INFINITY else '0';
  PW2_inf      <= '1' when PW2 >= PVE_INFINITY else '0';

  PW1_plus_PW2 <= PW1 + PW2;

  -----------------------------------------------------------------------------
  -- Compute PW3(i, j, k) + PW4(i, j, k)
  -----------------------------------------------------------------------------
  PW3_inf      <= '1' when PW3 >= PVE_INFINITY else '0';
  PW4_inf      <= '1' when PW4 >= PVE_INFINITY else '0';

  PW3_plus_PW4 <= PW3 + PW4;

  -----------------------------------------------------------------------------
  -- Compute min ( PW1(i, j, k) + PW2(i, j, k) , PW3(i, j, k) + PW4(i, j, k) )
  -----------------------------------------------------------------------------

  -- is PW1(i, j, k) + PW2(i, j, k) < PW3(i, j, k) + PW4(i, j, k) ?
  PW12_lt_PW34  <= '1' when PW1_plus_PW2 < PW3_plus_PW4 else '0';

  PW12_min_PW34 <= PVE_INFINITY when (PW1_inf = '1' or PW2_inf = '1') and
                                     (PW3_inf = '1' or PW4_inf = '1') else
                   PW3_plus_PW4 when PW1_inf = '1' or PW2_inf = '1' else
                   PW1_plus_PW2 when PW12_lt_PW34 = '1' or
                                     PW3_inf = '1' or PW4_inf = '1' else
                   PW3_plus_PW4;

  -----------------------------------------------------------------------------
  -- Compute min ( PW1(i, j, k) + PW2(i, j, k) , T(i, j, k + 1) )
  -----------------------------------------------------------------------------

  -- T_in is T(i, j, k + 1) which is undefined when 2k = j - i
--  T_aggregate  <= PVE_INFINITY when k_eq_j_m_i_div_2 = '1' else T_in;

  -- is T(i, j, k + 1) < PW1(i, j, k) + PW2(i, j, k) ??
--  T_lt_PW1_plus_PW2 <= '1' when T_aggregate < PW1_plus_PW2 else '0';

--  T_min_PW1_plus_PW2 <= T_aggregate when T_lt_PW1_plus_PW2 = '1' or
--                                         PW1_inf = '1' or PW2_inf = '1' else
--                        PW1_plus_PW2;

  -----------------------------------------------------------------------------
  -- Compute min ( PW3(i, j, k) + PW4(i, j, k) , minval )
  -----------------------------------------------------------------------------

  -- is PW3(i, j, k) + PW4(i, j, k) <
  --           min ( PW1(i, j, k) + PW2(i, j, k) , T(i, j, k + 1) )
--  T_lt <= '1' when PW3_plus_PW4 < T_min_PW1_plus_PW2 else '0';

--  T    <= PW3_plus_PW4 when T_lt = '1' and PW3_inf = '0' and PW4_inf = '0' else
--          T_min_PW1_plus_PW2;

  T_lt <= '1' when PW12_min_PW34 < T_in else '0';

  -- T_in is T(i, j, k + 1) which is undefined when 2k = j - i
  T    <= PW12_min_PW34 when T_lt = '1' or k_eq_j_m_i_div_2 = '1' else
          T_in;

end behav;
