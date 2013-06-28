
-- File: pw3_keq1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PW3 when k=1
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity pw3_keq1 is
  port (
    W          : in  slv (CELL_WIDTH-1 downto 0);

    j_m_i_le_2 : in  sl;

    PW3        : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pw3_keq1 is

begin

  -- PW3(i, j, k) = W(i, j-1, k) if k=1
  PW3 <= PVE_INFINITY when j_m_i_le_2 = '1' else W;

end behav;
