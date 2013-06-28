
-- File: pw3_kgt1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PW3 when k>1
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pw3_kgt1 is
  port (
    PW3_in : in  slv (CELL_WIDTH-1 downto 0);

    PW3    : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pw3_kgt1 is

begin

  -- PW3(i, j, k) = PW3(i, j-1, k-1) if 2k <= j - i
  PW3 <= PW3_in;

end behav;
