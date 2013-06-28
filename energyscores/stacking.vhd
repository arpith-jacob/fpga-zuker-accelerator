
-- File: stacking.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module gives the stacking score given four bases.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity stacking is
  port (
    base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
    inf    : out sl;
    energy : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of stacking is

-- C code
--
-- bp_pair = 1: CG
-- bp_pair = 2: GC
-- bp_pair = 3: GU
-- bp_pair = 4: UG
-- bp_pair = 5: AU
-- bp_pair = 6: UA
-- bp_pair = 0: all other base pairs
--
--
-- rtype = 1: GC
-- rtype = 2: CG
-- rtype = 3: UG
-- rtype = 4: GU
-- rtype = 5: UA
-- rtype = 6: AU
-- rtype = 0: all other base pairs

  signal bases12 : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair : slv (2 downto 0);

  signal bases34 : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal rtype   : slv (2 downto 0);

  signal is_bases_invld : sl;

begin

  -- base pair between first two bases
  bases12  <= base1(1 downto 0) & base2(1 downto 0);
  bp_pair  <= "001" when bases12 = "0110" else
              "010" when bases12 = "1001" else
              "011" when bases12 = "1011" else
              "100" when bases12 = "1110" else
              "101" when bases12 = "0011" else
              "110" when bases12 = "1100" else
              "000";

  -- base pair between first two bases
  bases34 <= base3(1 downto 0) & base4(1 downto 0);
  rtype   <= "001" when bases34 = "1001" else
             "010" when bases34 = "0110" else
             "011" when bases34 = "1110" else
             "100" when bases34 = "1011" else
             "101" when bases34 = "1100" else
             "110" when bases34 = "0011" else
             "000";

  -- now make sure all input bases are valid
  is_bases_invld <= base1(2) or base2(2) or base3(2) or base4(2);

  -- output score is +infinity
  -- if rtype or bp_pair = 0, as determined from the score table
  inf    <= '1' when is_bases_invld = '1' or rtype = "000" or
                     bp_pair = "000" else '0';

  -- lookup stacking energy
  energy <= E_STACKING( conv_integer(bp_pair) )
                      ( conv_integer(rtype) );

end behav;
