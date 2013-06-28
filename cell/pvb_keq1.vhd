
-- File: pvb_keq1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PVB1 and PVB2 for k=1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity pvb_keq1 is
  port (
    V          : in  slv (CELL_WIDTH-1 downto 0);
    base1      : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2      : in  slv (RESIDUE_WIDTH-1 downto 0);

    j_m_i_le_4 : in  sl;

    PVB        : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pvb_keq1 is

  component terminalau is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  -- store terminal energy
  signal energy     : slv (CELL_WIDTH-1 downto 0);
  signal energy_inf : sl;

  signal V_inf      : sl;

begin

  -- compute terminalAU energy
  compute_energy : terminalau
    port map (
      base1  => base1,
      base2  => base2,
      inf    => energy_inf,
      energy => energy
      );

  V_inf <= '1' when V >= PVE_INFINITY else energy_inf;

  PVB <= PVE_INFINITY when V_inf = '1' or j_m_i_le_4 = '1' else
         V + energy;

end behav;
