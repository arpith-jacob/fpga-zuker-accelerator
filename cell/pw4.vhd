
-- File: pw4.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PW4
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pw4 is
  port (
    PW4_in      : in  slv (CELL_WIDTH-1 downto 0);
    PW2         : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition: 2k = j - i
    k2_eq_j_m_i : in  sl;

    PW4         : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pw4 is

begin

  -- PW4(i, j, k) = PW2(i, j, k) if 2k = j-i else PW4(i+1, j, k)
  PW4 <= PW2 when k2_eq_j_m_i = '1' else PW4_in;

end behav;
