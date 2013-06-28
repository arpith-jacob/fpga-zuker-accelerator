
-- File: vbb_keq1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBB for k=1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbb_keq1 is
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

    -- control condition for k = j - i - 2
    k_eq_j_m_i_m_2 : in  sl;

    VBB            : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbb_keq1 is

  component stacking is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component terminalau is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  -- store stacking energies
  signal stacking_inf1     : sl;
  signal stacking_inf2     : sl;
  signal stacking_energy1  : slv (CELL_WIDTH-1 downto 0);
  signal stacking_energy2  : slv (CELL_WIDTH-1 downto 0);

  -- store terminalAU energy
  signal terminal_energy   : slv (CELL_WIDTH-1 downto 0);
  signal terminal_inf      : sl;

  signal V_1_plus_energy   : slv (CELL_WIDTH-1 downto 0);
  signal V_2_plus_energy   : slv (CELL_WIDTH-1 downto 0);
  signal V_1_energy_inf    : sl;
  signal V_2_energy_inf    : sl;

  signal V_min_lt          : sl;
  signal V_min             : slv (CELL_WIDTH-1 downto 0);

  signal VBB_aggregate     : slv (CELL_WIDTH-1 downto 0);
  signal VBB_inf           : sl;

  signal VBB_plus_energy   : slv (CELL_WIDTH-1 downto 0);

  signal VBB_lt            : sl;

begin

  -----------------------------------------------------------------------------
  -- Compute V_1,2 + ebbsize(1) + stacking
  -----------------------------------------------------------------------------

  compute_stacking_energy1 : stacking
    port map (
      base1  => base1,
      base2  => base2,
      base3  => base3,
      base4  => base4,
      inf    => stacking_inf1,
      energy => stacking_energy1
      );

  V_1_energy_inf <= '1' when V_1 >= PVE_INFINITY else stacking_inf1;

  -- add ebbsize(1) + stacking
  -- V(i+1, j-2, k) + ebbsize(1) + stacking
  V_1_plus_energy <= V_1 + E_EBBSIZE(1) + stacking_energy1;

  compute_stacking_energy2 : stacking
    port map (
      base1  => base1,
      base2  => base2,
      base3  => base5,
      base4  => base6,
      inf    => stacking_inf2,
      energy => stacking_energy2
      );

  V_2_energy_inf <= '1' when V_2 >= PVE_INFINITY else stacking_inf2;

  -- V(i+2, j-1, k) + ebbsize(1) + stacking
  V_2_plus_energy <= V_2 + E_EBBSIZE(1) + stacking_energy2;

  -- min of above sums
  -- min ( V(i+1, j-2, k) + ebbsize(1) + stacking
  --       V(i+2, j-1, k) + ebbsize(1) + stacking
  --     )
  V_min_lt <= '1' when V_1_plus_energy < V_2_plus_energy else '0';

  V_min    <= PVE_INFINITY when V_1_energy_inf = '1' and V_2_energy_inf = '1' else
              V_1_plus_energy when (V_min_lt = '1' and V_1_energy_inf = '0') or
                                    V_2_energy_inf = '1' else
              V_2_plus_energy;

  -----------------------------------------------------------------------------
  -- Compute VBB + terminalAUGU
  -----------------------------------------------------------------------------

  -- compute terminalAUGU energy
  compute_terminal_energy : terminalau
    port map (
      base1  => base1,
      base2  => base2,
      inf    => terminal_inf,
      energy => terminal_energy
      );

  VBB_inf <= '1' when VBB_in >= PVE_INFINITY or k_eq_j_m_i_m_2 = '1' else
             terminal_inf;

  -- VBB_in is VBB(i, j, k + 1) which is undefined when k = j - i - 2
  VBB_aggregate   <= PVE_INFINITY when k_eq_j_m_i_m_2 = '1' else VBB_in;

  -- compute VBB(i, j, k+1) + terminalAUGU
  VBB_plus_energy <= VBB_aggregate + terminal_energy;

  -----------------------------------------------------------------------------
  -- Final Minimum of PVB_min and VBB_plus_energy
  -----------------------------------------------------------------------------

  -- now compute the final min
  -- min ( V(i+1, j-2, k) + ebbsize(1) + stacking
  --       V(i+2, j-1, k) + ebbsize(1) + stacking
  --       VBB(i, j, k+1) + terminalAUGU
  --     )
  VBB_lt <= '1' when V_min < VBB_plus_energy else '0';

  -- send VBB
  VBB    <= PVE_INFINITY    when j_m_i_le_4 = '1' and VBB_inf = '1' else
            VBB_plus_energy when j_m_i_le_4 = '1' and VBB_inf = '0' else
            V_min           when j_m_i_le_4 = '0' and VBB_inf = '1' else
            V_min           when j_m_i_le_4 = '0' and VBB_inf = '0' and VBB_lt = '1' else
            VBB_plus_energy;

end behav;
