--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.57
--  \   \         Application: netgen
--  /   /         Filename: table_int21.vhd
-- /___/   /\     Timestamp: Tue Dec  8 13:53:18 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/table_int21.ngc ./tmp/_cg/table_int21.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: ./tmp/_cg/table_int21.ngc
-- Output file	: ./tmp/_cg/table_int21.vhd
-- # of Entities	: 1
-- Design Name	: table_int21
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

entity table_int21 is
  port (
    clka : in STD_LOGIC := 'X'; 
    clkb : in STD_LOGIC := 'X'; 
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 ); 
    doutb : out STD_LOGIC_VECTOR ( 8 downto 0 ) 
  );
end table_int21;

architecture STRUCTURE of table_int21 is
  signal BU2_N1 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTA_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTA_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal addra_2 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal douta_3 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal addrb_4 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal doutb_5 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_enb_array : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_ena_array : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_ram_douta : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_ram_doutb : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_blk_mem_generator_valid_cstr_ram_douta0 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_rdaddrecc : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  addra_2(11) <= addra(11);
  addra_2(10) <= addra(10);
  addra_2(9) <= addra(9);
  addra_2(8) <= addra(8);
  addra_2(7) <= addra(7);
  addra_2(6) <= addra(6);
  addra_2(5) <= addra(5);
  addra_2(4) <= addra(4);
  addra_2(3) <= addra(3);
  addra_2(2) <= addra(2);
  addra_2(1) <= addra(1);
  addra_2(0) <= addra(0);
  addrb_4(11) <= addrb(11);
  addrb_4(10) <= addrb(10);
  addrb_4(9) <= addrb(9);
  addrb_4(8) <= addrb(8);
  addrb_4(7) <= addrb(7);
  addrb_4(6) <= addrb(6);
  addrb_4(5) <= addrb(5);
  addrb_4(4) <= addrb(4);
  addrb_4(3) <= addrb(3);
  addrb_4(2) <= addrb(2);
  addrb_4(1) <= addrb(1);
  addrb_4(0) <= addrb(0);
  douta(8) <= douta_3(8);
  douta(7) <= douta_3(7);
  douta(6) <= douta_3(6);
  douta(5) <= douta_3(5);
  douta(4) <= douta_3(4);
  douta(3) <= douta_3(3);
  douta(2) <= douta_3(2);
  douta(1) <= douta_3(1);
  douta(0) <= douta_3(0);
  doutb(8) <= doutb_5(8);
  doutb(7) <= doutb_5(7);
  doutb(6) <= doutb_5(6);
  doutb(5) <= doutb_5(5);
  doutb(4) <= doutb_5(4);
  doutb(3) <= doutb_5(3);
  doutb(2) <= doutb_5(2);
  doutb(1) <= doutb_5(1);
  doutb(0) <= doutb_5(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_U0_blk_mem_generator_valid_cstr_bindec_a_bindec_inst_a_ENOUT_0_mux00001_INV_0 : INV
    port map (
      I => addra_2(11),
      O => BU2_U0_blk_mem_generator_valid_cstr_ena_array(0)
    );
  BU2_U0_blk_mem_generator_valid_cstr_bindec_b_bindec_inst_b_ENOUT_0_mux00001_INV_0 : INV
    port map (
      I => addrb_4(11),
      O => BU2_U0_blk_mem_generator_valid_cstr_enb_array(0)
    );
  BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP : RAMB16
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
      INIT_12 => X"6EC85F7DC8C8C8C86EC87D6E6EC86E73C8C8C8C8C8141E32C8505569C8506E78",
      INIT_13 => X"3CC855C8C8C8C8C841C86EC8C8C8C8C8C8C8C8C8C86EC828C8C8C8C8C828C855",
      INIT_14 => X"6EC85F7DC8C8C8C86EC87D6E6EC86E73C8C8C8C8C8141E28C8505569C8376E73",
      INIT_15 => X"3CC855C8C8C8C8C84BC86EC8C8C8C8C8C8C8C8C8C86EC828C8C8C8C8C828C855",
      INIT_16 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_17 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_18 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_19 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_1A => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_1B => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_1C => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_1D => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"6EC85F7DC8C8C8C86EC87D6E6EC86E73C8C8C8C8C8141E3CC8505569C8696E7D",
      INIT_23 => X"3CC855C8C8C8C8C83CC86EC8C8C8C8C8C8C8C8C8C86EC828C8C8C8C8C828C855",
      INIT_24 => X"6EC85F7DC8C8C8C86EC87D6E6EC86E73C8C8C8C8C8141E32C8505569C8506E78",
      INIT_25 => X"3CC855C8C8C8C8C841C86EC8C8C8C8C8C8C8C8C8C86EC828C8C8C8C8C828C855",
      INIT_26 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_27 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_28 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_29 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_2A => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_2B => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_2C => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_2D => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_33 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_34 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_35 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_36 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_37 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_38 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_39 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_3A => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_3B => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_3C => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_3D => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      INVERT_CLK_DOA_REG => FALSE,
      INVERT_CLK_DOB_REG => FALSE,
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      SIM_COLLISION_CHECK => "ALL",
      INITP_06 => X"5F5FFAFA4F44F888000000000000000000000000000000000000000000000000",
      INITP_07 => X"00000000000000005F5FFAFA4F44F8885F5FFAFA4F44F8885F5FFAFA4F44F888",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9,
      SRVAL_B => X"000000000"
    )
    port map (
      CASCADEINA => BU2_rdaddrecc(0),
      CASCADEINB => BU2_rdaddrecc(0),
      CLKA => clka,
      CLKB => clkb,
      ENA => BU2_U0_blk_mem_generator_valid_cstr_ena_array(0),
      REGCEA => BU2_rdaddrecc(0),
      REGCEB => BU2_rdaddrecc(0),
      ENB => BU2_U0_blk_mem_generator_valid_cstr_enb_array(0),
      SSRA => BU2_rdaddrecc(0),
      SSRB => BU2_rdaddrecc(0),
      CASCADEOUTA => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTB_UNCONNECTED,
      ADDRA(14) => BU2_rdaddrecc(0),
      ADDRA(13) => addra_2(10),
      ADDRA(12) => addra_2(9),
      ADDRA(11) => addra_2(8),
      ADDRA(10) => addra_2(7),
      ADDRA(9) => addra_2(6),
      ADDRA(8) => addra_2(5),
      ADDRA(7) => addra_2(4),
      ADDRA(6) => addra_2(3),
      ADDRA(5) => addra_2(2),
      ADDRA(4) => addra_2(1),
      ADDRA(3) => addra_2(0),
      ADDRA(2) => BU2_rdaddrecc(0),
      ADDRA(1) => BU2_rdaddrecc(0),
      ADDRA(0) => BU2_rdaddrecc(0),
      ADDRB(14) => BU2_rdaddrecc(0),
      ADDRB(13) => addrb_4(10),
      ADDRB(12) => addrb_4(9),
      ADDRB(11) => addrb_4(8),
      ADDRB(10) => addrb_4(7),
      ADDRB(9) => addrb_4(6),
      ADDRB(8) => addrb_4(5),
      ADDRB(7) => addrb_4(4),
      ADDRB(6) => addrb_4(3),
      ADDRB(5) => addrb_4(2),
      ADDRB(4) => addrb_4(1),
      ADDRB(3) => addrb_4(0),
      ADDRB(2) => BU2_rdaddrecc(0),
      ADDRB(1) => BU2_rdaddrecc(0),
      ADDRB(0) => BU2_rdaddrecc(0),
      DIA(31) => BU2_rdaddrecc(0),
      DIA(30) => BU2_rdaddrecc(0),
      DIA(29) => BU2_rdaddrecc(0),
      DIA(28) => BU2_rdaddrecc(0),
      DIA(27) => BU2_rdaddrecc(0),
      DIA(26) => BU2_rdaddrecc(0),
      DIA(25) => BU2_rdaddrecc(0),
      DIA(24) => BU2_rdaddrecc(0),
      DIA(23) => BU2_rdaddrecc(0),
      DIA(22) => BU2_rdaddrecc(0),
      DIA(21) => BU2_rdaddrecc(0),
      DIA(20) => BU2_rdaddrecc(0),
      DIA(19) => BU2_rdaddrecc(0),
      DIA(18) => BU2_rdaddrecc(0),
      DIA(17) => BU2_rdaddrecc(0),
      DIA(16) => BU2_rdaddrecc(0),
      DIA(15) => BU2_rdaddrecc(0),
      DIA(14) => BU2_rdaddrecc(0),
      DIA(13) => BU2_rdaddrecc(0),
      DIA(12) => BU2_rdaddrecc(0),
      DIA(11) => BU2_rdaddrecc(0),
      DIA(10) => BU2_rdaddrecc(0),
      DIA(9) => BU2_rdaddrecc(0),
      DIA(8) => BU2_rdaddrecc(0),
      DIA(7) => BU2_rdaddrecc(0),
      DIA(6) => BU2_rdaddrecc(0),
      DIA(5) => BU2_rdaddrecc(0),
      DIA(4) => BU2_rdaddrecc(0),
      DIA(3) => BU2_rdaddrecc(0),
      DIA(2) => BU2_rdaddrecc(0),
      DIA(1) => BU2_rdaddrecc(0),
      DIA(0) => BU2_rdaddrecc(0),
      DIB(31) => BU2_rdaddrecc(0),
      DIB(30) => BU2_rdaddrecc(0),
      DIB(29) => BU2_rdaddrecc(0),
      DIB(28) => BU2_rdaddrecc(0),
      DIB(27) => BU2_rdaddrecc(0),
      DIB(26) => BU2_rdaddrecc(0),
      DIB(25) => BU2_rdaddrecc(0),
      DIB(24) => BU2_rdaddrecc(0),
      DIB(23) => BU2_rdaddrecc(0),
      DIB(22) => BU2_rdaddrecc(0),
      DIB(21) => BU2_rdaddrecc(0),
      DIB(20) => BU2_rdaddrecc(0),
      DIB(19) => BU2_rdaddrecc(0),
      DIB(18) => BU2_rdaddrecc(0),
      DIB(17) => BU2_rdaddrecc(0),
      DIB(16) => BU2_rdaddrecc(0),
      DIB(15) => BU2_rdaddrecc(0),
      DIB(14) => BU2_rdaddrecc(0),
      DIB(13) => BU2_rdaddrecc(0),
      DIB(12) => BU2_rdaddrecc(0),
      DIB(11) => BU2_rdaddrecc(0),
      DIB(10) => BU2_rdaddrecc(0),
      DIB(9) => BU2_rdaddrecc(0),
      DIB(8) => BU2_rdaddrecc(0),
      DIB(7) => BU2_rdaddrecc(0),
      DIB(6) => BU2_rdaddrecc(0),
      DIB(5) => BU2_rdaddrecc(0),
      DIB(4) => BU2_rdaddrecc(0),
      DIB(3) => BU2_rdaddrecc(0),
      DIB(2) => BU2_rdaddrecc(0),
      DIB(1) => BU2_rdaddrecc(0),
      DIB(0) => BU2_rdaddrecc(0),
      DIPA(3) => BU2_rdaddrecc(0),
      DIPA(2) => BU2_rdaddrecc(0),
      DIPA(1) => BU2_rdaddrecc(0),
      DIPA(0) => BU2_rdaddrecc(0),
      DIPB(3) => BU2_rdaddrecc(0),
      DIPB(2) => BU2_rdaddrecc(0),
      DIPB(1) => BU2_rdaddrecc(0),
      DIPB(0) => BU2_rdaddrecc(0),
      WEA(3) => BU2_rdaddrecc(0),
      WEA(2) => BU2_rdaddrecc(0),
      WEA(1) => BU2_rdaddrecc(0),
      WEA(0) => BU2_rdaddrecc(0),
      WEB(3) => BU2_rdaddrecc(0),
      WEB(2) => BU2_rdaddrecc(0),
      WEB(1) => BU2_rdaddrecc(0),
      WEB(0) => BU2_rdaddrecc(0),
      DOA(31) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_31_UNCONNECTED,
      DOA(30) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_30_UNCONNECTED,
      DOA(29) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_29_UNCONNECTED,
      DOA(28) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_28_UNCONNECTED,
      DOA(27) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_27_UNCONNECTED,
      DOA(26) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_26_UNCONNECTED,
      DOA(25) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_25_UNCONNECTED,
      DOA(24) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_24_UNCONNECTED,
      DOA(23) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_23_UNCONNECTED,
      DOA(22) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_22_UNCONNECTED,
      DOA(21) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_21_UNCONNECTED,
      DOA(20) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_20_UNCONNECTED,
      DOA(19) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_19_UNCONNECTED,
      DOA(18) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_18_UNCONNECTED,
      DOA(17) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_17_UNCONNECTED,
      DOA(16) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_16_UNCONNECTED,
      DOA(15) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_15_UNCONNECTED,
      DOA(14) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_14_UNCONNECTED,
      DOA(13) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_13_UNCONNECTED,
      DOA(12) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_12_UNCONNECTED,
      DOA(11) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_11_UNCONNECTED,
      DOA(10) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_10_UNCONNECTED,
      DOA(9) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_9_UNCONNECTED,
      DOA(8) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_8_UNCONNECTED,
      DOA(7) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(7),
      DOA(6) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(6),
      DOA(5) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(5),
      DOA(4) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(4),
      DOA(3) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(3),
      DOA(2) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(2),
      DOA(1) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(1),
      DOA(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(0),
      DOB(31) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_31_UNCONNECTED,
      DOB(30) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_30_UNCONNECTED,
      DOB(29) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_29_UNCONNECTED,
      DOB(28) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_28_UNCONNECTED,
      DOB(27) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_27_UNCONNECTED,
      DOB(26) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_26_UNCONNECTED,
      DOB(25) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_25_UNCONNECTED,
      DOB(24) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_24_UNCONNECTED,
      DOB(23) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_23_UNCONNECTED,
      DOB(22) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_22_UNCONNECTED,
      DOB(21) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_21_UNCONNECTED,
      DOB(20) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_20_UNCONNECTED,
      DOB(19) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_19_UNCONNECTED,
      DOB(18) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_18_UNCONNECTED,
      DOB(17) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_17_UNCONNECTED,
      DOB(16) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_16_UNCONNECTED,
      DOB(15) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_15_UNCONNECTED,
      DOB(14) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_14_UNCONNECTED,
      DOB(13) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_13_UNCONNECTED,
      DOB(12) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_12_UNCONNECTED,
      DOB(11) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_11_UNCONNECTED,
      DOB(10) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_10_UNCONNECTED,
      DOB(9) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_9_UNCONNECTED,
      DOB(8) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_8_UNCONNECTED,
      DOB(7) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(7),
      DOB(6) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(6),
      DOB(5) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(5),
      DOB(4) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(4),
      DOB(3) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(3),
      DOB(2) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(2),
      DOB(1) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(1),
      DOB(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(0),
      DOPA(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_1_UNCONNECTED,
      DOPA(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(8),
      DOPB(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_1_UNCONNECTED,
      DOPB(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(8)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(0),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(0),
      O => douta_3(0)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(1),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(1),
      O => douta_3(1)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(2),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(2),
      O => douta_3(2)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(3),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(3),
      O => douta_3(3)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(4),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(4),
      O => douta_3(4)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(5),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(5),
      O => douta_3(5)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(6),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(6),
      O => douta_3(6)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(7),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(7),
      O => douta_3(7)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_dout_mux_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta(8),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(8),
      O => douta_3(8)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(0),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(0),
      O => doutb_5(0)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(1),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(1),
      O => doutb_5(1)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(2),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(2),
      O => doutb_5(2)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(3),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(3),
      O => doutb_5(3)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(4),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(4),
      O => doutb_5(4)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(5),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(5),
      O => doutb_5(5)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(6),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(6),
      O => doutb_5(6)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(7),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(7),
      O => doutb_5(7)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_dout_mux_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0),
      I1 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb(8),
      I2 => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(8),
      O => doutb_5(8)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => BU2_N1,
      D => addrb_4(11),
      Q => BU2_U0_blk_mem_generator_valid_cstr_has_mux_b_B_sel_pipe(0)
    );
  BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clka,
      CE => BU2_N1,
      D => addra_2(11),
      Q => BU2_U0_blk_mem_generator_valid_cstr_has_mux_a_A_sel_pipe(0)
    );
  BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP : RAMB16
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"5F5FFAFA4F44F888000000000000000000000000000000000000000000000000",
      INITP_01 => X"00000000000000005F5FFAFA4F44F8885F5FFAFA4F44F8885F5FFAFA4F44F888",
      INITP_02 => X"5F5FFAFA4F44F888000000000000000000000000000000000000000000000000",
      INITP_03 => X"00000000000000005F5FFAFA4F44F8885F5FFAFA4F44F8885F5FFAFA4F44F888",
      INITP_04 => X"5F5FFAFA4F44F888000000000000000000000000000000000000000000000000",
      INITP_05 => X"00000000000000005F5FFAFA4F44F8885F5FFAFA4F44F8885F5FFAFA4F44F888",
      SRVAL_A => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_03 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_04 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_05 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_06 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_07 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_08 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_09 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_0A => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_0B => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_0C => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_0D => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_13 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_14 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_15 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_16 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_17 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_18 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_19 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_1A => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_1B => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_1C => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_1D => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_23 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_24 => X"96F087A5F0F0F0F096F0A59696F0969BF0F0F0F0F03C465AF0787D91F07896A0",
      INIT_25 => X"64F07DF0F0F0F0F069F096F0F0F0F0F0F0F0F0F0F096F050F0F0F0F0F050F07D",
      INIT_26 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_27 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_28 => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_29 => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_2A => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_2B => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
      INIT_2C => X"B913AAC813131313B913C8B9B913B9BE13131313135F697D139BA0B4139BB9C3",
      INIT_2D => X"8713A013131313138C13B913131313131313131313B9137313131313137313A0",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      SIM_COLLISION_CHECK => "ALL",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9,
      SRVAL_B => X"000000000"
    )
    port map (
      CASCADEINA => BU2_rdaddrecc(0),
      CASCADEINB => BU2_rdaddrecc(0),
      CLKA => clka,
      CLKB => clkb,
      ENA => addra_2(11),
      REGCEA => BU2_rdaddrecc(0),
      REGCEB => BU2_rdaddrecc(0),
      ENB => addrb_4(11),
      SSRA => BU2_rdaddrecc(0),
      SSRB => BU2_rdaddrecc(0),
      CASCADEOUTA => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_CASCADEOUTB_UNCONNECTED,
      ADDRA(14) => BU2_rdaddrecc(0),
      ADDRA(13) => addra_2(10),
      ADDRA(12) => addra_2(9),
      ADDRA(11) => addra_2(8),
      ADDRA(10) => addra_2(7),
      ADDRA(9) => addra_2(6),
      ADDRA(8) => addra_2(5),
      ADDRA(7) => addra_2(4),
      ADDRA(6) => addra_2(3),
      ADDRA(5) => addra_2(2),
      ADDRA(4) => addra_2(1),
      ADDRA(3) => addra_2(0),
      ADDRA(2) => BU2_rdaddrecc(0),
      ADDRA(1) => BU2_rdaddrecc(0),
      ADDRA(0) => BU2_rdaddrecc(0),
      ADDRB(14) => BU2_rdaddrecc(0),
      ADDRB(13) => addrb_4(10),
      ADDRB(12) => addrb_4(9),
      ADDRB(11) => addrb_4(8),
      ADDRB(10) => addrb_4(7),
      ADDRB(9) => addrb_4(6),
      ADDRB(8) => addrb_4(5),
      ADDRB(7) => addrb_4(4),
      ADDRB(6) => addrb_4(3),
      ADDRB(5) => addrb_4(2),
      ADDRB(4) => addrb_4(1),
      ADDRB(3) => addrb_4(0),
      ADDRB(2) => BU2_rdaddrecc(0),
      ADDRB(1) => BU2_rdaddrecc(0),
      ADDRB(0) => BU2_rdaddrecc(0),
      DIA(31) => BU2_rdaddrecc(0),
      DIA(30) => BU2_rdaddrecc(0),
      DIA(29) => BU2_rdaddrecc(0),
      DIA(28) => BU2_rdaddrecc(0),
      DIA(27) => BU2_rdaddrecc(0),
      DIA(26) => BU2_rdaddrecc(0),
      DIA(25) => BU2_rdaddrecc(0),
      DIA(24) => BU2_rdaddrecc(0),
      DIA(23) => BU2_rdaddrecc(0),
      DIA(22) => BU2_rdaddrecc(0),
      DIA(21) => BU2_rdaddrecc(0),
      DIA(20) => BU2_rdaddrecc(0),
      DIA(19) => BU2_rdaddrecc(0),
      DIA(18) => BU2_rdaddrecc(0),
      DIA(17) => BU2_rdaddrecc(0),
      DIA(16) => BU2_rdaddrecc(0),
      DIA(15) => BU2_rdaddrecc(0),
      DIA(14) => BU2_rdaddrecc(0),
      DIA(13) => BU2_rdaddrecc(0),
      DIA(12) => BU2_rdaddrecc(0),
      DIA(11) => BU2_rdaddrecc(0),
      DIA(10) => BU2_rdaddrecc(0),
      DIA(9) => BU2_rdaddrecc(0),
      DIA(8) => BU2_rdaddrecc(0),
      DIA(7) => BU2_rdaddrecc(0),
      DIA(6) => BU2_rdaddrecc(0),
      DIA(5) => BU2_rdaddrecc(0),
      DIA(4) => BU2_rdaddrecc(0),
      DIA(3) => BU2_rdaddrecc(0),
      DIA(2) => BU2_rdaddrecc(0),
      DIA(1) => BU2_rdaddrecc(0),
      DIA(0) => BU2_rdaddrecc(0),
      DIB(31) => BU2_rdaddrecc(0),
      DIB(30) => BU2_rdaddrecc(0),
      DIB(29) => BU2_rdaddrecc(0),
      DIB(28) => BU2_rdaddrecc(0),
      DIB(27) => BU2_rdaddrecc(0),
      DIB(26) => BU2_rdaddrecc(0),
      DIB(25) => BU2_rdaddrecc(0),
      DIB(24) => BU2_rdaddrecc(0),
      DIB(23) => BU2_rdaddrecc(0),
      DIB(22) => BU2_rdaddrecc(0),
      DIB(21) => BU2_rdaddrecc(0),
      DIB(20) => BU2_rdaddrecc(0),
      DIB(19) => BU2_rdaddrecc(0),
      DIB(18) => BU2_rdaddrecc(0),
      DIB(17) => BU2_rdaddrecc(0),
      DIB(16) => BU2_rdaddrecc(0),
      DIB(15) => BU2_rdaddrecc(0),
      DIB(14) => BU2_rdaddrecc(0),
      DIB(13) => BU2_rdaddrecc(0),
      DIB(12) => BU2_rdaddrecc(0),
      DIB(11) => BU2_rdaddrecc(0),
      DIB(10) => BU2_rdaddrecc(0),
      DIB(9) => BU2_rdaddrecc(0),
      DIB(8) => BU2_rdaddrecc(0),
      DIB(7) => BU2_rdaddrecc(0),
      DIB(6) => BU2_rdaddrecc(0),
      DIB(5) => BU2_rdaddrecc(0),
      DIB(4) => BU2_rdaddrecc(0),
      DIB(3) => BU2_rdaddrecc(0),
      DIB(2) => BU2_rdaddrecc(0),
      DIB(1) => BU2_rdaddrecc(0),
      DIB(0) => BU2_rdaddrecc(0),
      DIPA(3) => BU2_rdaddrecc(0),
      DIPA(2) => BU2_rdaddrecc(0),
      DIPA(1) => BU2_rdaddrecc(0),
      DIPA(0) => BU2_rdaddrecc(0),
      DIPB(3) => BU2_rdaddrecc(0),
      DIPB(2) => BU2_rdaddrecc(0),
      DIPB(1) => BU2_rdaddrecc(0),
      DIPB(0) => BU2_rdaddrecc(0),
      WEA(3) => BU2_rdaddrecc(0),
      WEA(2) => BU2_rdaddrecc(0),
      WEA(1) => BU2_rdaddrecc(0),
      WEA(0) => BU2_rdaddrecc(0),
      WEB(3) => BU2_rdaddrecc(0),
      WEB(2) => BU2_rdaddrecc(0),
      WEB(1) => BU2_rdaddrecc(0),
      WEB(0) => BU2_rdaddrecc(0),
      DOA(31) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_31_UNCONNECTED,
      DOA(30) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_30_UNCONNECTED,
      DOA(29) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_29_UNCONNECTED,
      DOA(28) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_28_UNCONNECTED,
      DOA(27) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_27_UNCONNECTED,
      DOA(26) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_26_UNCONNECTED,
      DOA(25) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_25_UNCONNECTED,
      DOA(24) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_24_UNCONNECTED,
      DOA(23) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_23_UNCONNECTED,
      DOA(22) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_22_UNCONNECTED,
      DOA(21) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_21_UNCONNECTED,
      DOA(20) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_20_UNCONNECTED,
      DOA(19) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_19_UNCONNECTED,
      DOA(18) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_18_UNCONNECTED,
      DOA(17) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_17_UNCONNECTED,
      DOA(16) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_16_UNCONNECTED,
      DOA(15) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_15_UNCONNECTED,
      DOA(14) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_14_UNCONNECTED,
      DOA(13) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_13_UNCONNECTED,
      DOA(12) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_12_UNCONNECTED,
      DOA(11) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_11_UNCONNECTED,
      DOA(10) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_10_UNCONNECTED,
      DOA(9) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_9_UNCONNECTED,
      DOA(8) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOA_8_UNCONNECTED,
      DOA(7) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(7),
      DOA(6) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(6),
      DOA(5) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(5),
      DOA(4) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(4),
      DOA(3) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(3),
      DOA(2) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(2),
      DOA(1) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(1),
      DOA(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(0),
      DOB(31) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_31_UNCONNECTED,
      DOB(30) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_30_UNCONNECTED,
      DOB(29) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_29_UNCONNECTED,
      DOB(28) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_28_UNCONNECTED,
      DOB(27) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_27_UNCONNECTED,
      DOB(26) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_26_UNCONNECTED,
      DOB(25) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_25_UNCONNECTED,
      DOB(24) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_24_UNCONNECTED,
      DOB(23) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_23_UNCONNECTED,
      DOB(22) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_22_UNCONNECTED,
      DOB(21) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_21_UNCONNECTED,
      DOB(20) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_20_UNCONNECTED,
      DOB(19) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_19_UNCONNECTED,
      DOB(18) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_18_UNCONNECTED,
      DOB(17) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_17_UNCONNECTED,
      DOB(16) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_16_UNCONNECTED,
      DOB(15) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_15_UNCONNECTED,
      DOB(14) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_14_UNCONNECTED,
      DOB(13) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_13_UNCONNECTED,
      DOB(12) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_12_UNCONNECTED,
      DOB(11) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_11_UNCONNECTED,
      DOB(10) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_10_UNCONNECTED,
      DOB(9) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_9_UNCONNECTED,
      DOB(8) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOB_8_UNCONNECTED,
      DOB(7) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(7),
      DOB(6) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(6),
      DOB(5) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(5),
      DOB(4) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(4),
      DOB(3) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(3),
      DOB(2) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(2),
      DOB(1) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(1),
      DOB(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(0),
      DOPA(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPA_1_UNCONNECTED,
      DOPA(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_douta0(8),
      DOPB(3) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_BU2_U0_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_init_ram_TRUE_DP_SINGLE_PRIM_TDP_DOPB_1_UNCONNECTED,
      DOPB(0) => BU2_U0_blk_mem_generator_valid_cstr_ram_doutb0(8)
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N1
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_rdaddrecc(0)
    );

end STRUCTURE;

-- synthesis translate_on
