
-- File: pvi_kgt1.vhd
-- Date: 15 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PV1 and PV2 for k > 1 and k <= j - i - 2.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pvi_kgt1 is
  port (
    PVI_in : in  slv (CELL_WIDTH-1 downto 0);

    PVI    : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pvi_kgt1 is

begin

  PVI <= PVI_in;

end behav;
