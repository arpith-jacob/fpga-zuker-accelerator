
-- File: vbip_keq2.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI' for k=2.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbip_keq2 is
  port (
    PVI1       : in  slv (CELL_WIDTH-1 downto 0);
    PVI2       : in  slv (CELL_WIDTH-1 downto 0);
    V          : in  slv (CELL_WIDTH-1 downto 0);
    base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4      : in  slv (RESIDUE_WIDTH-1 downto 0);

    -- control condition for j - i <= 5
    j_m_i_le_5 : in  sl;

    VBIP       : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbip_keq2 is

  component ebistacking is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  -- store ebistacking energy
  signal energy                   : slv (CELL_WIDTH-1 downto 0);
  signal energy_inf               : sl;

  signal PVI1_inf                 : sl;
  signal PVI2_inf                 : sl;

  signal PVI1_plus_ebiasymmetry   : slv (CELL_WIDTH-1 downto 0);
  signal PVI2_plus_ebiasymmetry   : slv (CELL_WIDTH-1 downto 0);

  signal PVI_min_lt               : sl;
  signal PVI_min                  : slv (CELL_WIDTH-1 downto 0);

  signal V_inf                    : sl;
  signal V_plus_energy            : slv (CELL_WIDTH-1 downto 0);

  signal PVI_min_lt_V_plus_energy : sl;

begin

  -----------------------------------------------------------------------------
  -- Minimum of PVI1 and PVI2
  -----------------------------------------------------------------------------

  PVI1_inf <= '1' when PVI1 >= PVE_INFINITY else '0';
  PVI2_inf <= '1' when PVI2 >= PVE_INFINITY else '0';

  -- add ebiasymmetry for size 2
  -- PVI1(i, j, k) + ebiasymmetry(k = 2)
  PVI1_plus_ebiasymmetry <= PVE_INFINITY when PVI1_inf = '1' else
                            PVI1 + E_EBIASYMMETRY(2);

  -- PVI2(i, j, k) + ebiasymmetry(k = 2)
  PVI2_plus_ebiasymmetry <= PVE_INFINITY when PVI2_inf = '1' else
                            PVI2 + E_EBIASYMMETRY(2);

  -- min of above sums
  -- min ( PVI1(i, j, k) + ebiasymmetry(k = 2),
  --       PVI2(i, j, k) + ebiasymmetry(k = 2)
  --     )
  PVI_min_lt <= '1' when PVI1_plus_ebiasymmetry < PVI2_plus_ebiasymmetry else
                '0';

  PVI_min    <= PVI1_plus_ebiasymmetry when PVI_min_lt = '1' else
                PVI2_plus_ebiasymmetry;


  -----------------------------------------------------------------------------
  -- Minimum of V + energies
  -----------------------------------------------------------------------------

  -- compute V(i+2, j-2, k-1) + ebistacking(base1, base2, base3, base4) +
  --         ebiasymmetry(0) 
  -- compute ebistacking energy
  compute_energy : ebistacking
    port map (
      base1  => base3,
      base2  => base4,
      base3  => base1,
      base4  => base2,
      inf    => energy_inf,
      energy => energy
      );

  V_inf <= '1' when V >= PVE_INFINITY else energy_inf;

  -- V(i+2, j-2, k-1) + ebistacking(base1, base2, base3, base4)
  --   no need to add ebiasymmetry term since it's score contribution is 0.
  V_plus_energy <= PVE_INFINITY when V_inf = '1' or j_m_i_le_5 = '1' else
                   V + energy;

  -----------------------------------------------------------------------------
  -- Final minimum
  -----------------------------------------------------------------------------

  -- now compute the final min
  -- min ( PVI1(i, j, k) + ebiasymmetry(k = 2),
  --       PVI2(i, j, k) + ebiasymmetry(k = 2),
  --       V(i+2, j-2, k-1) + ebistacking(base1, base2, base3, base4) + ebias..
  --     )
  PVI_min_lt_V_plus_energy <= '1' when PVI_min < V_plus_energy else
                              '0';

  -- send VBI'
  VBIP <= PVI_min when PVI_min_lt_V_plus_energy = '1' else
          V_plus_energy;

end behav;
