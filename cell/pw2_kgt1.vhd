
-- File: pw2_kgt1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PW2 when k>1
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pw2_kgt1 is
  port (
    PW2_in : in  slv (CELL_WIDTH-1 downto 0);

    PW2    : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pw2_kgt1 is

begin

  -- PW2(i, j, k) = PW2(i+1, j, k-1) if 2k <= j - i
  PW2 <= PW2_in;

end behav;
