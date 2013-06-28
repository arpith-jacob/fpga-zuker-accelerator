
-- File: vbi_keq1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI for k=1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbi_keq1 is
  port (
    INT_A          : in  slv (CELL_WIDTH-1 downto 0);
    INT_B          : in  slv (CELL_WIDTH-1 downto 0);
    INT_C          : in  slv (CELL_WIDTH-1 downto 0);
    VBI_in         : in  slv (CELL_WIDTH-1 downto 0);
    base1          : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2          : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3          : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4          : in  slv (RESIDUE_WIDTH-1 downto 0);

    -- control condition for k = j - i - 2
    k_eq_j_m_i_m_2 : in  sl;

    VBI            : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbi_keq1 is

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

  -- store ebistacking energy
  signal energy          : slv (CELL_WIDTH-1 downto 0);
  signal energy_inf      : sl;
  signal VBI_plus_energy : slv (CELL_WIDTH-1 downto 0);
  signal VBI_inf         : sl;

  signal INT_A_lt_B      : sl;
  signal INT_A_min_B     : slv (CELL_WIDTH-1 downto 0);

  signal INT_C_lt_VBI    : sl;
  signal INT_C_min_VBI   : slv (CELL_WIDTH-1 downto 0);

  signal ALL_lt          : sl;

begin

  -- compute ebistacking energy.
  -- ebistacking computes ebistacking[ rtype [bp_pair[b1][b2]] ][b3][b4]
  -- while we need ebistacking[ bp_pair[b1][b2] ][b3][b4]
  -- however, for the energy scores used, both turn out to be the same
  compute_energy : ebistacking
    port map (
      base1  => base1,
      base2  => base2,
      base3  => base3,
      base4  => base4,
      inf    => energy_inf,
      energy => energy
      );

  VBI_inf         <= '1' when VBI_in >= PVE_INFINITY else energy_inf;
  VBI_plus_energy <= VBI_in + energy;

  INT_A_lt_B      <= '1' when INT_A < INT_B else '0';
  INT_A_min_B     <= INT_A when INT_A_lt_B = '1' else INT_B;

  INT_C_lt_VBI    <= '1' when INT_C < VBI_plus_energy else '0';
  -- VBI_in is VBI(i, j, k + 1) which is undefined when k = j - i - 2
  INT_C_min_VBI   <= PVE_INFINITY when  k_eq_j_m_i_m_2 = '1' else
                     INT_C        when INT_C_lt_VBI = '1' or VBI_inf = '1' else
                     VBI_plus_energy;

  ALL_lt          <= '1' when INT_A_min_B < INT_C_min_VBI else '0';
  VBI             <= INT_A_min_B when ALL_lt = '1' else INT_C_min_VBI;

end behav;
