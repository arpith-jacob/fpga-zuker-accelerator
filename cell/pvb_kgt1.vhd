
-- File: pvb_kgt1.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PVB1 and PVB2 for k>1.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pvb_kgt1 is
  port (
    PVB_in : in  slv (CELL_WIDTH-1 downto 0);

    PVB    : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pvb_kgt1 is

begin

  PVB <= PVB_in;

end behav;
