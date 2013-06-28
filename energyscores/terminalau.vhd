
-- File: terminalau.vhd
-- Date: 13 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module gives the terminalAU score given two bases.
--
--

library ieee;
use ieee.std_logic_1164.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity terminalau is
  port (
    base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
    inf    : out sl;
    energy : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of terminalau is

-- C code
-- (rtype[ BP_pair[ base1 ][ base2 ] ] > 2) ? P->TerminalAU : 0 
--
-- This condition is true for all base pairs
--  AU, UA, GU, UG
--
--  RNA bit encoding: A=00, C=01, G=10, U=11
--
--
--  base1   base2
--   ab      cd
--   00      11
--   10      11
--   11      00
--   11      10
--
--  (a and b and not d) or (not b and c and d)
--

  signal is_pair       : sl;
  signal is_pair_invld : sl;

begin

  -- make sure base pair condition is satisfied as shown above
  is_pair       <= (base1(1) and base1(0) and not base2(0)) or
                   (not base1(0) and base2(1) and base2(0));
  -- now make sure both input bases are valid
  is_pair_invld <= base1(2) or base2(2);

  inf           <= is_pair_invld;

  -- if base pair, then contribute score
  energy        <= E_TERMINAL_AU when is_pair = '1'
                   else ZEROES(CELL_WIDTH-1 downto 0);

end behav;
