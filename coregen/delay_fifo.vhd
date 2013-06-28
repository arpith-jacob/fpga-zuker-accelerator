--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.57
--  \   \         Application: netgen
--  /   /         Filename: delay_fifo.vhd
-- /___/   /\     Timestamp: Fri Nov  6 15:59:56 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/delay_fifo.ngc ./tmp/_cg/delay_fifo.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: ./tmp/_cg/delay_fifo.ngc
-- Output file	: ./tmp/_cg/delay_fifo.vhd
-- # of Entities	: 1
-- Design Name	: delay_fifo
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

entity delay_fifo is
  port (
    srst : in STD_LOGIC := 'X'; 
    rd_en : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 17 downto 0 ) 
  );
end delay_fifo;

architecture STRUCTURE of delay_fifo is
  signal BU2_N9 : STD_LOGIC; 
  signal BU2_N8 : STD_LOGIC; 
  signal BU2_N7 : STD_LOGIC; 
  signal BU2_N6 : STD_LOGIC; 
  signal BU2_U0_grf_rf_ram_rd_en : STD_LOGIC; 
  signal BU2_U0_grf_rf_ram_wr_en : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_SRST_inv : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count4 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count7 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count5 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count6 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count8 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count9 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_SRST_inv : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count4 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count7 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count5 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count6 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count8 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count9 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_47 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000_46 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_45 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000_44 : STD_LOGIC; 
  signal BU2_N1 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_2_UNCONNECTED : STD_LOGIC;
 
  signal din_2 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal dout_3 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_rd_data_count : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  dout(17) <= dout_3(17);
  dout(16) <= dout_3(16);
  dout(15) <= dout_3(15);
  dout(14) <= dout_3(14);
  dout(13) <= dout_3(13);
  dout(12) <= dout_3(12);
  dout(11) <= dout_3(11);
  dout(10) <= dout_3(10);
  dout(9) <= dout_3(9);
  dout(8) <= dout_3(8);
  dout(7) <= dout_3(7);
  dout(6) <= dout_3(6);
  dout(5) <= dout_3(5);
  dout(4) <= dout_3(4);
  dout(3) <= dout_3(3);
  dout(2) <= dout_3(2);
  dout(1) <= dout_3(1);
  dout(0) <= dout_3(0);
  din_2(17) <= din(17);
  din_2(16) <= din(16);
  din_2(15) <= din(15);
  din_2(14) <= din(14);
  din_2(13) <= din(13);
  din_2(12) <= din(12);
  din_2(11) <= din(11);
  din_2(10) <= din(10);
  din_2(9) <= din(9);
  din_2(8) <= din(8);
  din_2(7) <= din(7);
  din_2(6) <= din(6);
  din_2(5) <= din(5);
  din_2(4) <= din(4);
  din_2(3) <= din(3);
  din_2(2) <= din(2);
  din_2(1) <= din(1);
  din_2(0) <= din(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP : RAMB16
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
      CASCADEINA => BU2_rd_data_count(0),
      CASCADEINB => BU2_rd_data_count(0),
      CLKA => clk,
      CLKB => clk,
      ENA => BU2_U0_grf_rf_ram_wr_en,
      REGCEA => BU2_rd_data_count(0),
      REGCEB => BU2_rd_data_count(0),
      ENB => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      SSRA => BU2_rd_data_count(0),
      SSRB => srst,
      CASCADEOUTA => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_CASCADEOUTB_UNCONNECTED,
      ADDRA(14) => BU2_rd_data_count(0),
      ADDRA(13) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(9),
      ADDRA(12) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(8),
      ADDRA(11) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(7),
      ADDRA(10) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(6),
      ADDRA(9) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(5),
      ADDRA(8) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      ADDRA(7) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      ADDRA(6) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      ADDRA(5) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      ADDRA(4) => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      ADDRA(3) => BU2_rd_data_count(0),
      ADDRA(2) => BU2_rd_data_count(0),
      ADDRA(1) => BU2_rd_data_count(0),
      ADDRA(0) => BU2_rd_data_count(0),
      ADDRB(14) => BU2_rd_data_count(0),
      ADDRB(13) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(9),
      ADDRB(12) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(8),
      ADDRB(11) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(7),
      ADDRB(10) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(6),
      ADDRB(9) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(5),
      ADDRB(8) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      ADDRB(7) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      ADDRB(6) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      ADDRB(5) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      ADDRB(4) => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      ADDRB(3) => BU2_rd_data_count(0),
      ADDRB(2) => BU2_rd_data_count(0),
      ADDRB(1) => BU2_rd_data_count(0),
      ADDRB(0) => BU2_rd_data_count(0),
      DIA(31) => BU2_rd_data_count(0),
      DIA(30) => BU2_rd_data_count(0),
      DIA(29) => BU2_rd_data_count(0),
      DIA(28) => BU2_rd_data_count(0),
      DIA(27) => BU2_rd_data_count(0),
      DIA(26) => BU2_rd_data_count(0),
      DIA(25) => BU2_rd_data_count(0),
      DIA(24) => BU2_rd_data_count(0),
      DIA(23) => BU2_rd_data_count(0),
      DIA(22) => BU2_rd_data_count(0),
      DIA(21) => BU2_rd_data_count(0),
      DIA(20) => BU2_rd_data_count(0),
      DIA(19) => BU2_rd_data_count(0),
      DIA(18) => BU2_rd_data_count(0),
      DIA(17) => BU2_rd_data_count(0),
      DIA(16) => BU2_rd_data_count(0),
      DIA(15) => din_2(16),
      DIA(14) => din_2(15),
      DIA(13) => din_2(14),
      DIA(12) => din_2(13),
      DIA(11) => din_2(12),
      DIA(10) => din_2(11),
      DIA(9) => din_2(10),
      DIA(8) => din_2(9),
      DIA(7) => din_2(7),
      DIA(6) => din_2(6),
      DIA(5) => din_2(5),
      DIA(4) => din_2(4),
      DIA(3) => din_2(3),
      DIA(2) => din_2(2),
      DIA(1) => din_2(1),
      DIA(0) => din_2(0),
      DIB(31) => BU2_rd_data_count(0),
      DIB(30) => BU2_rd_data_count(0),
      DIB(29) => BU2_rd_data_count(0),
      DIB(28) => BU2_rd_data_count(0),
      DIB(27) => BU2_rd_data_count(0),
      DIB(26) => BU2_rd_data_count(0),
      DIB(25) => BU2_rd_data_count(0),
      DIB(24) => BU2_rd_data_count(0),
      DIB(23) => BU2_rd_data_count(0),
      DIB(22) => BU2_rd_data_count(0),
      DIB(21) => BU2_rd_data_count(0),
      DIB(20) => BU2_rd_data_count(0),
      DIB(19) => BU2_rd_data_count(0),
      DIB(18) => BU2_rd_data_count(0),
      DIB(17) => BU2_rd_data_count(0),
      DIB(16) => BU2_rd_data_count(0),
      DIB(15) => BU2_rd_data_count(0),
      DIB(14) => BU2_rd_data_count(0),
      DIB(13) => BU2_rd_data_count(0),
      DIB(12) => BU2_rd_data_count(0),
      DIB(11) => BU2_rd_data_count(0),
      DIB(10) => BU2_rd_data_count(0),
      DIB(9) => BU2_rd_data_count(0),
      DIB(8) => BU2_rd_data_count(0),
      DIB(7) => BU2_rd_data_count(0),
      DIB(6) => BU2_rd_data_count(0),
      DIB(5) => BU2_rd_data_count(0),
      DIB(4) => BU2_rd_data_count(0),
      DIB(3) => BU2_rd_data_count(0),
      DIB(2) => BU2_rd_data_count(0),
      DIB(1) => BU2_rd_data_count(0),
      DIB(0) => BU2_rd_data_count(0),
      DIPA(3) => BU2_rd_data_count(0),
      DIPA(2) => BU2_rd_data_count(0),
      DIPA(1) => din_2(17),
      DIPA(0) => din_2(8),
      DIPB(3) => BU2_rd_data_count(0),
      DIPB(2) => BU2_rd_data_count(0),
      DIPB(1) => BU2_rd_data_count(0),
      DIPB(0) => BU2_rd_data_count(0),
      WEA(3) => BU2_U0_grf_rf_ram_wr_en,
      WEA(2) => BU2_U0_grf_rf_ram_wr_en,
      WEA(1) => BU2_U0_grf_rf_ram_wr_en,
      WEA(0) => BU2_U0_grf_rf_ram_wr_en,
      WEB(3) => BU2_rd_data_count(0),
      WEB(2) => BU2_rd_data_count(0),
      WEB(1) => BU2_rd_data_count(0),
      WEB(0) => BU2_rd_data_count(0),
      DOA(31) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_31_UNCONNECTED,
      DOA(30) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_30_UNCONNECTED,
      DOA(29) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_29_UNCONNECTED,
      DOA(28) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_28_UNCONNECTED,
      DOA(27) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_27_UNCONNECTED,
      DOA(26) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_26_UNCONNECTED,
      DOA(25) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_25_UNCONNECTED,
      DOA(24) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_24_UNCONNECTED,
      DOA(23) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_23_UNCONNECTED,
      DOA(22) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_22_UNCONNECTED,
      DOA(21) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_21_UNCONNECTED,
      DOA(20) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_20_UNCONNECTED,
      DOA(19) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_19_UNCONNECTED,
      DOA(18) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_18_UNCONNECTED,
      DOA(17) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_17_UNCONNECTED,
      DOA(16) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_16_UNCONNECTED,
      DOA(15) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_15_UNCONNECTED,
      DOA(14) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_14_UNCONNECTED,
      DOA(13) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_13_UNCONNECTED,
      DOA(12) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_12_UNCONNECTED,
      DOA(11) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_11_UNCONNECTED,
      DOA(10) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_10_UNCONNECTED,
      DOA(9) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_9_UNCONNECTED,
      DOA(8) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_8_UNCONNECTED,
      DOA(7) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_7_UNCONNECTED,
      DOA(6) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_6_UNCONNECTED,
      DOA(5) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_5_UNCONNECTED,
      DOA(4) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_4_UNCONNECTED,
      DOA(3) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_3_UNCONNECTED,
      DOA(2) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_2_UNCONNECTED,
      DOA(1) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_1_UNCONNECTED,
      DOA(0) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOA_0_UNCONNECTED,
      DOB(31) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_31_UNCONNECTED,
      DOB(30) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_30_UNCONNECTED,
      DOB(29) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_29_UNCONNECTED,
      DOB(28) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_28_UNCONNECTED,
      DOB(27) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_27_UNCONNECTED,
      DOB(26) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_26_UNCONNECTED,
      DOB(25) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_25_UNCONNECTED,
      DOB(24) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_24_UNCONNECTED,
      DOB(23) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_23_UNCONNECTED,
      DOB(22) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_22_UNCONNECTED,
      DOB(21) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_21_UNCONNECTED,
      DOB(20) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_20_UNCONNECTED,
      DOB(19) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_19_UNCONNECTED,
      DOB(18) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_18_UNCONNECTED,
      DOB(17) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_17_UNCONNECTED,
      DOB(16) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOB_16_UNCONNECTED,
      DOB(15) => dout_3(16),
      DOB(14) => dout_3(15),
      DOB(13) => dout_3(14),
      DOB(12) => dout_3(13),
      DOB(11) => dout_3(12),
      DOB(10) => dout_3(11),
      DOB(9) => dout_3(10),
      DOB(8) => dout_3(9),
      DOB(7) => dout_3(7),
      DOB(6) => dout_3(6),
      DOB(5) => dout_3(5),
      DOB(4) => dout_3(4),
      DOB(3) => dout_3(3),
      DOB(2) => dout_3(2),
      DOB(1) => dout_3(1),
      DOB(0) => dout_3(0),
      DOPA(3) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_3_UNCONNECTED,
      DOPA(2) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_2_UNCONNECTED,
      DOPA(1) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_1_UNCONNECTED,
      DOPA(0) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPA_0_UNCONNECTED,
      DOPB(3) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_3_UNCONNECTED,
      DOPB(2) => 
NLW_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_v4_noinit_ram_SDP_SINGLE_PRIM_SDP_DOPB_2_UNCONNECTED,
      DOPB(1) => dout_3(17),
      DOPB(0) => dout_3(8)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_SRST_inv1_INV_0 : INV
    port map (
      I => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_SRST_inv
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_SRST_inv1_INV_0 : INV
    port map (
      I => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_SRST_inv
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000_G : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_comp0,
      I1 => srst,
      I2 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_47,
      O => BU2_N9
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000_F : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_comp1,
      I2 => wr_en,
      I3 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_47,
      O => BU2_N8
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000 : MUXF5
    port map (
      I0 => BU2_N8,
      I1 => BU2_N9,
      S => BU2_U0_grf_rf_ram_rd_en,
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000_46
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000_G : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_grss_rsts_comp0,
      I1 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_45,
      I2 => srst,
      O => BU2_N7
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000_F : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_grss_rsts_comp1,
      I1 => rd_en,
      I2 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_45,
      I3 => srst,
      O => BU2_N6
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000 : MUXF5
    port map (
      I0 => BU2_N6,
      I1 => BU2_N7,
      S => BU2_U0_grf_rf_ram_wr_en,
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000_44
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_not00011 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_47,
      I1 => wr_en,
      I2 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(5),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(5),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(7),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(7),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(6),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(6),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(9),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(9),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(8),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(8),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(4)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(1)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(1)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(5),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(5),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(2)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(5),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(5),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(4),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(5),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(5),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(4),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(2)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(7),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(7),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(6),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(6),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(3)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(7),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(7),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(6),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(6),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(7),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(7),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(6),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(6),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(3)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(9),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(9),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(8),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(8),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(4)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(9),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(9),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(8),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(8),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(9),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(9),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(8),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(8),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  BU2_U0_grf_rf_gl0_rd_ram_rd_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_45,
      O => BU2_U0_grf_rf_ram_rd_en
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_47,
      O => BU2_U0_grf_rf_ram_wr_en
    );
  BU2_U0_grf_rf_mem_tmp_ram_rd_en1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_45,
      I1 => rd_en,
      I2 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(9),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(8),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(7),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(6),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(5),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(4)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(4),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(5)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(6)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_7_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(7)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_8_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(8)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000_9_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(9)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(9),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(8),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(7),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(6),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(5),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(4),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(5)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(6)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_7_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(7)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_8_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(8)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000_9_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I1 => srst,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(9)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(0),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(0)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(0),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(1),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(1)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(1),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(2),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(2)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(2),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(3),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(3)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_carrynet(3),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c2_v1(4),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_comp1
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(0),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(0)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(0),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(1),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(1)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(1),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(2),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(2)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(2),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(3),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(3)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_carrynet(3),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_grss_rsts_c1_v1(4),
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_comp0
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(0),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(0),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(1),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(2),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(3),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_carrynet(3),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c1_v1(4),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_comp1
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(0),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(0),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(1),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(2),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(3),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_carrynet(3),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_wsts_c0_v1(4),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_comp0
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(9),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(8),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(7),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(6),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(5),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(4),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(5)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(6)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(2),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(7)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(8)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_mux0000(0),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(9)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I2 => BU2_N1,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_SRST_inv,
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_SRST_inv,
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(0),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(1),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(0),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(1),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(1),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(2),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(1),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(2),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(2),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(3),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(2),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(3),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(4),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(3),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(4),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(3),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(4),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count4
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(5),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(5)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(4),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(5),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(5)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(4),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(5),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count5
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(6),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(6)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(5),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(6),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(6)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(5),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(6),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count6
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(7),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(7)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(6),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(7),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(7)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(6),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(7),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count7
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(8),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(8)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(7),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(8),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(8)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(7),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(8),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count8
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(9),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(9)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_cy(8),
      LI => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_lut(9),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count9
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count,
      PRE => BU2_rd_data_count(0),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count4,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count7,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(7)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count5,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(5)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count6,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(6)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count8,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(8)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count9,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(9)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(9),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(8),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(7),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(6),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(5),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(4),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(5)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(3),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(6)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(2),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(7)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(1),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(8)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_mux0000(0),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(9)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_N1,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_SRST_inv,
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_SRST_inv,
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(0),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(1),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(0),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(1),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(1),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(2),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(1),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(2),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(2),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(3),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(2),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(3),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(4),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(4)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(3),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(4),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(4)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(3),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(4),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count4
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(5),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(5)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(4),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(5),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(5)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(4),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(5),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count5
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(6),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(6)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(5),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(6),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(6)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(5),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(6),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count6
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(7),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(7)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(6),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(7),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(7)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(6),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(7),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count7
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(8),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(8)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(7),
      DI => BU2_rd_data_count(0),
      S => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(8),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(8)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(7),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(8),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count8
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => srst,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(9),
      I2 => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(9)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_cy(8),
      LI => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_lut(9),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count9
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count,
      PRE => BU2_rd_data_count(0),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count4,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(4)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count7,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(7)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count5,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(5)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count6,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(6)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count8,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(8)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count9,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(9)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000_46,
      Q => full
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_rd_data_count(0),
      D => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000_46,
      Q => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_47
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000_44,
      PRE => BU2_rd_data_count(0),
      Q => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_45
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000_44,
      PRE => BU2_rd_data_count(0),
      Q => empty
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N1
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_rd_data_count(0)
    );

end STRUCTURE;

-- synthesis translate_on
