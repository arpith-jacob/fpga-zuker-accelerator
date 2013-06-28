
-- File: closing.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module gives the closing score given two bases.
--
--

library ieee;
use ieee.std_logic_1164.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity closing is
  port (
    base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
    inf    : out sl;
    energy : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of closing is

-- C code
-- P->MLclosing + P->MLintern[ BP_pair[ base1 ][ base2 ] ]
--
-- This condition is true for all base pairs
--  
--  BP_pair 3-6: GU, UG, AU, UA
--  BP_pair 0-2: others
--
--  BP_pair 0-2: 380
--  BP_pair 3-6: 430
--
--  RNA bit encoding: A=00, C=01, G=10, U=11
--
--
--  base1   base2
--   ab      cd
--   10      11
--   11      10
--   00      11
--   11      00
--
--  (a and b and not d) or (not b and c and d)
--

  signal is_rtype36    : sl;
  signal is_pair_invld : sl;

begin

  -- make sure base pair condition is satisfied as shown above
  is_rtype36    <= (base1(1) and base1(0) and not base2(0)) or
                   (not base1(0) and base2(1) and base2(0));
  -- now make sure both input bases are valid
  is_pair_invld <= base1(2) or base2(2);

  inf         <= is_pair_invld;

  -- if base pair, then contribute score
  energy      <= E_CLOSING_RTYPE36 when is_rtype36 = '1' else
                 E_CLOSING_RTYPEXX;

end behav;
