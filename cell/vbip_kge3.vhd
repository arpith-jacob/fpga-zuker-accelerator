
-- File: vbip_kge3.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI' for k>=3.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbip_kge3 is
  generic (
    K       : natural := 3
    );
  port (
    VBIP_in : in  slv (CELL_WIDTH-1 downto 0);
    PVI1    : in  slv (CELL_WIDTH-1 downto 0);
    PVI2    : in  slv (CELL_WIDTH-1 downto 0);

    VBIP    : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbip_kge3 is

  signal PVI1_inf                 : sl;
  signal PVI2_inf                 : sl;

  signal PVI1_plus_ebiasymmetry   : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_plus_ebiasymmetry   : slv (CELL_WIDTH-1 downto 0);

  signal PVI_min_lt               : sl;
  signal PVI_min                  : slv (CELL_WIDTH-1 downto 0);

  signal PVI_min_lt_VBIP_in       : sl;

begin

  -----------------------------------------------------------------------------
  -- Minimum of PVI1 and PVI2
  -----------------------------------------------------------------------------

  PVI1_inf <= '1' when PVI1 >= PVE_INFINITY else '0';
  PVI2_inf <= '1' when PVI2 >= PVE_INFINITY else '0';

  -- add ebiasymmetry for size K
  -- PVI1(i, j, k) + ebiasymmetry(k)
  PVI1_plus_ebiasymmetry <= PVE_INFINITY when PVI1_inf = '1' else
                            PVI1 + E_EBIASYMMETRY(K);

  -- PVI2(i, j, k) + ebiasymmetry(k)
  PVI2_plus_ebiasymmetry <= PVE_INFINITY when PVI2_inf = '1' else
                            PVI2 + E_EBIASYMMETRY(K);

  -- min of above sums
  -- min ( PVI1(i, j, k) + ebiasymmetry(k),
  --       PVI2(i, j, k) + ebiasymmetry(k)
  --     )
  PVI_min_lt <= '1' when PVI1_plus_ebiasymmetry < PVI2_plus_ebiasymmetry else
                '0';

  PVI_min    <= PVI1_plus_ebiasymmetry when PVI_min_lt = '1' else
                PVI2_plus_ebiasymmetry;


  -----------------------------------------------------------------------------
  -- Final minimum
  -----------------------------------------------------------------------------

  -- now compute the final min
  -- min ( PVI1(i, j, k) + ebiasymmetry(k = 2),
  --       PVI2(i, j, k) + ebiasymmetry(k = 2),
  --       VBI'(i+1, j-1, k-2)
  --     )
  PVI_min_lt_VBIP_in <= '1' when PVI_min < VBIP_in else
                        '0';

  -- send VBI'
  VBIP <= PVI_min when PVI_min_lt_VBIP_in = '1' else VBIP_in;

end behav;
