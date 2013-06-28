
-- File: uz_f.vhd
-- Date: 20 Dec 2009
-- Project: Zuker
-- Author: Arpith Chacko Jacob
--         Department of Computer Science and Engineering
--         Washington University in Saint Louis
-- Description:
--      This module computes for UZ_F
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

use work.zuker_pkg.all;
use work.energy_pkg.all;

entity uz_f is
  port (
    clk           : in  sl;
    reset         : in  sl;

    j_m_i_le_3_in : in  sl;

    -- PA_i_j_k
    base1_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- PB_i_j_k
    base2_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- S1[j-1] = PB_i_jm1_k
    base3_in      : in  slv (RESIDUE_WIDTH-1 downto 0);
    -- S1[i-1] = PA_im1_jm1_k
    base4_in      : in  slv (RESIDUE_WIDTH-1 downto 0);

    V_i_j_k_in    : in  slv (CELL_WIDTH-1 downto 0);
    V_i_jm1_k_in  : in  slv (CELL_WIDTH-1 downto 0);

    V1            : out slv (CELL_WIDTH-1 downto 0);
    V2            : out slv (CELL_WIDTH-1 downto 0)
    );
end entity;

architecture behav of uz_f is

  component bp_pair is
    port (
      base1        : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2        : in  slv (RESIDUE_WIDTH-1 downto 0);
      is_bp_pair   : out sl
      );
  end component;

  component terminalau is
    port (
      base1  : in  slv (RESIDUE_WIDTH-1 downto 0);
      base2  : in  slv (RESIDUE_WIDTH-1 downto 0);
      inf    : out sl;
      energy : out slv (CELL_WIDTH-1 downto 0)
      );
  end component;

  signal j_m_i_le_3          : sl;

  signal base1               : slv (RESIDUE_WIDTH-1 downto 0);
  signal base2               : slv (RESIDUE_WIDTH-1 downto 0);
  signal base3               : slv (RESIDUE_WIDTH-1 downto 0);
  signal base4               : slv (RESIDUE_WIDTH-1 downto 0);

  signal V_i_j_k             : slv (CELL_WIDTH-1 downto 0);
  signal V_i_jm1_k           : slv (CELL_WIDTH-1 downto 0);

  signal is_bp_pair12        : sl;
  signal is_bp_pair13        : sl;

  signal terminalenergy1_inf : sl;
  signal terminalenergy1     : slv (CELL_WIDTH-1 downto 0);
  signal terminalenergy2_inf : sl;
  signal terminalenergy2     : slv (CELL_WIDTH-1 downto 0);

  signal bases12             : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair12           : slv (3 downto 0);

  signal bases13             : slv (2*RESIDUE_WIDTH-3 downto 0);
  signal bp_pair13           : slv (3 downto 0);

  signal base2_int           : slv (RESIDUE_WIDTH-1 downto 0);
  signal base4_int           : slv (RESIDUE_WIDTH-1 downto 0);

  signal V_i_j_k_inf         : sl;
  signal V_i_jm1_k_inf       : sl;

  signal UZ_F_im1_1          : slv (CELL_WIDTH-1 downto 0);
  signal UZ_F_im2_1          : slv (CELL_WIDTH-1 downto 0);

  signal UZ_F_im1_2          : slv (CELL_WIDTH-1 downto 0);
  signal UZ_F_im2_2          : slv (CELL_WIDTH-1 downto 0);

begin

  -- improve timing by registering inputs
  reg_inputs : process (clk)
  begin 
    if rising_edge(clk) then
      j_m_i_le_3 <= j_m_i_le_3_in;

      base1      <= base1_in;
      base2      <= base2_in;
      base3      <= base3_in;
      base4      <= base4_in;

      V_i_j_k    <= V_i_j_k_in;
      V_i_jm1_k  <= V_i_jm1_k_in;
    end if;  -- end rising_edge
  end process reg_inputs;

  gen_base_pair12 : bp_pair
    port map (
      base1        => base1,
      base2        => base2,
      is_bp_pair   => is_bp_pair12
      );

  gen_base_pair13 : bp_pair
    port map (
      base1        => base1,
      base2        => base3,
      is_bp_pair   => is_bp_pair13
      );

  -- compute terminalAU energy
  compute_energy1 : terminalau
    port map (
      base1  => base1,
      base2  => base2,
      inf    => terminalenergy1_inf,
      energy => terminalenergy1
      );

  -- compute terminalAU energy
  compute_energy2 : terminalau
    port map (
      base1  => base1,
      base2  => base3,
      inf    => terminalenergy2_inf,
      energy => terminalenergy2
      );

  bases12   <= base1(1 downto 0) & base2(1 downto 0);
  bp_pair12 <= "0001" when bases12 = "0110" else
               "0010" when bases12 = "1001" else
               "0011" when bases12 = "1011" else
               "0100" when bases12 = "1110" else
               "0101" when bases12 = "0011" else
               "0110" when bases12 = "1100" else
               "0000";

  bases13   <= base1(1 downto 0) & base3(1 downto 0);
  bp_pair13 <= "0001" when bases13 = "0110" else
               "0010" when bases13 = "1001" else
               "0011" when bases13 = "1011" else
               "0100" when bases13 = "1110" else
               "0101" when bases13 = "0011" else
               "0110" when bases13 = "1100" else
               "0000";

  base2_int <= "0" & base2(RESIDUE_WIDTH-2 downto 0);
  base4_int <= "0" & base4(RESIDUE_WIDTH-2 downto 0);

  V_i_j_k_inf   <= '1' when V_i_j_k >= PVE_INFINITY else '0';
  V_i_jm1_k_inf <= '1' when V_i_jm1_k >= PVE_INFINITY else '0';

  reg1 : process (clk)
  begin 
    if rising_edge(clk) then
      if is_bp_pair12 = '1' and V_i_j_k_inf = '0' and j_m_i_le_3 = '0' then
        UZ_F_im1_1 <= V_i_j_k + terminalenergy1;

        UZ_F_im2_1 <= V_i_j_k + terminalenergy1 +
                                E_DANGLE5( conv_integer(bp_pair12) )
                                         ( conv_integer(base4_int) );
      else
        UZ_F_im1_1 <= PVE_INFINITY;
        UZ_F_im2_1 <= PVE_INFINITY;
      end if;

      if is_bp_pair13 = '1' and V_i_jm1_k_inf = '0' and j_m_i_le_3 = '0' then
        UZ_F_im1_2 <= V_i_jm1_k + E_DANGLE3( conv_integer(bp_pair13) )
                                           ( conv_integer(base2_int) ) +
                                  terminalenergy2;

        UZ_F_im2_2 <= V_i_jm1_k + E_DANGLE3( conv_integer(bp_pair13) )
                                           ( conv_integer(base2_int) ) +
                                  E_DANGLE5( conv_integer(bp_pair13) )
                                           ( conv_integer(base4_int) ) +
                                  terminalenergy2;
      else
        UZ_F_im1_2 <= PVE_INFINITY;
        UZ_F_im2_2 <= PVE_INFINITY;
      end if;
    end if;  -- end rising_edge
  end process reg1;

  reg2 : process (clk)
  begin 
    if rising_edge(clk) then
      if UZ_F_im1_1 < UZ_F_im1_2 then
        V1 <= UZ_F_im1_1;
      else
        V1 <= UZ_F_im1_2;
      end if;

      if UZ_F_im2_1 < UZ_F_im2_2 then
        V2 <= UZ_F_im2_1;
      else
        V2 <= UZ_F_im2_2;
      end if;
    end if;  -- end rising_edge
  end process reg2;

end behav;
