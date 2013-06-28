
-- File: bp_pair.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module outputs 1 if two input bases are base pairs
--
--

library ieee;
use ieee.std_logic_1164.all;

use work.zuker_pkg.all;

entity bp_pair is
  port (
    base1        : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2        : in  slv (RESIDUE_WIDTH-1 downto 0);

    is_bp_pair   : out sl
    );
end entity;

architecture behav of bp_pair is

-- This condition is true for all base pairs
--  
--  BP_pair = 1-6: AU, CG, GC, GU, UA, UG
--
--  RNA bit encoding: A=00, C=01, G=10, U=11
--
--
--  base1   base2
--   ab      cd
--   00      11
--   01      10
--   10      01
--   10      11
--   11      00
--   11      10
--

  signal sel           : slv(3 downto 0);
  signal is_bp_pair_i  : sl;
  signal is_pair_invld : sl;

begin

  -- make sure base pair condition is satisfied as shown above
  sel           <= base1(1 downto 0) & base2(1 downto 0);
  is_bp_pair_i  <= '1' when sel = "0011" or
                            sel = "0110" or
                            sel = "1001" or
                            sel = "1011" or
                            sel = "1100" or
                            sel = "1110"
                   else '0';

  -- now make sure both input bases are valid
  is_pair_invld <= base1(2) or base2(2);

  -- if base pair, then contribute score
  is_bp_pair    <= '0' when is_pair_invld = '1' or is_bp_pair_i = '0' else
                   '1';

end behav;
