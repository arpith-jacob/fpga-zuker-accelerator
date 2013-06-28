
-- File: vbi_keq3to4.vhd
-- Date: 19 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI for k=3-4.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbi_keq3to4 is
  port (
    VBI_in : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition for k = j - i - 2
    k_eq_j_m_i_m_2 : in  sl;

    VBI    : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbi_keq3to4 is

begin

  -- VBI_in is VBI(i, j, k + 1) which is undefined when k = j - i - 2
  VBI <= PVE_INFINITY when k_eq_j_m_i_m_2 = '1' else VBI_in;

end behav;
