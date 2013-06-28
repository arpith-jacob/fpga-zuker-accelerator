
-- File: int21.vhd
-- Date: 8 Dec 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module stores the internal loop score for 2x1 loops.
-- The table values must be multiplied by 2 to get the real scores.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity int21 is
  port (
    clk        : in  sl;
    reset      : in  sl;

    j_m_i_le_5 : in  sl;

    A_base1    : in  slv (RESIDUE_WIDTH-1 downto 0);
    A_base2    : in  slv (RESIDUE_WIDTH-1 downto 0);
    A_base3    : in  slv (RESIDUE_WIDTH-1 downto 0);
    A_base4    : in  slv (RESIDUE_WIDTH-1 downto 0);
    A_base5    : in  slv (RESIDUE_WIDTH-1 downto 0);
    A_base6    : in  slv (RESIDUE_WIDTH-1 downto 0);
    A_base7    : in  slv (RESIDUE_WIDTH-1 downto 0);

    B_base1    : in  slv (RESIDUE_WIDTH-1 downto 0);
    B_base2    : in  slv (RESIDUE_WIDTH-1 downto 0);
    B_base3    : in  slv (RESIDUE_WIDTH-1 downto 0);
    B_base4    : in  slv (RESIDUE_WIDTH-1 downto 0);
    B_base5    : in  slv (RESIDUE_WIDTH-1 downto 0);
    B_base6    : in  slv (RESIDUE_WIDTH-1 downto 0);
    B_base7    : in  slv (RESIDUE_WIDTH-1 downto 0);

    A_inf      : out sl;
    A_energy   : out slv (CELL_WIDTH-1 downto 0);
    B_inf      : out sl;
    B_energy   : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of int21 is

  component table_int21 is
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      addra : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 8 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 8 downto 0 ) 
    );
  end component;

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

  signal A_bases12        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal A_bp_pair        : slv (2 downto 0);

  signal A_bases34        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal A_rtype          : slv (2 downto 0);

  signal A_is_bases_invld : sl;

  signal B_bases12        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal B_bp_pair        : slv (2 downto 0);

  signal B_bases34        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal B_rtype          : slv (2 downto 0);

  signal B_is_bases_invld : sl;

  signal A_addr           : slv (11 downto 0); 
  signal A_dout           : slv (8 downto 0); 

  signal B_addr           : slv (11 downto 0); 
  signal B_dout           : slv (8 downto 0) ;

begin

  -----------------------------------------------------------------------------
  -- lookup internal loop energy for 2x1 and 1x2 loops
  -----------------------------------------------------------------------------
  lookup_score : table_int21
    port map (
      clka  => clk,
      clkb  => clk,
      addra => A_addr,
      douta => A_dout,
      addrb => B_addr,
      doutb => B_dout
    );

  -----------------------------------------------------------------------------
  -- Compute energy for first internal loop
  -----------------------------------------------------------------------------

  -- base pair between first two bases
  A_bases12  <= A_base1(1 downto 0) & A_base2(1 downto 0);
  A_bp_pair  <= "001" when A_bases12 = "0110" else
                "010" when A_bases12 = "1001" else
                "011" when A_bases12 = "1011" else
                "100" when A_bases12 = "1110" else
                "101" when A_bases12 = "0011" else
                "110" when A_bases12 = "1100" else
                "000";

  -- base pair between first two bases
  A_bases34 <= A_base3(1 downto 0) & A_base4(1 downto 0);
  A_rtype   <= "001" when A_bases34 = "1001" else
               "010" when A_bases34 = "0110" else
               "011" when A_bases34 = "1110" else
               "100" when A_bases34 = "1011" else
               "101" when A_bases34 = "1100" else
               "110" when A_bases34 = "0011" else
               "000";

  -- address for 1x2 internal loops
  A_addr <= A_bp_pair & A_rtype &
            A_base5(1 downto 0) & A_base6(1 downto 0) & A_base7(1 downto 0);

  -- now make sure all input bases are valid
  A_is_bases_invld <= A_base1(2) or A_base2(2) or A_base3(2) or A_base4(2) or
                      A_base5(2) or A_base6(2) or A_base7(2);

  -----------------------------------------------------------------------------
  -- Compute energy for second internal loop
  -----------------------------------------------------------------------------

  -- base pair between first two bases
  B_bases12  <= B_base1(1 downto 0) & B_base2(1 downto 0);
  B_rtype   <= "001" when B_bases12 = "1001" else
               "010" when B_bases12 = "0110" else
               "011" when B_bases12 = "1110" else
               "100" when B_bases12 = "1011" else
               "101" when B_bases12 = "1100" else
               "110" when B_bases12 = "0011" else
               "000";

  -- base pair between first two bases
  B_bases34 <= B_base3(1 downto 0) & B_base4(1 downto 0);
  B_bp_pair  <= "001" when B_bases34 = "0110" else
                "010" when B_bases34 = "1001" else
                "011" when B_bases34 = "1011" else
                "100" when B_bases34 = "1110" else
                "101" when B_bases34 = "0011" else
                "110" when B_bases34 = "1100" else
                "000";

  -- address for 1x2 internal loops
  B_addr <= B_rtype & B_bp_pair &
            B_base5(1 downto 0) & B_base6(1 downto 0) & B_base7(1 downto 0);

  -- now make sure all input bases are valid
  B_is_bases_invld <= B_base1(2) or B_base2(2) or B_base3(2) or B_base4(2) or
                      B_base5(2) or B_base6(2) or B_base7(2);

  -----------------------------------------------------------------------------
  -- Output energies.  Block ram latency is 1
  -----------------------------------------------------------------------------
  reg_inf : process (clk)
  begin 
    if rising_edge(clk) then
      -- energy A is infinity when rtype = 0 or bases are invalid
      -- the V term we're going to add is invalid when j - i <= 6
      -- since we're precomputing at one lower diagonal, check for j - i <= 5
      if A_rtype = 0 or A_is_bases_invld = '1' or j_m_i_le_5 = '1' then
        A_inf <= '1';
      else
        A_inf <= '0';
      end if;

      -- energy B is infinity when rtype = 0 or bases are invalid
      -- the V term we're going to add is invalid when j - i <= 6
      -- since we're precomputing at one lower diagonal, check for j - i <= 5
      if B_rtype = 0 or B_is_bases_invld = '1' or j_m_i_le_5 = '1' then
        B_inf <= '1';
      else
        B_inf <= '0';
      end if;
    end if;  -- end rising_edge
  end process reg_inf;

  -- we must multiply the table value by 2 to get the actual energy score
  A_energy <= "000000" & A_dout & "0";

  -- we must multiply the table value by 2 to get the actual energy score
  B_energy <= "000000" & B_dout & "0";

end behav;
