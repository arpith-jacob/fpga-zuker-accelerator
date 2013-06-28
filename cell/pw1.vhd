
-- File: pw1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PW1
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pw1 is
  port (
    PW1_in      : in  slv (CELL_WIDTH-1 downto 0);
    PW3         : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition: 2k = j - i
    k2_eq_j_m_i : in  sl;

    PW1         : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pw1 is

begin

  -- PW1(i, j, k) = PW3(i, j, k) if 2k = j-i else PW1(i, j-1, k)
  PW1 <= PW3 when k2_eq_j_m_i = '1' else PW1_in;

end behav;
