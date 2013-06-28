--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.70
--  \   \         Application: netgen
--  /   /         Filename: merge_fifo.vhd
-- /___/   /\     Timestamp: Thu Oct 28 15:04:29 2010
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/merge_fifo.ngc /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/merge_fifo.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/merge_fifo.ngc
-- Output file	: /project/mercury/jarpith/research/hardware/nussinov/modules/gjq-clustered/hdl/coregen/coregen/tmp/_cg/merge_fifo.vhd
-- # of Entities	: 1
-- Design Name	: merge_fifo
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

entity merge_fifo is
  port (
    valid : out STD_LOGIC; 
    rd_en : in STD_LOGIC := 'X'; 
    prog_full : out STD_LOGIC; 
    wr_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 68 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 68 downto 0 ) 
  );
end merge_fifo;

architecture STRUCTURE of merge_fifo is
  signal NlwRenamedSig_OI_prog_full : STD_LOGIC; 
  signal BU2_N21 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_cmp_eq0000 : STD_LOGIC; 
  signal BU2_N19 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_rstpot_370 : STD_LOGIC; 
  signal BU2_N17 : STD_LOGIC; 
  signal BU2_N15 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1_1_367 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0_1_366 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000085_365 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000071_364 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000041_363 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux00008_362 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000077_361 : STD_LOGIC; 
  signal BU2_N8 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000062_359 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3_1_358 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2_1_357 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_dout_i_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_217 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_rd_en_i_216 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand_210 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_179 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_160 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_159 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_158 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_157 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_156 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_155 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_wr_rst_d1_154 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_153 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000 : STD_LOGIC; 
  signal BU2_N1 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED : STD_LOGIC; 
  signal din_2 : STD_LOGIC_VECTOR ( 68 downto 0 ); 
  signal dout_3 : STD_LOGIC_VECTOR ( 68 downto 0 ); 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i : STD_LOGIC_VECTOR ( 68 downto 0 ); 
  signal BU2_U0_grf_rf_mem_gdm_dm_varindex0000 : STD_LOGIC_VECTOR ( 68 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000 : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal BU2_rd_data_count : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  prog_full <= NlwRenamedSig_OI_prog_full;
  dout(68) <= dout_3(68);
  dout(67) <= dout_3(67);
  dout(66) <= dout_3(66);
  dout(65) <= dout_3(65);
  dout(64) <= dout_3(64);
  dout(63) <= dout_3(63);
  dout(62) <= dout_3(62);
  dout(61) <= dout_3(61);
  dout(60) <= dout_3(60);
  dout(59) <= dout_3(59);
  dout(58) <= dout_3(58);
  dout(57) <= dout_3(57);
  dout(56) <= dout_3(56);
  dout(55) <= dout_3(55);
  dout(54) <= dout_3(54);
  dout(53) <= dout_3(53);
  dout(52) <= dout_3(52);
  dout(51) <= dout_3(51);
  dout(50) <= dout_3(50);
  dout(49) <= dout_3(49);
  dout(48) <= dout_3(48);
  dout(47) <= dout_3(47);
  dout(46) <= dout_3(46);
  dout(45) <= dout_3(45);
  dout(44) <= dout_3(44);
  dout(43) <= dout_3(43);
  dout(42) <= dout_3(42);
  dout(41) <= dout_3(41);
  dout(40) <= dout_3(40);
  dout(39) <= dout_3(39);
  dout(38) <= dout_3(38);
  dout(37) <= dout_3(37);
  dout(36) <= dout_3(36);
  dout(35) <= dout_3(35);
  dout(34) <= dout_3(34);
  dout(33) <= dout_3(33);
  dout(32) <= dout_3(32);
  dout(31) <= dout_3(31);
  dout(30) <= dout_3(30);
  dout(29) <= dout_3(29);
  dout(28) <= dout_3(28);
  dout(27) <= dout_3(27);
  dout(26) <= dout_3(26);
  dout(25) <= dout_3(25);
  dout(24) <= dout_3(24);
  dout(23) <= dout_3(23);
  dout(22) <= dout_3(22);
  dout(21) <= dout_3(21);
  dout(20) <= dout_3(20);
  dout(19) <= dout_3(19);
  dout(18) <= dout_3(18);
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
  din_2(68) <= din(68);
  din_2(67) <= din(67);
  din_2(66) <= din(66);
  din_2(65) <= din(65);
  din_2(64) <= din(64);
  din_2(63) <= din(63);
  din_2(62) <= din(62);
  din_2(61) <= din(61);
  din_2(60) <= din(60);
  din_2(59) <= din(59);
  din_2(58) <= din(58);
  din_2(57) <= din(57);
  din_2(56) <= din(56);
  din_2(55) <= din(55);
  din_2(54) <= din(54);
  din_2(53) <= din(53);
  din_2(52) <= din(52);
  din_2(51) <= din(51);
  din_2(50) <= din(50);
  din_2(49) <= din(49);
  din_2(48) <= din(48);
  din_2(47) <= din(47);
  din_2(46) <= din(46);
  din_2(45) <= din(45);
  din_2(44) <= din(44);
  din_2(43) <= din(43);
  din_2(42) <= din(42);
  din_2(41) <= din(41);
  din_2(40) <= din(40);
  din_2(39) <= din(39);
  din_2(38) <= din(38);
  din_2(37) <= din(37);
  din_2(36) <= din(36);
  din_2(35) <= din(35);
  din_2(34) <= din(34);
  din_2(33) <= din(33);
  din_2(32) <= din(32);
  din_2(31) <= din(31);
  din_2(30) <= din(30);
  din_2(29) <= din(29);
  din_2(28) <= din(28);
  din_2(27) <= din(27);
  din_2(26) <= din(26);
  din_2(25) <= din(25);
  din_2(24) <= din(24);
  din_2(23) <= din(23);
  din_2(22) <= din(22);
  din_2(21) <= din(21);
  din_2(20) <= din(20);
  din_2(19) <= din(19);
  din_2(18) <= din(18);
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
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux00003168_SW1 : LUT2_L
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2_1_357,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      LO => BU2_N21
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000077 : LUT4_L
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000062_359,
      I1 => BU2_N15,
      I2 => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      LO => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000077_361
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000085 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000041_363,
      I2 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000071_364,
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      LO => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000085_365
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_cmp_eq00001 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(4),
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(2),
      I2 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(1),
      I3 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(3),
      LO => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_cmp_eq0000
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_1 : LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_153,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3_1_358
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0_1_366
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1_1_367
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2_1_357
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(4)
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux00003168 : LUT4
    generic map(
      INIT => X"FFF6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I2 => BU2_N21,
      I3 => BU2_N17,
      O => BU2_N8
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_rstpot : LUT4
    generic map(
      INIT => X"1302"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_cmp_eq0000,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_wr_rst_d1_154,
      I2 => BU2_N19,
      I3 => NlwRenamedSig_OI_prog_full,
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_rstpot_370
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_rstpot_SW0 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_217,
      I1 => NlwRenamedSig_OI_prog_full,
      I2 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_rd_en_i_216,
      O => BU2_N19
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_prog_full_i_rstpot_370,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => NlwRenamedSig_OI_prog_full
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux00003168_SW0 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1_1_367,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0_1_366,
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      O => BU2_N17
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_wr_pntr_plus1_pad_0_and000011 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I2 => rd_en,
      I3 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150,
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand_210
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000077_SW0 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0_1_366,
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1_1_367,
      O => BU2_N15
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21 : LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000100 : LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux00008_362,
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I2 => BU2_N8,
      I3 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000085_365,
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000071 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000071_364
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000041 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux000041_363
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux00008 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_153,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_wr_rst_d1_154,
      I2 => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux00008_362
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000092 : LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      I2 => BU2_N8,
      I3 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000077_361,
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000062 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2_1_357,
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3_1_358,
      O => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux000062_359
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_153,
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      O => BU2_U0_grf_rf_mem_dout_i_not0001
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux00001 : LUT4
    generic map(
      INIT => X"8E8A"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_179,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => rd_en,
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001_0_1 : LUT4
    generic map(
      INIT => X"40FF"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150,
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001_1_1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => rd_en,
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1
    );
  BU2_U0_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_rstblk_rd_rst_asreg_159,
      I1 => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_156,
      O => BU2_U0_grf_rf_rstblk_rd_rst_comb
    );
  BU2_U0_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_rstblk_wr_rst_asreg_160,
      I1 => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_158,
      O => BU2_U0_grf_rf_rstblk_wr_rst_comb
    );
  BU2_U0_grf_rf_mem_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0),
      Q => dout_3(0)
    );
  BU2_U0_grf_rf_mem_dout_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1),
      Q => dout_3(1)
    );
  BU2_U0_grf_rf_mem_dout_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2),
      Q => dout_3(2)
    );
  BU2_U0_grf_rf_mem_dout_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3),
      Q => dout_3(3)
    );
  BU2_U0_grf_rf_mem_dout_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4),
      Q => dout_3(4)
    );
  BU2_U0_grf_rf_mem_dout_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5),
      Q => dout_3(5)
    );
  BU2_U0_grf_rf_mem_dout_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6),
      Q => dout_3(6)
    );
  BU2_U0_grf_rf_mem_dout_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7),
      Q => dout_3(7)
    );
  BU2_U0_grf_rf_mem_dout_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8),
      Q => dout_3(8)
    );
  BU2_U0_grf_rf_mem_dout_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9),
      Q => dout_3(9)
    );
  BU2_U0_grf_rf_mem_dout_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10),
      Q => dout_3(10)
    );
  BU2_U0_grf_rf_mem_dout_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11),
      Q => dout_3(11)
    );
  BU2_U0_grf_rf_mem_dout_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12),
      Q => dout_3(12)
    );
  BU2_U0_grf_rf_mem_dout_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13),
      Q => dout_3(13)
    );
  BU2_U0_grf_rf_mem_dout_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14),
      Q => dout_3(14)
    );
  BU2_U0_grf_rf_mem_dout_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15),
      Q => dout_3(15)
    );
  BU2_U0_grf_rf_mem_dout_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16),
      Q => dout_3(16)
    );
  BU2_U0_grf_rf_mem_dout_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17),
      Q => dout_3(17)
    );
  BU2_U0_grf_rf_mem_dout_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18),
      Q => dout_3(18)
    );
  BU2_U0_grf_rf_mem_dout_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19),
      Q => dout_3(19)
    );
  BU2_U0_grf_rf_mem_dout_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20),
      Q => dout_3(20)
    );
  BU2_U0_grf_rf_mem_dout_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21),
      Q => dout_3(21)
    );
  BU2_U0_grf_rf_mem_dout_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22),
      Q => dout_3(22)
    );
  BU2_U0_grf_rf_mem_dout_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23),
      Q => dout_3(23)
    );
  BU2_U0_grf_rf_mem_dout_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24),
      Q => dout_3(24)
    );
  BU2_U0_grf_rf_mem_dout_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25),
      Q => dout_3(25)
    );
  BU2_U0_grf_rf_mem_dout_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26),
      Q => dout_3(26)
    );
  BU2_U0_grf_rf_mem_dout_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27),
      Q => dout_3(27)
    );
  BU2_U0_grf_rf_mem_dout_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28),
      Q => dout_3(28)
    );
  BU2_U0_grf_rf_mem_dout_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29),
      Q => dout_3(29)
    );
  BU2_U0_grf_rf_mem_dout_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30),
      Q => dout_3(30)
    );
  BU2_U0_grf_rf_mem_dout_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31),
      Q => dout_3(31)
    );
  BU2_U0_grf_rf_mem_dout_i_32 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32),
      Q => dout_3(32)
    );
  BU2_U0_grf_rf_mem_dout_i_33 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33),
      Q => dout_3(33)
    );
  BU2_U0_grf_rf_mem_dout_i_34 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34),
      Q => dout_3(34)
    );
  BU2_U0_grf_rf_mem_dout_i_35 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35),
      Q => dout_3(35)
    );
  BU2_U0_grf_rf_mem_dout_i_36 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36),
      Q => dout_3(36)
    );
  BU2_U0_grf_rf_mem_dout_i_37 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(37),
      Q => dout_3(37)
    );
  BU2_U0_grf_rf_mem_dout_i_38 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38),
      Q => dout_3(38)
    );
  BU2_U0_grf_rf_mem_dout_i_39 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39),
      Q => dout_3(39)
    );
  BU2_U0_grf_rf_mem_dout_i_40 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40),
      Q => dout_3(40)
    );
  BU2_U0_grf_rf_mem_dout_i_41 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41),
      Q => dout_3(41)
    );
  BU2_U0_grf_rf_mem_dout_i_42 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42),
      Q => dout_3(42)
    );
  BU2_U0_grf_rf_mem_dout_i_43 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43),
      Q => dout_3(43)
    );
  BU2_U0_grf_rf_mem_dout_i_44 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44),
      Q => dout_3(44)
    );
  BU2_U0_grf_rf_mem_dout_i_45 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45),
      Q => dout_3(45)
    );
  BU2_U0_grf_rf_mem_dout_i_46 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46),
      Q => dout_3(46)
    );
  BU2_U0_grf_rf_mem_dout_i_47 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47),
      Q => dout_3(47)
    );
  BU2_U0_grf_rf_mem_dout_i_48 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48),
      Q => dout_3(48)
    );
  BU2_U0_grf_rf_mem_dout_i_49 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49),
      Q => dout_3(49)
    );
  BU2_U0_grf_rf_mem_dout_i_50 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50),
      Q => dout_3(50)
    );
  BU2_U0_grf_rf_mem_dout_i_51 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51),
      Q => dout_3(51)
    );
  BU2_U0_grf_rf_mem_dout_i_52 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52),
      Q => dout_3(52)
    );
  BU2_U0_grf_rf_mem_dout_i_53 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53),
      Q => dout_3(53)
    );
  BU2_U0_grf_rf_mem_dout_i_54 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54),
      Q => dout_3(54)
    );
  BU2_U0_grf_rf_mem_dout_i_55 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55),
      Q => dout_3(55)
    );
  BU2_U0_grf_rf_mem_dout_i_56 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56),
      Q => dout_3(56)
    );
  BU2_U0_grf_rf_mem_dout_i_57 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57),
      Q => dout_3(57)
    );
  BU2_U0_grf_rf_mem_dout_i_58 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58),
      Q => dout_3(58)
    );
  BU2_U0_grf_rf_mem_dout_i_59 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59),
      Q => dout_3(59)
    );
  BU2_U0_grf_rf_mem_dout_i_60 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60),
      Q => dout_3(60)
    );
  BU2_U0_grf_rf_mem_dout_i_61 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61),
      Q => dout_3(61)
    );
  BU2_U0_grf_rf_mem_dout_i_62 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62),
      Q => dout_3(62)
    );
  BU2_U0_grf_rf_mem_dout_i_63 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63),
      Q => dout_3(63)
    );
  BU2_U0_grf_rf_mem_dout_i_64 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(64),
      Q => dout_3(64)
    );
  BU2_U0_grf_rf_mem_dout_i_65 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(65),
      Q => dout_3(65)
    );
  BU2_U0_grf_rf_mem_dout_i_66 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(66),
      Q => dout_3(66)
    );
  BU2_U0_grf_rf_mem_dout_i_67 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(67),
      Q => dout_3(67)
    );
  BU2_U0_grf_rf_mem_dout_i_68 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(68),
      Q => dout_3(68)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(68),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(68)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(67),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(67)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(66),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(66)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(65),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(65)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(64),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(64)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(63),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(62),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(62)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(61),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(61)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(60),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(60)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(59),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(59)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(58),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(58)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(57),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(57)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(56),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(56)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(55),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(55)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(53),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(53)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(52),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(52)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(54),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(54)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(51),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(51)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(50),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(50)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(49),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(49)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(48),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(48)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(47),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(47)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(46),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(46)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(45),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(45)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(44),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(44)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(43),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(43)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(42),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(42)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(41),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(41)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(40),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(40)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(39),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(39)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(38),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(38)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(36),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(36)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(35),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(35)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(37),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(37)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(34),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(34)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(33),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(33)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(32),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(32)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(31),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(31)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(30),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(30)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(29),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(29)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(28),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(28)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(27),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(27)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(26),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(26)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(25),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(25)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(24),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(24)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(23),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(23)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(22),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(22)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(21),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(21)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(19),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(19)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(18),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(18)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(20),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(20)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(17),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(17)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(16),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(16)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(15),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(15)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(14),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(14)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(13),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(13)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(12),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(12)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(10),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(10)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(9),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(9)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(11),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(11)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(8),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(8)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(7),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(7)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(6),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(6)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(5),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(4),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(4)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(3),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(3)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(1),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(1)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(0),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(0)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      D => din_2(2),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => clk,
      WE => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_68 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(68),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(68)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_67 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(67),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(67)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_66 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(66),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(66)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_65 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(65),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(65)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_64 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(64),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(64)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_63 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(63),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_62 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(62),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_61 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(61),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_60 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(60),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_59 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(59),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_58 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(58),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_57 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(57),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_56 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(56),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_55 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(55),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_54 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(54),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_53 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(53),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_52 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(52),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_51 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(51),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_50 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(50),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_49 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(49),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_48 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(48),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_47 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(47),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_46 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(46),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_45 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(45),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_44 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(44),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_43 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(43),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_42 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(42),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_41 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(41),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_40 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(40),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_39 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(39),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_38 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(38),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_37 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(37),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(37)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_36 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(36),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_35 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(35),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_34 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(34),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_33 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(33),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_32 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(32),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(31),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(30),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(29),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(28),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(27),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(26),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(25),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(24),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(23),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(22),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(21),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(20),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(19),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(18),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(17),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(16),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(15),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(14),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(13),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(12),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(11),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(10),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(9),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(8),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(7),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(6),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(5),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(4),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(3),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(2),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(1),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(0),
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      Q => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_217
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_rd_en_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      Q => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_rd_en_i_216
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(1),
      Q => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(2),
      Q => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(3),
      Q => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(4),
      Q => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand : MULT_AND
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_ram_wr_en_i_mux0001,
      I1 => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand_210,
      LO => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand1
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_rd_pntr_wr_inv_pad_0_mand1,
      S => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(0),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      S => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(0),
      LI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(1),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(1),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      S => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(1),
      LI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(2),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(2),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      S => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(3),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(2),
      LI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(3),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_cy(3),
      LI => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_Madd_diff_pntr_pad_addsub0000_lut(4),
      O => BU2_U0_grf_rf_gl0_wr_gwss_gpf_wrpf_diff_pntr_pad_addsub0000(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_183,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(3)
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(1),
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0)
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(0),
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1)
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => empty
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_179
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_user_valid : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(1),
      Q => valid
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_164,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(3)
    );
  BU2_U0_grf_rf_rstblk_wr_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_reg(1)
    );
  BU2_U0_grf_rf_rstblk_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_reg_0_Q
    );
  BU2_U0_grf_rf_rstblk_rd_rst_reg_2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_155,
      D => BU2_rd_data_count(0),
      PRE => rst,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_159
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_rstblk_wr_rst_asreg_160,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_157
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => clk,
      CE => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_157,
      D => BU2_rd_data_count(0),
      PRE => rst,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_160
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_rstblk_rd_rst_asreg_159,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_155
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_157,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_158
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_155,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_156
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_wr_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_gwss_wsts_wr_rst_d1_154
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => full
    );
  BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_153
    );
  BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_150
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
