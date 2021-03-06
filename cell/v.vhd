
-- File: v.vhd
-- Date: 16 Nov 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes V
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity v is
  port (
    size         : in  slv (HAIRPIN_SIZE_WIDTH-1 downto 0);
    base1        : in  slv (RESIDUE_WIDTH-1 downto 0);
    base2        : in  slv (RESIDUE_WIDTH-1 downto 0);
    base3        : in  slv (RESIDUE_WIDTH-1 downto 0);
    base4        : in  slv (RESIDUE_WIDTH-1 downto 0);

    tetra_base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base5  : in  slv (RESIDUE_WIDTH-1 downto 0);
    tetra_base6  : in  slv (RESIDUE_WIDTH-1 downto 0);

    T_ip1_jm1_1  : in  slv (CELL_WIDTH-1 downto 0);
    T_ip2_jm1_1  : in  slv (CELL_WIDTH-1 downto 0);
    T_ip1_jm2_1  : in  slv (CELL_WIDTH-1 downto 0);
    T_ip2_jm2_1  : in  slv (CELL_WIDTH-1 downto 0);

    V_in         : in  slv (CELL_WIDTH-1 downto 0);

    VBB          : in  slv (CELL_WIDTH-1 downto 0);
    VBI          : in  slv (CELL_WIDTH-1 downto 0);

    -- control condition for j - i <= 2
    j_m_i_le_2   : in  sl;

    -- control condition for j - i <= 3
    j_m_i_le_3   : in  sl;

    -- control condition for j - i <= 4
    j_m_i_le_4   : in  sl;

    -- control condition for j - i <= 5
    j_m_i_le_5   : in  sl;

    V            : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of v is

  component hairpin is
    port (
      size        : in  slv (HAIRPIN_SIZE_WIDTH-1 downto 0);
      base1       : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2       : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3       : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4       : in  slv (RESIDUE_WIDTH-1 downto 0);

      tetra_base1 : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base2 : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base3 : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base4 : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base5 : in  slv (RESIDUE_WIDTH-1 downto 0);
      tetra_base6 : in  slv (RESIDUE_WIDTH-1 downto 0);

      energy      : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component closing is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component stacking is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base3  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base4  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  component bp_pair is
    port (
      base1        : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2        : in  slv (RESIDUE_WIDTH-1 downto 0);
      is_bp_pair   : out sl
      );
  end component;

  signal hairpin_energy     : slv (CELL_WIDTH-1 downto 0);

  signal closing_energy     : slv (CELL_WIDTH-1 downto 0);
  signal closing_inf        : sl;

  signal bases12            : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal rtype12            : slv (3 downto 0);
  signal base3_int          : slv (RESIDUE_WIDTH-1 downto 0);
  signal base4_int          : slv (RESIDUE_WIDTH-1 downto 0);

  signal T_ip2_jm1_1_inf    : sl;
  signal T_ip2_jm1_1_dangle : slv (CELL_WIDTH-1 downto 0);

  signal T_ip1_jm2_1_inf    : sl;
  signal T_ip1_jm2_1_dangle : slv (CELL_WIDTH-1 downto 0);
  
  signal T_1_lt             : sl;
  signal T_1                : slv (CELL_WIDTH-1 downto 0);

  signal T_ip2_jm2_1_inf    : sl;
  signal T_ip2_jm2_1_dangle : slv (CELL_WIDTH-1 downto 0);

  signal T_ip1_jm1_1_inf    : sl;
  signal T_ip1_jm1_1_dangle : slv (CELL_WIDTH-1 downto 0);

  signal T_2_lt             : sl;
  signal T_2                : slv (CELL_WIDTH-1 downto 0);
  
  signal T_lt               : sl;
  signal T_plus_closing     : slv (CELL_WIDTH-1 downto 0);

  signal hairpin_lt_V       : sl;
  signal hairpin_min_V      : slv (CELL_WIDTH-1 downto 0);

  signal stacking_inf       : sl;
  signal stacking_energy    : slv (CELL_WIDTH-1 downto 0);
  signal V_plus_stacking    : slv (CELL_WIDTH-1 downto 0);
  signal V_inf              : sl;

  signal VBB_lt_T           : sl;
  signal VBB_min_T          : slv (CELL_WIDTH-1 downto 0);

  signal hairpinV_lt_VBI    : sl;
  signal hairpinV_min_VBI   : slv (CELL_WIDTH-1 downto 0);

  signal is_bp_pair         : sl;

  signal V_lt               : sl;

begin

  -----------------------------------------------------------------------------
  -- Compute T contribution
  -----------------------------------------------------------------------------

  -- compute closing energy
  compute_closing : closing
    port map (
      base1  => base1,
      base2  => base2,
      inf    => closing_inf,
      energy => closing_energy
      );

  -- quick hack
  -- by now i'm really really tired, and just want to be done!
  -- when can i graduate?!?
  bases12   <= base1(1 downto 0) & base2(1 downto 0);
  rtype12   <= "0001" when bases12 = "1001" else
               "0010" when bases12 = "0110" else
               "0011" when bases12 = "1110" else
               "0100" when bases12 = "1011" else
               "0101" when bases12 = "1100" else
               "0110" when bases12 = "0011" else
               "0000";

  -- treating these bases as signed numbers, need to increase bits
  -- here we're ignoring the valid bit
  base3_int <= "0" & base3(RESIDUE_WIDTH-2 downto 0);
  base4_int <= "0" & base4(RESIDUE_WIDTH-2 downto 0);

  T_ip2_jm1_1_inf    <= '1' when T_ip2_jm1_1 >= PVE_INFINITY else closing_inf;
  T_ip2_jm1_1_dangle <= T_ip2_jm1_1 +
                          E_DANGLE3_CLOSING( conv_integer(rtype12) )
                                           ( conv_integer(base3_int) );

  T_ip1_jm2_1_inf    <= '1' when T_ip1_jm2_1 >= PVE_INFINITY else closing_inf;
  T_ip1_jm2_1_dangle <= T_ip1_jm2_1 +
                          E_DANGLE5_CLOSING( conv_integer(rtype12) )
                                           ( conv_integer(base4_int) );

  T_1_lt             <= '1' when T_ip2_jm1_1_dangle < T_ip1_jm2_1_dangle else
                        '0';
  T_1                <= PVE_INFINITY when (T_ip2_jm1_1_inf = '1' and
                                           T_ip1_jm2_1_inf = '1') or
                                          j_m_i_le_4 = '1' else
                        T_ip2_jm1_1_dangle when (T_1_lt = '1' and
                                                 T_ip2_jm1_1_inf = '0') or
                                                T_ip1_jm2_1_inf = '1' else
                        T_ip1_jm2_1_dangle;

  T_ip2_jm2_1_inf    <= '1' when T_ip2_jm2_1 >= PVE_INFINITY else j_m_i_le_5;
  T_ip2_jm2_1_dangle <= T_ip2_jm2_1 +
                          E_DANGLE3_CLOSING( conv_integer(rtype12) )
                                           ( conv_integer(base3_int) ) +
                          E_DANGLE5( conv_integer(rtype12) )
                                   ( conv_integer(base4_int) );

  T_ip1_jm1_1_inf    <= '1' when T_ip1_jm1_1 >= PVE_INFINITY else closing_inf;
  T_ip1_jm1_1_dangle <= T_ip1_jm1_1 + closing_energy;

  T_2_lt             <= '1' when T_ip2_jm2_1_dangle < T_ip1_jm1_1_dangle else
                        '0';
  T_2                <= PVE_INFINITY when (T_ip2_jm2_1_inf = '1' and
                                           T_ip1_jm1_1_inf = '1') or
                                          j_m_i_le_4 = '1' else
                        T_ip2_jm2_1_dangle when (T_2_lt = '1' and
                                                 T_ip2_jm2_1_inf = '0') or
                                                T_ip1_jm1_1_inf = '1' else
                        T_ip1_jm1_1_dangle;

  -- T(i+1, j-1, k) + closing
  T_lt           <= '1' when T_1 < T_2 else '0';
  T_plus_closing <= T_1 when T_lt = '1' else T_2;

  -----------------------------------------------------------------------------
  -- Compute min ( VBB(i, j, k), T(i+1, j-1, k) + closing )
  -----------------------------------------------------------------------------

  -- min ( VBB(i, j, k), T(i+1, j-1, k) + closing )
  VBB_lt_T  <= '1' when VBB < T_plus_closing else '0';

  -- select VBB when it is smaller, or when T + closing is not
  -- valid.
  -- T + closing is not valid unless j - i > 4
  -- VBB is not valid unless j - i > 2
  VBB_min_T <= PVE_INFINITY    when j_m_i_le_2 = '1' else
               VBB             when VBB_lt_T = '1' or
                                    j_m_i_le_3 = '1' else
               T_plus_closing;

  -----------------------------------------------------------------------------
  -- Compute hairpin energy contribution
  -----------------------------------------------------------------------------

  -- this is valid only if j - i > 1, that is, the size (j - i - 1) is greater
  -- than 0.  we can handle this condition by producing a hairpin energy
  -- of +infinity when size = 0 to 2.
  compute_hairpin : hairpin
    port map (
      size        => size,
      base1       => base1,
      base2       => base2,
      base3       => base3,
      base4       => base4,

      tetra_base1 => tetra_base1,
      tetra_base2 => tetra_base2,
      tetra_base3 => tetra_base3,
      tetra_base4 => tetra_base4,
      tetra_base5 => tetra_base5,
      tetra_base6 => tetra_base6,

      energy      => hairpin_energy
      );

  -----------------------------------------------------------------------------
  -- Compute V contribution
  -----------------------------------------------------------------------------

  -- compute stacking energy es
  compute_stacking_energy : stacking
    port map (
      base1  => base1,
      base2  => base2,
      base3  => base3,
      base4  => base4,
      inf    => stacking_inf,
      energy => stacking_energy
      );

  V_inf <= '1' when V_in >= PVE_INFINITY else stacking_inf;

  -- V(i+1, j-1, k) + es (base1, base2, base3, base4)
  -- this term is valid only if BP_pair (base3, base4) > 0
  -- but this condition is already encoded (+infinity) in the stacking energy
  -- table.
  V_plus_stacking <= V_in + stacking_energy;

  -----------------------------------------------------------------------------
  -- Compute min ( hairpin, V(i+1, j-1, k) + es )
  -----------------------------------------------------------------------------

  -- min ( hairpin, V(i+1, j-1, k) + es )
  hairpin_lt_V  <= '1' when hairpin_energy < V_plus_stacking else '0';

  -- select hairpin_energy when it is smaller, or when V + es is not
  -- valid.  V + es is not valid unless j - i > 3
  hairpin_min_V <= hairpin_energy  when hairpin_lt_V = '1' or V_inf = '1' or
                                        j_m_i_le_3 = '1' else
                   V_plus_stacking;

  -----------------------------------------------------------------------------
  -- Compute min ( hairpin, V(i+1, j-1, k) + es, VBI(i, j, k) )
  -----------------------------------------------------------------------------

  -- min ( hairpin, V(i+1, j-1, k) + es, VBI(i, j, k) )
  hairpinV_lt_VBI  <= '1' when hairpin_min_V < VBI else '0';

  -- select hairpin_energy when it is smaller, or when VBI is not
  -- valid.
  -- VBI is not valid unless j - i > 2
  hairpinV_min_VBI <= hairpin_min_V when hairpinV_lt_VBI = '1' or
                                        j_m_i_le_2 = '1' else
                      VBI;

  -----------------------------------------------------------------------------
  -- Compute final V
  -----------------------------------------------------------------------------

  -- V is not defined if base1 doesn't pair with base2, i.e.,
  --   BP_pair (base1, base2) must be > 0
  gen_base_pair : bp_pair
    port map (
      base1        => base1,
      base2        => base2,
      is_bp_pair   => is_bp_pair
      );

  V_lt <= '1' when hairpinV_min_VBI < VBB_min_T else '0';

  -- VBI is not valid unless j - i > 2
  V    <= PVE_INFINITY      when is_bp_pair = '0' else
          hairpinV_min_VBI  when V_lt = '1' else
          VBB_min_T;

end behav;
