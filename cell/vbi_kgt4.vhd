
-- File: vbi_kgt4.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes VBI for k>4.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity vbi_kgt4 is
  generic (
    K       : natural := 5
    );
  port (
    VBI_in         : in  slv (CELL_WIDTH-1 downto 0);
    VBIP_in        : in  slv (CELL_WIDTH-1 downto 0);
    
    -- control condition for k = j - i - 2
    k_eq_j_m_i_m_2 : in  sl;

    VBI            : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of vbi_kgt4 is

  signal VBIP_inf          : sl;
  signal VBIP_plus_ebisize : slv (CELL_WIDTH-1 downto 0);

  signal VBI_aggregate     : slv (CELL_WIDTH-1 downto 0);

  signal VBI_min_lt        : sl;

begin

  VBIP_inf <= '1' when VBIP_in >= PVE_INFINITY else '0';

  -- add ebisize for size K
  -- VBI'(i+1, j-1, k-2) + ebisize(k)
  VBIP_plus_ebisize <= VBIP_in + E_EBISIZE(K);

  -- VBI_in is VBI(i, j, k + 1) which is undefined when k = j - i - 2
  VBI_aggregate <= PVE_INFINITY when k_eq_j_m_i_m_2 = '1' else VBI_in;

  -- min (
  --       VBI(i, j, k+1),
  --       VBI'(i+1, j-1, k-2) + ebisize(k)
  --     )
  VBI_min_lt <= '1' when VBI_aggregate < VBIP_plus_ebisize else '0';

  VBI        <= VBI_aggregate when VBI_min_lt = '1' or VBIP_inf = '1' else
                VBIP_plus_ebisize;

end behav;
