--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: fifo_69x16i.vhd
-- /___/   /\     Timestamp: Tue Mar 10 11:37:13 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/fifo_69x16i.ngc /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/fifo_69x16i.vhd 
-- Device	: 4vlx80ff1148-11
-- Input file	: /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/fifo_69x16i.ngc
-- Output file	: /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/fifo_69x16i.vhd
-- # of Entities	: 1
-- Design Name	: fifo_69x16i
-- Xilinx	: /syssoft/xilinx_9.2i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synopsys translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity fifo_69x16i is
  port (
    prog_full : out STD_LOGIC; 
    valid : out STD_LOGIC; 
    rd_en : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 68 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 68 downto 0 ) 
  );
end fifo_69x16i;

architecture STRUCTURE of fifo_69x16i is
  signal NlwRenamedSig_OI_empty : STD_LOGIC; 
  signal NlwRenamedSig_OI_full : STD_LOGIC; 
  signal NlwRenamedSig_OI_prog_full : STD_LOGIC; 
  signal BU2_N3 : STD_LOGIC; 
  signal BU2_N2 : STD_LOGIC; 
  signal BU2_wr_rst : STD_LOGIC; 
  signal BU2_backup : STD_LOGIC; 
  signal BU2_wr_clk : STD_LOGIC; 
  signal BU2_rd_rst : STD_LOGIC; 
  signal BU2_rd_clk : STD_LOGIC; 
  signal BU2_almost_empty : STD_LOGIC; 
  signal BU2_backup_marker : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N334 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N333 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N330 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N331 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N328 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N326 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i_cmp_eq0000 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N322 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N320 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N318 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N316 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N315 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N314 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_memblk_tmp_ram_rd_en : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N312 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N311 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N309 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map54 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map12 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map53 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map41 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map27 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map51 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map12 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map50 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map38 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map23 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference6 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_rd_en_int_2 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_en_int_3 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_rst_q_5 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_wr_rst_q_6 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_inblk_wr_rst_int_8 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_inblk_rd_rst_int_10 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_N1 : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN : STD_LOGIC; 
  signal BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOB_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOB_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPB_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED : STD_LOGIC;
 
  signal din_12 : STD_LOGIC_VECTOR ( 68 downto 0 ); 
  signal dout_13 : STD_LOGIC_VECTOR ( 68 downto 0 ); 
  signal BU2_prog_empty_thresh : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_prog_empty_thresh_negate : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_prog_full_thresh : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_prog_full_thresh_assert : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_prog_full_thresh_negate : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_prog_empty_thresh_assert : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_DEBUG_RD_PNTR : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_gen_ss_ss_DEBUG_WR_PNTR : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  prog_full <= NlwRenamedSig_OI_prog_full;
  full <= NlwRenamedSig_OI_full;
  empty <= NlwRenamedSig_OI_empty;
  dout(68) <= dout_13(68);
  dout(67) <= dout_13(67);
  dout(66) <= dout_13(66);
  dout(65) <= dout_13(65);
  dout(64) <= dout_13(64);
  dout(63) <= dout_13(63);
  dout(62) <= dout_13(62);
  dout(61) <= dout_13(61);
  dout(60) <= dout_13(60);
  dout(59) <= dout_13(59);
  dout(58) <= dout_13(58);
  dout(57) <= dout_13(57);
  dout(56) <= dout_13(56);
  dout(55) <= dout_13(55);
  dout(54) <= dout_13(54);
  dout(53) <= dout_13(53);
  dout(52) <= dout_13(52);
  dout(51) <= dout_13(51);
  dout(50) <= dout_13(50);
  dout(49) <= dout_13(49);
  dout(48) <= dout_13(48);
  dout(47) <= dout_13(47);
  dout(46) <= dout_13(46);
  dout(45) <= dout_13(45);
  dout(44) <= dout_13(44);
  dout(43) <= dout_13(43);
  dout(42) <= dout_13(42);
  dout(41) <= dout_13(41);
  dout(40) <= dout_13(40);
  dout(39) <= dout_13(39);
  dout(38) <= dout_13(38);
  dout(37) <= dout_13(37);
  dout(36) <= dout_13(36);
  dout(35) <= dout_13(35);
  dout(34) <= dout_13(34);
  dout(33) <= dout_13(33);
  dout(32) <= dout_13(32);
  dout(31) <= dout_13(31);
  dout(30) <= dout_13(30);
  dout(29) <= dout_13(29);
  dout(28) <= dout_13(28);
  dout(27) <= dout_13(27);
  dout(26) <= dout_13(26);
  dout(25) <= dout_13(25);
  dout(24) <= dout_13(24);
  dout(23) <= dout_13(23);
  dout(22) <= dout_13(22);
  dout(21) <= dout_13(21);
  dout(20) <= dout_13(20);
  dout(19) <= dout_13(19);
  dout(18) <= dout_13(18);
  dout(17) <= dout_13(17);
  dout(16) <= dout_13(16);
  dout(15) <= dout_13(15);
  dout(14) <= dout_13(14);
  dout(13) <= dout_13(13);
  dout(12) <= dout_13(12);
  dout(11) <= dout_13(11);
  dout(10) <= dout_13(10);
  dout(9) <= dout_13(9);
  dout(8) <= dout_13(8);
  dout(7) <= dout_13(7);
  dout(6) <= dout_13(6);
  dout(5) <= dout_13(5);
  dout(4) <= dout_13(4);
  dout(3) <= dout_13(3);
  dout(2) <= dout_13(2);
  dout(1) <= dout_13(1);
  dout(0) <= dout_13(0);
  din_12(68) <= din(68);
  din_12(67) <= din(67);
  din_12(66) <= din(66);
  din_12(65) <= din(65);
  din_12(64) <= din(64);
  din_12(63) <= din(63);
  din_12(62) <= din(62);
  din_12(61) <= din(61);
  din_12(60) <= din(60);
  din_12(59) <= din(59);
  din_12(58) <= din(58);
  din_12(57) <= din(57);
  din_12(56) <= din(56);
  din_12(55) <= din(55);
  din_12(54) <= din(54);
  din_12(53) <= din(53);
  din_12(52) <= din(52);
  din_12(51) <= din(51);
  din_12(50) <= din(50);
  din_12(49) <= din(49);
  din_12(48) <= din(48);
  din_12(47) <= din(47);
  din_12(46) <= din(46);
  din_12(45) <= din(45);
  din_12(44) <= din(44);
  din_12(43) <= din(43);
  din_12(42) <= din(42);
  din_12(41) <= din(41);
  din_12(40) <= din(40);
  din_12(39) <= din(39);
  din_12(38) <= din(38);
  din_12(37) <= din(37);
  din_12(36) <= din(36);
  din_12(35) <= din(35);
  din_12(34) <= din(34);
  din_12(33) <= din(33);
  din_12(32) <= din(32);
  din_12(31) <= din(31);
  din_12(30) <= din(30);
  din_12(29) <= din(29);
  din_12(28) <= din(28);
  din_12(27) <= din(27);
  din_12(26) <= din(26);
  din_12(25) <= din(25);
  din_12(24) <= din(24);
  din_12(23) <= din(23);
  din_12(22) <= din(22);
  din_12(21) <= din(21);
  din_12(20) <= din(20);
  din_12(19) <= din(19);
  din_12(18) <= din(18);
  din_12(17) <= din(17);
  din_12(16) <= din(16);
  din_12(15) <= din(15);
  din_12(14) <= din(14);
  din_12(13) <= din(13);
  din_12(12) <= din(12);
  din_12(11) <= din(11);
  din_12(10) <= din(10);
  din_12(9) <= din(9);
  din_12(8) <= din(8);
  din_12(7) <= din(7);
  din_12(6) <= din(6);
  din_12(5) <= din(5);
  din_12(4) <= din(4);
  din_12(3) <= din(3);
  din_12(2) <= din(2);
  din_12(1) <= din(1);
  din_12(0) <= din(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N3
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_N2
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11_SW4 : LUT4_L
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I3 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      LO => BU2_U0_gen_ss_ss_N331
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i32_SW0 : LUT3_L
    generic map(
      INIT => X"7D"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      LO => BU2_U0_gen_ss_ss_N328
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i32_SW0 : LUT3_L
    generic map(
      INIT => X"7D"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      LO => BU2_U0_gen_ss_ss_N326
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11 : LUT4_L
    generic map(
      INIT => X"222B"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      I2 => NlwRenamedSig_OI_full,
      I3 => BU2_U0_gen_ss_ss_N320,
      LO => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy(0)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i196 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => NlwRenamedSig_OI_full,
      I1 => BU2_U0_gen_ss_ss_N320,
      I2 => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map41,
      I3 => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map53,
      LO => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map54
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i191 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => NlwRenamedSig_OI_empty,
      I1 => BU2_U0_gen_ss_ss_N318,
      I2 => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map38,
      I3 => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map50,
      LO => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map51
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i_cmp_eq00001 : LUT4_L
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(0),
      I1 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(1),
      I2 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(2),
      I3 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(3),
      LO => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i_cmp_eq0000
    );
  BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP : RAMB16
    generic map(
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
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INVERT_CLK_DOA_REG => FALSE,
      INVERT_CLK_DOB_REG => FALSE,
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      SIM_COLLISION_CHECK => "NONE",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36,
      DOA_REG => 0,
      DOB_REG => 0,
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
      SRVAL_B => X"000000000"
    )
    port map (
      CASCADEINA => BU2_almost_empty,
      CASCADEINB => BU2_almost_empty,
      CLKA => clk,
      CLKB => clk,
      ENA => BU2_U0_gen_ss_ss_N1,
      REGCEA => BU2_almost_empty,
      REGCEB => BU2_almost_empty,
      ENB => BU2_U0_gen_ss_ss_memblk_tmp_ram_rd_en,
      SSRA => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      SSRB => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      CASCADEOUTA => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED,
      ADDRA(14) => BU2_almost_empty,
      ADDRA(13) => BU2_almost_empty,
      ADDRA(12) => BU2_almost_empty,
      ADDRA(11) => BU2_almost_empty,
      ADDRA(10) => BU2_almost_empty,
      ADDRA(9) => BU2_almost_empty,
      ADDRA(8) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3),
      ADDRA(7) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      ADDRA(6) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      ADDRA(5) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      ADDRA(4) => BU2_almost_empty,
      ADDRA(3) => BU2_almost_empty,
      ADDRA(2) => BU2_almost_empty,
      ADDRA(1) => BU2_almost_empty,
      ADDRA(0) => BU2_almost_empty,
      ADDRB(14) => BU2_almost_empty,
      ADDRB(13) => BU2_almost_empty,
      ADDRB(12) => BU2_almost_empty,
      ADDRB(11) => BU2_almost_empty,
      ADDRB(10) => BU2_almost_empty,
      ADDRB(9) => BU2_almost_empty,
      ADDRB(8) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      ADDRB(7) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      ADDRB(6) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      ADDRB(5) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      ADDRB(4) => BU2_almost_empty,
      ADDRB(3) => BU2_almost_empty,
      ADDRB(2) => BU2_almost_empty,
      ADDRB(1) => BU2_almost_empty,
      ADDRB(0) => BU2_almost_empty,
      DIA(31) => BU2_almost_empty,
      DIA(30) => BU2_almost_empty,
      DIA(29) => din_12(68),
      DIA(28) => din_12(67),
      DIA(27) => din_12(66),
      DIA(26) => din_12(65),
      DIA(25) => din_12(64),
      DIA(24) => din_12(63),
      DIA(23) => din_12(61),
      DIA(22) => din_12(60),
      DIA(21) => din_12(59),
      DIA(20) => din_12(58),
      DIA(19) => din_12(57),
      DIA(18) => din_12(56),
      DIA(17) => din_12(55),
      DIA(16) => din_12(54),
      DIA(15) => din_12(52),
      DIA(14) => din_12(51),
      DIA(13) => din_12(50),
      DIA(12) => din_12(49),
      DIA(11) => din_12(48),
      DIA(10) => din_12(47),
      DIA(9) => din_12(46),
      DIA(8) => din_12(45),
      DIA(7) => din_12(43),
      DIA(6) => din_12(42),
      DIA(5) => din_12(41),
      DIA(4) => din_12(40),
      DIA(3) => din_12(39),
      DIA(2) => din_12(38),
      DIA(1) => din_12(37),
      DIA(0) => din_12(36),
      DIB(31) => BU2_almost_empty,
      DIB(30) => BU2_almost_empty,
      DIB(29) => BU2_almost_empty,
      DIB(28) => BU2_almost_empty,
      DIB(27) => BU2_almost_empty,
      DIB(26) => BU2_almost_empty,
      DIB(25) => BU2_almost_empty,
      DIB(24) => BU2_almost_empty,
      DIB(23) => BU2_almost_empty,
      DIB(22) => BU2_almost_empty,
      DIB(21) => BU2_almost_empty,
      DIB(20) => BU2_almost_empty,
      DIB(19) => BU2_almost_empty,
      DIB(18) => BU2_almost_empty,
      DIB(17) => BU2_almost_empty,
      DIB(16) => BU2_almost_empty,
      DIB(15) => BU2_almost_empty,
      DIB(14) => BU2_almost_empty,
      DIB(13) => BU2_almost_empty,
      DIB(12) => BU2_almost_empty,
      DIB(11) => BU2_almost_empty,
      DIB(10) => BU2_almost_empty,
      DIB(9) => BU2_almost_empty,
      DIB(8) => BU2_almost_empty,
      DIB(7) => BU2_almost_empty,
      DIB(6) => BU2_almost_empty,
      DIB(5) => BU2_almost_empty,
      DIB(4) => BU2_almost_empty,
      DIB(3) => BU2_almost_empty,
      DIB(2) => BU2_almost_empty,
      DIB(1) => BU2_almost_empty,
      DIB(0) => BU2_almost_empty,
      DIPA(3) => BU2_almost_empty,
      DIPA(2) => din_12(62),
      DIPA(1) => din_12(53),
      DIPA(0) => din_12(44),
      DIPB(3) => BU2_almost_empty,
      DIPB(2) => BU2_almost_empty,
      DIPB(1) => BU2_almost_empty,
      DIPB(0) => BU2_almost_empty,
      WEA(3) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEA(2) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEA(1) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEA(0) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEB(3) => BU2_almost_empty,
      WEB(2) => BU2_almost_empty,
      WEB(1) => BU2_almost_empty,
      WEB(0) => BU2_almost_empty,
      DOA(31) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED,
      DOA(30) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED,
      DOA(29) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED,
      DOA(28) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED,
      DOA(27) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED,
      DOA(26) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED,
      DOA(25) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED,
      DOA(24) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED,
      DOA(23) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED,
      DOA(22) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED,
      DOA(21) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED,
      DOA(20) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED,
      DOA(19) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED,
      DOA(18) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED,
      DOA(17) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED,
      DOA(16) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED,
      DOA(15) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED,
      DOA(14) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED,
      DOA(13) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED,
      DOA(12) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED,
      DOA(11) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED,
      DOA(10) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED,
      DOA(9) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED,
      DOA(8) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED,
      DOA(7) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED,
      DOA(6) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED,
      DOA(5) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED,
      DOA(4) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED,
      DOA(3) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED,
      DOA(2) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED,
      DOA(1) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED,
      DOA(0) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED,
      DOB(31) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOB_31_UNCONNECTED,
      DOB(30) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOB_30_UNCONNECTED,
      DOB(29) => dout_13(68),
      DOB(28) => dout_13(67),
      DOB(27) => dout_13(66),
      DOB(26) => dout_13(65),
      DOB(25) => dout_13(64),
      DOB(24) => dout_13(63),
      DOB(23) => dout_13(61),
      DOB(22) => dout_13(60),
      DOB(21) => dout_13(59),
      DOB(20) => dout_13(58),
      DOB(19) => dout_13(57),
      DOB(18) => dout_13(56),
      DOB(17) => dout_13(55),
      DOB(16) => dout_13(54),
      DOB(15) => dout_13(52),
      DOB(14) => dout_13(51),
      DOB(13) => dout_13(50),
      DOB(12) => dout_13(49),
      DOB(11) => dout_13(48),
      DOB(10) => dout_13(47),
      DOB(9) => dout_13(46),
      DOB(8) => dout_13(45),
      DOB(7) => dout_13(43),
      DOB(6) => dout_13(42),
      DOB(5) => dout_13(41),
      DOB(4) => dout_13(40),
      DOB(3) => dout_13(39),
      DOB(2) => dout_13(38),
      DOB(1) => dout_13(37),
      DOB(0) => dout_13(36),
      DOPA(3) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED,
      DOPA(2) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED,
      DOPA(1) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED,
      DOPA(0) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED,
      DOPB(3) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_1_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPB_3_UNCONNECTED,
      DOPB(2) => dout_13(62),
      DOPB(1) => dout_13(53),
      DOPB(0) => dout_13(44)
    );
  BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP : RAMB16
    generic map(
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
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INVERT_CLK_DOA_REG => FALSE,
      INVERT_CLK_DOB_REG => FALSE,
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      SIM_COLLISION_CHECK => "NONE",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36,
      DOA_REG => 0,
      DOB_REG => 0,
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
      SRVAL_B => X"000000000"
    )
    port map (
      CASCADEINA => BU2_almost_empty,
      CASCADEINB => BU2_almost_empty,
      CLKA => clk,
      CLKB => clk,
      ENA => BU2_U0_gen_ss_ss_N1,
      REGCEA => BU2_almost_empty,
      REGCEB => BU2_almost_empty,
      ENB => BU2_U0_gen_ss_ss_memblk_tmp_ram_rd_en,
      SSRA => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      SSRB => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      CASCADEOUTA => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED,
      ADDRA(14) => BU2_almost_empty,
      ADDRA(13) => BU2_almost_empty,
      ADDRA(12) => BU2_almost_empty,
      ADDRA(11) => BU2_almost_empty,
      ADDRA(10) => BU2_almost_empty,
      ADDRA(9) => BU2_almost_empty,
      ADDRA(8) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3),
      ADDRA(7) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      ADDRA(6) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      ADDRA(5) => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      ADDRA(4) => BU2_almost_empty,
      ADDRA(3) => BU2_almost_empty,
      ADDRA(2) => BU2_almost_empty,
      ADDRA(1) => BU2_almost_empty,
      ADDRA(0) => BU2_almost_empty,
      ADDRB(14) => BU2_almost_empty,
      ADDRB(13) => BU2_almost_empty,
      ADDRB(12) => BU2_almost_empty,
      ADDRB(11) => BU2_almost_empty,
      ADDRB(10) => BU2_almost_empty,
      ADDRB(9) => BU2_almost_empty,
      ADDRB(8) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      ADDRB(7) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      ADDRB(6) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      ADDRB(5) => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      ADDRB(4) => BU2_almost_empty,
      ADDRB(3) => BU2_almost_empty,
      ADDRB(2) => BU2_almost_empty,
      ADDRB(1) => BU2_almost_empty,
      ADDRB(0) => BU2_almost_empty,
      DIA(31) => din_12(34),
      DIA(30) => din_12(33),
      DIA(29) => din_12(32),
      DIA(28) => din_12(31),
      DIA(27) => din_12(30),
      DIA(26) => din_12(29),
      DIA(25) => din_12(28),
      DIA(24) => din_12(27),
      DIA(23) => din_12(25),
      DIA(22) => din_12(24),
      DIA(21) => din_12(23),
      DIA(20) => din_12(22),
      DIA(19) => din_12(21),
      DIA(18) => din_12(20),
      DIA(17) => din_12(19),
      DIA(16) => din_12(18),
      DIA(15) => din_12(16),
      DIA(14) => din_12(15),
      DIA(13) => din_12(14),
      DIA(12) => din_12(13),
      DIA(11) => din_12(12),
      DIA(10) => din_12(11),
      DIA(9) => din_12(10),
      DIA(8) => din_12(9),
      DIA(7) => din_12(7),
      DIA(6) => din_12(6),
      DIA(5) => din_12(5),
      DIA(4) => din_12(4),
      DIA(3) => din_12(3),
      DIA(2) => din_12(2),
      DIA(1) => din_12(1),
      DIA(0) => din_12(0),
      DIB(31) => BU2_almost_empty,
      DIB(30) => BU2_almost_empty,
      DIB(29) => BU2_almost_empty,
      DIB(28) => BU2_almost_empty,
      DIB(27) => BU2_almost_empty,
      DIB(26) => BU2_almost_empty,
      DIB(25) => BU2_almost_empty,
      DIB(24) => BU2_almost_empty,
      DIB(23) => BU2_almost_empty,
      DIB(22) => BU2_almost_empty,
      DIB(21) => BU2_almost_empty,
      DIB(20) => BU2_almost_empty,
      DIB(19) => BU2_almost_empty,
      DIB(18) => BU2_almost_empty,
      DIB(17) => BU2_almost_empty,
      DIB(16) => BU2_almost_empty,
      DIB(15) => BU2_almost_empty,
      DIB(14) => BU2_almost_empty,
      DIB(13) => BU2_almost_empty,
      DIB(12) => BU2_almost_empty,
      DIB(11) => BU2_almost_empty,
      DIB(10) => BU2_almost_empty,
      DIB(9) => BU2_almost_empty,
      DIB(8) => BU2_almost_empty,
      DIB(7) => BU2_almost_empty,
      DIB(6) => BU2_almost_empty,
      DIB(5) => BU2_almost_empty,
      DIB(4) => BU2_almost_empty,
      DIB(3) => BU2_almost_empty,
      DIB(2) => BU2_almost_empty,
      DIB(1) => BU2_almost_empty,
      DIB(0) => BU2_almost_empty,
      DIPA(3) => din_12(35),
      DIPA(2) => din_12(26),
      DIPA(1) => din_12(17),
      DIPA(0) => din_12(8),
      DIPB(3) => BU2_almost_empty,
      DIPB(2) => BU2_almost_empty,
      DIPB(1) => BU2_almost_empty,
      DIPB(0) => BU2_almost_empty,
      WEA(3) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEA(2) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEA(1) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEA(0) => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      WEB(3) => BU2_almost_empty,
      WEB(2) => BU2_almost_empty,
      WEB(1) => BU2_almost_empty,
      WEB(0) => BU2_almost_empty,
      DOA(31) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED,
      DOA(30) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED,
      DOA(29) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED,
      DOA(28) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED,
      DOA(27) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED,
      DOA(26) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED,
      DOA(25) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED,
      DOA(24) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED,
      DOA(23) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED,
      DOA(22) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED,
      DOA(21) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED,
      DOA(20) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED,
      DOA(19) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED,
      DOA(18) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED,
      DOA(17) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED,
      DOA(16) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED,
      DOA(15) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED,
      DOA(14) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED,
      DOA(13) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED,
      DOA(12) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED,
      DOA(11) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED,
      DOA(10) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED,
      DOA(9) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED,
      DOA(8) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED,
      DOA(7) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED,
      DOA(6) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED,
      DOA(5) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED,
      DOA(4) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED,
      DOA(3) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED,
      DOA(2) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED,
      DOA(1) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED,
      DOA(0) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED,
      DOB(31) => dout_13(34),
      DOB(30) => dout_13(33),
      DOB(29) => dout_13(32),
      DOB(28) => dout_13(31),
      DOB(27) => dout_13(30),
      DOB(26) => dout_13(29),
      DOB(25) => dout_13(28),
      DOB(24) => dout_13(27),
      DOB(23) => dout_13(25),
      DOB(22) => dout_13(24),
      DOB(21) => dout_13(23),
      DOB(20) => dout_13(22),
      DOB(19) => dout_13(21),
      DOB(18) => dout_13(20),
      DOB(17) => dout_13(19),
      DOB(16) => dout_13(18),
      DOB(15) => dout_13(16),
      DOB(14) => dout_13(15),
      DOB(13) => dout_13(14),
      DOB(12) => dout_13(13),
      DOB(11) => dout_13(12),
      DOB(10) => dout_13(11),
      DOB(9) => dout_13(10),
      DOB(8) => dout_13(9),
      DOB(7) => dout_13(7),
      DOB(6) => dout_13(6),
      DOB(5) => dout_13(5),
      DOB(4) => dout_13(4),
      DOB(3) => dout_13(3),
      DOB(2) => dout_13(2),
      DOB(1) => dout_13(1),
      DOB(0) => dout_13(0),
      DOPA(3) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED,
      DOPA(2) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED,
      DOPA(1) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED,
      DOPA(0) => 
NLW_BU2_U0_gen_ss_ss_memblk_bmem_bmg_bmg_inst_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED,
      DOPB(3) => dout_13(35),
      DOPB(2) => dout_13(26),
      DOPB(1) => dout_13(17),
      DOPB(0) => dout_13(8)
    );
  BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => NlwRenamedSig_OI_empty,
      O => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11
    );
  BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11_SW3_G : LUT4
    generic map(
      INIT => X"71F3"
    )
    port map (
      I0 => NlwRenamedSig_OI_full,
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I2 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_N334
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11_SW3_F : LUT4
    generic map(
      INIT => X"222B"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I2 => NlwRenamedSig_OI_full,
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_N333
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11_SW3 : MUXF5
    port map (
      I0 => BU2_U0_gen_ss_ss_N333,
      I1 => BU2_U0_gen_ss_ss_N334,
      S => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_ss_ss_N330
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_xor_2_11 : LUT4
    generic map(
      INIT => X"396C"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_N320,
      I1 => BU2_U0_gen_ss_ss_N309,
      I2 => BU2_U0_gen_ss_ss_N331,
      I3 => BU2_U0_gen_ss_ss_N330,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(2)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i32 : LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      I2 => NlwRenamedSig_OI_empty,
      I3 => BU2_U0_gen_ss_ss_N328,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map12
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i32 : LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      I2 => NlwRenamedSig_OI_full,
      I3 => BU2_U0_gen_ss_ss_N326,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map12
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i_rstpot : LUT4
    generic map(
      INIT => X"1302"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i_cmp_eq0000,
      I1 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_rst_q_5,
      I2 => BU2_U0_gen_ss_ss_N322,
      I3 => NlwRenamedSig_OI_prog_full,
      O => BU2_U0_gen_ss_ss_N314
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i_rstpot_SW0 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_en_int_3,
      I1 => NlwRenamedSig_OI_prog_full,
      I2 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_rd_en_int_2,
      O => BU2_U0_gen_ss_ss_N322
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i196_SW0 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => wr_en,
      I1 => rd_en,
      I2 => NlwRenamedSig_OI_empty,
      O => BU2_U0_gen_ss_ss_N320
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i191_SW0 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => rd_en,
      I1 => wr_en,
      I2 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_ss_ss_N318
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_xor_1_11 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      I1 => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11,
      I2 => BU2_U0_gen_ss_ss_N316,
      I3 => BU2_U0_gen_ss_ss_N315,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(1)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11_SW1 : LUT4
    generic map(
      INIT => X"695A"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_N316
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_0_11_SW0 : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I3 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_ss_ss_N315
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_prog_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_gen_ss_ss_N314,
      PRE => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      Q => NlwRenamedSig_OI_prog_full
    );
  BU2_U0_gen_ss_ss_memblk_tmp_ram_rd_en1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      I1 => rd_en,
      I2 => NlwRenamedSig_OI_empty,
      O => BU2_U0_gen_ss_ss_memblk_tmp_ram_rd_en
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_xor_0_11 : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      I1 => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11,
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(0)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_xor_3_11 : LUT4
    generic map(
      INIT => X"A566"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference6,
      I1 => BU2_U0_gen_ss_ss_N311,
      I2 => BU2_U0_gen_ss_ss_N312,
      I3 => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy(0),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(3)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_1_11_SW2 : LUT4
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I2 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      O => BU2_U0_gen_ss_ss_N312
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_1_11_SW1 : LUT4
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      I3 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2),
      O => BU2_U0_gen_ss_ss_N311
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference_cy_1_11_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      O => BU2_U0_gen_ss_ss_N309
    );
  BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => NlwRenamedSig_OI_full,
      O => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i209 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map27,
      I1 => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map12,
      I2 => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map54,
      I3 => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map23,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i192 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map53
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i145 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(3),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map41
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i96 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_wr_rst_q_6,
      I1 => NlwRenamedSig_OI_full,
      I2 => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG_i_map27
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i204 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => NlwRenamedSig_OI_empty,
      I1 => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map12,
      I2 => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map51,
      I3 => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map23,
      O => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i187 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(0),
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      I2 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(1),
      I3 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map50
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i140 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(2),
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      I2 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(3),
      I3 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map38
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i75 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG_i_map23
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference71 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(3),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      O => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_gpf_sub_Maddsub_difference6
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      I3 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(2),
      I1 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(3),
      I2 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(1),
      I3 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3),
      I2 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      I3 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(3),
      I2 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I3 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(2),
      I1 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(0),
      I2 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(1),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2),
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      I2 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      I2 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1),
      I1 => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(1),
      I1 => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1),
      I1 => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1),
      I1 => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0),
      O => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1)
    );
  BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => NlwRenamedSig_OI_empty,
      O => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3),
      Q => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2),
      Q => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1),
      Q => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(1)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0),
      Q => BU2_U0_gen_ss_ss_DEBUG_RD_PNTR(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3),
      Q => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2),
      Q => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1),
      Q => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(1)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0),
      Q => BU2_U0_gen_ss_ss_DEBUG_WR_PNTR(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3),
      Q => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2),
      Q => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0),
      PRE => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      Q => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_RD_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_rd_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1),
      Q => BU2_U0_gen_ss_ss_debug_rd_pntr_plus1_r(1)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(3),
      Q => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(3)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(2),
      Q => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(2)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(0),
      PRE => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      Q => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(0)
    );
  BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_DEBUG_RAM_WR_EN,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_cntblk_gen_cntr_gen_wr_cntr_plus1_gen_bin_cnt_top_bin_cnt_top_gen_bsc_bin_cnt_bld_bin_cnt_Result(1),
      Q => BU2_U0_gen_ss_ss_debug_wr_pntr_plus1_w(1)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_rd_en_int : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11,
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_rd_en_int_2
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_en_int : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_flblk_ram_wr_en_i1_1_4,
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_en_int_3
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_rst_q : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_almost_empty,
      PRE => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_wr_rst_q_5
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp_0 : FDC
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(0),
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(0)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp_1 : FDC
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(1),
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(1)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp_2 : FDC
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(2),
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(2)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp_3 : FDC
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      D => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr(3),
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_pflogic_diff_pntr_tmp(3)
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_wr_rst_q : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_almost_empty,
      PRE => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      Q => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_wr_rst_q_6
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_flogic_RAM_FULL_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_gen_ss_ss_flblk_thrmod_flogic_FULL_NONREG,
      PRE => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      Q => NlwRenamedSig_OI_full
    );
  BU2_U0_gen_ss_ss_flblk_thrmod_elogic_RAM_EMPTY_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_gen_ss_ss_flblk_thrmod_elogic_EMPTY_NONREG,
      PRE => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      Q => NlwRenamedSig_OI_empty
    );
  BU2_U0_gen_ss_ss_olblk_gv_validl_VALID : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      D => BU2_U0_gen_ss_ss_olblk_gv_validl_VALID_and00001_1_11,
      Q => valid
    );
  BU2_U0_gen_ss_ss_inblk_wr_rst_int : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7,
      PRE => rst,
      Q => BU2_U0_gen_ss_ss_inblk_wr_rst_int_8
    );
  BU2_U0_gen_ss_ss_inblk_rd_rst_int : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9,
      PRE => rst,
      Q => BU2_U0_gen_ss_ss_inblk_rd_rst_int_10
    );
  BU2_U0_gen_ss_ss_inblk_wr_rst_reg : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_inblk_wr_rst_int_8,
      D => BU2_almost_empty,
      PRE => rst,
      Q => BU2_U0_gen_ss_ss_inblk_wr_rst_reg_7
    );
  BU2_U0_gen_ss_ss_inblk_rd_rst_reg : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_gen_ss_ss_inblk_rd_rst_int_10,
      D => BU2_almost_empty,
      PRE => rst,
      Q => BU2_U0_gen_ss_ss_inblk_rd_rst_reg_9
    );
  BU2_U0_gen_ss_ss_XST_VCC : VCC
    port map (
      P => BU2_U0_gen_ss_ss_N1
    );
  BU2_U0_gen_ss_ss_XST_GND : GND
    port map (
      G => BU2_almost_empty
    );

end STRUCTURE;

-- synopsys translate_on
