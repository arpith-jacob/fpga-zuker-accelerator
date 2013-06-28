
-- File: vbip_keq1.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI' for k=1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbip_keq1 is
  port (
    PVI1  : in  slv (CELL_WIDTH-1 downto 0);
    PVI2  : in  slv (CELL_WIDTH-1 downto 0);

    VBIP  : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbip_keq1 is

  signal PVI1_inf               : sl;
  signal PVI2_inf               : sl;

  signal PVI1_plus_ebiasymmetry : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_plus_ebiasymmetry : slv (CELL_WIDTH-1 downto 0);

  signal VBIP_lt                : sl;

begin

  PVI1_inf <= '1' when PVI1 >= PVE_INFINITY else '0';
  PVI2_inf <= '1' when PVI2 >= PVE_INFINITY else '0';

  -- add ebiasymmetry for size 1
  -- PVI1(i, j, k) + ebiasymmetry(k = 1)
  PVI1_plus_ebiasymmetry <= PVE_INFINITY when PVI1_inf = '1' else
                            PVI1 + E_EBIASYMMETRY(1);

  -- PVI2(i, j, k) + ebiasymmetry(k = 1)
  PVI2_plus_ebiasymmetry <= PVE_INFINITY when PVI2_inf = '1' else
                            PVI2 + E_EBIASYMMETRY(1);

  -- min of above sums
  -- min ( PVI1(i, j, k) + ebiasymmetry(k = 1),
  --       PVI2(i, j, k) + ebiasymmetry(k = 1)
  --     )
  VBIP_lt <= '1' when PVI1_plus_ebiasymmetry < PVI2_plus_ebiasymmetry
             else
             '0';

  VBIP    <= PVI1_plus_ebiasymmetry when VBIP_lt = '1'
             else
             PVI2_plus_ebiasymmetry;

end behav;
