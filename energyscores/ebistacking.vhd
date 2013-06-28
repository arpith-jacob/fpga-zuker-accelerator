
-- File: ebistacking.vhd
-- Date: 13 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module gives the ebistacking score given four bases.
--
--

library ieee;
use ieee.std_logic_1164.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity ebistacking is
  port (
    base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
    inf    : out sl;
    energy : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of ebistacking is

-- ebistacking computes ebistacking[ rtype [bp_pair[b1][b2]] ][b3][b4]
-- however, for the energy scores used, the following also gives the same value
-- ebistacking[ bp_pair[b1][b2] ][b3][b4]
--
-- C code
--
-- rtype = 1, 2: GC, CG
-- rtype = 3-6 : GU, UG, UA, AU
-- rtype = 0   : all other base pairs
--
-- rtype=0
-- 0, 0, 0, 0, 
-- 0, 0, 0, 0, 
-- 0, 0, 0, 0, 
-- 0, 0, 0, 0, 
-- 
-- rtype=1
-- 0, 0, -110, 0, 
-- 0, 0, 0, 0, 
-- -110, 0, 0, 0, 
-- 0, 0, 0, -70, 
-- 
-- rtype=2
-- 0, 0, -110, 0, 
-- 0, 0, 0, 0, 
-- -110, 0, 0, 0, 
-- 0, 0, 0, -70, 
-- 
-- rtype=3
-- 70, 70, -40, 70, 
-- 70, 70, 70, 70, 
-- -40, 70, 70, 70, 
-- 70, 70, 70, 0, 
-- 
-- rtype=4
-- 70, 70, -40, 70, 
-- 70, 70, 70, 70, 
-- -40, 70, 70, 70, 
-- 70, 70, 70, 0, 
-- 
-- rtype=5
-- 70, 70, -40, 70, 
-- 70, 70, 70, 70, 
-- -40, 70, 70, 70, 
-- 70, 70, 70, 0, 
-- 
-- rtype=6
-- 70, 70, -40, 70, 
-- 70, 70, 70, 70, 
-- -40, 70, 70, 70, 
-- 70, 70, 70, 0, 


--
-- rtype=0
--   0
-- 
-- rtype=1,2
-- UU=-70
-- GA,AG=-110
-- else = 0
-- 
-- else
-- UU = 0
-- GA,AG = -40
-- else = 70
-- 
-- 
-- rtype 1,2: 01 10   10 01    :  b1 xor b2 = 11
-- rtype 3-6: 10 11   11 10   11 00   00 11  :  (a and b and not d) or (not b and c and d)
-- 
-- 
-- 1111 00         : -70
-- 0010 00         : -110
-- 1000 00         : -110
-- 1111 01         : 0
-- 0010 01         : -40
-- 1000 01         : -40
-- ???? 01         : 70
-- others          : 0

  signal bases12 : slv (2*RESIDUE_WIDTH-3 downto 0);

  signal rtype   : slv (1 downto 0);
  signal sel     : slv (5 downto 0);

begin

  -- rtype = 00 when 1,2
  -- rtype = 01 when 3-6
  -- rtype = 11 otherwise
  bases12  <= base1(1 downto 0) & base2(1 downto 0);
  rtype <= "00" when (bases12 = "0110" or bases12 = "1001") else
           "01" when ( (base1(1) and base1(0) and not base2(0)) or
                       (not base1(0) and base2(1) and base2(0)) ) = '1'
           else
           "11";

  -- rtype=0
  --   0
  -- 
  -- rtype=1,2
  -- UU=-70
  -- GA,AG=-110
  -- else = 0
  -- 
  -- else
  -- UU = 0
  -- GA,AG = -40
  -- else = 70
  --
  --
  -- 1111 00         : -70            E_EBISTACKING_RTYPE12_UU
  -- 0010 00         : -110           E_EBISTACKING_RTYPE12_GA
  -- 1000 00         : -110           E_EBISTACKING_RTYPE12_GA
  -- 1111 01         : 0              E_EBISTACKING_RTYPE36_UU
  -- 0010 01         : -40            E_EBISTACKING_RTYPE36_GA
  -- 1000 01         : -40            E_EBISTACKING_RTYPE36_GA
  -- ???? 01         : 70             E_EBISTACKING_RTYPE36_XX
  -- others          : 0              E_EBISTACKING_RTYPEXX_XX

  -- output score is +infinity
  inf    <= '1' when ((base1(2) or base2(2) or base3(2) or
                       base4(2)) = '1') else '0';


  -- also handles case where bases are invalid
  sel    <= base3(1 downto 0) & base4(1 downto 0) & rtype;
  energy <= E_EBISTACKING_RTYPE12_UU when sel = "111100" else
            E_EBISTACKING_RTYPE12_GA when sel = "001000" else
            E_EBISTACKING_RTYPE12_GA when sel = "100000" else
            E_EBISTACKING_RTYPE36_UU when sel = "111101" else
            E_EBISTACKING_RTYPE36_GA when sel = "001001" else
            E_EBISTACKING_RTYPE36_GA when sel = "100001" else
            E_EBISTACKING_RTYPE36_XX when sel(1 downto 0) = "01" else
            E_EBISTACKING_RTYPEXX_XX;

end behav;
