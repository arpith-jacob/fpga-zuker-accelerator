
-- File: vbb_kgt1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBB for k>1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbb_kgt1 is
  generic (
    K       : natural := 3
    );
  port (
    VBB_in         : in  slv (CELL_WIDTH-1 downto 0);
    PVB1           : in  slv (CELL_WIDTH-1 downto 0);
    PVB2           : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition for k = j - i - 2
    k_eq_j_m_i_m_2 : in  sl;

    VBB            : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbb_kgt1 is

  signal PVB1_inf         : sl;
  signal PVB2_inf         : sl;

  signal PVB1_plus_energy : slv (CELL_WIDTH-1 downto 0);
  signal PVB2_plus_energy : slv (CELL_WIDTH-1 downto 0);

  signal VBB_aggregate    : slv (CELL_WIDTH-1 downto 0);

  signal PVB1_lt_VBB      : sl;
  signal PVB1_min_VBB     : slv (CELL_WIDTH-1 downto 0);

  signal VBB_lt            : sl;

begin

  -----------------------------------------------------------------------------
  -- Compute PVB1,2 + ebbsize(k)
  -----------------------------------------------------------------------------

  PVB1_inf <= '1' when PVB1 >= PVE_INFINITY else '0';
  PVB2_inf <= '1' when PVB2 >= PVE_INFINITY else '0';

  -- PVB1(i, j, k) + ebbsize(k)
  PVB1_plus_energy <= PVB1 + E_EBBSIZE(K);

  -- PVB2(i, j, k) + ebbsize(k)
  PVB2_plus_energy <= PVB2 + E_EBBSIZE(K);

  -----------------------------------------------------------------------------
  -- Compute minimum of PVB1 + ebbsize(k) and VBB(i, j, k + 1)
  -----------------------------------------------------------------------------

  -- VBB_in is VBB(i, j, k + 1) which is undefined when k = j - i - 2
  VBB_aggregate   <= PVE_INFINITY when k_eq_j_m_i_m_2 = '1' else VBB_in;

  -- min ( PVB1(i, j, k) + ebbsize(k),
  --       VBB(i, j, k + 1)
  --     )
  PVB1_lt_VBB  <= '1' when PVB1_plus_energy < VBB_aggregate else '0';

  PVB1_min_VBB <= PVB1_plus_energy when PVB1_lt_VBB = '1' and PVB1_inf = '0' else
                  VBB_aggregate;

  -----------------------------------------------------------------------------
  -- Final Minimum of PVB1_min_VBB and PVB2_plus_energy
  -----------------------------------------------------------------------------

  -- now compute the final min
  -- min ( PVB1(i, j, k) + ebbsize(k),
  --       VBB(i, j, k + 1)
  --       PVB2(i, j, k) + ebbsize(k)
  --     )
  VBB_lt <= '1' when PVB1_min_VBB < PVB2_plus_energy else '0';

  -- send VBB
  VBB    <= PVB1_min_VBB when VBB_lt = '1' or PVB2_inf = '1' else
            PVB2_plus_energy;

end behav;
