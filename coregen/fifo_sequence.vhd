--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.57
--  \   \         Application: netgen
--  /   /         Filename: fifo_sequence.vhd
-- /___/   /\     Timestamp: Wed Oct 28 16:36:20 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/fifo_sequence.ngc ./tmp/_cg/fifo_sequence.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: ./tmp/_cg/fifo_sequence.ngc
-- Output file	: ./tmp/_cg/fifo_sequence.vhd
-- # of Entities	: 1
-- Design Name	: fifo_sequence
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

entity fifo_sequence is
  port (
    valid : out STD_LOGIC; 
    rd_en : in STD_LOGIC := 'X'; 
    prog_full : out STD_LOGIC; 
    wr_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    wr_clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rd_clk : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 63 downto 0 ) 
  );
end fifo_sequence;

architecture STRUCTURE of fifo_sequence is
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot_613 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot_611 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot_609 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot_607 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot_605 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot_603 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot_601 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot_599 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot_597 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot_595 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot_593 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot_591 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot_589 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot_587 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot_585 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot_583 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot_581 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot_579 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot_577 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot_575 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot_573 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot_571 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot_569 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot_567 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot_565 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot_563 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_37_rstpot_561 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot_559 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot_557 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot_555 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot_553 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot_551 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot_549 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot_547 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot_545 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot_543 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot_541 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot_539 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot_537 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot_535 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot_533 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot_531 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot_529 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot_527 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot_525 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot_523 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot_521 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot_519 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot_517 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot_515 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot_513 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot_511 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot_509 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot_507 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot_505 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot_503 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot_501 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot_499 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot_497 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot_495 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot_493 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot_491 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot_489 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot_487 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000062_485 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000063_484 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000158_483 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000156_482 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000115_481 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000062_480 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026_479 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000158_478 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000063_477 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000156_476 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000115_475 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026_474 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_N11 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_N11 : STD_LOGIC; 
  signal BU2_N2 : STD_LOGIC; 
  signal BU2_N01 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_dout_i_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N259 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N257 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N253 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N251 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N255 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N247 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N245 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N249 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N241 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N239 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N243 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N235 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N233 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N237 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N229 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N227 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N231 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N223 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N221 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N225 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N217 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N215 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N219 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N211 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N209 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N213 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N205 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N203 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N207 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N199 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N197 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N201 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N193 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N191 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N195 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N187 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N185 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N189 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N181 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N179 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N183 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N175 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N173 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N177 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N169 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N167 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N171 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N163 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N161 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N165 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N157 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N155 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N159 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N151 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N149 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N153 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N145 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N143 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N147 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N139 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N137 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N141 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N133 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N131 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N135 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N127 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N125 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N129 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N121 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N119 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N123 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N115 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N113 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N117 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N109 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N107 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N111 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N103 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N101 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N105 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N97 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N95 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N99 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N91 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N89 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N93 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N85 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N83 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N87 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N79 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N77 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N81 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N73 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N71 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N75 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N67 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N65 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N69 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N61 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N59 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N63 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N55 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N53 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N57 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N49 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N47 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N51 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N43 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N41 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N45 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N37 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N35 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N39 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N31 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N29 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N33 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N25 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N23 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N27 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N19 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N17 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N21 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N13 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N11 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N15 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N9 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N7 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_N5 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count4 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_mux0003 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_wr_rst_d1_256 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_231 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count4 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0003 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0003 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0003_174 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0003_164 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_150 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_149 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_148 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_147 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_146 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_145 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_144 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_141 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000 : STD_LOGIC; 
  signal BU2_N1 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM128_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM127_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM125_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM124_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM126_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM122_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM121_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM123_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM119_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM118_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM120_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM116_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM115_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM117_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM113_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM112_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM114_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM110_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM109_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM111_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM107_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM106_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM108_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM104_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM103_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM105_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM101_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM100_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM102_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM98_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM97_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM99_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM95_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM94_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM96_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM92_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM91_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM93_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM89_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM88_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM90_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM86_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM85_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM87_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM83_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM82_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM84_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM80_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM79_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM81_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM77_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM76_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM78_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM74_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM73_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM75_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM71_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM70_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM72_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED : STD_LOGIC; 
  signal din_2 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal dout_3 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_grf_rf_mem_gdm_dm_varindex0000 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad : STD_LOGIC_VECTOR ( 5 downto 3 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000 : STD_LOGIC_VECTOR ( 5 downto 3 ); 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_rstblk_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal BU2_rd_data_count : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
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
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000158 : LUT4_L
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000156_476,
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      LO => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000158_478
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000063 : LUT3_L
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000062_480,
      LO => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000063_484
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000062 : LUT4_L
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2),
      LO => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000062_485
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX11 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N5,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N7,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(0)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1011 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N45,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N47,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(10)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N9,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N11,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(1)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX11111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N49,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N51,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(11)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1211 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N53,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N55,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(12)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1311 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N57,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N59,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(13)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1411 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N61,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N63,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(14)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1511 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N65,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N67,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(15)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1611 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N69,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N71,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(16)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1711 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N73,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N75,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(17)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1811 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N77,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N79,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(18)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX1911 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N81,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N83,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(19)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2011 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N85,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N87,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(20)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N13,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N15,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX21111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N89,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N91,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(21)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2211 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N93,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N95,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(22)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2311 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N97,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N99,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(23)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2411 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N101,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N103,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(24)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2511 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N105,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N107,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(25)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2611 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N109,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N111,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(26)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2711 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N113,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N115,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(27)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2811 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N117,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N119,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(28)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX2911 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N121,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N123,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(29)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3011 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N125,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N127,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(30)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N17,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N19,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(3)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX31111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N129,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N131,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(31)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3211 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N133,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N135,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(32)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3311 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N137,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N139,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(33)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3411 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N141,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N143,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(34)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3511 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N145,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N147,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(35)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3611 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N149,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N151,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(36)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3711 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N153,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N155,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(37)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3811 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N157,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N159,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(38)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX3911 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N161,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N163,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(39)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4011 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N165,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N167,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(40)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N21,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N23,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(4)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX41111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N169,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N171,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(41)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4211 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N173,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N175,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(42)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4311 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N177,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N179,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(43)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4411 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N181,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N183,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(44)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4511 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N185,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N187,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(45)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4611 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N189,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N191,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(46)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4711 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N193,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N195,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(47)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4811 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N197,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N199,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(48)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX4911 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N201,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N203,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(49)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5011 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N205,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N207,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(50)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N25,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N27,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX51111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N209,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N211,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(51)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5211 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N213,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N215,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(52)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5311 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N217,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N219,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(53)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5411 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N221,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N223,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(54)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5511 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N225,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N227,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(55)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5611 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N229,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N231,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(56)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5711 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N233,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N235,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(57)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5811 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N237,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N239,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(58)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX5911 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N241,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N243,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(59)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX6011 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N245,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N247,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(60)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX6111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N29,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N31,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(6)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX61111 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N249,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N251,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(61)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX6211 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N253,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N255,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(62)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX6311 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N257,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N259,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX711 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N33,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N35,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(7)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX811 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N37,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N39,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(8)
    );
  BU2_U0_grf_rf_mem_gdm_dm_inst_LPM_MUX911 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_N41,
      I2 => BU2_U0_grf_rf_mem_gdm_dm_N43,
      LO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(9)
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
      I1 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_141,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_3_12 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_3_12 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I3 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(4),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_63 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot_613,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(63),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot_613
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_62 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot_611,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(62),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot_611
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_61 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot_609,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(61),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot_609
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_60 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot_607,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(60),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot_607
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_59 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot_605,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(59),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot_605
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_58 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot_603,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(58),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot_603
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_57 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot_601,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(57),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot_601
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_56 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot_599,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(56),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot_599
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_55 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot_597,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(55),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot_597
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_54 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot_595,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(54),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot_595
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_53 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot_593,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(53),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot_593
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_52 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot_591,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(52),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot_591
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_51 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot_589,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(51),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot_589
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_50 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot_587,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(50),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot_587
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_49 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot_585,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(49),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot_585
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_48 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot_583,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(48),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot_583
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_47 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot_581,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(47),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot_581
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_46 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot_579,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(46),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot_579
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_45 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot_577,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(45),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot_577
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_44 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot_575,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(44),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot_575
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_43 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot_573,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(43),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot_573
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_42 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot_571,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(42),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot_571
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_41 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot_569,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(41),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot_569
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_40 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot_567,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(40),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot_567
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_39 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot_565,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(39),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot_565
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_38 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot_563,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(38),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot_563
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_37 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_37_rstpot_561,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(37)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_37_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(37),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(37),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_37_rstpot_561
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_36 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot_559,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(36),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot_559
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_35 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot_557,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(35),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot_557
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_34 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot_555,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(34),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot_555
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_33 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot_553,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(33),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot_553
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_32 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot_551,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(32),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot_551
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot_549,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(31),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot_549
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot_547,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(30),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot_547
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot_545,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(29),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot_545
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot_543,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(28),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot_543
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot_541,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(27),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot_541
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot_539,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(26),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot_539
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot_537,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(25),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot_537
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot_535,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(24),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot_535
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot_533,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(23),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot_533
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot_531,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(22),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot_531
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot_529,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(21),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot_529
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot_527,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(20),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot_527
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot_525,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(19),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot_525
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot_523,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(18),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot_523
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot_521,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(17),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot_521
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot_519,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(16),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot_519
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot_517,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(15),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot_517
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot_515,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(14),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot_515
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot_513,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(13),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot_513
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot_511,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(12),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot_511
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot_509,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(11),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot_509
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot_507,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(10),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot_507
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot_505,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(9),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot_505
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot_503,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(8),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot_503
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot_501,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(7),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot_501
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot_499,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(6),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot_499
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot_497,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(5),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot_497
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot_495,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(4),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot_495
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot_493,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(3),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot_493
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot_491,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(2),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot_491
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot_489,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(1),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot_489
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot_487,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      I1 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0),
      I2 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(0),
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot_487
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000158 : LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000156_482,
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000158_483
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000063 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000062_485,
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000063_477
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_144,
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(4),
      O => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276
    );
  BU2_U0_grf_rf_mem_gdm_dm_write_ctrl : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_144,
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(4),
      O => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(1)
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_144,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000183 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000115_481,
      I1 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026_479,
      I2 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000158_483,
      I3 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000063_484,
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000156 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(2),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I3 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(1),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000156_482
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000115 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(4),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I3 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(3),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000115_481
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000062 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000062_480
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(1),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(4),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026_479
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000183 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000115_475,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026_474,
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000063_477,
      I3 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000158_478,
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000156 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000156_476
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000115 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(4),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000115_475
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(4),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026_474
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21 : LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_141,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_4_11 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(4),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_N11,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count4
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_4_11 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(4),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_N11,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count4
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count_xor_3_111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_N11
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_3_111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_N11
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
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_not00011 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_144,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_wr_rst_d1_256,
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_not0001
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0003 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(0),
      I2 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      I3 => BU2_N2,
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0003_164
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0003_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(1),
      O => BU2_N2
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0003 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(0),
      I2 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      I3 => BU2_N01,
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0003_174
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0003_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(1),
      O => BU2_N01
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux00001 : LUT4
    generic map(
      INIT => X"8E8A"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_231,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => rd_en,
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor00021 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(1),
      I2 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(4),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0002
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor00021 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(1),
      I2 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(4),
      I3 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0002
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001_0_1 : LUT4
    generic map(
      INIT => X"40FF"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_141,
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_mux00031 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(5),
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_wr_rst_d1_256,
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(3),
      I3 => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(4),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_mux0003
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
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor00011 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      I2 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0001
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor00011 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(4),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      I2 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0001
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001_1_1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I1 => rd_en,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(1)
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_rd_pntr_gc_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0000
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_rd_pntr_gc_xor0001_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0001
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_rd_pntr_gc_xor0002_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0002
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_rd_pntr_gc_xor0003_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0003
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(4),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0000
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0001_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0001
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0002_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0002
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0003_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0003
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
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      O => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(4),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0000
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(4),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0000
    );
  BU2_U0_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_rstblk_rd_rst_asreg_149,
      I1 => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_146,
      O => BU2_U0_grf_rf_rstblk_rd_rst_comb
    );
  BU2_U0_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_grf_rf_rstblk_wr_rst_asreg_150,
      I1 => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_148,
      O => BU2_U0_grf_rf_rstblk_wr_rst_comb
    );
  BU2_U0_grf_rf_mem_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0),
      Q => dout_3(0)
    );
  BU2_U0_grf_rf_mem_dout_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1),
      Q => dout_3(1)
    );
  BU2_U0_grf_rf_mem_dout_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2),
      Q => dout_3(2)
    );
  BU2_U0_grf_rf_mem_dout_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3),
      Q => dout_3(3)
    );
  BU2_U0_grf_rf_mem_dout_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4),
      Q => dout_3(4)
    );
  BU2_U0_grf_rf_mem_dout_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5),
      Q => dout_3(5)
    );
  BU2_U0_grf_rf_mem_dout_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6),
      Q => dout_3(6)
    );
  BU2_U0_grf_rf_mem_dout_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7),
      Q => dout_3(7)
    );
  BU2_U0_grf_rf_mem_dout_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8),
      Q => dout_3(8)
    );
  BU2_U0_grf_rf_mem_dout_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9),
      Q => dout_3(9)
    );
  BU2_U0_grf_rf_mem_dout_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10),
      Q => dout_3(10)
    );
  BU2_U0_grf_rf_mem_dout_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11),
      Q => dout_3(11)
    );
  BU2_U0_grf_rf_mem_dout_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12),
      Q => dout_3(12)
    );
  BU2_U0_grf_rf_mem_dout_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13),
      Q => dout_3(13)
    );
  BU2_U0_grf_rf_mem_dout_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14),
      Q => dout_3(14)
    );
  BU2_U0_grf_rf_mem_dout_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15),
      Q => dout_3(15)
    );
  BU2_U0_grf_rf_mem_dout_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16),
      Q => dout_3(16)
    );
  BU2_U0_grf_rf_mem_dout_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17),
      Q => dout_3(17)
    );
  BU2_U0_grf_rf_mem_dout_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18),
      Q => dout_3(18)
    );
  BU2_U0_grf_rf_mem_dout_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19),
      Q => dout_3(19)
    );
  BU2_U0_grf_rf_mem_dout_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20),
      Q => dout_3(20)
    );
  BU2_U0_grf_rf_mem_dout_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21),
      Q => dout_3(21)
    );
  BU2_U0_grf_rf_mem_dout_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22),
      Q => dout_3(22)
    );
  BU2_U0_grf_rf_mem_dout_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23),
      Q => dout_3(23)
    );
  BU2_U0_grf_rf_mem_dout_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24),
      Q => dout_3(24)
    );
  BU2_U0_grf_rf_mem_dout_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25),
      Q => dout_3(25)
    );
  BU2_U0_grf_rf_mem_dout_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26),
      Q => dout_3(26)
    );
  BU2_U0_grf_rf_mem_dout_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27),
      Q => dout_3(27)
    );
  BU2_U0_grf_rf_mem_dout_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28),
      Q => dout_3(28)
    );
  BU2_U0_grf_rf_mem_dout_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29),
      Q => dout_3(29)
    );
  BU2_U0_grf_rf_mem_dout_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30),
      Q => dout_3(30)
    );
  BU2_U0_grf_rf_mem_dout_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31),
      Q => dout_3(31)
    );
  BU2_U0_grf_rf_mem_dout_i_32 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32),
      Q => dout_3(32)
    );
  BU2_U0_grf_rf_mem_dout_i_33 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33),
      Q => dout_3(33)
    );
  BU2_U0_grf_rf_mem_dout_i_34 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34),
      Q => dout_3(34)
    );
  BU2_U0_grf_rf_mem_dout_i_35 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35),
      Q => dout_3(35)
    );
  BU2_U0_grf_rf_mem_dout_i_36 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36),
      Q => dout_3(36)
    );
  BU2_U0_grf_rf_mem_dout_i_37 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(37),
      Q => dout_3(37)
    );
  BU2_U0_grf_rf_mem_dout_i_38 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38),
      Q => dout_3(38)
    );
  BU2_U0_grf_rf_mem_dout_i_39 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39),
      Q => dout_3(39)
    );
  BU2_U0_grf_rf_mem_dout_i_40 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40),
      Q => dout_3(40)
    );
  BU2_U0_grf_rf_mem_dout_i_41 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41),
      Q => dout_3(41)
    );
  BU2_U0_grf_rf_mem_dout_i_42 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42),
      Q => dout_3(42)
    );
  BU2_U0_grf_rf_mem_dout_i_43 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43),
      Q => dout_3(43)
    );
  BU2_U0_grf_rf_mem_dout_i_44 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44),
      Q => dout_3(44)
    );
  BU2_U0_grf_rf_mem_dout_i_45 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45),
      Q => dout_3(45)
    );
  BU2_U0_grf_rf_mem_dout_i_46 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46),
      Q => dout_3(46)
    );
  BU2_U0_grf_rf_mem_dout_i_47 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47),
      Q => dout_3(47)
    );
  BU2_U0_grf_rf_mem_dout_i_48 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48),
      Q => dout_3(48)
    );
  BU2_U0_grf_rf_mem_dout_i_49 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49),
      Q => dout_3(49)
    );
  BU2_U0_grf_rf_mem_dout_i_50 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50),
      Q => dout_3(50)
    );
  BU2_U0_grf_rf_mem_dout_i_51 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51),
      Q => dout_3(51)
    );
  BU2_U0_grf_rf_mem_dout_i_52 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52),
      Q => dout_3(52)
    );
  BU2_U0_grf_rf_mem_dout_i_53 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53),
      Q => dout_3(53)
    );
  BU2_U0_grf_rf_mem_dout_i_54 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54),
      Q => dout_3(54)
    );
  BU2_U0_grf_rf_mem_dout_i_55 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55),
      Q => dout_3(55)
    );
  BU2_U0_grf_rf_mem_dout_i_56 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56),
      Q => dout_3(56)
    );
  BU2_U0_grf_rf_mem_dout_i_57 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57),
      Q => dout_3(57)
    );
  BU2_U0_grf_rf_mem_dout_i_58 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58),
      Q => dout_3(58)
    );
  BU2_U0_grf_rf_mem_dout_i_59 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59),
      Q => dout_3(59)
    );
  BU2_U0_grf_rf_mem_dout_i_60 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60),
      Q => dout_3(60)
    );
  BU2_U0_grf_rf_mem_dout_i_61 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61),
      Q => dout_3(61)
    );
  BU2_U0_grf_rf_mem_dout_i_62 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62),
      Q => dout_3(62)
    );
  BU2_U0_grf_rf_mem_dout_i_63 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63),
      Q => dout_3(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM128 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(63),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM128_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N259
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM127 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(63),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM127_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N257
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM125 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(62),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM125_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N253
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM124 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(61),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM124_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N251
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM126 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(62),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM126_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N255
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM122 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(60),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM122_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N247
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM121 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(60),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM121_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N245
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM123 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(61),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM123_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N249
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM119 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(59),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM119_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N241
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM118 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(58),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM118_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N239
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM120 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(59),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM120_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N243
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM116 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(57),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM116_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N235
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM115 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(57),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM115_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N233
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM117 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(58),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM117_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N237
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM113 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(56),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM113_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N229
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM112 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(55),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM112_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N227
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM114 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(56),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM114_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N231
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM110 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(54),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM110_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N223
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM109 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(54),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM109_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N221
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM111 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(55),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM111_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N225
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM107 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(53),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM107_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N217
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM106 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(52),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM106_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N215
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM108 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(53),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM108_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N219
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM104 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(51),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM104_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N211
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM103 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(51),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM103_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N209
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM105 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(52),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM105_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N213
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM101 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(50),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM101_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N205
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM100 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(49),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM100_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N203
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM102 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(50),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM102_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N207
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM98 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(48),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM98_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N199
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM97 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(48),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM97_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N197
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM99 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(49),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM99_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N201
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM95 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(47),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM95_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N193
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM94 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(46),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM94_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N191
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM96 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(47),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM96_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N195
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM92 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(45),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM92_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N187
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM91 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(45),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM91_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N185
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM93 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(46),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM93_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N189
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM89 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(44),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM89_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N181
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM88 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(43),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM88_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N179
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM90 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(44),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM90_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N183
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM86 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(42),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM86_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N175
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM85 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(42),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM85_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N173
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM87 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(43),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM87_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N177
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM83 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(41),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM83_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N169
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM82 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(40),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM82_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N167
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM84 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(41),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM84_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N171
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM80 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(39),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM80_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N163
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM79 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(39),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM79_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N161
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM81 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(40),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM81_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N165
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM77 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(38),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM77_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N157
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM76 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(37),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM76_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N155
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM78 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(38),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM78_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N159
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM74 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(36),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM74_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N151
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM73 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(36),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM73_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N149
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM75 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(37),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM75_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N153
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM71 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(35),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM71_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N145
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM70 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(34),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM70_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N143
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM72 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(35),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM72_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N147
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(33),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N139
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(33),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N137
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(34),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N141
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(32),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N133
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(31),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N131
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(32),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N135
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(30),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N127
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(30),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N125
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(31),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N129
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(29),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N121
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(28),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N119
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(29),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N123
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(27),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N115
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(27),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N113
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(28),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N117
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(26),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N109
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(25),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N107
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(26),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N111
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(24),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N103
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(24),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N101
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(25),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N105
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(23),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N97
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(22),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N95
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(23),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N99
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(21),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N91
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(21),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N89
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(22),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N93
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(20),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N85
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(19),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N83
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(20),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N87
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(18),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N79
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(18),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N77
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(19),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N81
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(17),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N73
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(16),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N71
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(17),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N75
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(15),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N67
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(15),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N65
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(16),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N69
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(14),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N61
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(13),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N59
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(14),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N63
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(12),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N55
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(12),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N53
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(13),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N57
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(11),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N49
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(10),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N47
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(11),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N51
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(9),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N43
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(9),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N41
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(10),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N45
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(8),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N37
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(7),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N35
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(8),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N39
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(6),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N31
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(6),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N29
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(7),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N33
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(5),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N25
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(4),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N23
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(5),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N27
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(3),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N19
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(3),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N17
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(4),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N21
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(2),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N13
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(1),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N11
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(2),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N15
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(1),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N9
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(0),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl1_276,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N7
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(0),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_mem_gdm_dm_write_ctrl_274,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_N5
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(4),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(4)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count4,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_not0001,
      D => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_prog_full_i_mux0003,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => prog_full
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_wr_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_wr_rst_d1_256
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000(3),
      Q => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000(4),
      Q => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000(5),
      Q => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(5)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy_0_Q : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      S => BU2_rd_data_count(0),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(0)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(0),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      S => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(1),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(1)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(1),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      S => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(2),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(2)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(2),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      S => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(3),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(2),
      LI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(3),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000(3)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(3),
      DI => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      S => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(4),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(3),
      LI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(4),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000(4)
    );
  BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_cy(4),
      LI => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_Madd_diff_pntr_pad_add0000_lut(5),
      O => BU2_U0_grf_rf_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_add0000(5)
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(1),
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0)
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(0),
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1)
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      Q => empty
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_231
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_user_valid : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001(1),
      Q => valid
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(4),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(0)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_214,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count4,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(4)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0003,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(0)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(1)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(2)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(3)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(4),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(4)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0003,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(0)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(1)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(2)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(3)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(4),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(4)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(0),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(0)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(1),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(1)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(2),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(2)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(3),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(3)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(4),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(4)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(0),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(0)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(1),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(1)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(2),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(2)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(3),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(3)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(4),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(4)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(0),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(0)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(1),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(1)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(2),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(3),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg(4),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(4)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(0),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(0)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(1),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(1)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(2),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(3),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg(4),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(4)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0003_174,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(0)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(1)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(2)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(3)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(4),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(4)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0003_164,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(4),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(4)
    );
  BU2_U0_grf_rf_rstblk_wr_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_reg(0)
    );
  BU2_U0_grf_rf_rstblk_wr_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_reg(1)
    );
  BU2_U0_grf_rf_rstblk_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_reg(0)
    );
  BU2_U0_grf_rf_rstblk_rd_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_reg(1)
    );
  BU2_U0_grf_rf_rstblk_rd_rst_reg_2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => BU2_rd_data_count(0),
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_comb,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_reg(2)
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_145,
      D => BU2_rd_data_count(0),
      PRE => rst,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_149
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_rstblk_wr_rst_asreg_150,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_147
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_147,
      D => BU2_rd_data_count(0),
      PRE => rst,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_150
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_rstblk_rd_rst_asreg_149,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_145
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_147,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_148
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_145,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_146
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_144
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => full
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000,
      PRE => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      Q => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_141
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
