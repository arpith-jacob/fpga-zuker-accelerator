--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.57
--  \   \         Application: netgen
--  /   /         Filename: matrix_store.vhd
-- /___/   /\     Timestamp: Fri Nov 27 17:11:57 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/matrix_store.ngc ./tmp/_cg/matrix_store.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: ./tmp/_cg/matrix_store.ngc
-- Output file	: ./tmp/_cg/matrix_store.vhd
-- # of Entities	: 1
-- Design Name	: matrix_store
-- Xilinx	: /syssoft/fpga_tools/xilinx_11.2i/ISE
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

entity matrix_store is
  port (
    clka : in STD_LOGIC := 'X'; 
    clkb : in STD_LOGIC := 'X'; 
    wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    doutb : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 ) 
  );
end matrix_store;

architecture STRUCTURE of matrix_store is
  signal BU2_N1 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal wea_2 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal addra_3 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal dina_4 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal addrb_5 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal doutb_6 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal BU2_douta : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  wea_2(0) <= wea(0);
  addra_3(9) <= addra(9);
  addra_3(8) <= addra(8);
  addra_3(7) <= addra(7);
  addra_3(6) <= addra(6);
  addra_3(5) <= addra(5);
  addra_3(4) <= addra(4);
  addra_3(3) <= addra(3);
  addra_3(2) <= addra(2);
  addra_3(1) <= addra(1);
  addra_3(0) <= addra(0);
  addrb_5(9) <= addrb(9);
  addrb_5(8) <= addrb(8);
  addrb_5(7) <= addrb(7);
  addrb_5(6) <= addrb(6);
  addrb_5(5) <= addrb(5);
  addrb_5(4) <= addrb(4);
  addrb_5(3) <= addrb(3);
  addrb_5(2) <= addrb(2);
  addrb_5(1) <= addrb(1);
  addrb_5(0) <= addrb(0);
  doutb(17) <= doutb_6(17);
  doutb(16) <= doutb_6(16);
  doutb(15) <= doutb_6(15);
  doutb(14) <= doutb_6(14);
  doutb(13) <= doutb_6(13);
  doutb(12) <= doutb_6(12);
  doutb(11) <= doutb_6(11);
  doutb(10) <= doutb_6(10);
  doutb(9) <= doutb_6(9);
  doutb(8) <= doutb_6(8);
  doutb(7) <= doutb_6(7);
  doutb(6) <= doutb_6(6);
  doutb(5) <= doutb_6(5);
  doutb(4) <= doutb_6(4);
  doutb(3) <= doutb_6(3);
  doutb(2) <= doutb_6(2);
  doutb(1) <= doutb_6(1);
  doutb(0) <= doutb_6(0);
  dina_4(17) <= dina(17);
  dina_4(16) <= dina(16);
  dina_4(15) <= dina(15);
  dina_4(14) <= dina(14);
  dina_4(13) <= dina(13);
  dina_4(12) <= dina(12);
  dina_4(11) <= dina(11);
  dina_4(10) <= dina(10);
  dina_4(9) <= dina(9);
  dina_4(8) <= dina(8);
  dina_4(7) <= dina(7);
  dina_4(6) <= dina(6);
  dina_4(5) <= dina(5);
  dina_4(4) <= dina(4);
  dina_4(3) <= dina(3);
  dina_4(2) <= dina(2);
  dina_4(1) <= dina(1);
  dina_4(0) <= dina(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP : RAMB16
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL_A => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      INVERT_CLK_DOA_REG => FALSE,
      INVERT_CLK_DOB_REG => FALSE,
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      SIM_COLLISION_CHECK => "ALL",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18,
      SRVAL_B => X"000000000"
    )
    port map (
      CASCADEINA => BU2_douta(0),
      CASCADEINB => BU2_douta(0),
      CLKA => clka,
      CLKB => clkb,
      ENA => BU2_N1,
      REGCEA => BU2_douta(0),
      REGCEB => BU2_douta(0),
      ENB => BU2_N1,
      SSRA => BU2_douta(0),
      SSRB => BU2_douta(0),
      CASCADEOUTA => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED,
      ADDRA(14) => BU2_douta(0),
      ADDRA(13) => addra_3(9),
      ADDRA(12) => addra_3(8),
      ADDRA(11) => addra_3(7),
      ADDRA(10) => addra_3(6),
      ADDRA(9) => addra_3(5),
      ADDRA(8) => addra_3(4),
      ADDRA(7) => addra_3(3),
      ADDRA(6) => addra_3(2),
      ADDRA(5) => addra_3(1),
      ADDRA(4) => addra_3(0),
      ADDRA(3) => BU2_douta(0),
      ADDRA(2) => BU2_douta(0),
      ADDRA(1) => BU2_douta(0),
      ADDRA(0) => BU2_douta(0),
      ADDRB(14) => BU2_douta(0),
      ADDRB(13) => addrb_5(9),
      ADDRB(12) => addrb_5(8),
      ADDRB(11) => addrb_5(7),
      ADDRB(10) => addrb_5(6),
      ADDRB(9) => addrb_5(5),
      ADDRB(8) => addrb_5(4),
      ADDRB(7) => addrb_5(3),
      ADDRB(6) => addrb_5(2),
      ADDRB(5) => addrb_5(1),
      ADDRB(4) => addrb_5(0),
      ADDRB(3) => BU2_douta(0),
      ADDRB(2) => BU2_douta(0),
      ADDRB(1) => BU2_douta(0),
      ADDRB(0) => BU2_douta(0),
      DIA(31) => BU2_douta(0),
      DIA(30) => BU2_douta(0),
      DIA(29) => BU2_douta(0),
      DIA(28) => BU2_douta(0),
      DIA(27) => BU2_douta(0),
      DIA(26) => BU2_douta(0),
      DIA(25) => BU2_douta(0),
      DIA(24) => BU2_douta(0),
      DIA(23) => BU2_douta(0),
      DIA(22) => BU2_douta(0),
      DIA(21) => BU2_douta(0),
      DIA(20) => BU2_douta(0),
      DIA(19) => BU2_douta(0),
      DIA(18) => BU2_douta(0),
      DIA(17) => BU2_douta(0),
      DIA(16) => BU2_douta(0),
      DIA(15) => dina_4(16),
      DIA(14) => dina_4(15),
      DIA(13) => dina_4(14),
      DIA(12) => dina_4(13),
      DIA(11) => dina_4(12),
      DIA(10) => dina_4(11),
      DIA(9) => dina_4(10),
      DIA(8) => dina_4(9),
      DIA(7) => dina_4(7),
      DIA(6) => dina_4(6),
      DIA(5) => dina_4(5),
      DIA(4) => dina_4(4),
      DIA(3) => dina_4(3),
      DIA(2) => dina_4(2),
      DIA(1) => dina_4(1),
      DIA(0) => dina_4(0),
      DIB(31) => BU2_douta(0),
      DIB(30) => BU2_douta(0),
      DIB(29) => BU2_douta(0),
      DIB(28) => BU2_douta(0),
      DIB(27) => BU2_douta(0),
      DIB(26) => BU2_douta(0),
      DIB(25) => BU2_douta(0),
      DIB(24) => BU2_douta(0),
      DIB(23) => BU2_douta(0),
      DIB(22) => BU2_douta(0),
      DIB(21) => BU2_douta(0),
      DIB(20) => BU2_douta(0),
      DIB(19) => BU2_douta(0),
      DIB(18) => BU2_douta(0),
      DIB(17) => BU2_douta(0),
      DIB(16) => BU2_douta(0),
      DIB(15) => BU2_douta(0),
      DIB(14) => BU2_douta(0),
      DIB(13) => BU2_douta(0),
      DIB(12) => BU2_douta(0),
      DIB(11) => BU2_douta(0),
      DIB(10) => BU2_douta(0),
      DIB(9) => BU2_douta(0),
      DIB(8) => BU2_douta(0),
      DIB(7) => BU2_douta(0),
      DIB(6) => BU2_douta(0),
      DIB(5) => BU2_douta(0),
      DIB(4) => BU2_douta(0),
      DIB(3) => BU2_douta(0),
      DIB(2) => BU2_douta(0),
      DIB(1) => BU2_douta(0),
      DIB(0) => BU2_douta(0),
      DIPA(3) => BU2_douta(0),
      DIPA(2) => BU2_douta(0),
      DIPA(1) => dina_4(17),
      DIPA(0) => dina_4(8),
      DIPB(3) => BU2_douta(0),
      DIPB(2) => BU2_douta(0),
      DIPB(1) => BU2_douta(0),
      DIPB(0) => BU2_douta(0),
      WEA(3) => wea_2(0),
      WEA(2) => wea_2(0),
      WEA(1) => wea_2(0),
      WEA(0) => wea_2(0),
      WEB(3) => BU2_douta(0),
      WEB(2) => BU2_douta(0),
      WEB(1) => BU2_douta(0),
      WEB(0) => BU2_douta(0),
      DOA(31) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED,
      DOA(30) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED,
      DOA(29) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED,
      DOA(28) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED,
      DOA(27) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED,
      DOA(26) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED,
      DOA(25) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED,
      DOA(24) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED,
      DOA(23) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED,
      DOA(22) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED,
      DOA(21) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED,
      DOA(20) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED,
      DOA(19) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED,
      DOA(18) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED,
      DOA(17) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED,
      DOA(16) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED,
      DOA(15) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED,
      DOA(14) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED,
      DOA(13) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED,
      DOA(12) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED,
      DOA(11) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED,
      DOA(10) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED,
      DOA(9) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED,
      DOA(8) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED,
      DOA(7) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED,
      DOA(6) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED,
      DOA(5) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED,
      DOA(4) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED,
      DOA(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED,
      DOA(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED,
      DOA(1) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED,
      DOA(0) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED,
      DOB(31) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_31_UNCONNECTED,
      DOB(30) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_30_UNCONNECTED,
      DOB(29) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_29_UNCONNECTED,
      DOB(28) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_28_UNCONNECTED,
      DOB(27) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_27_UNCONNECTED,
      DOB(26) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_26_UNCONNECTED,
      DOB(25) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_25_UNCONNECTED,
      DOB(24) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_24_UNCONNECTED,
      DOB(23) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_23_UNCONNECTED,
      DOB(22) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_22_UNCONNECTED,
      DOB(21) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_21_UNCONNECTED,
      DOB(20) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_20_UNCONNECTED,
      DOB(19) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_19_UNCONNECTED,
      DOB(18) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_18_UNCONNECTED,
      DOB(17) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_17_UNCONNECTED,
      DOB(16) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_16_UNCONNECTED,
      DOB(15) => doutb_6(16),
      DOB(14) => doutb_6(15),
      DOB(13) => doutb_6(14),
      DOB(12) => doutb_6(13),
      DOB(11) => doutb_6(12),
      DOB(10) => doutb_6(11),
      DOB(9) => doutb_6(10),
      DOB(8) => doutb_6(9),
      DOB(7) => doutb_6(7),
      DOB(6) => doutb_6(6),
      DOB(5) => doutb_6(5),
      DOB(4) => doutb_6(4),
      DOB(3) => doutb_6(3),
      DOB(2) => doutb_6(2),
      DOB(1) => doutb_6(1),
      DOB(0) => doutb_6(0),
      DOPA(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_2_UNCONNECTED,
      DOPB(1) => doutb_6(17),
      DOPB(0) => doutb_6(8)
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N1
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_douta(0)
    );

end STRUCTURE;

-- synthesis translate_on
