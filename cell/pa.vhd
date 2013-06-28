
-- File: pa.vhd
-- Date: 19 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PA
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pa is
  port (
    PA_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
    S_i        : in  slv (RESIDUE_WIDTH-1 downto 0);

    -- control condition: j - i = 1
    j_m_i_eq_1 : in  sl;

    PA         : out slv (RESIDUE_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pa is

begin

  -- PA(i, j, k) = S_i if j - i = 1 else PA(i, j-1, k)
  PA <= S_i when j_m_i_eq_1 = '1' else PA_in;

end behav;
