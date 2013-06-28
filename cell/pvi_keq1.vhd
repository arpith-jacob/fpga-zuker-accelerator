
-- File: pvi_keq1.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PV1 and PV2 for k=1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity pvi_keq1 is
  port (
    V          : in  slv (CELL_WIDTH-1 downto 0);
    base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4      : in  slv (RESIDUE_WIDTH-1 downto 0);

    j_m_i_le_4 : in  sl;

    PVI        : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pvi_keq1 is

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
  signal energy : slv (CELL_WIDTH-1 downto 0);

  signal energy_inf    : sl;
  signal V_inf         : sl;

begin

  -- compute ebistacking energy
  compute_energy : ebistacking
    port map (
      base1  => base1,
      base2  => base2,
      base3  => base3,
      base4  => base4,
      inf    => energy_inf,
      energy => energy
      );

  V_inf <= '1' when V >= PVE_INFINITY else energy_inf;

  PVI <= PVE_INFINITY when V_inf = '1' or j_m_i_le_4 = '1'
         else V + energy;

end behav;
