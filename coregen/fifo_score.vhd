--------------------------------------------------------------------------------
-- Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: L.57
--  \   \         Application: netgen
--  /   /         Filename: fifo_score.vhd
-- /___/   /\     Timestamp: Wed Oct 28 13:53:00 2009
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/fifo_score.ngc ./tmp/_cg/fifo_score.vhd 
-- Device	: 4vlx100ff1148-12
-- Input file	: ./tmp/_cg/fifo_score.ngc
-- Output file	: ./tmp/_cg/fifo_score.vhd
-- # of Entities	: 1
-- Design Name	: fifo_score
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

entity fifo_score is
  port (
    valid : out STD_LOGIC; 
    rd_en : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    wr_clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rd_clk : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 98 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 98 downto 0 ) 
  );
end fifo_score;

architecture STRUCTURE of fifo_score is
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_98_rstpot_622 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_97_rstpot_621 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_96_rstpot_620 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_95_rstpot_619 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_94_rstpot_618 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_93_rstpot_617 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_92_rstpot_616 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_91_rstpot_615 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_90_rstpot_614 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_89_rstpot_613 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_88_rstpot_612 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_87_rstpot_611 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_86_rstpot_610 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_85_rstpot_609 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_84_rstpot_608 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_83_rstpot_607 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_82_rstpot_606 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_81_rstpot_605 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_80_rstpot_604 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_79_rstpot_603 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_78_rstpot_602 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_77_rstpot_601 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_76_rstpot_600 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_75_rstpot_599 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_74_rstpot_598 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_73_rstpot_597 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_72_rstpot_596 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_71_rstpot_595 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_70_rstpot_594 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_69_rstpot_593 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_68_rstpot_592 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_67_rstpot_591 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_66_rstpot_590 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_65_rstpot_589 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_64_rstpot_588 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot_587 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot_586 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot_585 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot_584 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot_583 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot_582 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot_581 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot_580 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot_579 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot_578 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot_577 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot_576 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot_575 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot_574 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot_573 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot_572 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot_571 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot_570 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot_569 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot_568 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot_567 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot_566 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot_565 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot_564 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot_563 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot_562 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_37_rstpot_561 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot_560 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot_559 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot_558 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot_557 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot_556 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot_555 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot_554 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot_553 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot_552 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot_551 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot_550 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot_549 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot_548 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot_547 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot_546 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot_545 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot_544 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot_543 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot_542 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot_541 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot_540 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot_539 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot_538 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot_537 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot_536 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot_535 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot_534 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot_533 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot_532 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot_531 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot_530 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot_529 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot_528 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot_527 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot_526 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot_525 : STD_LOGIC; 
  signal BU2_N21 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot_523 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000122_521 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000121_520 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000093_519 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000053_518 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026_517 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000118_516 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000111_515 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000093_514 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000053_513 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026_512 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0_1_511 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445 : STD_LOGIC; 
  signal BU2_U0_grf_rf_mem_dout_i_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_284 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0002 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0001 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_218 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_217 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_216 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_215 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_214 : STD_LOGIC; 
  signal BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_213 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_209 : STD_LOGIC; 
  signal BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED : STD_LOGIC; 
  signal din_2 : STD_LOGIC_VECTOR ( 98 downto 0 ); 
  signal dout_3 : STD_LOGIC_VECTOR ( 98 downto 0 ); 
  signal BU2_U0_grf_rf_mem_gdm_dm_dout_i : STD_LOGIC_VECTOR ( 98 downto 0 ); 
  signal BU2_U0_grf_rf_mem_gdm_dm_varindex0000 : STD_LOGIC_VECTOR ( 98 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BU2_U0_grf_rf_rstblk_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal BU2_rd_data_count : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  dout(98) <= dout_3(98);
  dout(97) <= dout_3(97);
  dout(96) <= dout_3(96);
  dout(95) <= dout_3(95);
  dout(94) <= dout_3(94);
  dout(93) <= dout_3(93);
  dout(92) <= dout_3(92);
  dout(91) <= dout_3(91);
  dout(90) <= dout_3(90);
  dout(89) <= dout_3(89);
  dout(88) <= dout_3(88);
  dout(87) <= dout_3(87);
  dout(86) <= dout_3(86);
  dout(85) <= dout_3(85);
  dout(84) <= dout_3(84);
  dout(83) <= dout_3(83);
  dout(82) <= dout_3(82);
  dout(81) <= dout_3(81);
  dout(80) <= dout_3(80);
  dout(79) <= dout_3(79);
  dout(78) <= dout_3(78);
  dout(77) <= dout_3(77);
  dout(76) <= dout_3(76);
  dout(75) <= dout_3(75);
  dout(74) <= dout_3(74);
  dout(73) <= dout_3(73);
  dout(72) <= dout_3(72);
  dout(71) <= dout_3(71);
  dout(70) <= dout_3(70);
  dout(69) <= dout_3(69);
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
  din_2(98) <= din(98);
  din_2(97) <= din(97);
  din_2(96) <= din(96);
  din_2(95) <= din(95);
  din_2(94) <= din(94);
  din_2(93) <= din(93);
  din_2(92) <= din(92);
  din_2(91) <= din(91);
  din_2(90) <= din(90);
  din_2(89) <= din(89);
  din_2(88) <= din(88);
  din_2(87) <= din(87);
  din_2(86) <= din(86);
  din_2(85) <= din(85);
  din_2(84) <= din(84);
  din_2(83) <= din(83);
  din_2(82) <= din(82);
  din_2(81) <= din(81);
  din_2(80) <= din(80);
  din_2(79) <= din(79);
  din_2(78) <= din(78);
  din_2(77) <= din(77);
  din_2(76) <= din(76);
  din_2(75) <= din(75);
  din_2(74) <= din(74);
  din_2(73) <= din(73);
  din_2(72) <= din(72);
  din_2(71) <= din(71);
  din_2(70) <= din(70);
  din_2(69) <= din(69);
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
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000122 : LUT3_L
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000121_520,
      LO => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000122_521
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000118 : LUT4_L
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000111_515,
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
      LO => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000118_516
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21 : LUT4_D
    generic map(
      INIT => X"2333"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_209,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      LO => BU2_N21,
      O => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001
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
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_2 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_1 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0_1_511
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_6 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_3 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_2 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_1 : LUT4
    generic map(
      INIT => X"2333"
    )
    port map (
      I0 => rd_en,
      I1 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_209,
      I2 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I3 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      O => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_98 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_98_rstpot_622,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(98)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_98_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(98),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(98),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_98_rstpot_622
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_97 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_97_rstpot_621,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(97)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_97_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(97),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(97),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_97_rstpot_621
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_96 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_96_rstpot_620,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(96)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_96_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(96),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(96),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_96_rstpot_620
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_95 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_95_rstpot_619,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(95)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_95_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(95),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(95),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_95_rstpot_619
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_94 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_94_rstpot_618,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(94)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_94_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(94),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(94),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_94_rstpot_618
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_93 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_93_rstpot_617,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(93)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_93_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(93),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(93),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_93_rstpot_617
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_92 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_92_rstpot_616,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(92)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_92_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(92),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(92),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_92_rstpot_616
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_91 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_91_rstpot_615,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(91)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_91_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(91),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(91),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_91_rstpot_615
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_90 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_90_rstpot_614,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(90)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_90_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(90),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(90),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_90_rstpot_614
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_89 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_89_rstpot_613,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(89)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_89_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(89),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(89),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_89_rstpot_613
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_88 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_88_rstpot_612,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(88)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_88_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(88),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(88),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_88_rstpot_612
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_87 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_87_rstpot_611,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(87)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_87_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(87),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(87),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_87_rstpot_611
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_86 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_86_rstpot_610,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(86)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_86_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(86),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(86),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_86_rstpot_610
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_85 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_85_rstpot_609,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(85)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_85_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(85),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(85),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_85_rstpot_609
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_84 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_84_rstpot_608,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(84)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_84_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(84),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(84),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_84_rstpot_608
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_83 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_83_rstpot_607,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(83)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_83_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(83),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(83),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_83_rstpot_607
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_82 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_82_rstpot_606,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(82)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_82_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(82),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(82),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_82_rstpot_606
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_81 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_81_rstpot_605,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(81)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_81_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(81),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(81),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_81_rstpot_605
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_80 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_80_rstpot_604,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(80)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_80_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(80),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(80),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_80_rstpot_604
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_79 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_79_rstpot_603,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(79)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_79_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(79),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(79),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_79_rstpot_603
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_78 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_78_rstpot_602,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(78)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_78_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(78),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(78),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_78_rstpot_602
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_77 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_77_rstpot_601,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(77)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_77_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(77),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(77),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_77_rstpot_601
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_76 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_76_rstpot_600,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(76)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_76_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(76),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(76),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_76_rstpot_600
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_75 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_75_rstpot_599,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(75)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_75_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(75),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(75),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_75_rstpot_599
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_74 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_74_rstpot_598,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(74)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_74_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(74),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(74),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_74_rstpot_598
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_73 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_73_rstpot_597,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(73)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_73_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(73),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(73),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_73_rstpot_597
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_72 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_72_rstpot_596,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(72)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_72_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(72),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(72),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_72_rstpot_596
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_71 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_71_rstpot_595,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(71)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_71_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(71),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(71),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_71_rstpot_595
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_70 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_70_rstpot_594,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(70)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_70_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(70),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(70),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_70_rstpot_594
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_69 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_69_rstpot_593,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(69)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_69_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(69),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(69),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_69_rstpot_593
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_68 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_68_rstpot_592,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(68)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_68_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(68),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(68),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_68_rstpot_592
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_67 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_67_rstpot_591,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(67)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_67_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(67),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(67),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_67_rstpot_591
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_66 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_66_rstpot_590,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(66)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_66_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(66),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(66),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_66_rstpot_590
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_65 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_65_rstpot_589,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(65)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_65_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(65),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(65),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_65_rstpot_589
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_64 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_64_rstpot_588,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(64)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_64_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(64),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(64),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_64_rstpot_588
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_63 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot_587,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(63),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_63_rstpot_587
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_62 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot_586,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(62),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(62),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_62_rstpot_586
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_61 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot_585,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(61),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(61),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_61_rstpot_585
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_60 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot_584,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(60),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(60),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_60_rstpot_584
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_59 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot_583,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(59),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(59),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_59_rstpot_583
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_58 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot_582,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(58),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(58),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_58_rstpot_582
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_57 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot_581,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(57),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(57),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_57_rstpot_581
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_56 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot_580,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(56),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(56),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_56_rstpot_580
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_55 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot_579,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(55),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(55),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_55_rstpot_579
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_54 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot_578,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(54),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(54),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_54_rstpot_578
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_53 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot_577,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(53),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(53),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_53_rstpot_577
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_52 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot_576,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(52),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(52),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_52_rstpot_576
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_51 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot_575,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(51),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(51),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_51_rstpot_575
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_50 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot_574,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(50),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(50),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_50_rstpot_574
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_49 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot_573,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(49),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(49),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_49_rstpot_573
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_48 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot_572,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(48),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(48),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_48_rstpot_572
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_47 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot_571,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(47),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(47),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_47_rstpot_571
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_46 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot_570,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(46),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(46),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_46_rstpot_570
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_45 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot_569,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(45),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(45),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_45_rstpot_569
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_44 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot_568,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(44),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(44),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_44_rstpot_568
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_43 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot_567,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(43),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(43),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_43_rstpot_567
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_42 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot_566,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(42),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(42),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_42_rstpot_566
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_41 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot_565,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(41),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(41),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_41_rstpot_565
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_40 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot_564,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(40),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(40),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_40_rstpot_564
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_39 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot_563,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(39),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(39),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_39_rstpot_563
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_38 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot_562,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(38),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(38),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_38_rstpot_562
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
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(37),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(37),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_37_rstpot_561
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_36 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot_560,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(36),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(36),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_36_rstpot_560
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_35 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot_559,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(35),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(35),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_35_rstpot_559
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_34 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot_558,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(34),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(34),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_34_rstpot_558
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_33 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot_557,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(33),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(33),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_33_rstpot_557
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_32 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot_556,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(32),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(32),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_32_rstpot_556
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot_555,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(31),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(31),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_31_rstpot_555
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot_554,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(30),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(30),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_30_rstpot_554
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot_553,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(29),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(29),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_29_rstpot_553
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot_552,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(28),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(28),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_28_rstpot_552
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot_551,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(27),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(27),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_27_rstpot_551
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot_550,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(26),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(26),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_26_rstpot_550
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot_549,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(25),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(25),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_25_rstpot_549
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot_548,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(24),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(24),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_24_rstpot_548
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot_547,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(23),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(23),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_23_rstpot_547
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot_546,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(22),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(22),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_22_rstpot_546
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot_545,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(21),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(21),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_21_rstpot_545
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot_544,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(20),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(20),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_20_rstpot_544
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot_543,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(19),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(19),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_19_rstpot_543
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot_542,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(18),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(18),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_18_rstpot_542
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot_541,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(17),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(17),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_17_rstpot_541
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot_540,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(16),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(16),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_16_rstpot_540
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot_539,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(15),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(15),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_15_rstpot_539
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot_538,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(14),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(14),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_14_rstpot_538
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot_537,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(13),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(13),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_13_rstpot_537
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot_536,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(12),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(12),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_12_rstpot_536
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot_535,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(11),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(11),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_11_rstpot_535
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot_534,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(10),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(10),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_10_rstpot_534
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot_533,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(9),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(9),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_9_rstpot_533
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot_532,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(8),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(8),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_8_rstpot_532
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot_531,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(7),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(7),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_7_rstpot_531
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot_530,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(6),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(6),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_6_rstpot_530
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot_529,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(5),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(5),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_5_rstpot_529
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot_528,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(4),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(4),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_4_rstpot_528
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot_527,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(3),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_3_rstpot_527
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot_526,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(2),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(2),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_2_rstpot_526
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot_525,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(1),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(1),
      I2 => BU2_N21,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_1_rstpot_525
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot_523,
      Q => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0)
    );
  BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => BU2_U0_grf_rf_mem_gdm_dm_dout_i(0),
      I1 => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(0),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_not0001,
      O => BU2_U0_grf_rf_mem_gdm_dm_dout_i_0_rstpot_523
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000148 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026_517,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000053_518,
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000093_519,
      I3 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000122_521,
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000121 : LUT4
    generic map(
      INIT => X"0802"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      I2 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000121_520
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000093 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count(1),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000093_519
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000053 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000053_518
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1),
      I2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0),
      O => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or000026_517
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000141 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000093_514,
      I1 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026_512,
      I2 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000053_513,
      I3 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000118_516,
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000111 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(3),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or0000111_515
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000093 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      I3 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(2),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000093_514
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000053 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(3),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000053_513
    );
  BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(0),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(1),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1_0_1_511,
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      O => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_or000026_512
    );
  BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212,
      O => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001
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
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count(0),
      I2 => BU2_U0_grf_rf_gl0_rd_rpntr_count(1),
      I3 => BU2_U0_grf_rf_gl0_rd_rpntr_count(2),
      O => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count_xor_3_11 : LUT4
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
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_i_mux00001 : LUT4
    generic map(
      INIT => X"8E8A"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_284,
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
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(0),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(1),
      I2 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2),
      I3 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0002
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor00021 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(0),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(1),
      I2 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2),
      I3 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0002
    );
  BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state_mux0001_0_1 : LUT4
    generic map(
      INIT => X"08FF"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(1),
      I1 => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_curr_fwft_state(0),
      I2 => rd_en,
      I3 => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_209,
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
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor00011 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(1),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2),
      I2 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0001
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor00011 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(1),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2),
      I2 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
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
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0000
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_rd_pntr_gc_xor0001_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0001
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_rd_pntr_gc_xor0002_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      I1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0002
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0000
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0001_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0001
    );
  BU2_U0_grf_rf_gcx_clkx_Mxor_wr_pntr_gc_xor0002_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      I1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0002
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
      I0 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0000
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor00001 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(2),
      I1 => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      O => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0000
    );
  BU2_U0_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_214,
      I1 => BU2_U0_grf_rf_rstblk_rd_rst_asreg_217,
      O => BU2_U0_grf_rf_rstblk_rd_rst_comb
    );
  BU2_U0_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_216,
      I1 => BU2_U0_grf_rf_rstblk_wr_rst_asreg_218,
      O => BU2_U0_grf_rf_rstblk_wr_rst_comb
    );
  BU2_U0_grf_rf_mem_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN111,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_REGOUT_EN11_445,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(63),
      Q => dout_3(63)
    );
  BU2_U0_grf_rf_mem_dout_i_64 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(64),
      Q => dout_3(64)
    );
  BU2_U0_grf_rf_mem_dout_i_65 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(65),
      Q => dout_3(65)
    );
  BU2_U0_grf_rf_mem_dout_i_66 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(66),
      Q => dout_3(66)
    );
  BU2_U0_grf_rf_mem_dout_i_67 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(67),
      Q => dout_3(67)
    );
  BU2_U0_grf_rf_mem_dout_i_68 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(68),
      Q => dout_3(68)
    );
  BU2_U0_grf_rf_mem_dout_i_69 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(69),
      Q => dout_3(69)
    );
  BU2_U0_grf_rf_mem_dout_i_70 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(70),
      Q => dout_3(70)
    );
  BU2_U0_grf_rf_mem_dout_i_71 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(71),
      Q => dout_3(71)
    );
  BU2_U0_grf_rf_mem_dout_i_72 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(72),
      Q => dout_3(72)
    );
  BU2_U0_grf_rf_mem_dout_i_73 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(73),
      Q => dout_3(73)
    );
  BU2_U0_grf_rf_mem_dout_i_74 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(74),
      Q => dout_3(74)
    );
  BU2_U0_grf_rf_mem_dout_i_75 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(75),
      Q => dout_3(75)
    );
  BU2_U0_grf_rf_mem_dout_i_76 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(76),
      Q => dout_3(76)
    );
  BU2_U0_grf_rf_mem_dout_i_77 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(77),
      Q => dout_3(77)
    );
  BU2_U0_grf_rf_mem_dout_i_78 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(78),
      Q => dout_3(78)
    );
  BU2_U0_grf_rf_mem_dout_i_79 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(79),
      Q => dout_3(79)
    );
  BU2_U0_grf_rf_mem_dout_i_80 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(80),
      Q => dout_3(80)
    );
  BU2_U0_grf_rf_mem_dout_i_81 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(81),
      Q => dout_3(81)
    );
  BU2_U0_grf_rf_mem_dout_i_82 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(82),
      Q => dout_3(82)
    );
  BU2_U0_grf_rf_mem_dout_i_83 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(83),
      Q => dout_3(83)
    );
  BU2_U0_grf_rf_mem_dout_i_84 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(84),
      Q => dout_3(84)
    );
  BU2_U0_grf_rf_mem_dout_i_85 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(85),
      Q => dout_3(85)
    );
  BU2_U0_grf_rf_mem_dout_i_86 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(86),
      Q => dout_3(86)
    );
  BU2_U0_grf_rf_mem_dout_i_87 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(87),
      Q => dout_3(87)
    );
  BU2_U0_grf_rf_mem_dout_i_88 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(88),
      Q => dout_3(88)
    );
  BU2_U0_grf_rf_mem_dout_i_89 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(89),
      Q => dout_3(89)
    );
  BU2_U0_grf_rf_mem_dout_i_90 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(90),
      Q => dout_3(90)
    );
  BU2_U0_grf_rf_mem_dout_i_91 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(91),
      Q => dout_3(91)
    );
  BU2_U0_grf_rf_mem_dout_i_92 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(92),
      Q => dout_3(92)
    );
  BU2_U0_grf_rf_mem_dout_i_93 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(93),
      Q => dout_3(93)
    );
  BU2_U0_grf_rf_mem_dout_i_94 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(94),
      Q => dout_3(94)
    );
  BU2_U0_grf_rf_mem_dout_i_95 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(95),
      Q => dout_3(95)
    );
  BU2_U0_grf_rf_mem_dout_i_96 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(96),
      Q => dout_3(96)
    );
  BU2_U0_grf_rf_mem_dout_i_97 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(97),
      Q => dout_3(97)
    );
  BU2_U0_grf_rf_mem_dout_i_98 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_mem_dout_i_not0001,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(0),
      D => BU2_U0_grf_rf_mem_gdm_dm_dout_i(98),
      Q => dout_3(98)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM98 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(97),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM98_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(97)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM97 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(96),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM97_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(96)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM99 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(98),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM99_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(98)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM95 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(94),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM95_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(94)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM94 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(93),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM94_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(93)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM96 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(95),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM96_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(95)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM92 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(91),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM92_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(91)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM91 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(90),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM91_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(90)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM93 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(92),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM93_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(92)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM89 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(88),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM89_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(88)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM88 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(87),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM88_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(87)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM90 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(89),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM90_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(89)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM86 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(85),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM86_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(85)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM85 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(84),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM85_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(84)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM87 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(86),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM87_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(86)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM83 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(82),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM83_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(82)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM82 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(81),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM82_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(81)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM84 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(83),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM84_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(83)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM80 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(79),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_wpntr_count_not0001,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM80_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(79)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM79 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(78),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM79_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(78)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM81 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(80),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM81_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(80)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM77 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(76),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM77_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(76)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM76 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(75),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM76_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(75)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM78 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(77),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM78_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(77)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM74 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(73),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM74_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(73)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM73 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(72),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM73_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(72)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM75 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(74),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM75_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(74)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM71 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(70),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM71_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(70)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM70 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(69),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM70_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(69)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM72 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(71),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM72_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(71)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(67),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM68_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(67)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(66),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM67_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(66)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(68),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM69_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(68)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(64),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM65_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(64)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM64_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(63)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66 : RAM16X1D
    port map (
      A0 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(0),
      A1 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(1),
      A2 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(2),
      A3 => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      D => din_2(65),
      DPRA0 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(0),
      DPRA1 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(1),
      DPRA2 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(2),
      DPRA3 => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      WCLK => wr_clk,
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM66_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(65)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM62_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(61)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_369,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM61_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(60)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM63_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(62)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM59_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(58)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM58_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(57)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM60_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(59)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM56_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(55)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM55_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(54)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM57_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(56)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM54_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(53)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM53_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(52)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM52_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(51)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM51_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(50)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM49_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(48)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM48_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(47)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM50_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(49)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM46_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(45)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM45_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(44)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM47_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(46)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM43_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(42)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i11,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM42_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(41)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM44_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(43)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM40_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(39)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM39_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(38)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM41_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(40)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM37_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(36)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM36_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(35)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM38_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(37)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM34_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(33)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM33_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(32)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM35_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(34)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM31_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(30)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM30_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(29)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM32_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(31)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM29_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(28)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM28_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(27)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM27_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(26)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM26_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(25)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM24_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(23)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i12,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM23_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(22)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM25_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(24)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM21_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(20)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM20_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(19)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM22_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(21)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM18_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(17)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_4_322,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM17_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(16)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM19_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(18)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM15_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(14)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM14_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(13)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM16_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(15)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM12_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(11)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM11_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(10)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM13_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(12)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM9_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(8)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(7)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM10_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(9)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(5)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(4)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(6)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(3)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(2)
    );
  BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2 : RAM16X1D
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(1)
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
      WE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i13,
      SPO => NLW_BU2_U0_grf_rf_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED,
      DPO => BU2_U0_grf_rf_mem_gdm_dm_varindex0000(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
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
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
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
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
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
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(2),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
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
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count(0),
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count_d1(0)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
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
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count1,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1_5_288,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_wr_wpntr_count(3)
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
      Q => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_empty_fwft_fb_284
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count(3),
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
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
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count1,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(1)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count2,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(2)
    );
  BU2_U0_grf_rf_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => BU2_U0_grf_rf_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT21_270,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(2),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_Mcount_count3,
      Q => BU2_U0_grf_rf_gl0_rd_rpntr_count(3)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(0)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(1)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(2)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gl0_wr_wpntr_count_d2(3),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc(3)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(0)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(1)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(2)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gl0_rd_rpntr_count_d1(3),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc(3)
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
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(0)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(1)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(2)
    );
  BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => BU2_U0_grf_rf_rstblk_rd_rst_reg(1),
      D => BU2_U0_grf_rf_gcx_clkx_wr_pntr_gc_asreg_d1(3),
      Q => BU2_U0_grf_rf_gcx_clkx_wr_pntr_bin(3)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0002,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(0)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0001,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(1)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_xor0000,
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(2)
    );
  BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => BU2_U0_grf_rf_rstblk_wr_rst_reg(0),
      D => BU2_U0_grf_rf_gcx_clkx_rd_pntr_gc_asreg_d1(3),
      Q => BU2_U0_grf_rf_gcx_clkx_rd_pntr_bin(3)
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
      CE => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_213,
      D => BU2_rd_data_count(0),
      PRE => rst,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_217
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_rstblk_wr_rst_asreg_218,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_215
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => wr_clk,
      CE => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_215,
      D => BU2_rd_data_count(0),
      PRE => rst,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_218
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_rstblk_rd_rst_asreg_217,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_213
    );
  BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_215,
      Q => BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_216
    );
  BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_213,
      Q => BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_214
    );
  BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_i_or0000,
      PRE => BU2_U0_grf_rf_rstblk_wr_rst_reg(1),
      Q => BU2_U0_grf_rf_gl0_wr_gwas_wsts_ram_full_fb_i_212
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
      Q => BU2_U0_grf_rf_gl0_rd_gras_rsts_ram_empty_fb_i_209
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_rd_data_count(0)
    );

end STRUCTURE;

-- synthesis translate_on
