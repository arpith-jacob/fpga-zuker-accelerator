
-- File: int22and11.vhd
-- Date: 9 Dec 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module stores the internal loop score for 1x1 and 2x2 loops.
-- The table values must be multiplied by 10 to get the real scores.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity int22and11 is
  port (
    clk        : in  sl;
    reset      : in  sl;

    j_m_i_le_4 : in  sl;
    j_m_i_le_6 : in  sl;

    base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base5      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base6      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base7      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base8      : in  slv (RESIDUE_WIDTH-1 downto 0);

    A_inf      : out sl;
    A_energy   : out slv (CELL_WIDTH-1 downto 0);
    B_inf      : out sl;
    B_energy   : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of int22and11 is

  component table_int22and11 is
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      addra : in STD_LOGIC_VECTOR ( 13 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 13 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
    );
  end component;

  -- by 10 signed multiplier
  component multiplier10 is
    port (
      a : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
      p : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
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

  signal A_bases67        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal A_rtype          : slv (2 downto 0);

  signal A_is_bases_invld : sl;

  signal B_bases12        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal B_bp_pair        : slv (2 downto 0);

  signal B_bases34        : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal B_rtype          : slv (2 downto 0);

  signal B_is_bases_invld : sl;

  signal A_addr           : slv (13 downto 0); 
  signal A_dout           : slv (6 downto 0); 

  signal B_addr           : slv (13 downto 0); 
  signal B_dout           : slv (6 downto 0) ;

begin

  -----------------------------------------------------------------------------
  -- lookup internal loop energy for 2x2 and 1x1 loops
  -----------------------------------------------------------------------------
  lookup_score : table_int22and11
    port map (
      clka  => clk,
      clkb  => clk,
      addra => A_addr,
      douta => A_dout,
      addrb => B_addr,
      doutb => B_dout
    );

  -----------------------------------------------------------------------------
  -- Compute energy for 1x1 loop
  -----------------------------------------------------------------------------

  -- base pair between first two bases
  A_bases12  <= base1(1 downto 0) & base2(1 downto 0);
  A_bp_pair  <= "001" when A_bases12 = "0110" else
                "010" when A_bases12 = "1001" else
                "011" when A_bases12 = "1011" else
                "100" when A_bases12 = "1110" else
                "101" when A_bases12 = "0011" else
                "110" when A_bases12 = "1100" else
                "000";

  -- base pair between first two bases
  A_bases67 <= base6(1 downto 0) & base7(1 downto 0);
  A_rtype   <= "001" when A_bases67 = "1001" else
               "010" when A_bases67 = "0110" else
               "011" when A_bases67 = "1110" else
               "100" when A_bases67 = "1011" else
               "101" when A_bases67 = "1100" else
               "110" when A_bases67 = "0011" else
               "000";

  -- address for 1x1 internal loops
  A_addr <= "1110" & A_bp_pair & A_rtype &
            base5(1 downto 0) & base8(1 downto 0);

  -- now make sure all input bases are valid
  A_is_bases_invld <= base1(2) or base2(2) or base6(2) or base7(2) or
                      base5(2) or base8(2);

  -----------------------------------------------------------------------------
  -- Compute energy for 2x2 loop
  -----------------------------------------------------------------------------

  -- base pair between first two bases
  B_bases12  <= base1(1 downto 0) & base2(1 downto 0);
  B_bp_pair  <= "001" when B_bases12 = "0110" else
                "010" when B_bases12 = "1001" else
                "011" when B_bases12 = "1011" else
                "100" when B_bases12 = "1110" else
                "101" when B_bases12 = "0011" else
                "110" when B_bases12 = "1100" else
                "000";

  -- base pair between first two bases
  B_bases34 <= base3(1 downto 0) & base4(1 downto 0);
  B_rtype   <= "001" when B_bases34 = "1001" else
               "010" when B_bases34 = "0110" else
               "011" when B_bases34 = "1110" else
               "100" when B_bases34 = "1011" else
               "101" when B_bases34 = "1100" else
               "110" when B_bases34 = "0011" else
               "000";

  -- address for 2x2 internal loops
  B_addr <= B_bp_pair & B_rtype &
            base5(1 downto 0) & base6(1 downto 0) & base7(1 downto 0) &
            base8(1 downto 0);

  -- now make sure all input bases are valid
  B_is_bases_invld <= base1(2) or base2(2) or base3(2) or base4(2) or
                      base5(2) or base6(2) or base7(2) or base8(2);

  -----------------------------------------------------------------------------
  -- Output energies.  Block ram latency is 1
  -----------------------------------------------------------------------------
  reg_inf : process (clk)
  begin 
    if rising_edge(clk) then
      -- energy A is infinity when rtype = 0 or bases are invalid
      -- the V term we're going to add is invalid when j - i <= 5
      -- since we're precomputing at one lower diagonal, check for j - i <= 4
      if A_rtype = 0 or A_is_bases_invld = '1' or j_m_i_le_4 = '1' then
        A_inf <= '1';
      else
        A_inf <= '0';
      end if;

      -- energy B is infinity when rtype = 0 or bases are invalid
      -- the V term we're going to add is invalid when j - i <= 7
      -- since we're precomputing at one lower diagonal, check for j - i <= 6
      if B_rtype = 0 or B_is_bases_invld = '1' or j_m_i_le_6 = '1' then
        B_inf <= '1';
      else
        B_inf <= '0';
      end if;
    end if;  -- end rising_edge
  end process reg_inf;

  -- we must multiply the table value by 10 to get the actual energy score
  -- latency = 0
  A_mult : multiplier10
    port map (
      a => A_dout,
      p => A_energy
    );

  -- we must multiply the table value by 10 to get the actual energy score
  -- latency = 0
  B_mult : multiplier10
    port map (
      a => B_dout,
      p => B_energy
    );

end behav;
