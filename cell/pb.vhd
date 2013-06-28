
-- File: pb.vhd
-- Date: 19 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes PB
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;

entity pb is
  port (
    PB_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
    S_j        : in  slv (RESIDUE_WIDTH-1 downto 0);

    -- control condition: j - i = 1
    j_m_i_eq_1 : in  sl;

    PB         : out slv (RESIDUE_WIDTH-1 downto 0)
    );
end entity;

architecture behav of pb is

begin

  -- PB(i, j, k) = S_j if j - i = 1 else PB(i+1, j, k)
  PB <= S_j when j_m_i_eq_1 = '1' else PB_in;

end behav;
