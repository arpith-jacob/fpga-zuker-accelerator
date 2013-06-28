
-- File: int31.vhd
-- Date: 10 Dec 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module stores the internal loop score for 3x1 and 1x3 loops.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity int31 is
  port (
    clk        : in  sl;
    reset      : in  sl;

    j_m_i_le_6 : in  sl;

    base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base5      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base6      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base7      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base8      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base9      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base10     : in  slv (RESIDUE_WIDTH-1 downto 0);
    base11     : in  slv (RESIDUE_WIDTH-1 downto 0);
    base12     : in  slv (RESIDUE_WIDTH-1 downto 0);

    A_inf      : out sl;
    A_energy   : out slv (CELL_WIDTH-1 downto 0);
    B_inf      : out sl;
    B_energy   : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of int31 is

  component ebistacking is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  -- stacking energies
  signal energy1_inf      : sl;
  signal energy2_inf      : sl;
  signal energy3_inf      : sl;
  signal energy1          : slv (CELL_WIDTH-1 downto 0);
  signal energy2          : slv (CELL_WIDTH-1 downto 0);
  signal energy3          : slv (CELL_WIDTH-1 downto 0);

  signal A_bases56        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal A_bp_pair        : slv (2 downto 0);

  signal B_bases910       : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal B_bp_pair        : slv (2 downto 0);

begin

  -----------------------------------------------------------------------------
  -- lookup internal loop energy for 3x1 and 1x3 loops
  -----------------------------------------------------------------------------
  score1 : ebistacking
    port map (
      base1  => base1,
      base2  => base2,
      base3  => base3,
      base4  => base4,
      inf    => energy1_inf,
      energy => energy1
      );

  score2 : ebistacking
    port map (
      base1  => base5,
      base2  => base6,
      base3  => base7,
      base4  => base8,
      inf    => energy2_inf,
      energy => energy2
      );

  score3 : ebistacking
    port map (
      base1  => base9,
      base2  => base10,
      base3  => base11,
      base4  => base12,
      inf    => energy3_inf,
      energy => energy3
      );

  -- base pair?
  A_bases56  <= base5(1 downto 0) & base6(1 downto 0);
  A_bp_pair  <= "001" when A_bases56 = "0110" else
                "010" when A_bases56 = "1001" else
                "011" when A_bases56 = "1011" else
                "100" when A_bases56 = "1110" else
                "101" when A_bases56 = "0011" else
                "110" when A_bases56 = "1100" else
                "000";

  -- base pair?
  B_bases910 <= base9(1 downto 0) & base10(1 downto 0);
  B_bp_pair  <= "001" when B_bases910 = "0110" else
                "010" when B_bases910 = "1001" else
                "011" when B_bases910 = "1011" else
                "100" when B_bases910 = "1110" else
                "101" when B_bases910 = "0011" else
                "110" when B_bases910 = "1100" else
                "000";

  -----------------------------------------------------------------------------
  -- Output energies.
  -----------------------------------------------------------------------------
  reg_out : process (clk)
  begin 
    if rising_edge(clk) then
      -- hopefully the synthesizer is doing a good job in simplifying this
      -- expression.  we could have manually simplified it, but it will
      -- greatly reduce code readability.  we can optimize this if it becomes
      -- part of a critical path.
      -- energy for 1x3 loop
      A_energy <= E_EBIASYMMETRY(2) + E_EBISIZE(4) + energy1 + energy2;
      -- energy for 3x1 loop
      B_energy <= E_EBIASYMMETRY(2) + E_EBISIZE(4) + energy1 + energy3;

      -- energy A is infinity when bp_pair = 0 or bases are invalid
      -- the V term we're going to add is invalid when j - i <= 7
      -- since we're precomputing at one lower diagonal, check for j - i <= 6
      if A_bp_pair = 0 or energy1_inf = '1' or energy2_inf = '1' or
         j_m_i_le_6 = '1' then
        A_inf <= '1';
      else
        A_inf <= '0';
      end if;

      -- energy B is infinity when bp_pair = 0 or bases are invalid
      -- the V term we're going to add is invalid when j - i <= 7
      -- since we're precomputing at one lower diagonal, check for j - i <= 6
      if B_bp_pair = 0 or energy1_inf = '1' or energy3_inf = '1' or
         j_m_i_le_6 = '1' then
        B_inf <= '1';
      else
        B_inf <= '0';
      end if;
    end if;  -- end rising_edge
  end process reg_out;

end behav;
