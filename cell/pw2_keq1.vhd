
-- File: pw2_keq1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PW2 when k=1
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity pw2_keq1 is
  port (
    W          : in  slv (CELL_WIDTH-1 downto 0);

    j_m_i_le_3 : in  sl;

    PW2        : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pw2_keq1 is

begin

  -- PW2(i, j, k) = W(i+2, j, k) if k=1
  PW2 <= PVE_INFINITY when j_m_i_le_3 = '1' else W;

end behav;
