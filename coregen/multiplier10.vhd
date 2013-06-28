--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.57
--  \   \         Application: netgen
--  /   /         Filename: multiplier10.vhd
-- /___/   /\     Timestamp: Mon Dec 14 11:31:07 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/multiplier10.ngc ./tmp/_cg/multiplier10.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: ./tmp/_cg/multiplier10.ngc
-- Output file	: ./tmp/_cg/multiplier10.vhd
-- # of Entities	: 1
-- Design Name	: multiplier10
-- Xilinx	: /net/syssoft/fpga_tools/xilinx_11.2i/ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity multiplier10 is
  port (
    a : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
    p : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end multiplier10;

architecture STRUCTURE of multiplier10 is
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_5_rt_30 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_4_Q_29 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_3_Q_27 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00001 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_2_Q_25 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_2_Q_24 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand1 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand_22 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_1_Q_21 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_1_Q_20 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00003 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_0_Q_18 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_0_Q_17 : STD_LOGIC; 
  signal BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal a_2 : STD_LOGIC_VECTOR ( 6 downto 2 ); 
  signal NlwRenamedSignal_a : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal NlwRenamedSignal_p : STD_LOGIC_VECTOR ( 10 downto 10 ); 
  signal p_3 : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal NlwRenamedSig_OI_p : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  a_2(6) <= a(6);
  a_2(5) <= a(5);
  a_2(4) <= a(4);
  a_2(3) <= a(3);
  a_2(2) <= a(2);
  NlwRenamedSignal_a(1) <= a(1);
  NlwRenamedSignal_a(0) <= a(0);
  p(15) <= NlwRenamedSignal_p(10);
  p(14) <= NlwRenamedSignal_p(10);
  p(13) <= NlwRenamedSignal_p(10);
  p(12) <= NlwRenamedSignal_p(10);
  p(11) <= NlwRenamedSignal_p(10);
  p(10) <= NlwRenamedSignal_p(10);
  p(9) <= p_3(9);
  p(8) <= p_3(8);
  p(7) <= p_3(7);
  p(6) <= p_3(6);
  p(5) <= p_3(5);
  p(4) <= p_3(4);
  p(3) <= p_3(3);
  p(2) <= NlwRenamedSignal_a(1);
  p(1) <= NlwRenamedSignal_a(0);
  p(0) <= NlwRenamedSig_OI_p(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a_2(6),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_5_rt_30
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom0000411 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => a_2(3),
      I1 => NlwRenamedSignal_a(0),
      I2 => NlwRenamedSignal_a(1),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand_22
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom000021 : LUT4
    generic map(
      INIT => X"264C"
    )
    port map (
      I0 => a_2(3),
      I1 => a_2(2),
      I2 => NlwRenamedSignal_a(0),
      I3 => NlwRenamedSignal_a(1),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom000031 : LUT4
    generic map(
      INIT => X"644C"
    )
    port map (
      I0 => a_2(2),
      I1 => a_2(3),
      I2 => NlwRenamedSignal_a(1),
      I3 => NlwRenamedSignal_a(0),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00003
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom0000111 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => a_2(4),
      I1 => a_2(5),
      I2 => a_2(6),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00001
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom000021 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => a_2(6),
      I1 => a_2(4),
      I2 => a_2(5),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom0000111 : LUT4
    generic map(
      INIT => X"963C"
    )
    port map (
      I0 => a_2(2),
      I1 => NlwRenamedSignal_a(1),
      I2 => a_2(3),
      I3 => NlwRenamedSignal_a(0),
      O => p_3(4)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom000012 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => NlwRenamedSignal_a(0),
      I1 => a_2(2),
      O => p_3(3)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_4_Q_29,
      LI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_5_rt_30,
      O => NlwRenamedSignal_p(10)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_3_Q_27,
      LI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002,
      O => p_3(9)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_3_Q_27,
      DI => NlwRenamedSig_OI_p(0),
      S => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002,
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_4_Q_29
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_2_Q_25,
      LI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00001,
      O => p_3(8)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_2_Q_25,
      DI => NlwRenamedSig_OI_p(0),
      S => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00001,
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_3_Q_27
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_1_Q_21,
      LI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_2_Q_24,
      O => p_3(7)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_1_Q_21,
      DI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand1,
      S => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_2_Q_24,
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_2_Q_25
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_2_Q : LUT4
    generic map(
      INIT => X"963C"
    )
    port map (
      I0 => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand_22,
      I1 => a_2(6),
      I2 => a_2(4),
      I3 => a_2(2),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_2_Q_24
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand : MULT_AND
    port map (
      I0 => a_2(2),
      I1 => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand_22,
      LO => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00004_mand1
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_0_Q_18,
      LI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_1_Q_20,
      O => p_3(6)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_0_Q_18,
      DI => a_2(5),
      S => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_1_Q_20,
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_1_Q_21
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00003,
      I1 => a_2(5),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_1_Q_20
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_p(0),
      LI => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_0_Q_17,
      O => p_3(5)
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_p(0),
      DI => a_2(4),
      S => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_0_Q_17,
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_cy_0_Q_18
    );
  BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_0_use_dist_ram_dg1_dmem_sp_mem_dist_mem_m0_Mrom_o_i_rom00002,
      I1 => a_2(4),
      O => BU2_U0_gCCM_iCCM_use_ccm_core_ccm_core_b0g2_b1g4_bg_1_use_adders_a1g_1_a2g_sa1_Madd_s_i_lut_0_Q_17
    );
  BU2_XST_GND : GND
    port map (
      G => NlwRenamedSig_OI_p(0)
    );

end STRUCTURE;

-- synthesis translate_on
