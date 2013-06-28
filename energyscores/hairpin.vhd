
-- File: hairpin.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module gives the hairpin score given the size and four bases.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity hairpin is
  port (
    size        : in  slv (HAIRPIN_SIZE_WIDTH-1 downto 0);
    base1       : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2       : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3       : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4       : in  slv (RESIDUE_WIDTH-1 downto 0);

    tetra_base1 : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base2 : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base3 : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base4 : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base5 : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base6 : in  slv (RESIDUE_WIDTH-1 downto 0);

    energy      : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of hairpin is

-- C code
-- hairpin[size] + mismatchH[bp_pair][base3][base4]
--

-- bp_pair = 1: CG
-- bp_pair = 2: GC
-- bp_pair = 3: GU
-- bp_pair = 4: UG
-- bp_pair = 5: AU
-- bp_pair = 6: UA
-- bp_pair = 0: all other base pairs

  signal bases12         : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair         : slv (2 downto 0);

  signal bases34         : slv (2*RESIDUE_WIDTH-3 downto 0);

  signal is_bases_invld  : sl;

  signal tetra_bases     : slv (6*RESIDUE_WIDTH-7 downto 0);
  signal tetra_energy    : slv (CELL_WIDTH-1 downto 0);

  signal terminal_energy : slv (CELL_WIDTH-1 downto 0);

begin

  -- make sure size is within reasonable limits, at least in simulation
  assert size <= MAX_HAIRPIN_LOOP_SIZE report "Hairpin size is too large"
    severity error;

  -- base pair between first two bases
  bases12  <= base1(1 downto 0) & base2(1 downto 0);
  bp_pair  <= "001" when bases12 = "0110" else
              "010" when bases12 = "1001" else
              "011" when bases12 = "1011" else
              "100" when bases12 = "1110" else
              "101" when bases12 = "0011" else
              "110" when bases12 = "1100" else
              "000";

  bases34  <= base3(1 downto 0) & base4(1 downto 0);

  -- now make sure all input bases are valid
  is_bases_invld <= base1(2) or base2(2) or base3(2) or base4(2);

  -----------------------------------------------------------------------------
  -- terminal energy is added when rtype > 2 and size == 3
  -----------------------------------------------------------------------------
  terminal_energy <= E_TERMINAL_AU when bp_pair > 2 else
                     ZEROES(CELL_WIDTH-1 downto 0);

  -----------------------------------------------------------------------------
  -- Compute special case energies for size == 4
  -----------------------------------------------------------------------------
  --   GGGGAC -3.00 
  --   GGUGAC -3.00 
  --   CGAAAG -3.00 
  --   GGAGAC -3.00
  --   CGCAAG -3.00 
  --   GGAAAC -3.00
  --   CGGAAG -3.00
  --   CUUCGG -3.00
  --   CGUGAG -3.00

  --   CGAAGG -2.50
  --   CUACGG -2.50
  --   GGCAAC -2.50
  --   CGCGAG -2.50
  --   UGAGAG -2.50

  --   CGAGAG -2.00
  --   AGAAAU -2.00
  --   CGUAAG -2.00
  --   CUAACG -2.00
  --   UGAAAG -2.00

  --   GGAAGC -1.50
  --   GGGAAC -1.50
  --   UGAAAA -1.50
  --   AGCAAU -1.50
  --   AGUAAU -1.50
  --   CGGGAG -1.50
  --   AGUGAU -1.50
  --   GGCGAC -1.50
  --   GGGAGC -1.50
  --   GUGAAC -1.50
  --   UGGAAA -1.50

  tetra_bases     <= tetra_base1(1 downto 0) & tetra_base2(1 downto 0) &
                     tetra_base3(1 downto 0) & tetra_base4(1 downto 0) &
                     tetra_base5(1 downto 0) & tetra_base6(1 downto 0);

  tetra_energy    <= E_HAIRPIN_TETRA_1 when tetra_bases = "101010100001" or
                                            tetra_bases = "101011100001" or
                                            tetra_bases = "011000000010" or
                                            tetra_bases = "101000100001" or
                                            tetra_bases = "011001000010" or
                                            tetra_bases = "101000000001" or
                                            tetra_bases = "011010000010" or
                                            tetra_bases = "011111011010" or
                                            tetra_bases = "011011100010"
                                       else
                     E_HAIRPIN_TETRA_2 when tetra_bases = "011000001010" or
                                            tetra_bases = "011100011010" or
                                            tetra_bases = "101001000001" or
                                            tetra_bases = "011001100010" or
                                            tetra_bases = "111000100010"
                                       else
                     E_HAIRPIN_TETRA_3 when tetra_bases = "011000100010" or
                                            tetra_bases = "001000000011" or
                                            tetra_bases = "011011000010" or
                                            tetra_bases = "011100000110" or
                                            tetra_bases = "111000000010"
                                       else
                     E_HAIRPIN_TETRA_4 when tetra_bases = "101000001001" or
                                            tetra_bases = "101010000001" or
                                            tetra_bases = "111000000000" or
                                            tetra_bases = "001001000011" or
                                            tetra_bases = "001011000011" or
                                            tetra_bases = "011010100010" or
                                            tetra_bases = "001011100011" or
                                            tetra_bases = "101001100001" or
                                            tetra_bases = "101010001001" or
                                            tetra_bases = "101110000001" or
                                            tetra_bases = "111010000000"
                                       else
                    E_HAIRPIN_TETRA_X;

  -----------------------------------------------------------------------------
  -- Compute final energy
  -----------------------------------------------------------------------------
  energy         <= PVE_INFINITY when is_bases_invld = '1' or size <= 2 else
                    E_HAIRPINSIZE( 3 ) + terminal_energy
                                 when size = 3 else
                    E_HAIRPINSIZE( 4 ) + tetra_energy +
                      E_HAIRPINMISMATCH ( conv_integer( bp_pair ) )
                                        ( conv_integer( bases34 ) )
                                 when size = 4 else
                    E_HAIRPINSIZE( conv_integer(size) ) +
                      E_HAIRPINMISMATCH
                        ( conv_integer( bp_pair ) )
                        ( conv_integer( bases34 ) );

end behav;
