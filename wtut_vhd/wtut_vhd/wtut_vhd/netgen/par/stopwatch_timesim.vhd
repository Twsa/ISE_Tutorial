--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: stopwatch_timesim.vhd
-- /___/   /\     Timestamp: Fri Jul 21 17:36:54 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf stopwatch.pcf -rpw 100 -tpw 0 -ar Structure -tm stopwatch -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim stopwatch.ncd stopwatch_timesim.vhd 
-- Device	: 3s700afg484-4 (PRODUCTION 1.42 2013-10-13)
-- Input file	: stopwatch.ncd
-- Output file	: D:\GitHub\ISE_Tutorial\wtut_vhd\wtut_vhd\wtut_vhd\netgen\par\stopwatch_timesim.vhd
-- # of Entities	: 1
-- Design Name	: stopwatch
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity stopwatch is
  port (
    lap_load : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    lcd_e : out STD_LOGIC; 
    strtstop : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    mode : in STD_LOGIC := 'X'; 
    lcd_rs : out STD_LOGIC; 
    lcd_rw : out STD_LOGIC; 
    sf_d : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end stopwatch;

architecture Structure of stopwatch is
  signal lcd_cntrl_inst_control_cmp_le0001 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd13_2841 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd9_2842 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd15_2843 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd7_2847 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd17_2848 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd3_2851 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd21_2852 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd27_2856 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd23_2857 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd31_2860 : STD_LOGIC; 
  signal lcd_cntrl_inst_N8_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd1_2862 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_ge0000 : STD_LOGIC; 
  signal clk_26214k : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_1_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_3_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_5_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_7_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_9_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_11_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_13_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_15_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_17_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_19_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_21_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_23_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_25_Q : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_27_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_or0000_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_1_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_3_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_5_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_7_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_9_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_11_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_13_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_15_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_17_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_19_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_21_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_23_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_25_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_27_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0000 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_2992 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd18_2995 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd20_2997 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd14_3000 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_3001 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd34_3005 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd26_3006 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd12_3010 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_3011 : STD_LOGIC; 
  signal lcd_cntrl_inst_N13_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd40_3013 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd36_3014 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd37_3015 : STD_LOGIC; 
  signal lcd_cntrl_inst_N16_0 : STD_LOGIC; 
  signal reset_IBUF_0 : STD_LOGIC; 
  signal Inst_dcm1_CLKFX_BUF : STD_LOGIC; 
  signal CLKFB_IN : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_ML_NEW_OUT_0 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_ML_NEW_I1 : STD_LOGIC; 
  signal locked : STD_LOGIC; 
  signal Inst_dcm1_CLK0_BUF : STD_LOGIC; 
  signal clk_divider_div_262144_3038 : STD_LOGIC; 
  signal clk_100 : STD_LOGIC; 
  signal strtstop_debounced : STD_LOGIC; 
  signal timer_state_state_reset_0 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd9_3042 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_3043 : STD_LOGIC; 
  signal ll_debounced : STD_LOGIC; 
  signal timer_state_next_clken0_0 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd7_3046 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd1_3047 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_3048 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd10_3049 : STD_LOGIC; 
  signal timer_state_clken_3050 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd12_3051 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd8_3052 : STD_LOGIC; 
  signal mode_debounced : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd5_3054 : STD_LOGIC; 
  signal timer_inst_ones_cnt_not0002_0 : STD_LOGIC; 
  signal timer_state_rst_3056 : STD_LOGIC; 
  signal timer_inst_tens_cnt_and0000 : STD_LOGIC; 
  signal timer_inst_tens_cnt_and0001_0 : STD_LOGIC; 
  signal timer_inst_tc_1_cmp_eq0000 : STD_LOGIC; 
  signal N65_0 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal timer_inst_tc_3_cmp_eq0000 : STD_LOGIC; 
  signal timer_inst_tc_2_cmp_eq0000 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd38_3068 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd32_3069 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_15 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_3071 : STD_LOGIC; 
  signal lcd_cntrl_inst_mode_state_3073 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq0001_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux00002_0 : STD_LOGIC; 
  signal N162_0 : STD_LOGIC; 
  signal timer_inst_tc_1 : STD_LOGIC; 
  signal timer_inst_N5_0 : STD_LOGIC; 
  signal mode_control_0 : STD_LOGIC; 
  signal N147_0 : STD_LOGIC; 
  signal timer_inst_tc_1_cmp_eq0001 : STD_LOGIC; 
  signal N146_0 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_7_34 : STD_LOGIC; 
  signal timer_inst_tc_4_cmp_eq0000 : STD_LOGIC; 
  signal timer_inst_tc_3_cmp_eq0001 : STD_LOGIC; 
  signal timer_inst_tc_4_cmp_eq0001 : STD_LOGIC; 
  signal timer_inst_tc_2_cmp_eq0001 : STD_LOGIC; 
  signal timer_inst_N3 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_14_11 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd8_3091 : STD_LOGIC; 
  signal lcd_cntrl_inst_N12_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd10_3093 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd29_3094 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd30_3095 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd43_3096 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_3097 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_3098 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd42_3099 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_3100 : STD_LOGIC; 
  signal N113_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_8_19 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and0001 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_18_1_0 : STD_LOGIC; 
  signal timer_inst_tc_5_cmp_eq0001 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and0000_0 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_19_4_0 : STD_LOGIC; 
  signal timer_inst_Maddsub_ones_cnt_share0000_lut_1_1_O : STD_LOGIC; 
  signal N82_0 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal N86_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_N9_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000111_SW0_O : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd39_3115 : STD_LOGIC; 
  signal lcd_cntrl_inst_N7_0 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal timer_inst_enable1_SW1_O : STD_LOGIC; 
  signal timer_inst_tc_5_cmp_eq0000 : STD_LOGIC; 
  signal N104_0 : STD_LOGIC; 
  signal timer_inst_Maddsub_hundredths_cnt_share0000_lut_2_0 : STD_LOGIC; 
  signal timer_inst_Maddsub_hundredths_cnt_share0000_cy_1_0 : STD_LOGIC; 
  signal timer_inst_N11 : STD_LOGIC; 
  signal timer_inst_N27 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000111112_O : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000111117_0 : STD_LOGIC; 
  signal N176_0 : STD_LOGIC; 
  signal N88_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_10_1_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_10_40_SW0_O : STD_LOGIC; 
  signal timer_inst_Maddsub_ones_cnt_share0000_lut_2_0 : STD_LOGIC; 
  signal timer_inst_Maddsub_ones_cnt_share0000_cy_1_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_11_11_SW2_O : STD_LOGIC; 
  signal timer_inst_N6_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_11_5_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_11_37_O : STD_LOGIC; 
  signal N159_0 : STD_LOGIC; 
  signal N160_0 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and000011_SW2_O : STD_LOGIC; 
  signal timer_inst_Maddsub_mins_cnt_share0000_cy_1_0 : STD_LOGIC; 
  signal N153_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_N4 : STD_LOGIC; 
  signal lcd_cntrl_inst_N6 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd47_3148 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000114_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000119_0 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and000011_SW3_O : STD_LOGIC; 
  signal timer_inst_Maddsub_mins_cnt_share0000_lut_1_0 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and000011_SW1_O : STD_LOGIC; 
  signal timer_inst_Maddsub_mins_cnt_share0000_lut_2_0 : STD_LOGIC; 
  signal N116_0 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_5_11_SW1_O : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_4_25_0 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_4_8_O : STD_LOGIC; 
  signal timer_inst_tc_1_and0001_0 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_5_17_O_0 : STD_LOGIC; 
  signal N127_0 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_7_8_O : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_13_18_0 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_13_1_O : STD_LOGIC; 
  signal N49_0 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_13_11_SW1_O : STD_LOGIC; 
  signal N155_0 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_14_5_O : STD_LOGIC; 
  signal N70_0 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_15_1_O : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_15_33_0 : STD_LOGIC; 
  signal N123_0 : STD_LOGIC; 
  signal N184_0 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_mux0005_3_32_O : STD_LOGIC; 
  signal N178_0 : STD_LOGIC; 
  signal timer_inst_N14_0 : STD_LOGIC; 
  signal N180_0 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_mux0005_3_110_SW0_O : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_16_19_0 : STD_LOGIC; 
  signal N60_0 : STD_LOGIC; 
  signal timer_inst_N4_0 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_16_4_O : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_17_1_0 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_17_40_SW0_O : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_18_40_SW0_O : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_19_37_SW0_O : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_19_37_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_and0002 : STD_LOGIC; 
  signal timer_inst_N24 : STD_LOGIC; 
  signal N114_0 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_9_1_O : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd5_3193 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd11_3194 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd28_3195 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_1_SW0_O : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd35_3197 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd19_3198 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd25_3199 : STD_LOGIC; 
  signal lcd_cntrl_inst_N0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal lcd_cntrl_inst_next_mode_state_3203 : STD_LOGIC; 
  signal N166_0 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd6_3205 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd11_3206 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_In21_0 : STD_LOGIC; 
  signal lap_load_debounce_Q1_3208 : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd1_3209 : STD_LOGIC; 
  signal lap_load_debounce_Q3_3210 : STD_LOGIC; 
  signal lap_load_debounce_Q2_3211 : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd2_3212 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_3213 : STD_LOGIC; 
  signal lcd_cntrl_inst_N111 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_or0000_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd44_3216 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq0000 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd46_3219 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_0_25_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux000012_3221 : STD_LOGIC; 
  signal mode_debounce_Q1_3222 : STD_LOGIC; 
  signal mode_debounce_Q2_3223 : STD_LOGIC; 
  signal mode_debounce_Q3_3224 : STD_LOGIC; 
  signal N168_0 : STD_LOGIC; 
  signal N143_0 : STD_LOGIC; 
  signal N144_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_25_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_N71_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_103_3230 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_152_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_2_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_8_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_32_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_80_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_201_3236 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_250_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_123_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_220_3241 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_221_0 : STD_LOGIC; 
  signal strtstop_debounce_Q1_3243 : STD_LOGIC; 
  signal strtstop_debounce_Q2_3244 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_228_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_117_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_136_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_142_3250 : STD_LOGIC; 
  signal strtstop_debounce_Q3_3253 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_106_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_61_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_242_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_28_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_261_3260 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_239_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_253_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_120_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_200_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_181_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_242_3270 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_80_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_172_3272 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_In10_0 : STD_LOGIC; 
  signal clk_divider_div_temp_3275 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_0_12_3276 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_3277 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd16_3280 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd24_3281 : STD_LOGIC; 
  signal lcd_cntrl_inst_N112 : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal N140_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd45_3285 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_5_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_66_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_27_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd22_3289 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_41_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_57_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_13_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_47_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_73_3294 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_52_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_12_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_22_3297 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_23_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_50_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_45_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_68_3301 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_70_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_85_3303 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_66_3304 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000110_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000010_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000113_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000013_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000024_0 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000124_3310 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_8_5_3311 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_In10_3312 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYINIT_3341 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELF_3335 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_2_3334 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_BXINV_3333 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYMUXG_3332 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_2 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_LOGIC_ZERO_3330 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELG_3321 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_1_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ONE_3403 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_7_rt_3394 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELF_3393 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXFAST_3392 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYAND_3391 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_FASTCARRY_3390 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXG2_3389 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXF2_3388 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ZERO_3387 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELG_3380 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_5_1_3379 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ONE_3465 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_2_3457 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELF_3456 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXFAST_3455 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYAND_3454 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_FASTCARRY_3453 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXG2_3452 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXF2_3451 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ZERO_3450 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELG_3442 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_9_1_3441 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ONE_3496 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_10_1_3488 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELF_3487 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXFAST_3486 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYAND_3485 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_FASTCARRY_3484 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXG2_3483 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXF2_3482 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ZERO_3481 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELG_3475 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_11_1_3474 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ONE_3372 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_5_rt_3363 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELF_3362 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXFAST_3361 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYAND_3360 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_FASTCARRY_3359 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXG2_3358 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXF2_3357 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ZERO_3356 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELG_3347 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_3_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ONE_3434 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_11_rt_3425 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELF_3424 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXFAST_3423 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYAND_3422 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_FASTCARRY_3421 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXG2_3420 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXF2_3419 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ZERO_3418 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELG_3409 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_2 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ZERO_3660 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYINIT_3659 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELF_3651 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_0_Q_3650 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_BXINV_3649 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYMUXG_3648 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ONE_3646 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELG_3637 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_1_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_12_1_3521 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELF_3520 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXFAST_3519 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYAND_3518 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_FASTCARRY_3517 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXG2_3516 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXF2_3515 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_LOGIC_ZERO_3514 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELG_3508 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_13_1_3507 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_2_Q_3595 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELF_3594 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXFAST_3593 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYAND_3592 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_FASTCARRY_3591 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXG2_3590 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXF2_3589 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_LOGIC_ONE_3588 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELG_3582 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_3_Q_3581 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0001_CYINIT_3541 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0001_CY0F_3540 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0001_CYSELF_3531 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_14_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYINIT_3570 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELF_3562 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_0_Q_3561 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_BXINV_3560 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYMUXG_3559 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_0_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_LOGIC_ONE_3557 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELG_3551 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_1_Q_3550 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_4_Q_3625 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELF_3624 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXFAST_3623 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYAND_3622 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_FASTCARRY_3621 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXG2_3620 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXF2_3619 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_LOGIC_ONE_3618 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELG_3612 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_5_Q_3611 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ZERO_3753 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_6_Q_3745 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELF_3744 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXFAST_3743 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYAND_3742 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_FASTCARRY_3741 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXG2_3740 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXF2_3739 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ONE_3738 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELG_3729 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_7_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ZERO_3784 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_19_rt_3775 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELF_3774 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXFAST_3773 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYAND_3772 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_FASTCARRY_3771 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXG2_3770 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXF2_3769 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ONE_3768 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELG_3762 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_9_Q_3761 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ZERO_3691 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_2_Q_3683 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELF_3682 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXFAST_3681 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYAND_3680 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_FASTCARRY_3679 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXG2_3678 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXF2_3677 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ONE_3676 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELG_3669 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_3_Q_3668 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ZERO_3722 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_4_Q_3715 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELF_3714 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXFAST_3713 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYAND_3712 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_FASTCARRY_3711 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXG2_3710 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXF2_3709 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ONE_3708 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELG_3699 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_5_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_10_Q_3809 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELF_3808 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXFAST_3807 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYAND_3806 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_FASTCARRY_3805 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXG2_3804 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXF2_3803 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_LOGIC_ONE_3802 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELG_3795 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_11_Q_3794 : STD_LOGIC; 
  signal clk_divider_cnt_8_DXMUX_4083 : STD_LOGIC; 
  signal clk_divider_cnt_8_XORF_4081 : STD_LOGIC; 
  signal clk_divider_cnt_8_CYINIT_4080 : STD_LOGIC; 
  signal clk_divider_cnt_8_F : STD_LOGIC; 
  signal clk_divider_cnt_8_DYMUX_4066 : STD_LOGIC; 
  signal clk_divider_cnt_8_XORG_4064 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_8_Q : STD_LOGIC; 
  signal clk_divider_cnt_8_CYSELF_4062 : STD_LOGIC; 
  signal clk_divider_cnt_8_CYMUXFAST_4061 : STD_LOGIC; 
  signal clk_divider_cnt_8_CYAND_4060 : STD_LOGIC; 
  signal clk_divider_cnt_8_FASTCARRY_4059 : STD_LOGIC; 
  signal clk_divider_cnt_8_CYMUXG2_4058 : STD_LOGIC; 
  signal clk_divider_cnt_8_CYMUXF2_4057 : STD_LOGIC; 
  signal clk_divider_cnt_8_LOGIC_ZERO_4056 : STD_LOGIC; 
  signal clk_divider_cnt_8_CYSELG_4047 : STD_LOGIC; 
  signal clk_divider_cnt_8_G : STD_LOGIC; 
  signal clk_divider_cnt_8_SRINV_4045 : STD_LOGIC; 
  signal clk_divider_cnt_8_CLKINV_4044 : STD_LOGIC; 
  signal clk_divider_cnt_0_DXMUX_3875 : STD_LOGIC; 
  signal clk_divider_cnt_0_XORF_3873 : STD_LOGIC; 
  signal clk_divider_cnt_0_LOGIC_ONE_3872 : STD_LOGIC; 
  signal clk_divider_cnt_0_CYINIT_3871 : STD_LOGIC; 
  signal clk_divider_cnt_0_CYSELF_3862 : STD_LOGIC; 
  signal clk_divider_cnt_0_BXINV_3860 : STD_LOGIC; 
  signal clk_divider_cnt_0_DYMUX_3855 : STD_LOGIC; 
  signal clk_divider_cnt_0_XORG_3853 : STD_LOGIC; 
  signal clk_divider_cnt_0_CYMUXG_3852 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_0_Q : STD_LOGIC; 
  signal clk_divider_cnt_0_LOGIC_ZERO_3850 : STD_LOGIC; 
  signal clk_divider_cnt_0_CYSELG_3841 : STD_LOGIC; 
  signal clk_divider_cnt_0_G : STD_LOGIC; 
  signal clk_divider_cnt_0_SRINV_3839 : STD_LOGIC; 
  signal clk_divider_cnt_0_CLKINV_3838 : STD_LOGIC; 
  signal clk_divider_cnt_2_DXMUX_3927 : STD_LOGIC; 
  signal clk_divider_cnt_2_XORF_3925 : STD_LOGIC; 
  signal clk_divider_cnt_2_CYINIT_3924 : STD_LOGIC; 
  signal clk_divider_cnt_2_F : STD_LOGIC; 
  signal clk_divider_cnt_2_DYMUX_3910 : STD_LOGIC; 
  signal clk_divider_cnt_2_XORG_3908 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_2_Q : STD_LOGIC; 
  signal clk_divider_cnt_2_CYSELF_3906 : STD_LOGIC; 
  signal clk_divider_cnt_2_CYMUXFAST_3905 : STD_LOGIC; 
  signal clk_divider_cnt_2_CYAND_3904 : STD_LOGIC; 
  signal clk_divider_cnt_2_FASTCARRY_3903 : STD_LOGIC; 
  signal clk_divider_cnt_2_CYMUXG2_3902 : STD_LOGIC; 
  signal clk_divider_cnt_2_CYMUXF2_3901 : STD_LOGIC; 
  signal clk_divider_cnt_2_LOGIC_ZERO_3900 : STD_LOGIC; 
  signal clk_divider_cnt_2_CYSELG_3891 : STD_LOGIC; 
  signal clk_divider_cnt_2_G : STD_LOGIC; 
  signal clk_divider_cnt_2_SRINV_3889 : STD_LOGIC; 
  signal clk_divider_cnt_2_CLKINV_3888 : STD_LOGIC; 
  signal clk_divider_cnt_6_DXMUX_4031 : STD_LOGIC; 
  signal clk_divider_cnt_6_XORF_4029 : STD_LOGIC; 
  signal clk_divider_cnt_6_CYINIT_4028 : STD_LOGIC; 
  signal clk_divider_cnt_6_F : STD_LOGIC; 
  signal clk_divider_cnt_6_DYMUX_4014 : STD_LOGIC; 
  signal clk_divider_cnt_6_XORG_4012 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_6_Q : STD_LOGIC; 
  signal clk_divider_cnt_6_CYSELF_4010 : STD_LOGIC; 
  signal clk_divider_cnt_6_CYMUXFAST_4009 : STD_LOGIC; 
  signal clk_divider_cnt_6_CYAND_4008 : STD_LOGIC; 
  signal clk_divider_cnt_6_FASTCARRY_4007 : STD_LOGIC; 
  signal clk_divider_cnt_6_CYMUXG2_4006 : STD_LOGIC; 
  signal clk_divider_cnt_6_CYMUXF2_4005 : STD_LOGIC; 
  signal clk_divider_cnt_6_LOGIC_ZERO_4004 : STD_LOGIC; 
  signal clk_divider_cnt_6_CYSELG_3995 : STD_LOGIC; 
  signal clk_divider_cnt_6_G : STD_LOGIC; 
  signal clk_divider_cnt_6_SRINV_3993 : STD_LOGIC; 
  signal clk_divider_cnt_6_CLKINV_3992 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_ge0000_LOGIC_ZERO_3829 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_ge0000_CYINIT_3828 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_ge0000_CYSELF_3819 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_12_Q : STD_LOGIC; 
  signal clk_divider_cnt_4_DXMUX_3979 : STD_LOGIC; 
  signal clk_divider_cnt_4_XORF_3977 : STD_LOGIC; 
  signal clk_divider_cnt_4_CYINIT_3976 : STD_LOGIC; 
  signal clk_divider_cnt_4_F : STD_LOGIC; 
  signal clk_divider_cnt_4_DYMUX_3962 : STD_LOGIC; 
  signal clk_divider_cnt_4_XORG_3960 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_4_Q : STD_LOGIC; 
  signal clk_divider_cnt_4_CYSELF_3958 : STD_LOGIC; 
  signal clk_divider_cnt_4_CYMUXFAST_3957 : STD_LOGIC; 
  signal clk_divider_cnt_4_CYAND_3956 : STD_LOGIC; 
  signal clk_divider_cnt_4_FASTCARRY_3955 : STD_LOGIC; 
  signal clk_divider_cnt_4_CYMUXG2_3954 : STD_LOGIC; 
  signal clk_divider_cnt_4_CYMUXF2_3953 : STD_LOGIC; 
  signal clk_divider_cnt_4_LOGIC_ZERO_3952 : STD_LOGIC; 
  signal clk_divider_cnt_4_CYSELG_3943 : STD_LOGIC; 
  signal clk_divider_cnt_4_G : STD_LOGIC; 
  signal clk_divider_cnt_4_SRINV_3941 : STD_LOGIC; 
  signal clk_divider_cnt_4_CLKINV_3940 : STD_LOGIC; 
  signal clk_divider_cnt_10_DXMUX_4135 : STD_LOGIC; 
  signal clk_divider_cnt_10_XORF_4133 : STD_LOGIC; 
  signal clk_divider_cnt_10_CYINIT_4132 : STD_LOGIC; 
  signal clk_divider_cnt_10_F : STD_LOGIC; 
  signal clk_divider_cnt_10_DYMUX_4118 : STD_LOGIC; 
  signal clk_divider_cnt_10_XORG_4116 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_10_Q : STD_LOGIC; 
  signal clk_divider_cnt_10_CYSELF_4114 : STD_LOGIC; 
  signal clk_divider_cnt_10_CYMUXFAST_4113 : STD_LOGIC; 
  signal clk_divider_cnt_10_CYAND_4112 : STD_LOGIC; 
  signal clk_divider_cnt_10_FASTCARRY_4111 : STD_LOGIC; 
  signal clk_divider_cnt_10_CYMUXG2_4110 : STD_LOGIC; 
  signal clk_divider_cnt_10_CYMUXF2_4109 : STD_LOGIC; 
  signal clk_divider_cnt_10_LOGIC_ZERO_4108 : STD_LOGIC; 
  signal clk_divider_cnt_10_CYSELG_4099 : STD_LOGIC; 
  signal clk_divider_cnt_10_G : STD_LOGIC; 
  signal clk_divider_cnt_10_SRINV_4097 : STD_LOGIC; 
  signal clk_divider_cnt_10_CLKINV_4096 : STD_LOGIC; 
  signal clk_divider_cnt_18_DXMUX_4343 : STD_LOGIC; 
  signal clk_divider_cnt_18_XORF_4341 : STD_LOGIC; 
  signal clk_divider_cnt_18_CYINIT_4340 : STD_LOGIC; 
  signal clk_divider_cnt_18_F : STD_LOGIC; 
  signal clk_divider_cnt_18_DYMUX_4326 : STD_LOGIC; 
  signal clk_divider_cnt_18_XORG_4324 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_18_Q : STD_LOGIC; 
  signal clk_divider_cnt_18_CYSELF_4322 : STD_LOGIC; 
  signal clk_divider_cnt_18_CYMUXFAST_4321 : STD_LOGIC; 
  signal clk_divider_cnt_18_CYAND_4320 : STD_LOGIC; 
  signal clk_divider_cnt_18_FASTCARRY_4319 : STD_LOGIC; 
  signal clk_divider_cnt_18_CYMUXG2_4318 : STD_LOGIC; 
  signal clk_divider_cnt_18_CYMUXF2_4317 : STD_LOGIC; 
  signal clk_divider_cnt_18_LOGIC_ZERO_4316 : STD_LOGIC; 
  signal clk_divider_cnt_18_CYSELG_4307 : STD_LOGIC; 
  signal clk_divider_cnt_18_G : STD_LOGIC; 
  signal clk_divider_cnt_18_SRINV_4305 : STD_LOGIC; 
  signal clk_divider_cnt_18_CLKINV_4304 : STD_LOGIC; 
  signal clk_divider_cnt_16_DXMUX_4291 : STD_LOGIC; 
  signal clk_divider_cnt_16_XORF_4289 : STD_LOGIC; 
  signal clk_divider_cnt_16_CYINIT_4288 : STD_LOGIC; 
  signal clk_divider_cnt_16_F : STD_LOGIC; 
  signal clk_divider_cnt_16_DYMUX_4274 : STD_LOGIC; 
  signal clk_divider_cnt_16_XORG_4272 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_16_Q : STD_LOGIC; 
  signal clk_divider_cnt_16_CYSELF_4270 : STD_LOGIC; 
  signal clk_divider_cnt_16_CYMUXFAST_4269 : STD_LOGIC; 
  signal clk_divider_cnt_16_CYAND_4268 : STD_LOGIC; 
  signal clk_divider_cnt_16_FASTCARRY_4267 : STD_LOGIC; 
  signal clk_divider_cnt_16_CYMUXG2_4266 : STD_LOGIC; 
  signal clk_divider_cnt_16_CYMUXF2_4265 : STD_LOGIC; 
  signal clk_divider_cnt_16_LOGIC_ZERO_4264 : STD_LOGIC; 
  signal clk_divider_cnt_16_CYSELG_4255 : STD_LOGIC; 
  signal clk_divider_cnt_16_G : STD_LOGIC; 
  signal clk_divider_cnt_16_SRINV_4253 : STD_LOGIC; 
  signal clk_divider_cnt_16_CLKINV_4252 : STD_LOGIC; 
  signal clk_divider_cnt_20_DXMUX_4395 : STD_LOGIC; 
  signal clk_divider_cnt_20_XORF_4393 : STD_LOGIC; 
  signal clk_divider_cnt_20_CYINIT_4392 : STD_LOGIC; 
  signal clk_divider_cnt_20_F : STD_LOGIC; 
  signal clk_divider_cnt_20_DYMUX_4378 : STD_LOGIC; 
  signal clk_divider_cnt_20_XORG_4376 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_20_Q : STD_LOGIC; 
  signal clk_divider_cnt_20_CYSELF_4374 : STD_LOGIC; 
  signal clk_divider_cnt_20_CYMUXFAST_4373 : STD_LOGIC; 
  signal clk_divider_cnt_20_CYAND_4372 : STD_LOGIC; 
  signal clk_divider_cnt_20_FASTCARRY_4371 : STD_LOGIC; 
  signal clk_divider_cnt_20_CYMUXG2_4370 : STD_LOGIC; 
  signal clk_divider_cnt_20_CYMUXF2_4369 : STD_LOGIC; 
  signal clk_divider_cnt_20_LOGIC_ZERO_4368 : STD_LOGIC; 
  signal clk_divider_cnt_20_CYSELG_4359 : STD_LOGIC; 
  signal clk_divider_cnt_20_G : STD_LOGIC; 
  signal clk_divider_cnt_20_SRINV_4357 : STD_LOGIC; 
  signal clk_divider_cnt_20_CLKINV_4356 : STD_LOGIC; 
  signal clk_divider_cnt_22_DXMUX_4447 : STD_LOGIC; 
  signal clk_divider_cnt_22_XORF_4445 : STD_LOGIC; 
  signal clk_divider_cnt_22_CYINIT_4444 : STD_LOGIC; 
  signal clk_divider_cnt_22_F : STD_LOGIC; 
  signal clk_divider_cnt_22_DYMUX_4430 : STD_LOGIC; 
  signal clk_divider_cnt_22_XORG_4428 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_22_Q : STD_LOGIC; 
  signal clk_divider_cnt_22_CYSELF_4426 : STD_LOGIC; 
  signal clk_divider_cnt_22_CYMUXFAST_4425 : STD_LOGIC; 
  signal clk_divider_cnt_22_CYAND_4424 : STD_LOGIC; 
  signal clk_divider_cnt_22_FASTCARRY_4423 : STD_LOGIC; 
  signal clk_divider_cnt_22_CYMUXG2_4422 : STD_LOGIC; 
  signal clk_divider_cnt_22_CYMUXF2_4421 : STD_LOGIC; 
  signal clk_divider_cnt_22_LOGIC_ZERO_4420 : STD_LOGIC; 
  signal clk_divider_cnt_22_CYSELG_4411 : STD_LOGIC; 
  signal clk_divider_cnt_22_G : STD_LOGIC; 
  signal clk_divider_cnt_22_SRINV_4409 : STD_LOGIC; 
  signal clk_divider_cnt_22_CLKINV_4408 : STD_LOGIC; 
  signal clk_divider_cnt_12_DXMUX_4187 : STD_LOGIC; 
  signal clk_divider_cnt_12_XORF_4185 : STD_LOGIC; 
  signal clk_divider_cnt_12_CYINIT_4184 : STD_LOGIC; 
  signal clk_divider_cnt_12_F : STD_LOGIC; 
  signal clk_divider_cnt_12_DYMUX_4170 : STD_LOGIC; 
  signal clk_divider_cnt_12_XORG_4168 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_12_Q : STD_LOGIC; 
  signal clk_divider_cnt_12_CYSELF_4166 : STD_LOGIC; 
  signal clk_divider_cnt_12_CYMUXFAST_4165 : STD_LOGIC; 
  signal clk_divider_cnt_12_CYAND_4164 : STD_LOGIC; 
  signal clk_divider_cnt_12_FASTCARRY_4163 : STD_LOGIC; 
  signal clk_divider_cnt_12_CYMUXG2_4162 : STD_LOGIC; 
  signal clk_divider_cnt_12_CYMUXF2_4161 : STD_LOGIC; 
  signal clk_divider_cnt_12_LOGIC_ZERO_4160 : STD_LOGIC; 
  signal clk_divider_cnt_12_CYSELG_4151 : STD_LOGIC; 
  signal clk_divider_cnt_12_G : STD_LOGIC; 
  signal clk_divider_cnt_12_SRINV_4149 : STD_LOGIC; 
  signal clk_divider_cnt_12_CLKINV_4148 : STD_LOGIC; 
  signal clk_divider_cnt_14_DXMUX_4239 : STD_LOGIC; 
  signal clk_divider_cnt_14_XORF_4237 : STD_LOGIC; 
  signal clk_divider_cnt_14_CYINIT_4236 : STD_LOGIC; 
  signal clk_divider_cnt_14_F : STD_LOGIC; 
  signal clk_divider_cnt_14_DYMUX_4222 : STD_LOGIC; 
  signal clk_divider_cnt_14_XORG_4220 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_14_Q : STD_LOGIC; 
  signal clk_divider_cnt_14_CYSELF_4218 : STD_LOGIC; 
  signal clk_divider_cnt_14_CYMUXFAST_4217 : STD_LOGIC; 
  signal clk_divider_cnt_14_CYAND_4216 : STD_LOGIC; 
  signal clk_divider_cnt_14_FASTCARRY_4215 : STD_LOGIC; 
  signal clk_divider_cnt_14_CYMUXG2_4214 : STD_LOGIC; 
  signal clk_divider_cnt_14_CYMUXF2_4213 : STD_LOGIC; 
  signal clk_divider_cnt_14_LOGIC_ZERO_4212 : STD_LOGIC; 
  signal clk_divider_cnt_14_CYSELG_4203 : STD_LOGIC; 
  signal clk_divider_cnt_14_G : STD_LOGIC; 
  signal clk_divider_cnt_14_SRINV_4201 : STD_LOGIC; 
  signal clk_divider_cnt_14_CLKINV_4200 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_DXMUX_4750 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_XORF_4748 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYINIT_4747 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_DYMUX_4733 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_XORG_4731 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_2_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYSELF_4729 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYMUXFAST_4728 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYAND_4727 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_FASTCARRY_4726 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYMUXG2_4725 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYMUXF2_4724 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_LOGIC_ZERO_4723 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CYSELG_4714 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_SRINV_4712 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_2_CLKINV_4711 : STD_LOGIC; 
  signal clk_divider_cnt_26_DXMUX_4551 : STD_LOGIC; 
  signal clk_divider_cnt_26_XORF_4549 : STD_LOGIC; 
  signal clk_divider_cnt_26_CYINIT_4548 : STD_LOGIC; 
  signal clk_divider_cnt_26_F : STD_LOGIC; 
  signal clk_divider_cnt_26_DYMUX_4534 : STD_LOGIC; 
  signal clk_divider_cnt_26_XORG_4532 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_26_Q : STD_LOGIC; 
  signal clk_divider_cnt_26_CYSELF_4530 : STD_LOGIC; 
  signal clk_divider_cnt_26_CYMUXFAST_4529 : STD_LOGIC; 
  signal clk_divider_cnt_26_CYAND_4528 : STD_LOGIC; 
  signal clk_divider_cnt_26_FASTCARRY_4527 : STD_LOGIC; 
  signal clk_divider_cnt_26_CYMUXG2_4526 : STD_LOGIC; 
  signal clk_divider_cnt_26_CYMUXF2_4525 : STD_LOGIC; 
  signal clk_divider_cnt_26_LOGIC_ZERO_4524 : STD_LOGIC; 
  signal clk_divider_cnt_26_CYSELG_4515 : STD_LOGIC; 
  signal clk_divider_cnt_26_G : STD_LOGIC; 
  signal clk_divider_cnt_26_SRINV_4513 : STD_LOGIC; 
  signal clk_divider_cnt_26_CLKINV_4512 : STD_LOGIC; 
  signal clk_divider_cnt_30_DXMUX_4648 : STD_LOGIC; 
  signal clk_divider_cnt_30_XORF_4646 : STD_LOGIC; 
  signal clk_divider_cnt_30_LOGIC_ZERO_4645 : STD_LOGIC; 
  signal clk_divider_cnt_30_CYINIT_4644 : STD_LOGIC; 
  signal clk_divider_cnt_30_CYSELF_4635 : STD_LOGIC; 
  signal clk_divider_cnt_30_F : STD_LOGIC; 
  signal clk_divider_cnt_30_DYMUX_4629 : STD_LOGIC; 
  signal clk_divider_cnt_30_XORG_4627 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_30_Q : STD_LOGIC; 
  signal clk_divider_cnt_31_rt_4624 : STD_LOGIC; 
  signal clk_divider_cnt_30_SRINV_4616 : STD_LOGIC; 
  signal clk_divider_cnt_30_CLKINV_4615 : STD_LOGIC; 
  signal clk_divider_cnt_24_DXMUX_4499 : STD_LOGIC; 
  signal clk_divider_cnt_24_XORF_4497 : STD_LOGIC; 
  signal clk_divider_cnt_24_CYINIT_4496 : STD_LOGIC; 
  signal clk_divider_cnt_24_F : STD_LOGIC; 
  signal clk_divider_cnt_24_DYMUX_4482 : STD_LOGIC; 
  signal clk_divider_cnt_24_XORG_4480 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_24_Q : STD_LOGIC; 
  signal clk_divider_cnt_24_CYSELF_4478 : STD_LOGIC; 
  signal clk_divider_cnt_24_CYMUXFAST_4477 : STD_LOGIC; 
  signal clk_divider_cnt_24_CYAND_4476 : STD_LOGIC; 
  signal clk_divider_cnt_24_FASTCARRY_4475 : STD_LOGIC; 
  signal clk_divider_cnt_24_CYMUXG2_4474 : STD_LOGIC; 
  signal clk_divider_cnt_24_CYMUXF2_4473 : STD_LOGIC; 
  signal clk_divider_cnt_24_LOGIC_ZERO_4472 : STD_LOGIC; 
  signal clk_divider_cnt_24_CYSELG_4463 : STD_LOGIC; 
  signal clk_divider_cnt_24_G : STD_LOGIC; 
  signal clk_divider_cnt_24_SRINV_4461 : STD_LOGIC; 
  signal clk_divider_cnt_24_CLKINV_4460 : STD_LOGIC; 
  signal clk_divider_cnt_28_DXMUX_4603 : STD_LOGIC; 
  signal clk_divider_cnt_28_XORF_4601 : STD_LOGIC; 
  signal clk_divider_cnt_28_CYINIT_4600 : STD_LOGIC; 
  signal clk_divider_cnt_28_F : STD_LOGIC; 
  signal clk_divider_cnt_28_DYMUX_4586 : STD_LOGIC; 
  signal clk_divider_cnt_28_XORG_4584 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_28_Q : STD_LOGIC; 
  signal clk_divider_cnt_28_CYSELF_4582 : STD_LOGIC; 
  signal clk_divider_cnt_28_CYMUXFAST_4581 : STD_LOGIC; 
  signal clk_divider_cnt_28_CYAND_4580 : STD_LOGIC; 
  signal clk_divider_cnt_28_FASTCARRY_4579 : STD_LOGIC; 
  signal clk_divider_cnt_28_CYMUXG2_4578 : STD_LOGIC; 
  signal clk_divider_cnt_28_CYMUXF2_4577 : STD_LOGIC; 
  signal clk_divider_cnt_28_LOGIC_ZERO_4576 : STD_LOGIC; 
  signal clk_divider_cnt_28_CYSELG_4567 : STD_LOGIC; 
  signal clk_divider_cnt_28_G : STD_LOGIC; 
  signal clk_divider_cnt_28_SRINV_4565 : STD_LOGIC; 
  signal clk_divider_cnt_28_CLKINV_4564 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_DXMUX_4698 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_XORF_4696 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_LOGIC_ONE_4695 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_CYINIT_4694 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_CYSELF_4685 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_BXINV_4683 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_DYMUX_4678 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_XORG_4676 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_CYMUXG_4675 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_0_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_LOGIC_ZERO_4673 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_CYSELG_4664 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_SRINV_4662 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_0_CLKINV_4661 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_DXMUX_4802 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_XORF_4800 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYINIT_4799 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_DYMUX_4785 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_XORG_4783 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_4_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYSELF_4781 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYMUXFAST_4780 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYAND_4779 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_FASTCARRY_4778 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYMUXG2_4777 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYMUXF2_4776 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_LOGIC_ZERO_4775 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CYSELG_4766 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_SRINV_4764 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_4_CLKINV_4763 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_DXMUX_4854 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_XORF_4852 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYINIT_4851 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_DYMUX_4837 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_XORG_4835 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_6_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYSELF_4833 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYMUXFAST_4832 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYAND_4831 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_FASTCARRY_4830 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYMUXG2_4829 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYMUXF2_4828 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_LOGIC_ZERO_4827 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CYSELG_4818 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_SRINV_4816 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_6_CLKINV_4815 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_DXMUX_5062 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_XORF_5060 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYINIT_5059 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_DYMUX_5045 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_XORG_5043 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_14_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYSELF_5041 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYMUXFAST_5040 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYAND_5039 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_FASTCARRY_5038 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYMUXG2_5037 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYMUXF2_5036 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_LOGIC_ZERO_5035 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CYSELG_5026 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_SRINV_5024 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_14_CLKINV_5023 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_DXMUX_4958 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_XORF_4956 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYINIT_4955 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_DYMUX_4941 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_XORG_4939 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_10_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYSELF_4937 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYMUXFAST_4936 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYAND_4935 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_FASTCARRY_4934 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYMUXG2_4933 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYMUXF2_4932 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_LOGIC_ZERO_4931 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CYSELG_4922 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_SRINV_4920 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_10_CLKINV_4919 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_DXMUX_5010 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_XORF_5008 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYINIT_5007 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_DYMUX_4993 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_XORG_4991 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_12_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYSELF_4989 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYMUXFAST_4988 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYAND_4987 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_FASTCARRY_4986 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYMUXG2_4985 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYMUXF2_4984 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_LOGIC_ZERO_4983 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CYSELG_4974 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_SRINV_4972 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_12_CLKINV_4971 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_DXMUX_5114 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_XORF_5112 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYINIT_5111 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_DYMUX_5097 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_XORG_5095 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_16_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYSELF_5093 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYMUXFAST_5092 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYAND_5091 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_FASTCARRY_5090 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYMUXG2_5089 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYMUXF2_5088 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_LOGIC_ZERO_5087 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CYSELG_5078 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_SRINV_5076 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_16_CLKINV_5075 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_DXMUX_4906 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_XORF_4904 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYINIT_4903 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_DYMUX_4889 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_XORG_4887 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_8_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYSELF_4885 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYMUXFAST_4884 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYAND_4883 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_FASTCARRY_4882 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYMUXG2_4881 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYMUXF2_4880 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_LOGIC_ZERO_4879 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CYSELG_4870 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_SRINV_4868 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_8_CLKINV_4867 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_DXMUX_5166 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_XORF_5164 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYINIT_5163 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_DYMUX_5149 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_XORG_5147 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_18_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYSELF_5145 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYMUXFAST_5144 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYAND_5143 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_FASTCARRY_5142 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYMUXG2_5141 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYMUXF2_5140 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_LOGIC_ZERO_5139 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CYSELG_5130 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_SRINV_5128 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_18_CLKINV_5127 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELF_5558 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXFAST_5557 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYAND_5556 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_FASTCARRY_5555 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXG2_5554 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXF2_5553 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_LOGIC_ZERO_5552 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELG_5546 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ZERO_5701 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_4_1_5694 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELF_5693 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXFAST_5692 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYAND_5691 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_FASTCARRY_5690 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXG2_5689 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXF2_5688 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ONE_5687 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELG_5678 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_10_rt_5677 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ZERO_5639 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYINIT_5638 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELF_5632 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_1_5631 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_BXINV_5630 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYMUXG_5629 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ONE_5627 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELG_5618 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_4_rt_5617 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELF_5588 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXFAST_5587 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYAND_5586 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_FASTCARRY_5585 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXG2_5584 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXF2_5583 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_LOGIC_ZERO_5582 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELG_5574 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYINIT_5609 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CY0F_5608 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYSELF_5599 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ZERO_5763 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_1_5755 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELF_5754 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXFAST_5753 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYAND_5752 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_FASTCARRY_5751 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXG2_5750 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXF2_5749 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ONE_5748 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELG_5740 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELF_5787 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXFAST_5786 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYAND_5785 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_FASTCARRY_5784 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXG2_5783 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXF2_5782 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_LOGIC_ZERO_5781 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELG_5775 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELF_5528 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXFAST_5527 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYAND_5526 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_FASTCARRY_5525 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXG2_5524 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXF2_5523 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_LOGIC_ZERO_5522 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELG_5516 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ZERO_5670 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_2_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELF_5660 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXFAST_5659 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYAND_5658 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_FASTCARRY_5657 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXG2_5656 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXF2_5655 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ONE_5654 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELG_5645 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_6_rt_5644 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ZERO_5732 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_6_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELF_5722 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXFAST_5721 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYAND_5720 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_FASTCARRY_5719 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXG2_5718 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXF2_5717 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ONE_5716 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELG_5708 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_1_5707 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_DXMUX_5270 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_XORF_5268 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYINIT_5267 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_DYMUX_5253 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_XORG_5251 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_22_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYSELF_5249 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYMUXFAST_5248 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYAND_5247 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_FASTCARRY_5246 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYMUXG2_5245 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYMUXF2_5244 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_LOGIC_ZERO_5243 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CYSELG_5234 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_SRINV_5232 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_22_CLKINV_5231 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_DXMUX_5426 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_XORF_5424 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYINIT_5423 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_DYMUX_5409 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_XORG_5407 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_28_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYSELF_5405 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYMUXFAST_5404 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYAND_5403 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_FASTCARRY_5402 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYMUXG2_5401 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYMUXF2_5400 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_LOGIC_ZERO_5399 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CYSELG_5390 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_SRINV_5388 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_28_CLKINV_5387 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_DXMUX_5374 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_XORF_5372 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYINIT_5371 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_DYMUX_5357 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_XORG_5355 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_26_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYSELF_5353 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYMUXFAST_5352 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYAND_5351 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_FASTCARRY_5350 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYMUXG2_5349 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYMUXF2_5348 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_LOGIC_ZERO_5347 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CYSELG_5338 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_SRINV_5336 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_26_CLKINV_5335 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_DXMUX_5218 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_XORF_5216 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYINIT_5215 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_DYMUX_5201 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_XORG_5199 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_20_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYSELF_5197 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYMUXFAST_5196 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYAND_5195 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_FASTCARRY_5194 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYMUXG2_5193 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYMUXF2_5192 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_LOGIC_ZERO_5191 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CYSELG_5182 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_SRINV_5180 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_20_CLKINV_5179 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_DXMUX_5322 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_XORF_5320 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYINIT_5319 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_DYMUX_5305 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_XORG_5303 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_24_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYSELF_5301 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYMUXFAST_5300 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYAND_5299 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_FASTCARRY_5298 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYMUXG2_5297 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYMUXF2_5296 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_LOGIC_ZERO_5295 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CYSELG_5286 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_G : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_SRINV_5284 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_24_CLKINV_5283 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYINIT_5504 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELF_5498 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_BXINV_5496 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYMUXG_5495 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_LOGIC_ZERO_5493 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELG_5487 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_DXMUX_5471 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_XORF_5469 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_LOGIC_ZERO_5468 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_CYINIT_5467 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_CYSELF_5458 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_F : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_DYMUX_5452 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_XORG_5450 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp_cy_30_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_31_rt_5447 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_SRINV_5439 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_30_CLKINV_5438 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYINIT_5958 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELF_5950 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_BXINV_5948 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYMUXG_5947 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_0_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_LOGIC_ZERO_5945 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELG_5939 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELF_6012 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXFAST_6011 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYAND_6010 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_FASTCARRY_6009 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXG2_6008 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXF2_6007 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_LOGIC_ZERO_6006 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELG_6000 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYINIT_6047 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELF_6040 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_0_Q_6039 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_BXINV_6038 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYMUXG_6037 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_0_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_LOGIC_ONE_6035 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELG_6028 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_1_Q_6027 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0000_CYINIT_5838 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0000_CY0F_5837 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_cmp_le0000_CYSELF_5828 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_LOGIC_ONE_5929 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_CYSELF_5919 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_CYMUXFAST_5918 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_CYAND_5917 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_FASTCARRY_5916 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_CYMUXG2_5915 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_CYMUXF2_5914 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_LOGIC_ZERO_5913 : STD_LOGIC; 
  signal clk_divider_cnt_cmp_ge0000_CYSELG_5904 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELF_5817 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXFAST_5816 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYAND_5815 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_FASTCARRY_5814 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXG2_5813 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXF2_5812 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_LOGIC_ZERO_5811 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELG_5802 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELF_5892 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXFAST_5891 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYAND_5890 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_FASTCARRY_5889 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXG2_5888 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXF2_5887 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_LOGIC_ONE_5886 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELG_5880 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ZERO_5868 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYINIT_5867 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELF_5858 : STD_LOGIC; 
  signal clk_divider_cnt_17_rt : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_BXINV_5856 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYMUXG_5855 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ONE_5853 : STD_LOGIC; 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELG_5847 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELF_5982 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXFAST_5981 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYAND_5980 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_FASTCARRY_5979 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXG2_5978 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXF2_5977 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_LOGIC_ZERO_5976 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELG_5970 : STD_LOGIC; 
  signal sf_d_2_O : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_6_Q_6132 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELF_6131 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXFAST_6130 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYAND_6129 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_FASTCARRY_6128 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXG2_6127 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXF2_6126 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_LOGIC_ONE_6125 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELG_6119 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_7_Q_6118 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_1_LOGIC_ONE_6203 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_1_CYINIT_6202 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_1_CYSELF_6196 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_10_Q_6195 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_1_DYMUX_6191 : STD_LOGIC; 
  signal lcd_cntrl_inst_N16 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_1_CLKINV_6181 : STD_LOGIC; 
  signal mode_IBUF_6217 : STD_LOGIC; 
  signal sf_d_0_O : STD_LOGIC; 
  signal sf_d_3_O : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_4_Q_6102 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELF_6101 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXFAST_6100 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYAND_6099 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_FASTCARRY_6098 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXG2_6097 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXF2_6096 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_LOGIC_ONE_6095 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELG_6089 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_5_Q_6088 : STD_LOGIC; 
  signal lcd_e_O : STD_LOGIC; 
  signal sf_d_1_O : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_8_Q_6162 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELF_6161 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXFAST_6160 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYAND_6159 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_FASTCARRY_6158 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXG2_6157 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXF2_6156 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_LOGIC_ONE_6155 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELG_6149 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_9_Q_6148 : STD_LOGIC; 
  signal CLKIN_IBUFG : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_2_Q_6071 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELF_6070 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXFAST_6069 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYAND_6068 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_FASTCARRY_6067 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXG2_6066 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXF2_6065 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_LOGIC_ONE_6064 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELG_6058 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_wg_lut_3_Q_6057 : STD_LOGIC; 
  signal sf_d_4_O : STD_LOGIC; 
  signal sf_d_5_O : STD_LOGIC; 
  signal sf_d_6_O : STD_LOGIC; 
  signal sf_d_7_O : STD_LOGIC; 
  signal reset_IBUF_6296 : STD_LOGIC; 
  signal lcd_rs_O : STD_LOGIC; 
  signal lcd_rw_O : STD_LOGIC; 
  signal N157_F5MUX_6506 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N157_BXINV_6499 : STD_LOGIC; 
  signal N64_pack_1 : STD_LOGIC; 
  signal lap_load_IBUF_6319 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_15_F5MUX_6531 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_15_F : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_15_BXINV_6520 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_151_6518 : STD_LOGIC; 
  signal clk_divider_div_262144_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_divider_div_262144_BUFG_I0_INV : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_DXMUX_6601 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_F5MUX_6599 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_F : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_BXINV_6588 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_CLKINV_6580 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_CEINV_6579 : STD_LOGIC; 
  signal strtstop_IBUF_6326 : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_FFX_RST : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_DXMUX_6473 : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_F5MUX_6471 : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_F : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_BXINV_6460 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_12_62 : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_CLKINV_6451 : STD_LOGIC; 
  signal timer_inst_tens_cnt_0_CEINV_6450 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_7_34_F5MUX_6632 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_7_34_BXINV_6625 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal timer_inst_N3_F5MUX_6657 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal timer_inst_N3_BXINV_6650 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal timer_state_clken_FFX_RST : STD_LOGIC; 
  signal timer_state_clken_DXMUX_6399 : STD_LOGIC; 
  signal timer_state_clken_F5MUX_6397 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal timer_state_clken_BXINV_6390 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal timer_state_clken_CLKINV_6382 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_DXMUX_6564 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_F5MUX_6562 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_mux000017 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_BXINV_6555 : STD_LOGIC; 
  signal lcd_cntrl_inst_mode_state_rt_6553 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_SRINV_6545 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_CLKINV_6544 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_CEINV_6543 : STD_LOGIC; 
  signal Inst_dcm1_CLKFX_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_dcm1_CLKFX_BUFG_INST_I0_INV : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd9_FFX_RST : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd9_DXMUX_6435 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd9_F5MUX_6433 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd9_BXINV_6425 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd9_CLKINV_6417 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLK90 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLK180 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLK270 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLK2X : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLK2X180 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLKDV : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLKFX180 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS7 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS6 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS5 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS4 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS3 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS1 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_STATUS0 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_PSDONE : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_PSCLKINV_6344 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLKFB_BUF_6343 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_CLKIN_BUF_6342 : STD_LOGIC; 
  signal Inst_dcm1_CLK0_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_dcm1_CLK0_BUFG_INST_I0_INV : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_14_11_F5MUX_6682 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_14_11_BXINV_6675 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal lcd_cntrl_inst_N9 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000111112_O_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and0000 : STD_LOGIC; 
  signal timer_inst_tc_2_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_N7 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000111_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_18_1_6844 : STD_LOGIC; 
  signal timer_inst_tens_cnt_and0000_pack_1 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal timer_inst_enable1_SW1_O_pack_1 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_2_DXMUX_6993 : STD_LOGIC; 
  signal timer_inst_N27_pack_1 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_2_CLKINVNOT : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_19_4_6868 : STD_LOGIC; 
  signal timer_inst_tc_5_cmp_eq0001_pack_2 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal timer_inst_tc_4_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal timer_inst_ones_cnt_2_DXMUX_7075 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_10_40_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_inst_ones_cnt_2_CLKINV_7058 : STD_LOGIC; 
  signal timer_inst_ones_cnt_2_CEINV_7057 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_6_DXMUX_6713 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_6_F5MUX_6711 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_6_F : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_6_BXINV_6700 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_181 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_6_SRINV_6693 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_6_CLKINV_6692 : STD_LOGIC; 
  signal timer_inst_N6 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_11_11_SW2_O_pack_1 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_8_19_F5MUX_6787 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_8_19_BXINV_6780 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_7_DXMUX_6818 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_7_F5MUX_6816 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_7_F : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_7_BXINV_6805 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_11_6803 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_7_SRINV_6798 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_7_CLKINV_6797 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal timer_inst_Maddsub_ones_cnt_share0000_lut_1_1_O_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_DXMUX_6758 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_F5MUX_6756 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_In221_6754 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_BXINV_6749 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_DYMUX_6743 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_In222_6741 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_SRINV_6734 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_CLKINV_6733 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd41_CEINV_6732 : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_DXMUX_7137 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_11_37_O_pack_1 : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_CLKINV_7120 : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_CEINV_7119 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal timer_inst_tc_4_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal timer_inst_tc_3_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and000011_SW2_O_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux00002 : STD_LOGIC; 
  signal lcd_cntrl_inst_N4_pack_1 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal timer_inst_N11_pack_1 : STD_LOGIC; 
  signal timer_inst_tens_cnt_1_DXMUX_7457 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_13_1_O_pack_2 : STD_LOGIC; 
  signal timer_inst_tens_cnt_1_CLKINV_7439 : STD_LOGIC; 
  signal timer_inst_tens_cnt_1_CEINV_7438 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_mux0005_3_32_O_pack_1 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_mux0005_3_110_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_13_18_7486 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_13_11_SW1_O_pack_1 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_0_DXMUX_7343 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_4_Q : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_4_8_O_pack_2 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_0_CLKINV_7326 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_0_CEINV_7325 : STD_LOGIC; 
  signal timer_inst_N5 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_5_11_SW1_O_pack_1 : STD_LOGIC; 
  signal timer_inst_tens_cnt_2_DXMUX_7519 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_14_5_O_pack_2 : STD_LOGIC; 
  signal timer_inst_tens_cnt_2_CLKINV_7502 : STD_LOGIC; 
  signal timer_inst_tens_cnt_2_CEINV_7501 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_DXMUX_7419 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_7_Q : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_7_8_O_pack_2 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_CLKINV_7402 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_CEINV_7401 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_16_19_7658 : STD_LOGIC; 
  signal timer_inst_tc_5_cmp_eq0000_pack_2 : STD_LOGIC; 
  signal timer_inst_N4 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and0001_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_0_DXMUX_7715 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_16_4_O_pack_2 : STD_LOGIC; 
  signal timer_inst_mins_cnt_0_CLKINV_7698 : STD_LOGIC; 
  signal timer_inst_mins_cnt_0_CEINV_7697 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and000011_SW1_O_pack_1 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_1_DXMUX_7381 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_5_Q : STD_LOGIC; 
  signal timer_inst_tc_1_pack_2 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_1_CLKINV_7365 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_1_CEINV_7364 : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_DXMUX_7557 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_15_1_O_pack_2 : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_CLKINV_7539 : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_CEINV_7538 : STD_LOGIC; 
  signal timer_inst_mins_cnt_and000011_SW3_O_pack_1 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal timer_inst_tc_2_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal timer_inst_tens_cnt_and0001 : STD_LOGIC; 
  signal timer_inst_tc_3_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_19_37_7820 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_19_37_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_In21_8130 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd11_DYMUX_8119 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd11_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd11_CLKINV_8110 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_10_1_7844 : STD_LOGIC; 
  signal timer_inst_ones_cnt_and0002_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_next_mode_state_DXMUX_7986 : STD_LOGIC; 
  signal lcd_cntrl_inst_next_mode_state_FXMUX_7985 : STD_LOGIC; 
  signal mode_control : STD_LOGIC; 
  signal N34_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_next_mode_state_SRINV_7969 : STD_LOGIC; 
  signal lcd_cntrl_inst_next_mode_state_CLKINV_7968 : STD_LOGIC; 
  signal timer_inst_mins_cnt_2_DXMUX_7791 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_18_40_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_2_CLKINV_7773 : STD_LOGIC; 
  signal timer_inst_mins_cnt_2_CEINV_7772 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd10_DYMUX_8083 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd10_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd10_CLKINV_8073 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_11_5_7868 : STD_LOGIC; 
  signal timer_inst_N24_pack_1 : STD_LOGIC; 
  signal timer_inst_ones_cnt_1_DXMUX_7901 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_9_1_O_pack_2 : STD_LOGIC; 
  signal timer_inst_ones_cnt_1_CLKINV_7884 : STD_LOGIC; 
  signal timer_inst_ones_cnt_1_CEINV_7883 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_temp_or0000_7954 : STD_LOGIC; 
  signal lcd_cntrl_inst_N0_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_N13 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_1_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd2_DXMUX_8166 : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd2_In : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd2_DYMUX_8154 : STD_LOGIC; 
  signal timer_state_next_lap_trigger1 : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd2_SRINV_8146 : STD_LOGIC; 
  signal timer_state_sreg1_FSM_FFd2_CLKINV_8145 : STD_LOGIC; 
  signal timer_inst_mins_cnt_1_DXMUX_7753 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_17_40_SW0_O_pack_1 : STD_LOGIC; 
  signal timer_inst_mins_cnt_1_CLKINV_7735 : STD_LOGIC; 
  signal timer_inst_mins_cnt_1_CEINV_7734 : STD_LOGIC; 
  signal timer_inst_tc_1_and0001 : STD_LOGIC; 
  signal timer_inst_tc_1_cmp_eq0001_pack_1 : STD_LOGIC; 
  signal timer_inst_ones_cnt_not0002 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_3_DYMUX_8224 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_3_CLKINVNOT : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_1_DXMUX_8201 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_1_DYMUX_8189 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_1_CLKINVNOT : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_DYMUX_8253 : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_CLKINV_8243 : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_CEINV_8242 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_DXMUX_8296 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_DYMUX_8281 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd1_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_SRINV_8272 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_CLKINV_8271 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd36_DXMUX_8523 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd36_DYMUX_8507 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd35_In1 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd36_SRINV_8497 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd36_CLKINV_8496 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd36_CEINV_8495 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_not0001 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd43_DYMUX_8548 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd43_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd43_SRINV_8540 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd43_CLKINV_8539 : STD_LOGIC; 
  signal mode_debounce_Q2_DXMUX_8643 : STD_LOGIC; 
  signal mode_debounce_Q2_DYMUX_8638 : STD_LOGIC; 
  signal mode_debounce_Q2_CLKINV_8636 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000114_8713 : STD_LOGIC; 
  signal mode_debounce_Q3_DYMUX_8652 : STD_LOGIC; 
  signal mode_debounce_Q3_CLKINV_8650 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_DXMUX_8625 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux000012_pack_2 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_SRINV_8609 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_CLKINV_8608 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_CEINV_8607 : STD_LOGIC; 
  signal timer_state_next_clken0_8335 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_DYMUX_8322 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_CLKINV_8313 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_0_25_8592 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd46_DYMUX_8583 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd46_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd46_SRINV_8575 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd46_CLKINV_8574 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_not0001 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd7_DYMUX_8401 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd7_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd7_CLKINV_8391 : STD_LOGIC; 
  signal timer_inst_tens_cnt_mux0002_15_33_8701 : STD_LOGIC; 
  signal timer_inst_mins_cnt_mux0002_17_1_8694 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_0_DXMUX_8768 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_173 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_103_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_0_SRINV_8751 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_0_CLKINV_8750 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_25_8737 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000119_8730 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd6_DXMUX_8373 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd6_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd6_DYMUX_8358 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd5_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd6_SRINV_8350 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd6_CLKINV_8349 : STD_LOGIC; 
  signal lcd_rs_OBUF_8445 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_5_DYMUX_8434 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_1_8431 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_5_SRINV_8426 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_5_CLKINV_8425 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_or0000 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd34_DYMUX_8469 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd34_In1 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd34_SRINV_8459 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd34_CLKINV_8458 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd34_CEINV_8457 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_152_8906 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_142_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_181_9164 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_172_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_120_9011 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_253_9004 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_8_9059 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_200_9052 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_32_8794 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_201_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_4_DXMUX_9126 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_256_9123 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_242_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_4_SRINV_9111 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_4_CLKINV_9110 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal lcd_cntrl_inst_N71 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_261_pack_1 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd12_DXMUX_9219 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd12_In_9216 : STD_LOGIC; 
  signal N15_pack_2 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd12_CLKINV_9202 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_250_8818 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_123_8810 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_3_LOGIC_ONE_9097 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_3_CYINIT_9096 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_3_CYSELF_9090 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_3_wg_lut_6_Q_9089 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_3_DYMUX_9085 : STD_LOGIC; 
  signal lcd_cntrl_inst_N111_pack_2 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_3_CLKINV_9075 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_221_8842 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_220_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_147_9140 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_61_8963 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_242_8956 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_228_8882 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_117_8875 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_mux0000111117_9035 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_239_9028 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_106_8939 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_136_8932 : STD_LOGIC; 
  signal strtstop_debounce_Q2_DXMUX_8857 : STD_LOGIC; 
  signal strtstop_debounce_Q2_DYMUX_8852 : STD_LOGIC; 
  signal strtstop_debounce_Q2_CLKINV_8850 : STD_LOGIC; 
  signal strtstop_debounce_Q3_DYMUX_8914 : STD_LOGIC; 
  signal strtstop_debounce_Q3_CLKINV_8912 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_In10_9271 : STD_LOGIC; 
  signal mode_debounced_pack_1 : STD_LOGIC; 
  signal Inst_dcm1_DCM_SP_INST_ML_NEW_OUT : STD_LOGIC; 
  signal timer_state_state_reset : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_DXMUX_9302 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_In : STD_LOGIC; 
  signal ll_debounced_pack_1 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_CLKINV_9284 : STD_LOGIC; 
  signal clk_divider_div_temp_DYMUX_9340 : STD_LOGIC; 
  signal clk_divider_div_temp_CLKINV_9338 : STD_LOGIC; 
  signal clk_divider_div_temp_CEINV_9337 : STD_LOGIC; 
  signal timer_inst_N14 : STD_LOGIC; 
  signal timer_inst_tc_1_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal lcd_e_OBUF_9462 : STD_LOGIC; 
  signal lcd_cntrl_inst_control_0_12_pack_1 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal timer_state_rst_DYMUX_9593 : STD_LOGIC; 
  signal timer_state_rst_BYINV_9592 : STD_LOGIC; 
  signal timer_state_rst_CLKINV_9590 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_4_25_9620 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_3_DXMUX_9665 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_3_DYMUX_9658 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_3_SRINV_9656 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_3_CLKINV_9655 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_3_CEINV_9654 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd8_DXMUX_9699 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd8_In : STD_LOGIC; 
  signal strtstop_debounced_pack_2 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd8_CLKINV_9681 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal lcd_cntrl_inst_N12 : STD_LOGIC; 
  signal N8_pack_1 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_mux0002_5_17_O : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_3_DXMUX_9387 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_3_DYMUX_9380 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_3_SRINV_9378 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_3_CLKINV_9377 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_3_CEINV_9376 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_1_DXMUX_9363 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_1_DYMUX_9356 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_1_SRINV_9354 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_1_CLKINV_9353 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_ones_1_CEINV_9352 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_3_DXMUX_9435 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_3_DYMUX_9428 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_3_SRINV_9426 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_3_CLKINV_9425 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_3_CEINV_9424 : STD_LOGIC; 
  signal lcd_cntrl_inst_N8 : STD_LOGIC; 
  signal N23_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_1_DXMUX_9411 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_1_DYMUX_9404 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_1_SRINV_9402 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_1_CLKINV_9401 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tens_1_CEINV_9400 : STD_LOGIC; 
  signal lap_load_debounce_Q2_DXMUX_9501 : STD_LOGIC; 
  signal lap_load_debounce_Q2_DYMUX_9496 : STD_LOGIC; 
  signal lap_load_debounce_Q2_CLKINV_9494 : STD_LOGIC; 
  signal lap_load_debounce_Q3_DYMUX_9510 : STD_LOGIC; 
  signal lap_load_debounce_Q3_CLKINV_9508 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_1_DXMUX_9641 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_1_DYMUX_9634 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_1_SRINV_9632 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_1_CLKINV_9631 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_tenths_1_CEINV_9630 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_1_DXMUX_9532 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_1_DYMUX_9525 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_1_SRINV_9523 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_1_CLKINV_9522 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_1_CEINV_9521 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_3_DXMUX_9556 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_3_DYMUX_9549 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_3_SRINV_9547 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_3_CLKINV_9546 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_hundredths_3_CEINV_9545 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal lcd_cntrl_inst_mode_state_DYMUX_9869 : STD_LOGIC; 
  signal lcd_cntrl_inst_mode_state_SRINV_9867 : STD_LOGIC; 
  signal lcd_cntrl_inst_mode_state_CLKINV_9866 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_27_10159 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_41_10200 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_5_9895 : STD_LOGIC; 
  signal lcd_cntrl_inst_N6_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_57_10231 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_28_10223 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_23_10327 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_22_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_50_10339 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_3_DXMUX_10084 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_3_DYMUX_10077 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_3_SRINV_10075 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_3_CLKINV_10074 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_3_CEINV_10073 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd8_DXMUX_9988 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd8_DYMUX_9981 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd8_SRINV_9979 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd8_CLKINV_9978 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd8_CEINV_9977 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_13_10255 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_47_10248 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_80_10279 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_73_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_DXMUX_9916 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_DYMUX_9909 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_SRINV_9907 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_CLKINV_9906 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_CEINV_9905 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_52_10303 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_12_10296 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_66_10135 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_DXMUX_9964 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_DYMUX_9957 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_SRINV_9955 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_CLKINV_9954 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_CEINV_9953 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd10_DXMUX_10012 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd10_DYMUX_10005 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd10_SRINV_10003 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd10_CLKINV_10002 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd10_CEINV_10001 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_DXMUX_9940 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_DYMUX_9933 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_SRINV_9931 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_CLKINV_9930 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_CEINV_9929 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_0_2_10183 : STD_LOGIC; 
  signal lcd_cntrl_inst_N112_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_1_DXMUX_10060 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_1_DYMUX_10053 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_1_SRINV_10051 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_1_CLKINV_10050 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_min_1_CEINV_10049 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000113_10480 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000013_10471 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_13_DXMUX_10599 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_13_DYMUX_10594 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_13_CLKINV_10592 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_70_10375 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_68_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000110_10456 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000010_10449 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq0001 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000124_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_80_10432 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_66_pack_1 : STD_LOGIC; 
  signal clk_divider_div_262144_DYMUX_10567 : STD_LOGIC; 
  signal clk_divider_div_262144_CLKINV_10565 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_23_DXMUX_10647 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_23_DYMUX_10642 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_23_CLKINV_10640 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_31_DXMUX_10663 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_31_DYMUX_10658 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_31_CLKINV_10656 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_27_DXMUX_10727 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_27_DYMUX_10722 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_27_CLKINV_10720 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_25_DXMUX_10695 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_25_DYMUX_10690 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_25_CLKINV_10688 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_19_DXMUX_10711 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_19_DYMUX_10706 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_19_CLKINV_10704 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_29_DXMUX_10743 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_29_DYMUX_10738 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_29_CLKINV_10736 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_17_DXMUX_10679 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_17_DYMUX_10674 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_17_CLKINV_10672 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq000024_10492 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_15_DXMUX_10631 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_15_DYMUX_10626 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_15_CLKINV_10624 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_45_10351 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_21_DXMUX_10615 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_21_DYMUX_10610 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_21_CLKINV_10608 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_2_DXMUX_10406 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_107 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_2_85_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_2_SRINV_10390 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_2_CLKINV_10389 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_11_DXMUX_10583 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_11_DYMUX_10578 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_11_CLKINV_10576 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_DXMUX_10555 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_BXINV_10554 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_REVUSED_10553 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_SRINV_10551 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_CLKINV_10550 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_CEINV_10549 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd32_DXMUX_11060 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd32_DYMUX_11053 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd32_SRINV_11051 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd32_CLKINV_11050 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd32_CEINV_11049 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_7_DXMUX_10845 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_7_DYMUX_10840 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_7_CLKINV_10838 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd18_DXMUX_11084 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd18_DYMUX_11077 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd18_SRINV_11075 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd18_CLKINV_11074 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd18_CEINV_11073 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd26_DXMUX_11108 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd26_DYMUX_11101 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd26_SRINV_11099 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd26_CLKINV_11098 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd26_CEINV_11097 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd24_DXMUX_11036 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd24_DYMUX_11029 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd24_SRINV_11027 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd24_CLKINV_11026 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd24_CEINV_11025 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_1_DXMUX_10797 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_1_DYMUX_10792 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_1_CLKINV_10790 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_DXMUX_10895 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_In33 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_In10_pack_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_SRINV_10879 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_CLKINV_10878 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd33_CEINV_10877 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd12_DXMUX_10931 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd12_DYMUX_10924 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd12_SRINV_10922 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd12_CLKINV_10921 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd12_CEINV_10920 : STD_LOGIC; 
  signal timer_inst_ones_cnt_0_DXMUX_10777 : STD_LOGIC; 
  signal timer_inst_ones_cnt_mux0002_8_5_pack_2 : STD_LOGIC; 
  signal timer_inst_ones_cnt_0_CLKINV_10760 : STD_LOGIC; 
  signal timer_inst_ones_cnt_0_CEINV_10759 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd13_DXMUX_10964 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd13_DYMUX_10957 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd14_In1_10954 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd13_SRINV_10949 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd13_CLKINV_10948 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd13_CEINV_10947 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd20_DXMUX_11132 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd20_DYMUX_11125 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd20_SRINV_11123 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd20_CLKINV_11122 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd20_CEINV_11121 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_5_DXMUX_10829 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_5_DYMUX_10824 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_5_CLKINV_10822 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd44_DYMUX_11171 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd44_SRINV_11169 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd44_CLKINV_11168 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd44_CEINV_11167 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd28_DXMUX_11156 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd28_DYMUX_11149 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd28_SRINV_11147 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd28_CLKINV_11146 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd28_CEINV_11145 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd16_DXMUX_11012 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd16_DYMUX_11005 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd16_SRINV_11003 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd16_CLKINV_11002 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd16_CEINV_11001 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd30_DXMUX_11195 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd30_DYMUX_11188 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd30_SRINV_11186 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd30_CLKINV_11185 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd30_CEINV_11184 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_9_DXMUX_10861 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_9_DYMUX_10856 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_9_CLKINV_10854 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_3_DXMUX_10813 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_3_DYMUX_10808 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_3_CLKINV_10806 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd22_DXMUX_10988 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd22_DYMUX_10981 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd22_SRINV_10979 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd22_CLKINV_10978 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd22_CEINV_10977 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd38_DXMUX_11219 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd38_DYMUX_11212 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd38_SRINV_11210 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd38_CLKINV_11209 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd38_CEINV_11208 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd40_DXMUX_11258 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd40_DYMUX_11251 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd40_SRINV_11249 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd40_CLKINV_11248 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd40_CEINV_11247 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd47_DYMUX_11273 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd47_BYINV_11272 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd47_SRINV_11271 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd47_CLKINV_11270 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd47_CEINV_11269 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd45_DYMUX_11234 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd45_SRINV_11232 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd45_CLKINV_11231 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd45_CEINV_11230 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd12_FFX_RSTAND_9224 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_FFX_RSTAND_9307 : STD_LOGIC; 
  signal timer_state_rst_FFY_SET : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd8_FFX_RSTAND_9704 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_2_FFX_RSTAND_6607 : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_FFX_RSTAND_7143 : STD_LOGIC; 
  signal timer_inst_ones_cnt_2_FFX_RSTAND_7081 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_1_FFX_RSTAND_7387 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_0_FFX_RSTAND_7349 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_FFX_RSTAND_7425 : STD_LOGIC; 
  signal timer_inst_tens_cnt_2_FFX_RSTAND_7525 : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_FFX_RSTAND_7563 : STD_LOGIC; 
  signal timer_inst_tens_cnt_1_FFX_RSTAND_7463 : STD_LOGIC; 
  signal timer_inst_mins_cnt_1_FFX_RSTAND_7759 : STD_LOGIC; 
  signal timer_inst_mins_cnt_0_FFX_RSTAND_7721 : STD_LOGIC; 
  signal timer_inst_ones_cnt_1_FFX_RSTAND_7907 : STD_LOGIC; 
  signal timer_inst_mins_cnt_2_FFX_RSTAND_7797 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd10_FFY_RSTAND_8088 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd11_FFY_RSTAND_8124 : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_FFY_RSTAND_8259 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_FFY_RSTAND_8327 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd7_FFY_RSTAND_8406 : STD_LOGIC; 
  signal timer_inst_ones_cnt_0_FFX_RSTAND_10783 : STD_LOGIC; 
  signal lcd_rw_OUTPUT_OFF_O1INV_6312 : STD_LOGIC; 
  signal NlwBufferSignal_Inst_dcm1_DCM_SP_INST_RST : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal NlwInverterSignal_timer_inst_hundredths_cnt_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_timer_inst_hundredths_cnt_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_timer_inst_hundredths_cnt_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_timer_inst_hundredths_cnt_0_CLK : STD_LOGIC; 
  signal lcd_cntrl_inst_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lcd_cntrl_inst_lap_min : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_tens : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_hundredths_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_ones : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_tenths_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_tenths : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_ones_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_mins_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_tens_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_hundredths : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal clk_divider_cnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lcd_cntrl_inst_count_temp : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lcd_cntrl_inst_sf_d : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clk_divider_Mcount_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal lcd_cntrl_inst_count_Mcount_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal lcd_cntrl_inst_state_cmp_eq00001_wg_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal clk_divider_Mcompar_cnt_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal timer_inst_hundredths_cnt_mux0005 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_ones_cnt_mux0002 : STD_LOGIC_VECTOR ( 11 downto 8 ); 
  signal timer_inst_Maddsub_mins_cnt_share0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal timer_inst_tens_cnt_mux0002 : STD_LOGIC_VECTOR ( 15 downto 13 ); 
  signal timer_inst_Maddsub_ones_cnt_share0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal timer_inst_mins_cnt_mux0002 : STD_LOGIC_VECTOR ( 19 downto 16 ); 
  signal timer_inst_Maddsub_mins_cnt_share0000_lut : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal timer_inst_Maddsub_hundredths_cnt_share0000_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal timer_inst_Maddsub_hundredths_cnt_share0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal timer_inst_Maddsub_ones_cnt_share0000_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
begin
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y38"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_LOGIC_ZERO_3330
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y38"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_LOGIC_ZERO_3330,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYINIT_3341,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELF_3335,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_2
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_BXINV_3333,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYINIT_3341
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_2_3334,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELF_3335
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_BXINV_3333
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X17Y38"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_LOGIC_ZERO_3330,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_2,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELG_3321,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYMUXG_3332
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_1_1,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYSELG_3321
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y40"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ZERO_3387
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X17Y40"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ONE_3403
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ONE_3403,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ONE_3403,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELF_3393,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXF2_3388
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_7_rt_3394,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELF_3393
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXFAST_3361,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_FASTCARRY_3390
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y40"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELG_3380,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELF_3393,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYAND_3391
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXG2_3389,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_FASTCARRY_3390,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYAND_3391,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXFAST_3392
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_LOGIC_ZERO_3387,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXF2_3388,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELG_3380,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXG2_3389
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_5_1_3379,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYSELG_3380
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y42"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ZERO_3450
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X17Y42"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ONE_3465
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ONE_3465,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ONE_3465,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELF_3456,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXF2_3451
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_2_3457,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELF_3456
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXFAST_3423,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_FASTCARRY_3453
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y42"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELG_3442,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELF_3456,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYAND_3454
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXG2_3452,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_FASTCARRY_3453,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYAND_3454,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXFAST_3455
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_LOGIC_ZERO_3450,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXF2_3451,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELG_3442,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXG2_3452
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_9_1_3441,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYSELG_3442
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ZERO_3481
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ONE_3496
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ONE_3496,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ONE_3496,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELF_3487,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXF2_3482
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_10_1_3488,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELF_3487
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_1_CYMUXFAST_3455,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_FASTCARRY_3484
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELG_3475,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELF_3487,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYAND_3485
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXG2_3483,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_FASTCARRY_3484,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYAND_3485,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXFAST_3486
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_LOGIC_ZERO_3481,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXF2_3482,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELG_3475,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXG2_3483
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_11_1_3474,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYSELG_3475
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y39"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ZERO_3356
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X17Y39"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ONE_3372
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y39"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ONE_3372,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ONE_3372,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELF_3362,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXF2_3357
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_5_rt_3363,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELF_3362
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_2_CYMUXG_3332,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_FASTCARRY_3359
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y39"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELG_3347,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELF_3362,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYAND_3360
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y39"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXG2_3358,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_FASTCARRY_3359,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYAND_3360,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXFAST_3361
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y39"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_LOGIC_ZERO_3356,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXF2_3357,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELG_3347,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYMUXG2_3358
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_3_1,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_2_CYSELG_3347
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y41"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ZERO_3418
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X17Y41"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ONE_3434
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ONE_3434,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ONE_3434,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELF_3424,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXF2_3419
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_11_rt_3425,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELF_3424
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_2_CYMUXFAST_3392,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_FASTCARRY_3421
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y41"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELG_3409,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELF_3424,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYAND_3422
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXG2_3420,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_FASTCARRY_3421,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYAND_3422,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXFAST_3423
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_LOGIC_ZERO_3418,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXF2_3419,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELG_3409,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYMUXG2_3420
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_2,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_2_CYSELG_3409
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y40"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ONE_3646
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y40"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ZERO_3660
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ZERO_3660,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYINIT_3659,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELF_3651,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy(0)
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_BXINV_3649,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYINIT_3659
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_0_Q_3650,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELF_3651
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_BXINV_3649
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X19Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_LOGIC_ONE_3646,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy(0),
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELG_3637,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYMUXG_3648
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_1_Q,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYSELG_3637
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X17Y44"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_LOGIC_ZERO_3514
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_LOGIC_ZERO_3514,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_LOGIC_ZERO_3514,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELF_3520,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXF2_3515
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_12_1_3521,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELF_3520
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_1_CYMUXFAST_3486,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_FASTCARRY_3517
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELG_3508,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELF_3520,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYAND_3518
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXG2_3516,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_FASTCARRY_3517,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYAND_3518,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXFAST_3519
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_LOGIC_ZERO_3514,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXF2_3515,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELG_3508,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXG2_3516
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_13_1_3507,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYSELG_3508
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X31Y25"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_LOGIC_ONE_3588
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y25"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_LOGIC_ONE_3588,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_LOGIC_ONE_3588,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELF_3594,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXF2_3589
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_2_Q_3595,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELF_3594
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X31Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYMUXG_3559,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_FASTCARRY_3591
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X31Y25"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELG_3582,
      I1 => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELF_3594,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYAND_3592
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X31Y25"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXG2_3590,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_FASTCARRY_3591,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYAND_3592,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXFAST_3593
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y25"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_LOGIC_ONE_3588,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXF2_3589,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELG_3582,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXG2_3590
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_3_Q_3581,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYSELG_3582
    );
  lcd_cntrl_inst_control_cmp_le0001_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y45"
    )
    port map (
      IA => lcd_cntrl_inst_control_cmp_le0001_CY0F_3540,
      IB => lcd_cntrl_inst_control_cmp_le0001_CYINIT_3541,
      SEL => lcd_cntrl_inst_control_cmp_le0001_CYSELF_3531,
      O => lcd_cntrl_inst_control_cmp_le0001
    );
  lcd_cntrl_inst_control_cmp_le0001_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_1_CYMUXFAST_3519,
      O => lcd_cntrl_inst_control_cmp_le0001_CYINIT_3541
    );
  lcd_cntrl_inst_control_cmp_le0001_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X17Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_control_cmp_le0001_CY0F_3540
    );
  lcd_cntrl_inst_control_cmp_le0001_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_14_1,
      O => lcd_cntrl_inst_control_cmp_le0001_CYSELF_3531
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X31Y24"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_LOGIC_ONE_3557
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X31Y24"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_LOGIC_ONE_3557,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYINIT_3570,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELF_3562,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_0_Q
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X31Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_BXINV_3560,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYINIT_3570
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_0_Q_3561,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELF_3562
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_BXINV_3560
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X31Y24"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_LOGIC_ONE_3557,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_0_Q,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELG_3551,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYMUXG_3559
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_1_Q_3550,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_1_CYSELG_3551
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X31Y26"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_LOGIC_ONE_3618
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_LOGIC_ONE_3618,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_LOGIC_ONE_3618,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELF_3624,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXF2_3619
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_4_Q_3625,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELF_3624
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_cy_3_CYMUXFAST_3593,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_FASTCARRY_3621
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X31Y26"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELG_3612,
      I1 => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELF_3624,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYAND_3622
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X31Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXG2_3620,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_FASTCARRY_3621,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYAND_3622,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXFAST_3623
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_LOGIC_ONE_3618,
      IB => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXF2_3619,
      SEL => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELG_3612,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXG2_3620
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_5_Q_3611,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYSELG_3612
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ONE_3738
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ZERO_3753
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ZERO_3753,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ZERO_3753,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELF_3744,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXF2_3739
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_6_Q_3745,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELF_3744
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXFAST_3713,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_FASTCARRY_3741
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELG_3729,
      I1 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELF_3744,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYAND_3742
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXG2_3740,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_FASTCARRY_3741,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYAND_3742,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXFAST_3743
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_LOGIC_ONE_3738,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXF2_3739,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELG_3729,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXG2_3740
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_7_Q,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYSELG_3729
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ONE_3768
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ZERO_3784
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ZERO_3784,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ZERO_3784,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELF_3774,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXF2_3769
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_19_rt_3775,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELF_3774
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_7_CYMUXFAST_3743,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_FASTCARRY_3771
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELG_3762,
      I1 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELF_3774,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYAND_3772
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXG2_3770,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_FASTCARRY_3771,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYAND_3772,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXFAST_3773
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_LOGIC_ONE_3768,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXF2_3769,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELG_3762,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXG2_3770
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_9_Q_3761,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYSELG_3762
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ONE_3676
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ZERO_3691
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ZERO_3691,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ZERO_3691,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELF_3682,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXF2_3677
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_2_Q_3683,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELF_3682
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_1_CYMUXG_3648,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_FASTCARRY_3679
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELG_3669,
      I1 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELF_3682,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYAND_3680
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXG2_3678,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_FASTCARRY_3679,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYAND_3680,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXFAST_3681
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_LOGIC_ONE_3676,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXF2_3677,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELG_3669,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXG2_3678
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_3_Q_3668,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYSELG_3669
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ONE_3708
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ZERO_3722
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ZERO_3722,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ZERO_3722,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELF_3714,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXF2_3709
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_4_Q_3715,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELF_3714
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_3_CYMUXFAST_3681,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_FASTCARRY_3711
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELG_3699,
      I1 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELF_3714,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYAND_3712
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXG2_3710,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_FASTCARRY_3711,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYAND_3712,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXFAST_3713
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_LOGIC_ONE_3708,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXF2_3709,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELG_3699,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYMUXG2_3710
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_5_Q,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_5_CYSELG_3699
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y45"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_LOGIC_ONE_3802
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_LOGIC_ONE_3802,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_LOGIC_ONE_3802,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELF_3808,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXF2_3803
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_10_Q_3809,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELF_3808
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_9_CYMUXFAST_3773,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_FASTCARRY_3805
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELG_3795,
      I1 => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELF_3808,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYAND_3806
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXG2_3804,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_FASTCARRY_3805,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYAND_3806,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXFAST_3807
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_LOGIC_ONE_3802,
      IB => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXF2_3803,
      SEL => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELG_3795,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXG2_3804
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_11_Q_3794,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYSELG_3795
    );
  clk_divider_cnt_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      O => clk_divider_cnt_8_LOGIC_ZERO_4056
    );
  clk_divider_cnt_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_8_XORF_4081,
      O => clk_divider_cnt_8_DXMUX_4083
    );
  clk_divider_cnt_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      I0 => clk_divider_cnt_8_CYINIT_4080,
      I1 => clk_divider_cnt_8_F,
      O => clk_divider_cnt_8_XORF_4081
    );
  clk_divider_cnt_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      IA => clk_divider_cnt_8_LOGIC_ZERO_4056,
      IB => clk_divider_cnt_8_CYINIT_4080,
      SEL => clk_divider_cnt_8_CYSELF_4062,
      O => clk_divider_Mcount_cnt_cy_8_Q
    );
  clk_divider_cnt_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      IA => clk_divider_cnt_8_LOGIC_ZERO_4056,
      IB => clk_divider_cnt_8_LOGIC_ZERO_4056,
      SEL => clk_divider_cnt_8_CYSELF_4062,
      O => clk_divider_cnt_8_CYMUXF2_4057
    );
  clk_divider_cnt_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_7_Q,
      O => clk_divider_cnt_8_CYINIT_4080
    );
  clk_divider_cnt_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_8_F,
      O => clk_divider_cnt_8_CYSELF_4062
    );
  clk_divider_cnt_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_8_XORG_4064,
      O => clk_divider_cnt_8_DYMUX_4066
    );
  clk_divider_cnt_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_8_Q,
      I1 => clk_divider_cnt_8_G,
      O => clk_divider_cnt_8_XORG_4064
    );
  clk_divider_cnt_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_8_CYMUXFAST_4061,
      O => clk_divider_Mcount_cnt_cy_9_Q
    );
  clk_divider_cnt_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_7_Q,
      O => clk_divider_cnt_8_FASTCARRY_4059
    );
  clk_divider_cnt_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      I0 => clk_divider_cnt_8_CYSELG_4047,
      I1 => clk_divider_cnt_8_CYSELF_4062,
      O => clk_divider_cnt_8_CYAND_4060
    );
  clk_divider_cnt_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      IA => clk_divider_cnt_8_CYMUXG2_4058,
      IB => clk_divider_cnt_8_FASTCARRY_4059,
      SEL => clk_divider_cnt_8_CYAND_4060,
      O => clk_divider_cnt_8_CYMUXFAST_4061
    );
  clk_divider_cnt_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y69"
    )
    port map (
      IA => clk_divider_cnt_8_LOGIC_ZERO_4056,
      IB => clk_divider_cnt_8_CYMUXF2_4057,
      SEL => clk_divider_cnt_8_CYSELG_4047,
      O => clk_divider_cnt_8_CYMUXG2_4058
    );
  clk_divider_cnt_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_8_G,
      O => clk_divider_cnt_8_CYSELG_4047
    );
  clk_divider_cnt_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_8_SRINV_4045
    );
  clk_divider_cnt_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y69",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_8_CLKINV_4044
    );
  clk_divider_cnt_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y65"
    )
    port map (
      O => clk_divider_cnt_0_LOGIC_ZERO_3850
    );
  clk_divider_cnt_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y65"
    )
    port map (
      O => clk_divider_cnt_0_LOGIC_ONE_3872
    );
  clk_divider_cnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_0_XORF_3873,
      O => clk_divider_cnt_0_DXMUX_3875
    );
  clk_divider_cnt_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y65"
    )
    port map (
      I0 => clk_divider_cnt_0_CYINIT_3871,
      I1 => clk_divider_Mcount_cnt_lut(0),
      O => clk_divider_cnt_0_XORF_3873
    );
  clk_divider_cnt_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y65"
    )
    port map (
      IA => clk_divider_cnt_0_LOGIC_ONE_3872,
      IB => clk_divider_cnt_0_CYINIT_3871,
      SEL => clk_divider_cnt_0_CYSELF_3862,
      O => clk_divider_Mcount_cnt_cy_0_Q
    );
  clk_divider_cnt_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_0_BXINV_3860,
      O => clk_divider_cnt_0_CYINIT_3871
    );
  clk_divider_cnt_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_lut(0),
      O => clk_divider_cnt_0_CYSELF_3862
    );
  clk_divider_cnt_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => clk_divider_cnt_0_BXINV_3860
    );
  clk_divider_cnt_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_0_XORG_3853,
      O => clk_divider_cnt_0_DYMUX_3855
    );
  clk_divider_cnt_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y65"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_0_Q,
      I1 => clk_divider_cnt_0_G,
      O => clk_divider_cnt_0_XORG_3853
    );
  clk_divider_cnt_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_0_CYMUXG_3852,
      O => clk_divider_Mcount_cnt_cy_1_Q
    );
  clk_divider_cnt_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X29Y65"
    )
    port map (
      IA => clk_divider_cnt_0_LOGIC_ZERO_3850,
      IB => clk_divider_Mcount_cnt_cy_0_Q,
      SEL => clk_divider_cnt_0_CYSELG_3841,
      O => clk_divider_cnt_0_CYMUXG_3852
    );
  clk_divider_cnt_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_0_G,
      O => clk_divider_cnt_0_CYSELG_3841
    );
  clk_divider_cnt_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_0_SRINV_3839
    );
  clk_divider_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y65",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_0_CLKINV_3838
    );
  clk_divider_cnt_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      O => clk_divider_cnt_2_LOGIC_ZERO_3900
    );
  clk_divider_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_2_XORF_3925,
      O => clk_divider_cnt_2_DXMUX_3927
    );
  clk_divider_cnt_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      I0 => clk_divider_cnt_2_CYINIT_3924,
      I1 => clk_divider_cnt_2_F,
      O => clk_divider_cnt_2_XORF_3925
    );
  clk_divider_cnt_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      IA => clk_divider_cnt_2_LOGIC_ZERO_3900,
      IB => clk_divider_cnt_2_CYINIT_3924,
      SEL => clk_divider_cnt_2_CYSELF_3906,
      O => clk_divider_Mcount_cnt_cy_2_Q
    );
  clk_divider_cnt_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      IA => clk_divider_cnt_2_LOGIC_ZERO_3900,
      IB => clk_divider_cnt_2_LOGIC_ZERO_3900,
      SEL => clk_divider_cnt_2_CYSELF_3906,
      O => clk_divider_cnt_2_CYMUXF2_3901
    );
  clk_divider_cnt_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_1_Q,
      O => clk_divider_cnt_2_CYINIT_3924
    );
  clk_divider_cnt_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_2_F,
      O => clk_divider_cnt_2_CYSELF_3906
    );
  clk_divider_cnt_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_2_XORG_3908,
      O => clk_divider_cnt_2_DYMUX_3910
    );
  clk_divider_cnt_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_2_Q,
      I1 => clk_divider_cnt_2_G,
      O => clk_divider_cnt_2_XORG_3908
    );
  clk_divider_cnt_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_2_CYMUXFAST_3905,
      O => clk_divider_Mcount_cnt_cy_3_Q
    );
  clk_divider_cnt_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_1_Q,
      O => clk_divider_cnt_2_FASTCARRY_3903
    );
  clk_divider_cnt_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      I0 => clk_divider_cnt_2_CYSELG_3891,
      I1 => clk_divider_cnt_2_CYSELF_3906,
      O => clk_divider_cnt_2_CYAND_3904
    );
  clk_divider_cnt_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      IA => clk_divider_cnt_2_CYMUXG2_3902,
      IB => clk_divider_cnt_2_FASTCARRY_3903,
      SEL => clk_divider_cnt_2_CYAND_3904,
      O => clk_divider_cnt_2_CYMUXFAST_3905
    );
  clk_divider_cnt_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y66"
    )
    port map (
      IA => clk_divider_cnt_2_LOGIC_ZERO_3900,
      IB => clk_divider_cnt_2_CYMUXF2_3901,
      SEL => clk_divider_cnt_2_CYSELG_3891,
      O => clk_divider_cnt_2_CYMUXG2_3902
    );
  clk_divider_cnt_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_2_G,
      O => clk_divider_cnt_2_CYSELG_3891
    );
  clk_divider_cnt_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_2_SRINV_3889
    );
  clk_divider_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y66",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_2_CLKINV_3888
    );
  clk_divider_cnt_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      O => clk_divider_cnt_6_LOGIC_ZERO_4004
    );
  clk_divider_cnt_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_6_XORF_4029,
      O => clk_divider_cnt_6_DXMUX_4031
    );
  clk_divider_cnt_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      I0 => clk_divider_cnt_6_CYINIT_4028,
      I1 => clk_divider_cnt_6_F,
      O => clk_divider_cnt_6_XORF_4029
    );
  clk_divider_cnt_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      IA => clk_divider_cnt_6_LOGIC_ZERO_4004,
      IB => clk_divider_cnt_6_CYINIT_4028,
      SEL => clk_divider_cnt_6_CYSELF_4010,
      O => clk_divider_Mcount_cnt_cy_6_Q
    );
  clk_divider_cnt_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      IA => clk_divider_cnt_6_LOGIC_ZERO_4004,
      IB => clk_divider_cnt_6_LOGIC_ZERO_4004,
      SEL => clk_divider_cnt_6_CYSELF_4010,
      O => clk_divider_cnt_6_CYMUXF2_4005
    );
  clk_divider_cnt_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_5_Q,
      O => clk_divider_cnt_6_CYINIT_4028
    );
  clk_divider_cnt_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_6_F,
      O => clk_divider_cnt_6_CYSELF_4010
    );
  clk_divider_cnt_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_6_XORG_4012,
      O => clk_divider_cnt_6_DYMUX_4014
    );
  clk_divider_cnt_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_6_Q,
      I1 => clk_divider_cnt_6_G,
      O => clk_divider_cnt_6_XORG_4012
    );
  clk_divider_cnt_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_6_CYMUXFAST_4009,
      O => clk_divider_Mcount_cnt_cy_7_Q
    );
  clk_divider_cnt_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_5_Q,
      O => clk_divider_cnt_6_FASTCARRY_4007
    );
  clk_divider_cnt_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      I0 => clk_divider_cnt_6_CYSELG_3995,
      I1 => clk_divider_cnt_6_CYSELF_4010,
      O => clk_divider_cnt_6_CYAND_4008
    );
  clk_divider_cnt_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      IA => clk_divider_cnt_6_CYMUXG2_4006,
      IB => clk_divider_cnt_6_FASTCARRY_4007,
      SEL => clk_divider_cnt_6_CYAND_4008,
      O => clk_divider_cnt_6_CYMUXFAST_4009
    );
  clk_divider_cnt_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y68"
    )
    port map (
      IA => clk_divider_cnt_6_LOGIC_ZERO_4004,
      IB => clk_divider_cnt_6_CYMUXF2_4005,
      SEL => clk_divider_cnt_6_CYSELG_3995,
      O => clk_divider_cnt_6_CYMUXG2_4006
    );
  clk_divider_cnt_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_6_G,
      O => clk_divider_cnt_6_CYSELG_3995
    );
  clk_divider_cnt_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_6_SRINV_3993
    );
  clk_divider_cnt_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y68",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_6_CLKINV_3992
    );
  lcd_cntrl_inst_state_cmp_ge0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y46"
    )
    port map (
      O => lcd_cntrl_inst_state_cmp_ge0000_LOGIC_ZERO_3829
    );
  lcd_cntrl_inst_state_cmp_ge0000_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y46"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_ge0000_LOGIC_ZERO_3829,
      IB => lcd_cntrl_inst_state_cmp_ge0000_CYINIT_3828,
      SEL => lcd_cntrl_inst_state_cmp_ge0000_CYSELF_3819,
      O => lcd_cntrl_inst_state_cmp_ge0000
    );
  lcd_cntrl_inst_state_cmp_ge0000_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_cy_11_CYMUXFAST_3807,
      O => lcd_cntrl_inst_state_cmp_ge0000_CYINIT_3828
    );
  lcd_cntrl_inst_state_cmp_ge0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_12_Q,
      O => lcd_cntrl_inst_state_cmp_ge0000_CYSELF_3819
    );
  clk_divider_cnt_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      O => clk_divider_cnt_4_LOGIC_ZERO_3952
    );
  clk_divider_cnt_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_4_XORF_3977,
      O => clk_divider_cnt_4_DXMUX_3979
    );
  clk_divider_cnt_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      I0 => clk_divider_cnt_4_CYINIT_3976,
      I1 => clk_divider_cnt_4_F,
      O => clk_divider_cnt_4_XORF_3977
    );
  clk_divider_cnt_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      IA => clk_divider_cnt_4_LOGIC_ZERO_3952,
      IB => clk_divider_cnt_4_CYINIT_3976,
      SEL => clk_divider_cnt_4_CYSELF_3958,
      O => clk_divider_Mcount_cnt_cy_4_Q
    );
  clk_divider_cnt_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      IA => clk_divider_cnt_4_LOGIC_ZERO_3952,
      IB => clk_divider_cnt_4_LOGIC_ZERO_3952,
      SEL => clk_divider_cnt_4_CYSELF_3958,
      O => clk_divider_cnt_4_CYMUXF2_3953
    );
  clk_divider_cnt_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_3_Q,
      O => clk_divider_cnt_4_CYINIT_3976
    );
  clk_divider_cnt_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_4_F,
      O => clk_divider_cnt_4_CYSELF_3958
    );
  clk_divider_cnt_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_4_XORG_3960,
      O => clk_divider_cnt_4_DYMUX_3962
    );
  clk_divider_cnt_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_4_Q,
      I1 => clk_divider_cnt_4_G,
      O => clk_divider_cnt_4_XORG_3960
    );
  clk_divider_cnt_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_4_CYMUXFAST_3957,
      O => clk_divider_Mcount_cnt_cy_5_Q
    );
  clk_divider_cnt_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_3_Q,
      O => clk_divider_cnt_4_FASTCARRY_3955
    );
  clk_divider_cnt_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      I0 => clk_divider_cnt_4_CYSELG_3943,
      I1 => clk_divider_cnt_4_CYSELF_3958,
      O => clk_divider_cnt_4_CYAND_3956
    );
  clk_divider_cnt_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      IA => clk_divider_cnt_4_CYMUXG2_3954,
      IB => clk_divider_cnt_4_FASTCARRY_3955,
      SEL => clk_divider_cnt_4_CYAND_3956,
      O => clk_divider_cnt_4_CYMUXFAST_3957
    );
  clk_divider_cnt_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y67"
    )
    port map (
      IA => clk_divider_cnt_4_LOGIC_ZERO_3952,
      IB => clk_divider_cnt_4_CYMUXF2_3953,
      SEL => clk_divider_cnt_4_CYSELG_3943,
      O => clk_divider_cnt_4_CYMUXG2_3954
    );
  clk_divider_cnt_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_4_G,
      O => clk_divider_cnt_4_CYSELG_3943
    );
  clk_divider_cnt_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_4_SRINV_3941
    );
  clk_divider_cnt_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y67",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_4_CLKINV_3940
    );
  clk_divider_cnt_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      O => clk_divider_cnt_10_LOGIC_ZERO_4108
    );
  clk_divider_cnt_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_10_XORF_4133,
      O => clk_divider_cnt_10_DXMUX_4135
    );
  clk_divider_cnt_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      I0 => clk_divider_cnt_10_CYINIT_4132,
      I1 => clk_divider_cnt_10_F,
      O => clk_divider_cnt_10_XORF_4133
    );
  clk_divider_cnt_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      IA => clk_divider_cnt_10_LOGIC_ZERO_4108,
      IB => clk_divider_cnt_10_CYINIT_4132,
      SEL => clk_divider_cnt_10_CYSELF_4114,
      O => clk_divider_Mcount_cnt_cy_10_Q
    );
  clk_divider_cnt_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      IA => clk_divider_cnt_10_LOGIC_ZERO_4108,
      IB => clk_divider_cnt_10_LOGIC_ZERO_4108,
      SEL => clk_divider_cnt_10_CYSELF_4114,
      O => clk_divider_cnt_10_CYMUXF2_4109
    );
  clk_divider_cnt_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_9_Q,
      O => clk_divider_cnt_10_CYINIT_4132
    );
  clk_divider_cnt_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_10_F,
      O => clk_divider_cnt_10_CYSELF_4114
    );
  clk_divider_cnt_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_10_XORG_4116,
      O => clk_divider_cnt_10_DYMUX_4118
    );
  clk_divider_cnt_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_10_Q,
      I1 => clk_divider_cnt_10_G,
      O => clk_divider_cnt_10_XORG_4116
    );
  clk_divider_cnt_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_10_CYMUXFAST_4113,
      O => clk_divider_Mcount_cnt_cy_11_Q
    );
  clk_divider_cnt_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_9_Q,
      O => clk_divider_cnt_10_FASTCARRY_4111
    );
  clk_divider_cnt_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      I0 => clk_divider_cnt_10_CYSELG_4099,
      I1 => clk_divider_cnt_10_CYSELF_4114,
      O => clk_divider_cnt_10_CYAND_4112
    );
  clk_divider_cnt_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      IA => clk_divider_cnt_10_CYMUXG2_4110,
      IB => clk_divider_cnt_10_FASTCARRY_4111,
      SEL => clk_divider_cnt_10_CYAND_4112,
      O => clk_divider_cnt_10_CYMUXFAST_4113
    );
  clk_divider_cnt_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y70"
    )
    port map (
      IA => clk_divider_cnt_10_LOGIC_ZERO_4108,
      IB => clk_divider_cnt_10_CYMUXF2_4109,
      SEL => clk_divider_cnt_10_CYSELG_4099,
      O => clk_divider_cnt_10_CYMUXG2_4110
    );
  clk_divider_cnt_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_10_G,
      O => clk_divider_cnt_10_CYSELG_4099
    );
  clk_divider_cnt_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_10_SRINV_4097
    );
  clk_divider_cnt_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y70",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_10_CLKINV_4096
    );
  clk_divider_cnt_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      O => clk_divider_cnt_18_LOGIC_ZERO_4316
    );
  clk_divider_cnt_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_18_XORF_4341,
      O => clk_divider_cnt_18_DXMUX_4343
    );
  clk_divider_cnt_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      I0 => clk_divider_cnt_18_CYINIT_4340,
      I1 => clk_divider_cnt_18_F,
      O => clk_divider_cnt_18_XORF_4341
    );
  clk_divider_cnt_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      IA => clk_divider_cnt_18_LOGIC_ZERO_4316,
      IB => clk_divider_cnt_18_CYINIT_4340,
      SEL => clk_divider_cnt_18_CYSELF_4322,
      O => clk_divider_Mcount_cnt_cy_18_Q
    );
  clk_divider_cnt_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      IA => clk_divider_cnt_18_LOGIC_ZERO_4316,
      IB => clk_divider_cnt_18_LOGIC_ZERO_4316,
      SEL => clk_divider_cnt_18_CYSELF_4322,
      O => clk_divider_cnt_18_CYMUXF2_4317
    );
  clk_divider_cnt_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_17_Q,
      O => clk_divider_cnt_18_CYINIT_4340
    );
  clk_divider_cnt_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_18_F,
      O => clk_divider_cnt_18_CYSELF_4322
    );
  clk_divider_cnt_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_18_XORG_4324,
      O => clk_divider_cnt_18_DYMUX_4326
    );
  clk_divider_cnt_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_18_Q,
      I1 => clk_divider_cnt_18_G,
      O => clk_divider_cnt_18_XORG_4324
    );
  clk_divider_cnt_18_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_18_CYMUXFAST_4321,
      O => clk_divider_Mcount_cnt_cy_19_Q
    );
  clk_divider_cnt_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_17_Q,
      O => clk_divider_cnt_18_FASTCARRY_4319
    );
  clk_divider_cnt_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      I0 => clk_divider_cnt_18_CYSELG_4307,
      I1 => clk_divider_cnt_18_CYSELF_4322,
      O => clk_divider_cnt_18_CYAND_4320
    );
  clk_divider_cnt_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      IA => clk_divider_cnt_18_CYMUXG2_4318,
      IB => clk_divider_cnt_18_FASTCARRY_4319,
      SEL => clk_divider_cnt_18_CYAND_4320,
      O => clk_divider_cnt_18_CYMUXFAST_4321
    );
  clk_divider_cnt_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y74"
    )
    port map (
      IA => clk_divider_cnt_18_LOGIC_ZERO_4316,
      IB => clk_divider_cnt_18_CYMUXF2_4317,
      SEL => clk_divider_cnt_18_CYSELG_4307,
      O => clk_divider_cnt_18_CYMUXG2_4318
    );
  clk_divider_cnt_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_18_G,
      O => clk_divider_cnt_18_CYSELG_4307
    );
  clk_divider_cnt_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_18_SRINV_4305
    );
  clk_divider_cnt_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y74",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_18_CLKINV_4304
    );
  clk_divider_cnt_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      O => clk_divider_cnt_16_LOGIC_ZERO_4264
    );
  clk_divider_cnt_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_16_XORF_4289,
      O => clk_divider_cnt_16_DXMUX_4291
    );
  clk_divider_cnt_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      I0 => clk_divider_cnt_16_CYINIT_4288,
      I1 => clk_divider_cnt_16_F,
      O => clk_divider_cnt_16_XORF_4289
    );
  clk_divider_cnt_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      IA => clk_divider_cnt_16_LOGIC_ZERO_4264,
      IB => clk_divider_cnt_16_CYINIT_4288,
      SEL => clk_divider_cnt_16_CYSELF_4270,
      O => clk_divider_Mcount_cnt_cy_16_Q
    );
  clk_divider_cnt_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      IA => clk_divider_cnt_16_LOGIC_ZERO_4264,
      IB => clk_divider_cnt_16_LOGIC_ZERO_4264,
      SEL => clk_divider_cnt_16_CYSELF_4270,
      O => clk_divider_cnt_16_CYMUXF2_4265
    );
  clk_divider_cnt_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_15_Q,
      O => clk_divider_cnt_16_CYINIT_4288
    );
  clk_divider_cnt_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_16_F,
      O => clk_divider_cnt_16_CYSELF_4270
    );
  clk_divider_cnt_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_16_XORG_4272,
      O => clk_divider_cnt_16_DYMUX_4274
    );
  clk_divider_cnt_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_16_Q,
      I1 => clk_divider_cnt_16_G,
      O => clk_divider_cnt_16_XORG_4272
    );
  clk_divider_cnt_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_16_CYMUXFAST_4269,
      O => clk_divider_Mcount_cnt_cy_17_Q
    );
  clk_divider_cnt_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_15_Q,
      O => clk_divider_cnt_16_FASTCARRY_4267
    );
  clk_divider_cnt_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      I0 => clk_divider_cnt_16_CYSELG_4255,
      I1 => clk_divider_cnt_16_CYSELF_4270,
      O => clk_divider_cnt_16_CYAND_4268
    );
  clk_divider_cnt_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      IA => clk_divider_cnt_16_CYMUXG2_4266,
      IB => clk_divider_cnt_16_FASTCARRY_4267,
      SEL => clk_divider_cnt_16_CYAND_4268,
      O => clk_divider_cnt_16_CYMUXFAST_4269
    );
  clk_divider_cnt_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y73"
    )
    port map (
      IA => clk_divider_cnt_16_LOGIC_ZERO_4264,
      IB => clk_divider_cnt_16_CYMUXF2_4265,
      SEL => clk_divider_cnt_16_CYSELG_4255,
      O => clk_divider_cnt_16_CYMUXG2_4266
    );
  clk_divider_cnt_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_16_G,
      O => clk_divider_cnt_16_CYSELG_4255
    );
  clk_divider_cnt_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_16_SRINV_4253
    );
  clk_divider_cnt_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y73",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_16_CLKINV_4252
    );
  clk_divider_cnt_20_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      O => clk_divider_cnt_20_LOGIC_ZERO_4368
    );
  clk_divider_cnt_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_20_XORF_4393,
      O => clk_divider_cnt_20_DXMUX_4395
    );
  clk_divider_cnt_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      I0 => clk_divider_cnt_20_CYINIT_4392,
      I1 => clk_divider_cnt_20_F,
      O => clk_divider_cnt_20_XORF_4393
    );
  clk_divider_cnt_20_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      IA => clk_divider_cnt_20_LOGIC_ZERO_4368,
      IB => clk_divider_cnt_20_CYINIT_4392,
      SEL => clk_divider_cnt_20_CYSELF_4374,
      O => clk_divider_Mcount_cnt_cy_20_Q
    );
  clk_divider_cnt_20_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      IA => clk_divider_cnt_20_LOGIC_ZERO_4368,
      IB => clk_divider_cnt_20_LOGIC_ZERO_4368,
      SEL => clk_divider_cnt_20_CYSELF_4374,
      O => clk_divider_cnt_20_CYMUXF2_4369
    );
  clk_divider_cnt_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_19_Q,
      O => clk_divider_cnt_20_CYINIT_4392
    );
  clk_divider_cnt_20_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_20_F,
      O => clk_divider_cnt_20_CYSELF_4374
    );
  clk_divider_cnt_20_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_20_XORG_4376,
      O => clk_divider_cnt_20_DYMUX_4378
    );
  clk_divider_cnt_20_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_20_Q,
      I1 => clk_divider_cnt_20_G,
      O => clk_divider_cnt_20_XORG_4376
    );
  clk_divider_cnt_20_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_20_CYMUXFAST_4373,
      O => clk_divider_Mcount_cnt_cy_21_Q
    );
  clk_divider_cnt_20_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_19_Q,
      O => clk_divider_cnt_20_FASTCARRY_4371
    );
  clk_divider_cnt_20_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      I0 => clk_divider_cnt_20_CYSELG_4359,
      I1 => clk_divider_cnt_20_CYSELF_4374,
      O => clk_divider_cnt_20_CYAND_4372
    );
  clk_divider_cnt_20_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      IA => clk_divider_cnt_20_CYMUXG2_4370,
      IB => clk_divider_cnt_20_FASTCARRY_4371,
      SEL => clk_divider_cnt_20_CYAND_4372,
      O => clk_divider_cnt_20_CYMUXFAST_4373
    );
  clk_divider_cnt_20_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y75"
    )
    port map (
      IA => clk_divider_cnt_20_LOGIC_ZERO_4368,
      IB => clk_divider_cnt_20_CYMUXF2_4369,
      SEL => clk_divider_cnt_20_CYSELG_4359,
      O => clk_divider_cnt_20_CYMUXG2_4370
    );
  clk_divider_cnt_20_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_20_G,
      O => clk_divider_cnt_20_CYSELG_4359
    );
  clk_divider_cnt_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_20_SRINV_4357
    );
  clk_divider_cnt_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_20_CLKINV_4356
    );
  clk_divider_cnt_22_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      O => clk_divider_cnt_22_LOGIC_ZERO_4420
    );
  clk_divider_cnt_22_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_22_XORF_4445,
      O => clk_divider_cnt_22_DXMUX_4447
    );
  clk_divider_cnt_22_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      I0 => clk_divider_cnt_22_CYINIT_4444,
      I1 => clk_divider_cnt_22_F,
      O => clk_divider_cnt_22_XORF_4445
    );
  clk_divider_cnt_22_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      IA => clk_divider_cnt_22_LOGIC_ZERO_4420,
      IB => clk_divider_cnt_22_CYINIT_4444,
      SEL => clk_divider_cnt_22_CYSELF_4426,
      O => clk_divider_Mcount_cnt_cy_22_Q
    );
  clk_divider_cnt_22_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      IA => clk_divider_cnt_22_LOGIC_ZERO_4420,
      IB => clk_divider_cnt_22_LOGIC_ZERO_4420,
      SEL => clk_divider_cnt_22_CYSELF_4426,
      O => clk_divider_cnt_22_CYMUXF2_4421
    );
  clk_divider_cnt_22_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_21_Q,
      O => clk_divider_cnt_22_CYINIT_4444
    );
  clk_divider_cnt_22_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_22_F,
      O => clk_divider_cnt_22_CYSELF_4426
    );
  clk_divider_cnt_22_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_22_XORG_4428,
      O => clk_divider_cnt_22_DYMUX_4430
    );
  clk_divider_cnt_22_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_22_Q,
      I1 => clk_divider_cnt_22_G,
      O => clk_divider_cnt_22_XORG_4428
    );
  clk_divider_cnt_22_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_22_CYMUXFAST_4425,
      O => clk_divider_Mcount_cnt_cy_23_Q
    );
  clk_divider_cnt_22_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_21_Q,
      O => clk_divider_cnt_22_FASTCARRY_4423
    );
  clk_divider_cnt_22_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      I0 => clk_divider_cnt_22_CYSELG_4411,
      I1 => clk_divider_cnt_22_CYSELF_4426,
      O => clk_divider_cnt_22_CYAND_4424
    );
  clk_divider_cnt_22_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      IA => clk_divider_cnt_22_CYMUXG2_4422,
      IB => clk_divider_cnt_22_FASTCARRY_4423,
      SEL => clk_divider_cnt_22_CYAND_4424,
      O => clk_divider_cnt_22_CYMUXFAST_4425
    );
  clk_divider_cnt_22_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y76"
    )
    port map (
      IA => clk_divider_cnt_22_LOGIC_ZERO_4420,
      IB => clk_divider_cnt_22_CYMUXF2_4421,
      SEL => clk_divider_cnt_22_CYSELG_4411,
      O => clk_divider_cnt_22_CYMUXG2_4422
    );
  clk_divider_cnt_22_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_22_G,
      O => clk_divider_cnt_22_CYSELG_4411
    );
  clk_divider_cnt_22_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_22_SRINV_4409
    );
  clk_divider_cnt_22_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_22_CLKINV_4408
    );
  clk_divider_cnt_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      O => clk_divider_cnt_12_LOGIC_ZERO_4160
    );
  clk_divider_cnt_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_12_XORF_4185,
      O => clk_divider_cnt_12_DXMUX_4187
    );
  clk_divider_cnt_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      I0 => clk_divider_cnt_12_CYINIT_4184,
      I1 => clk_divider_cnt_12_F,
      O => clk_divider_cnt_12_XORF_4185
    );
  clk_divider_cnt_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      IA => clk_divider_cnt_12_LOGIC_ZERO_4160,
      IB => clk_divider_cnt_12_CYINIT_4184,
      SEL => clk_divider_cnt_12_CYSELF_4166,
      O => clk_divider_Mcount_cnt_cy_12_Q
    );
  clk_divider_cnt_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      IA => clk_divider_cnt_12_LOGIC_ZERO_4160,
      IB => clk_divider_cnt_12_LOGIC_ZERO_4160,
      SEL => clk_divider_cnt_12_CYSELF_4166,
      O => clk_divider_cnt_12_CYMUXF2_4161
    );
  clk_divider_cnt_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_11_Q,
      O => clk_divider_cnt_12_CYINIT_4184
    );
  clk_divider_cnt_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_12_F,
      O => clk_divider_cnt_12_CYSELF_4166
    );
  clk_divider_cnt_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_12_XORG_4168,
      O => clk_divider_cnt_12_DYMUX_4170
    );
  clk_divider_cnt_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_12_Q,
      I1 => clk_divider_cnt_12_G,
      O => clk_divider_cnt_12_XORG_4168
    );
  clk_divider_cnt_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_12_CYMUXFAST_4165,
      O => clk_divider_Mcount_cnt_cy_13_Q
    );
  clk_divider_cnt_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_11_Q,
      O => clk_divider_cnt_12_FASTCARRY_4163
    );
  clk_divider_cnt_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      I0 => clk_divider_cnt_12_CYSELG_4151,
      I1 => clk_divider_cnt_12_CYSELF_4166,
      O => clk_divider_cnt_12_CYAND_4164
    );
  clk_divider_cnt_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      IA => clk_divider_cnt_12_CYMUXG2_4162,
      IB => clk_divider_cnt_12_FASTCARRY_4163,
      SEL => clk_divider_cnt_12_CYAND_4164,
      O => clk_divider_cnt_12_CYMUXFAST_4165
    );
  clk_divider_cnt_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y71"
    )
    port map (
      IA => clk_divider_cnt_12_LOGIC_ZERO_4160,
      IB => clk_divider_cnt_12_CYMUXF2_4161,
      SEL => clk_divider_cnt_12_CYSELG_4151,
      O => clk_divider_cnt_12_CYMUXG2_4162
    );
  clk_divider_cnt_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_12_G,
      O => clk_divider_cnt_12_CYSELG_4151
    );
  clk_divider_cnt_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_12_SRINV_4149
    );
  clk_divider_cnt_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y71",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_12_CLKINV_4148
    );
  clk_divider_cnt_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      O => clk_divider_cnt_14_LOGIC_ZERO_4212
    );
  clk_divider_cnt_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_14_XORF_4237,
      O => clk_divider_cnt_14_DXMUX_4239
    );
  clk_divider_cnt_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      I0 => clk_divider_cnt_14_CYINIT_4236,
      I1 => clk_divider_cnt_14_F,
      O => clk_divider_cnt_14_XORF_4237
    );
  clk_divider_cnt_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      IA => clk_divider_cnt_14_LOGIC_ZERO_4212,
      IB => clk_divider_cnt_14_CYINIT_4236,
      SEL => clk_divider_cnt_14_CYSELF_4218,
      O => clk_divider_Mcount_cnt_cy_14_Q
    );
  clk_divider_cnt_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      IA => clk_divider_cnt_14_LOGIC_ZERO_4212,
      IB => clk_divider_cnt_14_LOGIC_ZERO_4212,
      SEL => clk_divider_cnt_14_CYSELF_4218,
      O => clk_divider_cnt_14_CYMUXF2_4213
    );
  clk_divider_cnt_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_13_Q,
      O => clk_divider_cnt_14_CYINIT_4236
    );
  clk_divider_cnt_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_14_F,
      O => clk_divider_cnt_14_CYSELF_4218
    );
  clk_divider_cnt_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_14_XORG_4220,
      O => clk_divider_cnt_14_DYMUX_4222
    );
  clk_divider_cnt_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_14_Q,
      I1 => clk_divider_cnt_14_G,
      O => clk_divider_cnt_14_XORG_4220
    );
  clk_divider_cnt_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_14_CYMUXFAST_4217,
      O => clk_divider_Mcount_cnt_cy_15_Q
    );
  clk_divider_cnt_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_13_Q,
      O => clk_divider_cnt_14_FASTCARRY_4215
    );
  clk_divider_cnt_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      I0 => clk_divider_cnt_14_CYSELG_4203,
      I1 => clk_divider_cnt_14_CYSELF_4218,
      O => clk_divider_cnt_14_CYAND_4216
    );
  clk_divider_cnt_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      IA => clk_divider_cnt_14_CYMUXG2_4214,
      IB => clk_divider_cnt_14_FASTCARRY_4215,
      SEL => clk_divider_cnt_14_CYAND_4216,
      O => clk_divider_cnt_14_CYMUXFAST_4217
    );
  clk_divider_cnt_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y72"
    )
    port map (
      IA => clk_divider_cnt_14_LOGIC_ZERO_4212,
      IB => clk_divider_cnt_14_CYMUXF2_4213,
      SEL => clk_divider_cnt_14_CYSELG_4203,
      O => clk_divider_cnt_14_CYMUXG2_4214
    );
  clk_divider_cnt_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_14_G,
      O => clk_divider_cnt_14_CYSELG_4203
    );
  clk_divider_cnt_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_14_SRINV_4201
    );
  clk_divider_cnt_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y72",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_14_CLKINV_4200
    );
  lcd_cntrl_inst_count_temp_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_2_LOGIC_ZERO_4723
    );
  lcd_cntrl_inst_count_temp_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_XORF_4748,
      O => lcd_cntrl_inst_count_temp_2_DXMUX_4750
    );
  lcd_cntrl_inst_count_temp_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_2_CYINIT_4747,
      I1 => lcd_cntrl_inst_count_temp_2_F,
      O => lcd_cntrl_inst_count_temp_2_XORF_4748
    );
  lcd_cntrl_inst_count_temp_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_2_LOGIC_ZERO_4723,
      IB => lcd_cntrl_inst_count_temp_2_CYINIT_4747,
      SEL => lcd_cntrl_inst_count_temp_2_CYSELF_4729,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_2_Q
    );
  lcd_cntrl_inst_count_temp_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_2_LOGIC_ZERO_4723,
      IB => lcd_cntrl_inst_count_temp_2_LOGIC_ZERO_4723,
      SEL => lcd_cntrl_inst_count_temp_2_CYSELF_4729,
      O => lcd_cntrl_inst_count_temp_2_CYMUXF2_4724
    );
  lcd_cntrl_inst_count_temp_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_1_Q,
      O => lcd_cntrl_inst_count_temp_2_CYINIT_4747
    );
  lcd_cntrl_inst_count_temp_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_F,
      O => lcd_cntrl_inst_count_temp_2_CYSELF_4729
    );
  lcd_cntrl_inst_count_temp_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_XORG_4731,
      O => lcd_cntrl_inst_count_temp_2_DYMUX_4733
    );
  lcd_cntrl_inst_count_temp_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_2_Q,
      I1 => lcd_cntrl_inst_count_temp_2_G,
      O => lcd_cntrl_inst_count_temp_2_XORG_4731
    );
  lcd_cntrl_inst_count_temp_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_CYMUXFAST_4728,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_3_Q
    );
  lcd_cntrl_inst_count_temp_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_1_Q,
      O => lcd_cntrl_inst_count_temp_2_FASTCARRY_4726
    );
  lcd_cntrl_inst_count_temp_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_2_CYSELG_4714,
      I1 => lcd_cntrl_inst_count_temp_2_CYSELF_4729,
      O => lcd_cntrl_inst_count_temp_2_CYAND_4727
    );
  lcd_cntrl_inst_count_temp_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_2_CYMUXG2_4725,
      IB => lcd_cntrl_inst_count_temp_2_FASTCARRY_4726,
      SEL => lcd_cntrl_inst_count_temp_2_CYAND_4727,
      O => lcd_cntrl_inst_count_temp_2_CYMUXFAST_4728
    );
  lcd_cntrl_inst_count_temp_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_2_LOGIC_ZERO_4723,
      IB => lcd_cntrl_inst_count_temp_2_CYMUXF2_4724,
      SEL => lcd_cntrl_inst_count_temp_2_CYSELG_4714,
      O => lcd_cntrl_inst_count_temp_2_CYMUXG2_4725
    );
  lcd_cntrl_inst_count_temp_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_G,
      O => lcd_cntrl_inst_count_temp_2_CYSELG_4714
    );
  lcd_cntrl_inst_count_temp_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_2_SRINV_4712
    );
  lcd_cntrl_inst_count_temp_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_2_CLKINV_4711
    );
  clk_divider_cnt_26_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      O => clk_divider_cnt_26_LOGIC_ZERO_4524
    );
  clk_divider_cnt_26_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_26_XORF_4549,
      O => clk_divider_cnt_26_DXMUX_4551
    );
  clk_divider_cnt_26_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      I0 => clk_divider_cnt_26_CYINIT_4548,
      I1 => clk_divider_cnt_26_F,
      O => clk_divider_cnt_26_XORF_4549
    );
  clk_divider_cnt_26_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      IA => clk_divider_cnt_26_LOGIC_ZERO_4524,
      IB => clk_divider_cnt_26_CYINIT_4548,
      SEL => clk_divider_cnt_26_CYSELF_4530,
      O => clk_divider_Mcount_cnt_cy_26_Q
    );
  clk_divider_cnt_26_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      IA => clk_divider_cnt_26_LOGIC_ZERO_4524,
      IB => clk_divider_cnt_26_LOGIC_ZERO_4524,
      SEL => clk_divider_cnt_26_CYSELF_4530,
      O => clk_divider_cnt_26_CYMUXF2_4525
    );
  clk_divider_cnt_26_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_25_Q,
      O => clk_divider_cnt_26_CYINIT_4548
    );
  clk_divider_cnt_26_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_26_F,
      O => clk_divider_cnt_26_CYSELF_4530
    );
  clk_divider_cnt_26_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_26_XORG_4532,
      O => clk_divider_cnt_26_DYMUX_4534
    );
  clk_divider_cnt_26_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_26_Q,
      I1 => clk_divider_cnt_26_G,
      O => clk_divider_cnt_26_XORG_4532
    );
  clk_divider_cnt_26_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_26_CYMUXFAST_4529,
      O => clk_divider_Mcount_cnt_cy_27_Q
    );
  clk_divider_cnt_26_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_25_Q,
      O => clk_divider_cnt_26_FASTCARRY_4527
    );
  clk_divider_cnt_26_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      I0 => clk_divider_cnt_26_CYSELG_4515,
      I1 => clk_divider_cnt_26_CYSELF_4530,
      O => clk_divider_cnt_26_CYAND_4528
    );
  clk_divider_cnt_26_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      IA => clk_divider_cnt_26_CYMUXG2_4526,
      IB => clk_divider_cnt_26_FASTCARRY_4527,
      SEL => clk_divider_cnt_26_CYAND_4528,
      O => clk_divider_cnt_26_CYMUXFAST_4529
    );
  clk_divider_cnt_26_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y78"
    )
    port map (
      IA => clk_divider_cnt_26_LOGIC_ZERO_4524,
      IB => clk_divider_cnt_26_CYMUXF2_4525,
      SEL => clk_divider_cnt_26_CYSELG_4515,
      O => clk_divider_cnt_26_CYMUXG2_4526
    );
  clk_divider_cnt_26_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_26_G,
      O => clk_divider_cnt_26_CYSELG_4515
    );
  clk_divider_cnt_26_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_26_SRINV_4513
    );
  clk_divider_cnt_26_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y78",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_26_CLKINV_4512
    );
  clk_divider_cnt_30_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y80"
    )
    port map (
      O => clk_divider_cnt_30_LOGIC_ZERO_4645
    );
  clk_divider_cnt_30_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y80",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_30_XORF_4646,
      O => clk_divider_cnt_30_DXMUX_4648
    );
  clk_divider_cnt_30_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y80"
    )
    port map (
      I0 => clk_divider_cnt_30_CYINIT_4644,
      I1 => clk_divider_cnt_30_F,
      O => clk_divider_cnt_30_XORF_4646
    );
  clk_divider_cnt_30_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y80"
    )
    port map (
      IA => clk_divider_cnt_30_LOGIC_ZERO_4645,
      IB => clk_divider_cnt_30_CYINIT_4644,
      SEL => clk_divider_cnt_30_CYSELF_4635,
      O => clk_divider_Mcount_cnt_cy_30_Q
    );
  clk_divider_cnt_30_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y80",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_28_CYMUXFAST_4581,
      O => clk_divider_cnt_30_CYINIT_4644
    );
  clk_divider_cnt_30_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y80",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_30_F,
      O => clk_divider_cnt_30_CYSELF_4635
    );
  clk_divider_cnt_30_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y80",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_30_XORG_4627,
      O => clk_divider_cnt_30_DYMUX_4629
    );
  clk_divider_cnt_30_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y80"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_30_Q,
      I1 => clk_divider_cnt_31_rt_4624,
      O => clk_divider_cnt_30_XORG_4627
    );
  clk_divider_cnt_30_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y80",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_30_SRINV_4616
    );
  clk_divider_cnt_30_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y80",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_30_CLKINV_4615
    );
  clk_divider_cnt_24_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      O => clk_divider_cnt_24_LOGIC_ZERO_4472
    );
  clk_divider_cnt_24_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_24_XORF_4497,
      O => clk_divider_cnt_24_DXMUX_4499
    );
  clk_divider_cnt_24_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      I0 => clk_divider_cnt_24_CYINIT_4496,
      I1 => clk_divider_cnt_24_F,
      O => clk_divider_cnt_24_XORF_4497
    );
  clk_divider_cnt_24_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      IA => clk_divider_cnt_24_LOGIC_ZERO_4472,
      IB => clk_divider_cnt_24_CYINIT_4496,
      SEL => clk_divider_cnt_24_CYSELF_4478,
      O => clk_divider_Mcount_cnt_cy_24_Q
    );
  clk_divider_cnt_24_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      IA => clk_divider_cnt_24_LOGIC_ZERO_4472,
      IB => clk_divider_cnt_24_LOGIC_ZERO_4472,
      SEL => clk_divider_cnt_24_CYSELF_4478,
      O => clk_divider_cnt_24_CYMUXF2_4473
    );
  clk_divider_cnt_24_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_23_Q,
      O => clk_divider_cnt_24_CYINIT_4496
    );
  clk_divider_cnt_24_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_24_F,
      O => clk_divider_cnt_24_CYSELF_4478
    );
  clk_divider_cnt_24_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_24_XORG_4480,
      O => clk_divider_cnt_24_DYMUX_4482
    );
  clk_divider_cnt_24_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_24_Q,
      I1 => clk_divider_cnt_24_G,
      O => clk_divider_cnt_24_XORG_4480
    );
  clk_divider_cnt_24_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_24_CYMUXFAST_4477,
      O => clk_divider_Mcount_cnt_cy_25_Q
    );
  clk_divider_cnt_24_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_23_Q,
      O => clk_divider_cnt_24_FASTCARRY_4475
    );
  clk_divider_cnt_24_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      I0 => clk_divider_cnt_24_CYSELG_4463,
      I1 => clk_divider_cnt_24_CYSELF_4478,
      O => clk_divider_cnt_24_CYAND_4476
    );
  clk_divider_cnt_24_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      IA => clk_divider_cnt_24_CYMUXG2_4474,
      IB => clk_divider_cnt_24_FASTCARRY_4475,
      SEL => clk_divider_cnt_24_CYAND_4476,
      O => clk_divider_cnt_24_CYMUXFAST_4477
    );
  clk_divider_cnt_24_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y77"
    )
    port map (
      IA => clk_divider_cnt_24_LOGIC_ZERO_4472,
      IB => clk_divider_cnt_24_CYMUXF2_4473,
      SEL => clk_divider_cnt_24_CYSELG_4463,
      O => clk_divider_cnt_24_CYMUXG2_4474
    );
  clk_divider_cnt_24_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_24_G,
      O => clk_divider_cnt_24_CYSELG_4463
    );
  clk_divider_cnt_24_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_24_SRINV_4461
    );
  clk_divider_cnt_24_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_24_CLKINV_4460
    );
  clk_divider_cnt_28_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      O => clk_divider_cnt_28_LOGIC_ZERO_4576
    );
  clk_divider_cnt_28_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_28_XORF_4601,
      O => clk_divider_cnt_28_DXMUX_4603
    );
  clk_divider_cnt_28_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      I0 => clk_divider_cnt_28_CYINIT_4600,
      I1 => clk_divider_cnt_28_F,
      O => clk_divider_cnt_28_XORF_4601
    );
  clk_divider_cnt_28_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      IA => clk_divider_cnt_28_LOGIC_ZERO_4576,
      IB => clk_divider_cnt_28_CYINIT_4600,
      SEL => clk_divider_cnt_28_CYSELF_4582,
      O => clk_divider_Mcount_cnt_cy_28_Q
    );
  clk_divider_cnt_28_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      IA => clk_divider_cnt_28_LOGIC_ZERO_4576,
      IB => clk_divider_cnt_28_LOGIC_ZERO_4576,
      SEL => clk_divider_cnt_28_CYSELF_4582,
      O => clk_divider_cnt_28_CYMUXF2_4577
    );
  clk_divider_cnt_28_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_27_Q,
      O => clk_divider_cnt_28_CYINIT_4600
    );
  clk_divider_cnt_28_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_28_F,
      O => clk_divider_cnt_28_CYSELF_4582
    );
  clk_divider_cnt_28_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_28_XORG_4584,
      O => clk_divider_cnt_28_DYMUX_4586
    );
  clk_divider_cnt_28_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      I0 => clk_divider_Mcount_cnt_cy_28_Q,
      I1 => clk_divider_cnt_28_G,
      O => clk_divider_cnt_28_XORG_4584
    );
  clk_divider_cnt_28_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcount_cnt_cy_27_Q,
      O => clk_divider_cnt_28_FASTCARRY_4579
    );
  clk_divider_cnt_28_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      I0 => clk_divider_cnt_28_CYSELG_4567,
      I1 => clk_divider_cnt_28_CYSELF_4582,
      O => clk_divider_cnt_28_CYAND_4580
    );
  clk_divider_cnt_28_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      IA => clk_divider_cnt_28_CYMUXG2_4578,
      IB => clk_divider_cnt_28_FASTCARRY_4579,
      SEL => clk_divider_cnt_28_CYAND_4580,
      O => clk_divider_cnt_28_CYMUXFAST_4581
    );
  clk_divider_cnt_28_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y79"
    )
    port map (
      IA => clk_divider_cnt_28_LOGIC_ZERO_4576,
      IB => clk_divider_cnt_28_CYMUXF2_4577,
      SEL => clk_divider_cnt_28_CYSELG_4567,
      O => clk_divider_cnt_28_CYMUXG2_4578
    );
  clk_divider_cnt_28_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_28_G,
      O => clk_divider_cnt_28_CYSELG_4567
    );
  clk_divider_cnt_28_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_cnt_28_SRINV_4565
    );
  clk_divider_cnt_28_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y79",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_cnt_28_CLKINV_4564
    );
  lcd_cntrl_inst_count_temp_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_0_LOGIC_ZERO_4673
    );
  lcd_cntrl_inst_count_temp_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_0_LOGIC_ONE_4695
    );
  lcd_cntrl_inst_count_temp_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_XORF_4696,
      O => lcd_cntrl_inst_count_temp_0_DXMUX_4698
    );
  lcd_cntrl_inst_count_temp_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_0_CYINIT_4694,
      I1 => lcd_cntrl_inst_count_Mcount_temp_lut(0),
      O => lcd_cntrl_inst_count_temp_0_XORF_4696
    );
  lcd_cntrl_inst_count_temp_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_0_LOGIC_ONE_4695,
      IB => lcd_cntrl_inst_count_temp_0_CYINIT_4694,
      SEL => lcd_cntrl_inst_count_temp_0_CYSELF_4685,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_0_Q
    );
  lcd_cntrl_inst_count_temp_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_BXINV_4683,
      O => lcd_cntrl_inst_count_temp_0_CYINIT_4694
    );
  lcd_cntrl_inst_count_temp_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_lut(0),
      O => lcd_cntrl_inst_count_temp_0_CYSELF_4685
    );
  lcd_cntrl_inst_count_temp_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => lcd_cntrl_inst_count_temp_0_BXINV_4683
    );
  lcd_cntrl_inst_count_temp_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_XORG_4676,
      O => lcd_cntrl_inst_count_temp_0_DYMUX_4678
    );
  lcd_cntrl_inst_count_temp_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_0_Q,
      I1 => lcd_cntrl_inst_count_temp_0_G,
      O => lcd_cntrl_inst_count_temp_0_XORG_4676
    );
  lcd_cntrl_inst_count_temp_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_CYMUXG_4675,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_1_Q
    );
  lcd_cntrl_inst_count_temp_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X22Y32"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_0_LOGIC_ZERO_4673,
      IB => lcd_cntrl_inst_count_Mcount_temp_cy_0_Q,
      SEL => lcd_cntrl_inst_count_temp_0_CYSELG_4664,
      O => lcd_cntrl_inst_count_temp_0_CYMUXG_4675
    );
  lcd_cntrl_inst_count_temp_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_G,
      O => lcd_cntrl_inst_count_temp_0_CYSELG_4664
    );
  lcd_cntrl_inst_count_temp_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_0_SRINV_4662
    );
  lcd_cntrl_inst_count_temp_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_0_CLKINV_4661
    );
  lcd_cntrl_inst_count_temp_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_4_LOGIC_ZERO_4775
    );
  lcd_cntrl_inst_count_temp_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_XORF_4800,
      O => lcd_cntrl_inst_count_temp_4_DXMUX_4802
    );
  lcd_cntrl_inst_count_temp_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_4_CYINIT_4799,
      I1 => lcd_cntrl_inst_count_temp_4_F,
      O => lcd_cntrl_inst_count_temp_4_XORF_4800
    );
  lcd_cntrl_inst_count_temp_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_4_LOGIC_ZERO_4775,
      IB => lcd_cntrl_inst_count_temp_4_CYINIT_4799,
      SEL => lcd_cntrl_inst_count_temp_4_CYSELF_4781,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_4_Q
    );
  lcd_cntrl_inst_count_temp_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_4_LOGIC_ZERO_4775,
      IB => lcd_cntrl_inst_count_temp_4_LOGIC_ZERO_4775,
      SEL => lcd_cntrl_inst_count_temp_4_CYSELF_4781,
      O => lcd_cntrl_inst_count_temp_4_CYMUXF2_4776
    );
  lcd_cntrl_inst_count_temp_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_3_Q,
      O => lcd_cntrl_inst_count_temp_4_CYINIT_4799
    );
  lcd_cntrl_inst_count_temp_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_F,
      O => lcd_cntrl_inst_count_temp_4_CYSELF_4781
    );
  lcd_cntrl_inst_count_temp_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_XORG_4783,
      O => lcd_cntrl_inst_count_temp_4_DYMUX_4785
    );
  lcd_cntrl_inst_count_temp_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_4_Q,
      I1 => lcd_cntrl_inst_count_temp_4_G,
      O => lcd_cntrl_inst_count_temp_4_XORG_4783
    );
  lcd_cntrl_inst_count_temp_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_CYMUXFAST_4780,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_5_Q
    );
  lcd_cntrl_inst_count_temp_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_3_Q,
      O => lcd_cntrl_inst_count_temp_4_FASTCARRY_4778
    );
  lcd_cntrl_inst_count_temp_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_4_CYSELG_4766,
      I1 => lcd_cntrl_inst_count_temp_4_CYSELF_4781,
      O => lcd_cntrl_inst_count_temp_4_CYAND_4779
    );
  lcd_cntrl_inst_count_temp_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_4_CYMUXG2_4777,
      IB => lcd_cntrl_inst_count_temp_4_FASTCARRY_4778,
      SEL => lcd_cntrl_inst_count_temp_4_CYAND_4779,
      O => lcd_cntrl_inst_count_temp_4_CYMUXFAST_4780
    );
  lcd_cntrl_inst_count_temp_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_4_LOGIC_ZERO_4775,
      IB => lcd_cntrl_inst_count_temp_4_CYMUXF2_4776,
      SEL => lcd_cntrl_inst_count_temp_4_CYSELG_4766,
      O => lcd_cntrl_inst_count_temp_4_CYMUXG2_4777
    );
  lcd_cntrl_inst_count_temp_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_G,
      O => lcd_cntrl_inst_count_temp_4_CYSELG_4766
    );
  lcd_cntrl_inst_count_temp_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_4_SRINV_4764
    );
  lcd_cntrl_inst_count_temp_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y34",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_4_CLKINV_4763
    );
  lcd_cntrl_inst_count_temp_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_6_LOGIC_ZERO_4827
    );
  lcd_cntrl_inst_count_temp_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_XORF_4852,
      O => lcd_cntrl_inst_count_temp_6_DXMUX_4854
    );
  lcd_cntrl_inst_count_temp_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_6_CYINIT_4851,
      I1 => lcd_cntrl_inst_count_temp_6_F,
      O => lcd_cntrl_inst_count_temp_6_XORF_4852
    );
  lcd_cntrl_inst_count_temp_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_6_LOGIC_ZERO_4827,
      IB => lcd_cntrl_inst_count_temp_6_CYINIT_4851,
      SEL => lcd_cntrl_inst_count_temp_6_CYSELF_4833,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_6_Q
    );
  lcd_cntrl_inst_count_temp_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_6_LOGIC_ZERO_4827,
      IB => lcd_cntrl_inst_count_temp_6_LOGIC_ZERO_4827,
      SEL => lcd_cntrl_inst_count_temp_6_CYSELF_4833,
      O => lcd_cntrl_inst_count_temp_6_CYMUXF2_4828
    );
  lcd_cntrl_inst_count_temp_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_5_Q,
      O => lcd_cntrl_inst_count_temp_6_CYINIT_4851
    );
  lcd_cntrl_inst_count_temp_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_F,
      O => lcd_cntrl_inst_count_temp_6_CYSELF_4833
    );
  lcd_cntrl_inst_count_temp_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_XORG_4835,
      O => lcd_cntrl_inst_count_temp_6_DYMUX_4837
    );
  lcd_cntrl_inst_count_temp_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_6_Q,
      I1 => lcd_cntrl_inst_count_temp_6_G,
      O => lcd_cntrl_inst_count_temp_6_XORG_4835
    );
  lcd_cntrl_inst_count_temp_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_CYMUXFAST_4832,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_7_Q
    );
  lcd_cntrl_inst_count_temp_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_5_Q,
      O => lcd_cntrl_inst_count_temp_6_FASTCARRY_4830
    );
  lcd_cntrl_inst_count_temp_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_6_CYSELG_4818,
      I1 => lcd_cntrl_inst_count_temp_6_CYSELF_4833,
      O => lcd_cntrl_inst_count_temp_6_CYAND_4831
    );
  lcd_cntrl_inst_count_temp_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_6_CYMUXG2_4829,
      IB => lcd_cntrl_inst_count_temp_6_FASTCARRY_4830,
      SEL => lcd_cntrl_inst_count_temp_6_CYAND_4831,
      O => lcd_cntrl_inst_count_temp_6_CYMUXFAST_4832
    );
  lcd_cntrl_inst_count_temp_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_6_LOGIC_ZERO_4827,
      IB => lcd_cntrl_inst_count_temp_6_CYMUXF2_4828,
      SEL => lcd_cntrl_inst_count_temp_6_CYSELG_4818,
      O => lcd_cntrl_inst_count_temp_6_CYMUXG2_4829
    );
  lcd_cntrl_inst_count_temp_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_G,
      O => lcd_cntrl_inst_count_temp_6_CYSELG_4818
    );
  lcd_cntrl_inst_count_temp_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_6_SRINV_4816
    );
  lcd_cntrl_inst_count_temp_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_6_CLKINV_4815
    );
  lcd_cntrl_inst_count_temp_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_14_LOGIC_ZERO_5035
    );
  lcd_cntrl_inst_count_temp_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_XORF_5060,
      O => lcd_cntrl_inst_count_temp_14_DXMUX_5062
    );
  lcd_cntrl_inst_count_temp_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_14_CYINIT_5059,
      I1 => lcd_cntrl_inst_count_temp_14_F,
      O => lcd_cntrl_inst_count_temp_14_XORF_5060
    );
  lcd_cntrl_inst_count_temp_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_14_LOGIC_ZERO_5035,
      IB => lcd_cntrl_inst_count_temp_14_CYINIT_5059,
      SEL => lcd_cntrl_inst_count_temp_14_CYSELF_5041,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_14_Q
    );
  lcd_cntrl_inst_count_temp_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_14_LOGIC_ZERO_5035,
      IB => lcd_cntrl_inst_count_temp_14_LOGIC_ZERO_5035,
      SEL => lcd_cntrl_inst_count_temp_14_CYSELF_5041,
      O => lcd_cntrl_inst_count_temp_14_CYMUXF2_5036
    );
  lcd_cntrl_inst_count_temp_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_13_Q,
      O => lcd_cntrl_inst_count_temp_14_CYINIT_5059
    );
  lcd_cntrl_inst_count_temp_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_F,
      O => lcd_cntrl_inst_count_temp_14_CYSELF_5041
    );
  lcd_cntrl_inst_count_temp_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_XORG_5043,
      O => lcd_cntrl_inst_count_temp_14_DYMUX_5045
    );
  lcd_cntrl_inst_count_temp_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_14_Q,
      I1 => lcd_cntrl_inst_count_temp_14_G,
      O => lcd_cntrl_inst_count_temp_14_XORG_5043
    );
  lcd_cntrl_inst_count_temp_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_CYMUXFAST_5040,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_15_Q
    );
  lcd_cntrl_inst_count_temp_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_13_Q,
      O => lcd_cntrl_inst_count_temp_14_FASTCARRY_5038
    );
  lcd_cntrl_inst_count_temp_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_14_CYSELG_5026,
      I1 => lcd_cntrl_inst_count_temp_14_CYSELF_5041,
      O => lcd_cntrl_inst_count_temp_14_CYAND_5039
    );
  lcd_cntrl_inst_count_temp_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_14_CYMUXG2_5037,
      IB => lcd_cntrl_inst_count_temp_14_FASTCARRY_5038,
      SEL => lcd_cntrl_inst_count_temp_14_CYAND_5039,
      O => lcd_cntrl_inst_count_temp_14_CYMUXFAST_5040
    );
  lcd_cntrl_inst_count_temp_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_14_LOGIC_ZERO_5035,
      IB => lcd_cntrl_inst_count_temp_14_CYMUXF2_5036,
      SEL => lcd_cntrl_inst_count_temp_14_CYSELG_5026,
      O => lcd_cntrl_inst_count_temp_14_CYMUXG2_5037
    );
  lcd_cntrl_inst_count_temp_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_G,
      O => lcd_cntrl_inst_count_temp_14_CYSELG_5026
    );
  lcd_cntrl_inst_count_temp_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_14_SRINV_5024
    );
  lcd_cntrl_inst_count_temp_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_14_CLKINV_5023
    );
  lcd_cntrl_inst_count_temp_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_10_LOGIC_ZERO_4931
    );
  lcd_cntrl_inst_count_temp_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_XORF_4956,
      O => lcd_cntrl_inst_count_temp_10_DXMUX_4958
    );
  lcd_cntrl_inst_count_temp_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_10_CYINIT_4955,
      I1 => lcd_cntrl_inst_count_temp_10_F,
      O => lcd_cntrl_inst_count_temp_10_XORF_4956
    );
  lcd_cntrl_inst_count_temp_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_10_LOGIC_ZERO_4931,
      IB => lcd_cntrl_inst_count_temp_10_CYINIT_4955,
      SEL => lcd_cntrl_inst_count_temp_10_CYSELF_4937,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_10_Q
    );
  lcd_cntrl_inst_count_temp_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_10_LOGIC_ZERO_4931,
      IB => lcd_cntrl_inst_count_temp_10_LOGIC_ZERO_4931,
      SEL => lcd_cntrl_inst_count_temp_10_CYSELF_4937,
      O => lcd_cntrl_inst_count_temp_10_CYMUXF2_4932
    );
  lcd_cntrl_inst_count_temp_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_9_Q,
      O => lcd_cntrl_inst_count_temp_10_CYINIT_4955
    );
  lcd_cntrl_inst_count_temp_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_F,
      O => lcd_cntrl_inst_count_temp_10_CYSELF_4937
    );
  lcd_cntrl_inst_count_temp_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_XORG_4939,
      O => lcd_cntrl_inst_count_temp_10_DYMUX_4941
    );
  lcd_cntrl_inst_count_temp_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_10_Q,
      I1 => lcd_cntrl_inst_count_temp_10_G,
      O => lcd_cntrl_inst_count_temp_10_XORG_4939
    );
  lcd_cntrl_inst_count_temp_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_CYMUXFAST_4936,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_11_Q
    );
  lcd_cntrl_inst_count_temp_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_9_Q,
      O => lcd_cntrl_inst_count_temp_10_FASTCARRY_4934
    );
  lcd_cntrl_inst_count_temp_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_10_CYSELG_4922,
      I1 => lcd_cntrl_inst_count_temp_10_CYSELF_4937,
      O => lcd_cntrl_inst_count_temp_10_CYAND_4935
    );
  lcd_cntrl_inst_count_temp_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_10_CYMUXG2_4933,
      IB => lcd_cntrl_inst_count_temp_10_FASTCARRY_4934,
      SEL => lcd_cntrl_inst_count_temp_10_CYAND_4935,
      O => lcd_cntrl_inst_count_temp_10_CYMUXFAST_4936
    );
  lcd_cntrl_inst_count_temp_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y37"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_10_LOGIC_ZERO_4931,
      IB => lcd_cntrl_inst_count_temp_10_CYMUXF2_4932,
      SEL => lcd_cntrl_inst_count_temp_10_CYSELG_4922,
      O => lcd_cntrl_inst_count_temp_10_CYMUXG2_4933
    );
  lcd_cntrl_inst_count_temp_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_G,
      O => lcd_cntrl_inst_count_temp_10_CYSELG_4922
    );
  lcd_cntrl_inst_count_temp_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_10_SRINV_4920
    );
  lcd_cntrl_inst_count_temp_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_10_CLKINV_4919
    );
  lcd_cntrl_inst_count_temp_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_12_LOGIC_ZERO_4983
    );
  lcd_cntrl_inst_count_temp_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_XORF_5008,
      O => lcd_cntrl_inst_count_temp_12_DXMUX_5010
    );
  lcd_cntrl_inst_count_temp_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_12_CYINIT_5007,
      I1 => lcd_cntrl_inst_count_temp_12_F,
      O => lcd_cntrl_inst_count_temp_12_XORF_5008
    );
  lcd_cntrl_inst_count_temp_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_12_LOGIC_ZERO_4983,
      IB => lcd_cntrl_inst_count_temp_12_CYINIT_5007,
      SEL => lcd_cntrl_inst_count_temp_12_CYSELF_4989,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_12_Q
    );
  lcd_cntrl_inst_count_temp_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_12_LOGIC_ZERO_4983,
      IB => lcd_cntrl_inst_count_temp_12_LOGIC_ZERO_4983,
      SEL => lcd_cntrl_inst_count_temp_12_CYSELF_4989,
      O => lcd_cntrl_inst_count_temp_12_CYMUXF2_4984
    );
  lcd_cntrl_inst_count_temp_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_11_Q,
      O => lcd_cntrl_inst_count_temp_12_CYINIT_5007
    );
  lcd_cntrl_inst_count_temp_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_F,
      O => lcd_cntrl_inst_count_temp_12_CYSELF_4989
    );
  lcd_cntrl_inst_count_temp_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_XORG_4991,
      O => lcd_cntrl_inst_count_temp_12_DYMUX_4993
    );
  lcd_cntrl_inst_count_temp_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_12_Q,
      I1 => lcd_cntrl_inst_count_temp_12_G,
      O => lcd_cntrl_inst_count_temp_12_XORG_4991
    );
  lcd_cntrl_inst_count_temp_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_CYMUXFAST_4988,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_13_Q
    );
  lcd_cntrl_inst_count_temp_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_11_Q,
      O => lcd_cntrl_inst_count_temp_12_FASTCARRY_4986
    );
  lcd_cntrl_inst_count_temp_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_12_CYSELG_4974,
      I1 => lcd_cntrl_inst_count_temp_12_CYSELF_4989,
      O => lcd_cntrl_inst_count_temp_12_CYAND_4987
    );
  lcd_cntrl_inst_count_temp_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_12_CYMUXG2_4985,
      IB => lcd_cntrl_inst_count_temp_12_FASTCARRY_4986,
      SEL => lcd_cntrl_inst_count_temp_12_CYAND_4987,
      O => lcd_cntrl_inst_count_temp_12_CYMUXFAST_4988
    );
  lcd_cntrl_inst_count_temp_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_12_LOGIC_ZERO_4983,
      IB => lcd_cntrl_inst_count_temp_12_CYMUXF2_4984,
      SEL => lcd_cntrl_inst_count_temp_12_CYSELG_4974,
      O => lcd_cntrl_inst_count_temp_12_CYMUXG2_4985
    );
  lcd_cntrl_inst_count_temp_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_G,
      O => lcd_cntrl_inst_count_temp_12_CYSELG_4974
    );
  lcd_cntrl_inst_count_temp_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_12_SRINV_4972
    );
  lcd_cntrl_inst_count_temp_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_12_CLKINV_4971
    );
  lcd_cntrl_inst_count_temp_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_16_LOGIC_ZERO_5087
    );
  lcd_cntrl_inst_count_temp_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_XORF_5112,
      O => lcd_cntrl_inst_count_temp_16_DXMUX_5114
    );
  lcd_cntrl_inst_count_temp_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_16_CYINIT_5111,
      I1 => lcd_cntrl_inst_count_temp_16_F,
      O => lcd_cntrl_inst_count_temp_16_XORF_5112
    );
  lcd_cntrl_inst_count_temp_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_16_LOGIC_ZERO_5087,
      IB => lcd_cntrl_inst_count_temp_16_CYINIT_5111,
      SEL => lcd_cntrl_inst_count_temp_16_CYSELF_5093,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_16_Q
    );
  lcd_cntrl_inst_count_temp_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_16_LOGIC_ZERO_5087,
      IB => lcd_cntrl_inst_count_temp_16_LOGIC_ZERO_5087,
      SEL => lcd_cntrl_inst_count_temp_16_CYSELF_5093,
      O => lcd_cntrl_inst_count_temp_16_CYMUXF2_5088
    );
  lcd_cntrl_inst_count_temp_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_15_Q,
      O => lcd_cntrl_inst_count_temp_16_CYINIT_5111
    );
  lcd_cntrl_inst_count_temp_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_F,
      O => lcd_cntrl_inst_count_temp_16_CYSELF_5093
    );
  lcd_cntrl_inst_count_temp_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_XORG_5095,
      O => lcd_cntrl_inst_count_temp_16_DYMUX_5097
    );
  lcd_cntrl_inst_count_temp_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_16_Q,
      I1 => lcd_cntrl_inst_count_temp_16_G,
      O => lcd_cntrl_inst_count_temp_16_XORG_5095
    );
  lcd_cntrl_inst_count_temp_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_CYMUXFAST_5092,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_17_Q
    );
  lcd_cntrl_inst_count_temp_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_15_Q,
      O => lcd_cntrl_inst_count_temp_16_FASTCARRY_5090
    );
  lcd_cntrl_inst_count_temp_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_16_CYSELG_5078,
      I1 => lcd_cntrl_inst_count_temp_16_CYSELF_5093,
      O => lcd_cntrl_inst_count_temp_16_CYAND_5091
    );
  lcd_cntrl_inst_count_temp_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_16_CYMUXG2_5089,
      IB => lcd_cntrl_inst_count_temp_16_FASTCARRY_5090,
      SEL => lcd_cntrl_inst_count_temp_16_CYAND_5091,
      O => lcd_cntrl_inst_count_temp_16_CYMUXFAST_5092
    );
  lcd_cntrl_inst_count_temp_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_16_LOGIC_ZERO_5087,
      IB => lcd_cntrl_inst_count_temp_16_CYMUXF2_5088,
      SEL => lcd_cntrl_inst_count_temp_16_CYSELG_5078,
      O => lcd_cntrl_inst_count_temp_16_CYMUXG2_5089
    );
  lcd_cntrl_inst_count_temp_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_G,
      O => lcd_cntrl_inst_count_temp_16_CYSELG_5078
    );
  lcd_cntrl_inst_count_temp_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_16_SRINV_5076
    );
  lcd_cntrl_inst_count_temp_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_16_CLKINV_5075
    );
  lcd_cntrl_inst_count_temp_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_8_LOGIC_ZERO_4879
    );
  lcd_cntrl_inst_count_temp_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_XORF_4904,
      O => lcd_cntrl_inst_count_temp_8_DXMUX_4906
    );
  lcd_cntrl_inst_count_temp_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_8_CYINIT_4903,
      I1 => lcd_cntrl_inst_count_temp_8_F,
      O => lcd_cntrl_inst_count_temp_8_XORF_4904
    );
  lcd_cntrl_inst_count_temp_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_8_LOGIC_ZERO_4879,
      IB => lcd_cntrl_inst_count_temp_8_CYINIT_4903,
      SEL => lcd_cntrl_inst_count_temp_8_CYSELF_4885,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_8_Q
    );
  lcd_cntrl_inst_count_temp_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_8_LOGIC_ZERO_4879,
      IB => lcd_cntrl_inst_count_temp_8_LOGIC_ZERO_4879,
      SEL => lcd_cntrl_inst_count_temp_8_CYSELF_4885,
      O => lcd_cntrl_inst_count_temp_8_CYMUXF2_4880
    );
  lcd_cntrl_inst_count_temp_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_7_Q,
      O => lcd_cntrl_inst_count_temp_8_CYINIT_4903
    );
  lcd_cntrl_inst_count_temp_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_F,
      O => lcd_cntrl_inst_count_temp_8_CYSELF_4885
    );
  lcd_cntrl_inst_count_temp_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_XORG_4887,
      O => lcd_cntrl_inst_count_temp_8_DYMUX_4889
    );
  lcd_cntrl_inst_count_temp_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_8_Q,
      I1 => lcd_cntrl_inst_count_temp_8_G,
      O => lcd_cntrl_inst_count_temp_8_XORG_4887
    );
  lcd_cntrl_inst_count_temp_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_CYMUXFAST_4884,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_9_Q
    );
  lcd_cntrl_inst_count_temp_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_7_Q,
      O => lcd_cntrl_inst_count_temp_8_FASTCARRY_4882
    );
  lcd_cntrl_inst_count_temp_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_8_CYSELG_4870,
      I1 => lcd_cntrl_inst_count_temp_8_CYSELF_4885,
      O => lcd_cntrl_inst_count_temp_8_CYAND_4883
    );
  lcd_cntrl_inst_count_temp_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_8_CYMUXG2_4881,
      IB => lcd_cntrl_inst_count_temp_8_FASTCARRY_4882,
      SEL => lcd_cntrl_inst_count_temp_8_CYAND_4883,
      O => lcd_cntrl_inst_count_temp_8_CYMUXFAST_4884
    );
  lcd_cntrl_inst_count_temp_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_8_LOGIC_ZERO_4879,
      IB => lcd_cntrl_inst_count_temp_8_CYMUXF2_4880,
      SEL => lcd_cntrl_inst_count_temp_8_CYSELG_4870,
      O => lcd_cntrl_inst_count_temp_8_CYMUXG2_4881
    );
  lcd_cntrl_inst_count_temp_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_G,
      O => lcd_cntrl_inst_count_temp_8_CYSELG_4870
    );
  lcd_cntrl_inst_count_temp_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_8_SRINV_4868
    );
  lcd_cntrl_inst_count_temp_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y36",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_8_CLKINV_4867
    );
  lcd_cntrl_inst_count_temp_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_18_LOGIC_ZERO_5139
    );
  lcd_cntrl_inst_count_temp_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_XORF_5164,
      O => lcd_cntrl_inst_count_temp_18_DXMUX_5166
    );
  lcd_cntrl_inst_count_temp_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_18_CYINIT_5163,
      I1 => lcd_cntrl_inst_count_temp_18_F,
      O => lcd_cntrl_inst_count_temp_18_XORF_5164
    );
  lcd_cntrl_inst_count_temp_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_18_LOGIC_ZERO_5139,
      IB => lcd_cntrl_inst_count_temp_18_CYINIT_5163,
      SEL => lcd_cntrl_inst_count_temp_18_CYSELF_5145,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_18_Q
    );
  lcd_cntrl_inst_count_temp_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_18_LOGIC_ZERO_5139,
      IB => lcd_cntrl_inst_count_temp_18_LOGIC_ZERO_5139,
      SEL => lcd_cntrl_inst_count_temp_18_CYSELF_5145,
      O => lcd_cntrl_inst_count_temp_18_CYMUXF2_5140
    );
  lcd_cntrl_inst_count_temp_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_17_Q,
      O => lcd_cntrl_inst_count_temp_18_CYINIT_5163
    );
  lcd_cntrl_inst_count_temp_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_F,
      O => lcd_cntrl_inst_count_temp_18_CYSELF_5145
    );
  lcd_cntrl_inst_count_temp_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_XORG_5147,
      O => lcd_cntrl_inst_count_temp_18_DYMUX_5149
    );
  lcd_cntrl_inst_count_temp_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_18_Q,
      I1 => lcd_cntrl_inst_count_temp_18_G,
      O => lcd_cntrl_inst_count_temp_18_XORG_5147
    );
  lcd_cntrl_inst_count_temp_18_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_CYMUXFAST_5144,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_19_Q
    );
  lcd_cntrl_inst_count_temp_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_17_Q,
      O => lcd_cntrl_inst_count_temp_18_FASTCARRY_5142
    );
  lcd_cntrl_inst_count_temp_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_18_CYSELG_5130,
      I1 => lcd_cntrl_inst_count_temp_18_CYSELF_5145,
      O => lcd_cntrl_inst_count_temp_18_CYAND_5143
    );
  lcd_cntrl_inst_count_temp_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_18_CYMUXG2_5141,
      IB => lcd_cntrl_inst_count_temp_18_FASTCARRY_5142,
      SEL => lcd_cntrl_inst_count_temp_18_CYAND_5143,
      O => lcd_cntrl_inst_count_temp_18_CYMUXFAST_5144
    );
  lcd_cntrl_inst_count_temp_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_18_LOGIC_ZERO_5139,
      IB => lcd_cntrl_inst_count_temp_18_CYMUXF2_5140,
      SEL => lcd_cntrl_inst_count_temp_18_CYSELG_5130,
      O => lcd_cntrl_inst_count_temp_18_CYMUXG2_5141
    );
  lcd_cntrl_inst_count_temp_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_G,
      O => lcd_cntrl_inst_count_temp_18_CYSELG_5130
    );
  lcd_cntrl_inst_count_temp_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_18_SRINV_5128
    );
  lcd_cntrl_inst_count_temp_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_18_CLKINV_5127
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(19),
      ADR1 => lcd_cntrl_inst_count(17),
      ADR2 => lcd_cntrl_inst_count(20),
      ADR3 => lcd_cntrl_inst_count(18),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(4)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(22),
      ADR1 => lcd_cntrl_inst_count(23),
      ADR2 => lcd_cntrl_inst_count(24),
      ADR3 => lcd_cntrl_inst_count(21),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(5)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y45"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_LOGIC_ZERO_5552
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_LOGIC_ZERO_5552,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_LOGIC_ZERO_5552,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELF_5558,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXF2_5553
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(4),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELF_5558
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXFAST_5527,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_FASTCARRY_5555
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELG_5546,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELF_5558,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYAND_5556
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXG2_5554,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_FASTCARRY_5555,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYAND_5556,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXFAST_5557
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_LOGIC_ZERO_5552,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXF2_5553,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELG_5546,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXG2_5554
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(5),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYSELG_5546
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ONE_5687
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ZERO_5701
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ZERO_5701,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ZERO_5701,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELF_5693,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXF2_5688
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_4_1_5694,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELF_5693
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXFAST_5659,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_FASTCARRY_5690
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELG_5678,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELF_5693,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYAND_5691
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXG2_5689,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_FASTCARRY_5690,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYAND_5691,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXFAST_5692
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_LOGIC_ONE_5687,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXF2_5688,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELG_5678,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXG2_5689
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_10_rt_5677,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYSELG_5678
    );
  lcd_cntrl_inst_count_10_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X16Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(10),
      O => lcd_cntrl_inst_count_10_rt_5677
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y40"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ONE_5627
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y40"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ZERO_5639
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X16Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ZERO_5639,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYINIT_5638,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELF_5632,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_1
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X16Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_BXINV_5630,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYINIT_5638
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_1_5631,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELF_5632
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_BXINV_5630
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X16Y40"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_LOGIC_ONE_5627,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_1,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELG_5618,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYMUXG_5629
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_4_rt_5617,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYSELG_5618
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X15Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(30),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(29),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(7)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y46"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_LOGIC_ZERO_5582
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y46"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_LOGIC_ZERO_5582,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_LOGIC_ZERO_5582,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELF_5588,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXF2_5583
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(6),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELF_5588
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_CYMUXFAST_5557,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_FASTCARRY_5585
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y46"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELG_5574,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELF_5588,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYAND_5586
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y46"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXG2_5584,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_FASTCARRY_5585,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYAND_5586,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXFAST_5587
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y46"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_LOGIC_ZERO_5582,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXF2_5583,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELG_5574,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXG2_5584
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(7),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYSELG_5574
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y46"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(27),
      ADR1 => lcd_cntrl_inst_count(28),
      ADR2 => lcd_cntrl_inst_count(26),
      ADR3 => lcd_cntrl_inst_count(25),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(6)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_3_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X15Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(31),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(8)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y47"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CY0F_5608,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYINIT_5609,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYSELF_5599,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_Q
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_CYMUXFAST_5587,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYINIT_5609
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CY0F_5608
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(8),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_CYSELF_5599
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ONE_5748
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ZERO_5763
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ZERO_5763,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ZERO_5763,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELF_5754,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXF2_5749
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_1_5755,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELF_5754
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXFAST_5721,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_FASTCARRY_5751
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELG_5740,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELF_5754,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYAND_5752
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXG2_5750,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_FASTCARRY_5751,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYAND_5752,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXFAST_5753
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_LOGIC_ONE_5748,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXF2_5749,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELG_5740,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXG2_5750
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(9),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYSELG_5740
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X16Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(16),
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(17),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(9)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y45"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_LOGIC_ZERO_5781
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_LOGIC_ZERO_5781,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_LOGIC_ZERO_5781,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELF_5787,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXF2_5782
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(10),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELF_5787
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_9_CYMUXFAST_5753,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_FASTCARRY_5784
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELG_5775,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELF_5787,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYAND_5785
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXG2_5783,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_FASTCARRY_5784,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYAND_5785,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXFAST_5786
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y45"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_LOGIC_ZERO_5781,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXF2_5782,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELG_5775,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXG2_5783
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(11),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYSELG_5775
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(25),
      ADR1 => lcd_cntrl_inst_count(24),
      ADR2 => lcd_cntrl_inst_count(23),
      ADR3 => lcd_cntrl_inst_count(22),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(11)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(14),
      ADR1 => lcd_cntrl_inst_count(16),
      ADR2 => lcd_cntrl_inst_count(15),
      ADR3 => lcd_cntrl_inst_count(13),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(3)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(10),
      ADR1 => lcd_cntrl_inst_count(11),
      ADR2 => lcd_cntrl_inst_count(9),
      ADR3 => lcd_cntrl_inst_count(12),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(2)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y44"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_LOGIC_ZERO_5522
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_LOGIC_ZERO_5522,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_LOGIC_ZERO_5522,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELF_5528,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXF2_5523
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(2),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELF_5528
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYMUXG_5495,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_FASTCARRY_5525
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELG_5516,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELF_5528,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYAND_5526
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXG2_5524,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_FASTCARRY_5525,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYAND_5526,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXFAST_5527
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y44"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_LOGIC_ZERO_5522,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXF2_5523,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELG_5516,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYMUXG2_5524
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(3),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_CYSELG_5516
    );
  lcd_cntrl_inst_count_4_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X16Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(4),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_4_rt_5617
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y40"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(3),
      ADR1 => lcd_cntrl_inst_count(0),
      ADR2 => lcd_cntrl_inst_count(1),
      ADR3 => lcd_cntrl_inst_count(2),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_1_5631
    );
  lcd_cntrl_inst_count_6_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X16Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(6),
      O => lcd_cntrl_inst_count_6_rt_5644
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ONE_5654
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ZERO_5670
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ZERO_5670,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ZERO_5670,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELF_5660,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXF2_5655
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_2_1,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELF_5660
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_1_CYMUXG_5629,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_FASTCARRY_5657
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELG_5645,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELF_5660,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYAND_5658
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXG2_5656,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_FASTCARRY_5657,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYAND_5658,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXFAST_5659
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_LOGIC_ONE_5654,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXF2_5655,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELG_5645,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYMUXG2_5656
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_6_rt_5644,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_3_1_CYSELG_5645
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X16Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(12),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(13),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_1_5707
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ONE_5716
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ZERO_5732
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ZERO_5732,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ZERO_5732,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELF_5722,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXF2_5717
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_6_1,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELF_5722
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_5_1_CYMUXFAST_5692,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_FASTCARRY_5719
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELG_5708,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELF_5722,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYAND_5720
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXG2_5718,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_FASTCARRY_5719,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYAND_5720,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXFAST_5721
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_LOGIC_ONE_5716,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXF2_5717,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELG_5708,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYMUXG2_5718
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_1_5707,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_7_1_CYSELG_5708
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_6_1_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X16Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_6_1
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(21),
      ADR1 => lcd_cntrl_inst_count(20),
      ADR2 => lcd_cntrl_inst_count(18),
      ADR3 => lcd_cntrl_inst_count(19),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(10)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_2_1_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X16Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_2_1
    );
  lcd_cntrl_inst_count_temp_22 : X_SFF
    generic map(
      LOC => "SLICE_X22Y43",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_DXMUX_5270,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_22_CLKINV_5231,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_22_SRINV_5232,
      O => lcd_cntrl_inst_count_temp(22)
    );
  lcd_cntrl_inst_count_temp_23 : X_SFF
    generic map(
      LOC => "SLICE_X22Y43",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_DYMUX_5253,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_22_CLKINV_5231,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_22_SRINV_5232,
      O => lcd_cntrl_inst_count_temp(23)
    );
  lcd_cntrl_inst_count_temp_22_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_22_LOGIC_ZERO_5243
    );
  lcd_cntrl_inst_count_temp_22_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_XORF_5268,
      O => lcd_cntrl_inst_count_temp_22_DXMUX_5270
    );
  lcd_cntrl_inst_count_temp_22_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_22_CYINIT_5267,
      I1 => lcd_cntrl_inst_count_temp_22_F,
      O => lcd_cntrl_inst_count_temp_22_XORF_5268
    );
  lcd_cntrl_inst_count_temp_22_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_22_LOGIC_ZERO_5243,
      IB => lcd_cntrl_inst_count_temp_22_CYINIT_5267,
      SEL => lcd_cntrl_inst_count_temp_22_CYSELF_5249,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_22_Q
    );
  lcd_cntrl_inst_count_temp_22_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_22_LOGIC_ZERO_5243,
      IB => lcd_cntrl_inst_count_temp_22_LOGIC_ZERO_5243,
      SEL => lcd_cntrl_inst_count_temp_22_CYSELF_5249,
      O => lcd_cntrl_inst_count_temp_22_CYMUXF2_5244
    );
  lcd_cntrl_inst_count_temp_22_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_21_Q,
      O => lcd_cntrl_inst_count_temp_22_CYINIT_5267
    );
  lcd_cntrl_inst_count_temp_22_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_F,
      O => lcd_cntrl_inst_count_temp_22_CYSELF_5249
    );
  lcd_cntrl_inst_count_temp_22_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_XORG_5251,
      O => lcd_cntrl_inst_count_temp_22_DYMUX_5253
    );
  lcd_cntrl_inst_count_temp_22_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_22_Q,
      I1 => lcd_cntrl_inst_count_temp_22_G,
      O => lcd_cntrl_inst_count_temp_22_XORG_5251
    );
  lcd_cntrl_inst_count_temp_22_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_CYMUXFAST_5248,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_23_Q
    );
  lcd_cntrl_inst_count_temp_22_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_21_Q,
      O => lcd_cntrl_inst_count_temp_22_FASTCARRY_5246
    );
  lcd_cntrl_inst_count_temp_22_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_22_CYSELG_5234,
      I1 => lcd_cntrl_inst_count_temp_22_CYSELF_5249,
      O => lcd_cntrl_inst_count_temp_22_CYAND_5247
    );
  lcd_cntrl_inst_count_temp_22_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_22_CYMUXG2_5245,
      IB => lcd_cntrl_inst_count_temp_22_FASTCARRY_5246,
      SEL => lcd_cntrl_inst_count_temp_22_CYAND_5247,
      O => lcd_cntrl_inst_count_temp_22_CYMUXFAST_5248
    );
  lcd_cntrl_inst_count_temp_22_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y43"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_22_LOGIC_ZERO_5243,
      IB => lcd_cntrl_inst_count_temp_22_CYMUXF2_5244,
      SEL => lcd_cntrl_inst_count_temp_22_CYSELG_5234,
      O => lcd_cntrl_inst_count_temp_22_CYMUXG2_5245
    );
  lcd_cntrl_inst_count_temp_22_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_22_G,
      O => lcd_cntrl_inst_count_temp_22_CYSELG_5234
    );
  lcd_cntrl_inst_count_temp_22_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_22_SRINV_5232
    );
  lcd_cntrl_inst_count_temp_22_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_22_CLKINV_5231
    );
  lcd_cntrl_inst_count_temp_28 : X_SFF
    generic map(
      LOC => "SLICE_X22Y46",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_DXMUX_5426,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_28_CLKINV_5387,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_28_SRINV_5388,
      O => lcd_cntrl_inst_count_temp(28)
    );
  lcd_cntrl_inst_count_temp_29 : X_SFF
    generic map(
      LOC => "SLICE_X22Y46",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_DYMUX_5409,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_28_CLKINV_5387,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_28_SRINV_5388,
      O => lcd_cntrl_inst_count_temp(29)
    );
  lcd_cntrl_inst_count_temp_28_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_28_LOGIC_ZERO_5399
    );
  lcd_cntrl_inst_count_temp_28_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_XORF_5424,
      O => lcd_cntrl_inst_count_temp_28_DXMUX_5426
    );
  lcd_cntrl_inst_count_temp_28_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_28_CYINIT_5423,
      I1 => lcd_cntrl_inst_count_temp_28_F,
      O => lcd_cntrl_inst_count_temp_28_XORF_5424
    );
  lcd_cntrl_inst_count_temp_28_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_28_LOGIC_ZERO_5399,
      IB => lcd_cntrl_inst_count_temp_28_CYINIT_5423,
      SEL => lcd_cntrl_inst_count_temp_28_CYSELF_5405,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_28_Q
    );
  lcd_cntrl_inst_count_temp_28_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_28_LOGIC_ZERO_5399,
      IB => lcd_cntrl_inst_count_temp_28_LOGIC_ZERO_5399,
      SEL => lcd_cntrl_inst_count_temp_28_CYSELF_5405,
      O => lcd_cntrl_inst_count_temp_28_CYMUXF2_5400
    );
  lcd_cntrl_inst_count_temp_28_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_27_Q,
      O => lcd_cntrl_inst_count_temp_28_CYINIT_5423
    );
  lcd_cntrl_inst_count_temp_28_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_F,
      O => lcd_cntrl_inst_count_temp_28_CYSELF_5405
    );
  lcd_cntrl_inst_count_temp_28_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_XORG_5407,
      O => lcd_cntrl_inst_count_temp_28_DYMUX_5409
    );
  lcd_cntrl_inst_count_temp_28_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_28_Q,
      I1 => lcd_cntrl_inst_count_temp_28_G,
      O => lcd_cntrl_inst_count_temp_28_XORG_5407
    );
  lcd_cntrl_inst_count_temp_28_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_27_Q,
      O => lcd_cntrl_inst_count_temp_28_FASTCARRY_5402
    );
  lcd_cntrl_inst_count_temp_28_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_28_CYSELG_5390,
      I1 => lcd_cntrl_inst_count_temp_28_CYSELF_5405,
      O => lcd_cntrl_inst_count_temp_28_CYAND_5403
    );
  lcd_cntrl_inst_count_temp_28_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_28_CYMUXG2_5401,
      IB => lcd_cntrl_inst_count_temp_28_FASTCARRY_5402,
      SEL => lcd_cntrl_inst_count_temp_28_CYAND_5403,
      O => lcd_cntrl_inst_count_temp_28_CYMUXFAST_5404
    );
  lcd_cntrl_inst_count_temp_28_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y46"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_28_LOGIC_ZERO_5399,
      IB => lcd_cntrl_inst_count_temp_28_CYMUXF2_5400,
      SEL => lcd_cntrl_inst_count_temp_28_CYSELG_5390,
      O => lcd_cntrl_inst_count_temp_28_CYMUXG2_5401
    );
  lcd_cntrl_inst_count_temp_28_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_G,
      O => lcd_cntrl_inst_count_temp_28_CYSELG_5390
    );
  lcd_cntrl_inst_count_temp_28_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_28_SRINV_5388
    );
  lcd_cntrl_inst_count_temp_28_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_28_CLKINV_5387
    );
  lcd_cntrl_inst_count_temp_27 : X_SFF
    generic map(
      LOC => "SLICE_X22Y45",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_DYMUX_5357,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_26_CLKINV_5335,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_26_SRINV_5336,
      O => lcd_cntrl_inst_count_temp(27)
    );
  lcd_cntrl_inst_count_temp_26 : X_SFF
    generic map(
      LOC => "SLICE_X22Y45",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_DXMUX_5374,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_26_CLKINV_5335,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_26_SRINV_5336,
      O => lcd_cntrl_inst_count_temp(26)
    );
  lcd_cntrl_inst_count_temp_26_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_26_LOGIC_ZERO_5347
    );
  lcd_cntrl_inst_count_temp_26_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_XORF_5372,
      O => lcd_cntrl_inst_count_temp_26_DXMUX_5374
    );
  lcd_cntrl_inst_count_temp_26_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_26_CYINIT_5371,
      I1 => lcd_cntrl_inst_count_temp_26_F,
      O => lcd_cntrl_inst_count_temp_26_XORF_5372
    );
  lcd_cntrl_inst_count_temp_26_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_26_LOGIC_ZERO_5347,
      IB => lcd_cntrl_inst_count_temp_26_CYINIT_5371,
      SEL => lcd_cntrl_inst_count_temp_26_CYSELF_5353,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_26_Q
    );
  lcd_cntrl_inst_count_temp_26_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_26_LOGIC_ZERO_5347,
      IB => lcd_cntrl_inst_count_temp_26_LOGIC_ZERO_5347,
      SEL => lcd_cntrl_inst_count_temp_26_CYSELF_5353,
      O => lcd_cntrl_inst_count_temp_26_CYMUXF2_5348
    );
  lcd_cntrl_inst_count_temp_26_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_25_Q,
      O => lcd_cntrl_inst_count_temp_26_CYINIT_5371
    );
  lcd_cntrl_inst_count_temp_26_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_F,
      O => lcd_cntrl_inst_count_temp_26_CYSELF_5353
    );
  lcd_cntrl_inst_count_temp_26_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_XORG_5355,
      O => lcd_cntrl_inst_count_temp_26_DYMUX_5357
    );
  lcd_cntrl_inst_count_temp_26_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_26_Q,
      I1 => lcd_cntrl_inst_count_temp_26_G,
      O => lcd_cntrl_inst_count_temp_26_XORG_5355
    );
  lcd_cntrl_inst_count_temp_26_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_CYMUXFAST_5352,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_27_Q
    );
  lcd_cntrl_inst_count_temp_26_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_25_Q,
      O => lcd_cntrl_inst_count_temp_26_FASTCARRY_5350
    );
  lcd_cntrl_inst_count_temp_26_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_26_CYSELG_5338,
      I1 => lcd_cntrl_inst_count_temp_26_CYSELF_5353,
      O => lcd_cntrl_inst_count_temp_26_CYAND_5351
    );
  lcd_cntrl_inst_count_temp_26_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_26_CYMUXG2_5349,
      IB => lcd_cntrl_inst_count_temp_26_FASTCARRY_5350,
      SEL => lcd_cntrl_inst_count_temp_26_CYAND_5351,
      O => lcd_cntrl_inst_count_temp_26_CYMUXFAST_5352
    );
  lcd_cntrl_inst_count_temp_26_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y45"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_26_LOGIC_ZERO_5347,
      IB => lcd_cntrl_inst_count_temp_26_CYMUXF2_5348,
      SEL => lcd_cntrl_inst_count_temp_26_CYSELG_5338,
      O => lcd_cntrl_inst_count_temp_26_CYMUXG2_5349
    );
  lcd_cntrl_inst_count_temp_26_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_26_G,
      O => lcd_cntrl_inst_count_temp_26_CYSELG_5338
    );
  lcd_cntrl_inst_count_temp_26_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_26_SRINV_5336
    );
  lcd_cntrl_inst_count_temp_26_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_26_CLKINV_5335
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_1 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X16Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(15),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(14),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_1_5755
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_4_1 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X16Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(8),
      ADR1 => lcd_cntrl_inst_count(7),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(9),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_4_1_5694
    );
  lcd_cntrl_inst_count_temp_21 : X_SFF
    generic map(
      LOC => "SLICE_X22Y42",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_DYMUX_5201,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_20_CLKINV_5179,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_20_SRINV_5180,
      O => lcd_cntrl_inst_count_temp(21)
    );
  lcd_cntrl_inst_count_temp_20 : X_SFF
    generic map(
      LOC => "SLICE_X22Y42",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_DXMUX_5218,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_20_CLKINV_5179,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_20_SRINV_5180,
      O => lcd_cntrl_inst_count_temp(20)
    );
  lcd_cntrl_inst_count_temp_20_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_20_LOGIC_ZERO_5191
    );
  lcd_cntrl_inst_count_temp_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_XORF_5216,
      O => lcd_cntrl_inst_count_temp_20_DXMUX_5218
    );
  lcd_cntrl_inst_count_temp_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_20_CYINIT_5215,
      I1 => lcd_cntrl_inst_count_temp_20_F,
      O => lcd_cntrl_inst_count_temp_20_XORF_5216
    );
  lcd_cntrl_inst_count_temp_20_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_20_LOGIC_ZERO_5191,
      IB => lcd_cntrl_inst_count_temp_20_CYINIT_5215,
      SEL => lcd_cntrl_inst_count_temp_20_CYSELF_5197,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_20_Q
    );
  lcd_cntrl_inst_count_temp_20_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_20_LOGIC_ZERO_5191,
      IB => lcd_cntrl_inst_count_temp_20_LOGIC_ZERO_5191,
      SEL => lcd_cntrl_inst_count_temp_20_CYSELF_5197,
      O => lcd_cntrl_inst_count_temp_20_CYMUXF2_5192
    );
  lcd_cntrl_inst_count_temp_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_19_Q,
      O => lcd_cntrl_inst_count_temp_20_CYINIT_5215
    );
  lcd_cntrl_inst_count_temp_20_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_F,
      O => lcd_cntrl_inst_count_temp_20_CYSELF_5197
    );
  lcd_cntrl_inst_count_temp_20_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_XORG_5199,
      O => lcd_cntrl_inst_count_temp_20_DYMUX_5201
    );
  lcd_cntrl_inst_count_temp_20_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_20_Q,
      I1 => lcd_cntrl_inst_count_temp_20_G,
      O => lcd_cntrl_inst_count_temp_20_XORG_5199
    );
  lcd_cntrl_inst_count_temp_20_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_CYMUXFAST_5196,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_21_Q
    );
  lcd_cntrl_inst_count_temp_20_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_19_Q,
      O => lcd_cntrl_inst_count_temp_20_FASTCARRY_5194
    );
  lcd_cntrl_inst_count_temp_20_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_20_CYSELG_5182,
      I1 => lcd_cntrl_inst_count_temp_20_CYSELF_5197,
      O => lcd_cntrl_inst_count_temp_20_CYAND_5195
    );
  lcd_cntrl_inst_count_temp_20_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_20_CYMUXG2_5193,
      IB => lcd_cntrl_inst_count_temp_20_FASTCARRY_5194,
      SEL => lcd_cntrl_inst_count_temp_20_CYAND_5195,
      O => lcd_cntrl_inst_count_temp_20_CYMUXFAST_5196
    );
  lcd_cntrl_inst_count_temp_20_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_20_LOGIC_ZERO_5191,
      IB => lcd_cntrl_inst_count_temp_20_CYMUXF2_5192,
      SEL => lcd_cntrl_inst_count_temp_20_CYSELG_5182,
      O => lcd_cntrl_inst_count_temp_20_CYMUXG2_5193
    );
  lcd_cntrl_inst_count_temp_20_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_20_G,
      O => lcd_cntrl_inst_count_temp_20_CYSELG_5182
    );
  lcd_cntrl_inst_count_temp_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_20_SRINV_5180
    );
  lcd_cntrl_inst_count_temp_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_20_CLKINV_5179
    );
  lcd_cntrl_inst_count_temp_25 : X_SFF
    generic map(
      LOC => "SLICE_X22Y44",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_DYMUX_5305,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_24_CLKINV_5283,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_24_SRINV_5284,
      O => lcd_cntrl_inst_count_temp(25)
    );
  lcd_cntrl_inst_count_temp_24 : X_SFF
    generic map(
      LOC => "SLICE_X22Y44",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_DXMUX_5322,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_24_CLKINV_5283,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_24_SRINV_5284,
      O => lcd_cntrl_inst_count_temp(24)
    );
  lcd_cntrl_inst_count_temp_24_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_24_LOGIC_ZERO_5295
    );
  lcd_cntrl_inst_count_temp_24_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_XORF_5320,
      O => lcd_cntrl_inst_count_temp_24_DXMUX_5322
    );
  lcd_cntrl_inst_count_temp_24_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_24_CYINIT_5319,
      I1 => lcd_cntrl_inst_count_temp_24_F,
      O => lcd_cntrl_inst_count_temp_24_XORF_5320
    );
  lcd_cntrl_inst_count_temp_24_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_24_LOGIC_ZERO_5295,
      IB => lcd_cntrl_inst_count_temp_24_CYINIT_5319,
      SEL => lcd_cntrl_inst_count_temp_24_CYSELF_5301,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_24_Q
    );
  lcd_cntrl_inst_count_temp_24_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_24_LOGIC_ZERO_5295,
      IB => lcd_cntrl_inst_count_temp_24_LOGIC_ZERO_5295,
      SEL => lcd_cntrl_inst_count_temp_24_CYSELF_5301,
      O => lcd_cntrl_inst_count_temp_24_CYMUXF2_5296
    );
  lcd_cntrl_inst_count_temp_24_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_23_Q,
      O => lcd_cntrl_inst_count_temp_24_CYINIT_5319
    );
  lcd_cntrl_inst_count_temp_24_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_F,
      O => lcd_cntrl_inst_count_temp_24_CYSELF_5301
    );
  lcd_cntrl_inst_count_temp_24_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_XORG_5303,
      O => lcd_cntrl_inst_count_temp_24_DYMUX_5305
    );
  lcd_cntrl_inst_count_temp_24_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_24_Q,
      I1 => lcd_cntrl_inst_count_temp_24_G,
      O => lcd_cntrl_inst_count_temp_24_XORG_5303
    );
  lcd_cntrl_inst_count_temp_24_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_CYMUXFAST_5300,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_25_Q
    );
  lcd_cntrl_inst_count_temp_24_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_Mcount_temp_cy_23_Q,
      O => lcd_cntrl_inst_count_temp_24_FASTCARRY_5298
    );
  lcd_cntrl_inst_count_temp_24_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_24_CYSELG_5286,
      I1 => lcd_cntrl_inst_count_temp_24_CYSELF_5301,
      O => lcd_cntrl_inst_count_temp_24_CYAND_5299
    );
  lcd_cntrl_inst_count_temp_24_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_24_CYMUXG2_5297,
      IB => lcd_cntrl_inst_count_temp_24_FASTCARRY_5298,
      SEL => lcd_cntrl_inst_count_temp_24_CYAND_5299,
      O => lcd_cntrl_inst_count_temp_24_CYMUXFAST_5300
    );
  lcd_cntrl_inst_count_temp_24_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_24_LOGIC_ZERO_5295,
      IB => lcd_cntrl_inst_count_temp_24_CYMUXF2_5296,
      SEL => lcd_cntrl_inst_count_temp_24_CYSELG_5286,
      O => lcd_cntrl_inst_count_temp_24_CYMUXG2_5297
    );
  lcd_cntrl_inst_count_temp_24_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_24_G,
      O => lcd_cntrl_inst_count_temp_24_CYSELG_5286
    );
  lcd_cntrl_inst_count_temp_24_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_24_SRINV_5284
    );
  lcd_cntrl_inst_count_temp_24_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_24_CLKINV_5283
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(5),
      ADR1 => lcd_cntrl_inst_count(6),
      ADR2 => lcd_cntrl_inst_count(7),
      ADR3 => lcd_cntrl_inst_count(8),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(1)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X15Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(1),
      ADR1 => lcd_cntrl_inst_count(3),
      ADR2 => lcd_cntrl_inst_count(2),
      ADR3 => lcd_cntrl_inst_count(4),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(0)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y43"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_LOGIC_ZERO_5493
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_LOGIC_ZERO_5493,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYINIT_5504,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELF_5498,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_Q
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_BXINV_5496,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYINIT_5504
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(0),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELF_5498
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_BXINV_5496
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X15Y43"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_LOGIC_ZERO_5493,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_0_Q,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELG_5487,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYMUXG_5495
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(1),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_1_CYSELG_5487
    );
  lcd_cntrl_inst_count_temp_31 : X_SFF
    generic map(
      LOC => "SLICE_X22Y47",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_30_DYMUX_5452,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_30_CLKINV_5438,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_30_SRINV_5439,
      O => lcd_cntrl_inst_count_temp(31)
    );
  lcd_cntrl_inst_count_temp_31_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y47"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(31),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_31_rt_5447
    );
  lcd_cntrl_inst_count_temp_30 : X_SFF
    generic map(
      LOC => "SLICE_X22Y47",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_30_DXMUX_5471,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_30_CLKINV_5438,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_30_SRINV_5439,
      O => lcd_cntrl_inst_count_temp(30)
    );
  lcd_cntrl_inst_count_temp_30_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X22Y47"
    )
    port map (
      O => lcd_cntrl_inst_count_temp_30_LOGIC_ZERO_5468
    );
  lcd_cntrl_inst_count_temp_30_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_30_XORF_5469,
      O => lcd_cntrl_inst_count_temp_30_DXMUX_5471
    );
  lcd_cntrl_inst_count_temp_30_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X22Y47"
    )
    port map (
      I0 => lcd_cntrl_inst_count_temp_30_CYINIT_5467,
      I1 => lcd_cntrl_inst_count_temp_30_F,
      O => lcd_cntrl_inst_count_temp_30_XORF_5469
    );
  lcd_cntrl_inst_count_temp_30_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X22Y47"
    )
    port map (
      IA => lcd_cntrl_inst_count_temp_30_LOGIC_ZERO_5468,
      IB => lcd_cntrl_inst_count_temp_30_CYINIT_5467,
      SEL => lcd_cntrl_inst_count_temp_30_CYSELF_5458,
      O => lcd_cntrl_inst_count_Mcount_temp_cy_30_Q
    );
  lcd_cntrl_inst_count_temp_30_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X22Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_28_CYMUXFAST_5404,
      O => lcd_cntrl_inst_count_temp_30_CYINIT_5467
    );
  lcd_cntrl_inst_count_temp_30_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X22Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_30_F,
      O => lcd_cntrl_inst_count_temp_30_CYSELF_5458
    );
  lcd_cntrl_inst_count_temp_30_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_30_XORG_5450,
      O => lcd_cntrl_inst_count_temp_30_DYMUX_5452
    );
  lcd_cntrl_inst_count_temp_30_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X22Y47"
    )
    port map (
      I0 => lcd_cntrl_inst_count_Mcount_temp_cy_30_Q,
      I1 => lcd_cntrl_inst_count_temp_31_rt_5447,
      O => lcd_cntrl_inst_count_temp_30_XORG_5450
    );
  lcd_cntrl_inst_count_temp_30_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_0,
      O => lcd_cntrl_inst_count_temp_30_SRINV_5439
    );
  lcd_cntrl_inst_count_temp_30_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_temp_30_CLKINV_5438
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X21Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(27),
      ADR3 => lcd_cntrl_inst_count(23),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(0)
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(24),
      ADR1 => lcd_cntrl_inst_count(28),
      ADR2 => lcd_cntrl_inst_count(22),
      ADR3 => lcd_cntrl_inst_count(25),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(1)
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y43"
    )
    port map (
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_LOGIC_ZERO_5945
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X21Y43"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_LOGIC_ZERO_5945,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYINIT_5958,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELF_5950,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_0_Q
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_BXINV_5948,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYINIT_5958
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(0),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELF_5950
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_BXINV_5948
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X21Y43"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_LOGIC_ZERO_5945,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_0_Q,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELG_5939,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYMUXG_5947
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(1),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYSELG_5939
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X21Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(8),
      ADR1 => lcd_cntrl_inst_count(13),
      ADR2 => lcd_cntrl_inst_count(31),
      ADR3 => lcd_cntrl_inst_count(3),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(4)
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(0),
      ADR1 => lcd_cntrl_inst_count(2),
      ADR2 => lcd_cntrl_inst_count(1),
      ADR3 => lcd_cntrl_inst_count(29),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(5)
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y45"
    )
    port map (
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_LOGIC_ZERO_6006
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y45"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_LOGIC_ZERO_6006,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_LOGIC_ZERO_6006,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELF_6012,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXF2_6007
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(4),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELF_6012
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXFAST_6011,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_Q
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXFAST_5981,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_FASTCARRY_6009
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y45"
    )
    port map (
      I0 => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELG_6000,
      I1 => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELF_6012,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYAND_6010
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y45"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXG2_6008,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_FASTCARRY_6009,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYAND_6010,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXFAST_6011
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y45"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_LOGIC_ZERO_6006,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXF2_6007,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELG_6000,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYMUXG2_6008
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(5),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_CYSELG_6000
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"BBFF",
      LOC => "SLICE_X33Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_hundredths(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_lap_hundredths(1),
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_1_Q_6027
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y23"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_LOGIC_ONE_6035
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y23"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_LOGIC_ONE_6035,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYINIT_6047,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELF_6040,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_0_Q
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_BXINV_6038,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYINIT_6047
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_0_Q_6039,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELF_6040
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_BXINV_6038
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X33Y23"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_LOGIC_ONE_6035,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_0_Q,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELG_6028,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYMUXG_6037
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_1_Q_6027,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYSELG_6028
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_14_2_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X16Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(31),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(14)
    );
  lcd_cntrl_inst_control_cmp_le0000_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X16Y47"
    )
    port map (
      IA => lcd_cntrl_inst_control_cmp_le0000_CY0F_5837,
      IB => lcd_cntrl_inst_control_cmp_le0000_CYINIT_5838,
      SEL => lcd_cntrl_inst_control_cmp_le0000_CYSELF_5828,
      O => lcd_cntrl_inst_control_cmp_le0000
    );
  lcd_cntrl_inst_control_cmp_le0000_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X16Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXFAST_5816,
      O => lcd_cntrl_inst_control_cmp_le0000_CYINIT_5838
    );
  lcd_cntrl_inst_control_cmp_le0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X16Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_control_cmp_le0000_CY0F_5837
    );
  lcd_cntrl_inst_control_cmp_le0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(14),
      O => lcd_cntrl_inst_control_cmp_le0000_CYSELF_5828
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X27Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(30),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_lut(4)
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_lut_5_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X27Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(31),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_lut(5)
    );
  clk_divider_cnt_cmp_ge0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y77"
    )
    port map (
      O => clk_divider_cnt_cmp_ge0000_LOGIC_ZERO_5913
    );
  clk_divider_cnt_cmp_ge0000_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X27Y77"
    )
    port map (
      O => clk_divider_cnt_cmp_ge0000_LOGIC_ONE_5929
    );
  clk_divider_cnt_cmp_ge0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y77"
    )
    port map (
      IA => clk_divider_cnt_cmp_ge0000_LOGIC_ONE_5929,
      IB => clk_divider_cnt_cmp_ge0000_LOGIC_ONE_5929,
      SEL => clk_divider_cnt_cmp_ge0000_CYSELF_5919,
      O => clk_divider_cnt_cmp_ge0000_CYMUXF2_5914
    );
  clk_divider_cnt_cmp_ge0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_lut(4),
      O => clk_divider_cnt_cmp_ge0000_CYSELF_5919
    );
  clk_divider_cnt_cmp_ge0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000_CYMUXFAST_5918,
      O => clk_divider_cnt_cmp_ge0000
    );
  clk_divider_cnt_cmp_ge0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXFAST_5891,
      O => clk_divider_cnt_cmp_ge0000_FASTCARRY_5916
    );
  clk_divider_cnt_cmp_ge0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y77"
    )
    port map (
      I0 => clk_divider_cnt_cmp_ge0000_CYSELG_5904,
      I1 => clk_divider_cnt_cmp_ge0000_CYSELF_5919,
      O => clk_divider_cnt_cmp_ge0000_CYAND_5917
    );
  clk_divider_cnt_cmp_ge0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y77"
    )
    port map (
      IA => clk_divider_cnt_cmp_ge0000_CYMUXG2_5915,
      IB => clk_divider_cnt_cmp_ge0000_FASTCARRY_5916,
      SEL => clk_divider_cnt_cmp_ge0000_CYAND_5917,
      O => clk_divider_cnt_cmp_ge0000_CYMUXFAST_5918
    );
  clk_divider_cnt_cmp_ge0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y77"
    )
    port map (
      IA => clk_divider_cnt_cmp_ge0000_LOGIC_ZERO_5913,
      IB => clk_divider_cnt_cmp_ge0000_CYMUXF2_5914,
      SEL => clk_divider_cnt_cmp_ge0000_CYSELG_5904,
      O => clk_divider_cnt_cmp_ge0000_CYMUXG2_5915
    );
  clk_divider_cnt_cmp_ge0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y77",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_lut(5),
      O => clk_divider_cnt_cmp_ge0000_CYSELG_5904
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y46"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(27),
      ADR1 => lcd_cntrl_inst_count(26),
      ADR2 => lcd_cntrl_inst_count(29),
      ADR3 => lcd_cntrl_inst_count(28),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(12)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_13_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X16Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(30),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(13)
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_LOGIC_ZERO_5811
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_LOGIC_ZERO_5811,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_LOGIC_ZERO_5811,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELF_5817,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXF2_5812
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(12),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELF_5817
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_11_CYMUXFAST_5786,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_FASTCARRY_5814
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELG_5802,
      I1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELF_5817,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYAND_5815
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXG2_5813,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_FASTCARRY_5814,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYAND_5815,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXFAST_5816
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      IA => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_LOGIC_ZERO_5811,
      IB => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXF2_5812,
      SEL => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELG_5802,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYMUXG2_5813
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut(13),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_13_CYSELG_5802
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y76"
    )
    port map (
      ADR0 => clk_divider_cnt(26),
      ADR1 => clk_divider_cnt(27),
      ADR2 => clk_divider_cnt(29),
      ADR3 => clk_divider_cnt(28),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_lut(3)
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y76"
    )
    port map (
      ADR0 => clk_divider_cnt(25),
      ADR1 => clk_divider_cnt(22),
      ADR2 => clk_divider_cnt(23),
      ADR3 => clk_divider_cnt(24),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_lut(2)
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X27Y76"
    )
    port map (
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_LOGIC_ONE_5886
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y76"
    )
    port map (
      IA => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_LOGIC_ONE_5886,
      IB => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_LOGIC_ONE_5886,
      SEL => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELF_5892,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXF2_5887
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_lut(2),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELF_5892
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYMUXG_5855,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_FASTCARRY_5889
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y76"
    )
    port map (
      I0 => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELG_5880,
      I1 => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELF_5892,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYAND_5890
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y76"
    )
    port map (
      IA => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXG2_5888,
      IB => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_FASTCARRY_5889,
      SEL => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYAND_5890,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXFAST_5891
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y76"
    )
    port map (
      IA => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_LOGIC_ONE_5886,
      IB => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXF2_5887,
      SEL => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELG_5880,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYMUXG2_5888
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y76",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_lut(3),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_3_CYSELG_5880
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y75"
    )
    port map (
      ADR0 => clk_divider_cnt(19),
      ADR1 => clk_divider_cnt(18),
      ADR2 => clk_divider_cnt(21),
      ADR3 => clk_divider_cnt(20),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_lut(1)
    );
  clk_divider_cnt_17_rt_1 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X27Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(17),
      ADR3 => VCC,
      O => clk_divider_cnt_17_rt
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X27Y75"
    )
    port map (
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ONE_5853
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y75"
    )
    port map (
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ZERO_5868
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y75"
    )
    port map (
      IA => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ZERO_5868,
      IB => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYINIT_5867,
      SEL => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELF_5858,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy(0)
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_BXINV_5856,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYINIT_5867
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_17_rt,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELF_5858
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_BXINV_5856
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y75"
    )
    port map (
      IA => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_LOGIC_ONE_5853,
      IB => clk_divider_Mcompar_cnt_cmp_ge0000_cy(0),
      SEL => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELG_5847,
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYMUXG_5855
    );
  clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y75",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_Mcompar_cnt_cmp_ge0000_lut(1),
      O => clk_divider_Mcompar_cnt_cmp_ge0000_cy_1_CYSELG_5847
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X21Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(20),
      ADR1 => lcd_cntrl_inst_count(17),
      ADR2 => lcd_cntrl_inst_count(26),
      ADR3 => lcd_cntrl_inst_count(21),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(2)
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(9),
      ADR1 => lcd_cntrl_inst_count(19),
      ADR2 => lcd_cntrl_inst_count(30),
      ADR3 => lcd_cntrl_inst_count(15),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(3)
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y44"
    )
    port map (
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_LOGIC_ZERO_5976
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y44"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_LOGIC_ZERO_5976,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_LOGIC_ZERO_5976,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELF_5982,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXF2_5977
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(2),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELF_5982
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_1_CYMUXG_5947,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_FASTCARRY_5979
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y44"
    )
    port map (
      I0 => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELG_5970,
      I1 => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELF_5982,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYAND_5980
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y44"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXG2_5978,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_FASTCARRY_5979,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYAND_5980,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXFAST_5981
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y44"
    )
    port map (
      IA => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_LOGIC_ZERO_5976,
      IB => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXF2_5977,
      SEL => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELG_5970,
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYMUXG2_5978
    );
  lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq00001_wg_lut(3),
      O => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_3_CYSELG_5970
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"AFFF",
      LOC => "SLICE_X33Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_tens(3),
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      ADR3 => lcd_cntrl_inst_lap_tens(1),
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_0_Q_6039
    );
  sf_d_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => sf_d_2_O,
      O => sf_d(2)
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"00F7",
      LOC => "SLICE_X33Y26"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(1),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd27_2856,
      ADR2 => timer_inst_mins_cnt(3),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd14_3000,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_6_Q_6132
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y26"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_LOGIC_ONE_6125
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_LOGIC_ONE_6125,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_LOGIC_ONE_6125,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELF_6131,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXF2_6126
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_6_Q_6132,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELF_6131
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXFAST_6100,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_FASTCARRY_6128
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y26"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELG_6119,
      I1 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELF_6131,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYAND_6129
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXG2_6127,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_FASTCARRY_6128,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYAND_6129,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXFAST_6130
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_LOGIC_ONE_6125,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXF2_6126,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELG_6119,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXG2_6127
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_7_Q_6118,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYSELG_6119
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_10_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X33Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_N13_0,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd12_3010,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd40_3013,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd6_3011,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_10_Q_6195
    );
  lcd_cntrl_inst_sf_d_1 : X_FF
    generic map(
      LOC => "SLICE_X33Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_1_DYMUX_6191,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_1_CLKINV_6181,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_sf_d(1)
    );
  lcd_cntrl_inst_sf_d_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y28"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_1_LOGIC_ONE_6203
    );
  lcd_cntrl_inst_sf_d_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y28"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_1_LOGIC_ONE_6203,
      IB => lcd_cntrl_inst_sf_d_1_CYINIT_6202,
      SEL => lcd_cntrl_inst_sf_d_1_CYSELF_6196,
      O => lcd_cntrl_inst_sf_d_temp_1_Q
    );
  lcd_cntrl_inst_sf_d_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXFAST_6160,
      O => lcd_cntrl_inst_sf_d_1_CYINIT_6202
    );
  lcd_cntrl_inst_sf_d_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_10_Q_6195,
      O => lcd_cntrl_inst_sf_d_1_CYSELF_6196
    );
  lcd_cntrl_inst_sf_d_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_Q,
      O => lcd_cntrl_inst_sf_d_1_DYMUX_6191
    );
  lcd_cntrl_inst_sf_d_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N16,
      O => lcd_cntrl_inst_N16_0
    );
  lcd_cntrl_inst_sf_d_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_1_CLKINV_6181
    );
  lcd_cntrl_inst_sf_d_temp_0_51 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X33Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd12_3010,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd37_3015,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd36_3014,
      O => lcd_cntrl_inst_N16
    );
  mode_IBUF : X_BUF
    generic map(
      LOC => "IPAD209",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode,
      O => mode_IBUF_6217
    );
  sf_d_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD240"
    )
    port map (
      I => sf_d_0_O,
      O => sf_d(0)
    );
  sf_d_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD245"
    )
    port map (
      I => sf_d_3_O,
      O => sf_d(3)
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0D0F",
      LOC => "SLICE_X33Y25"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      ADR1 => lcd_cntrl_inst_lap_ones(3),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd18_2995,
      ADR3 => lcd_cntrl_inst_lap_ones(1),
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_4_Q_6102
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y25"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_LOGIC_ONE_6095
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y25"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_LOGIC_ONE_6095,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_LOGIC_ONE_6095,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELF_6101,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXF2_6096
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_4_Q_6102,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELF_6101
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXFAST_6069,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_FASTCARRY_6098
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y25"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELG_6089,
      I1 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELF_6101,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYAND_6099
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y25"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXG2_6097,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_FASTCARRY_6098,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYAND_6099,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXFAST_6100
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y25"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_LOGIC_ONE_6095,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXF2_6096,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELG_6089,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYMUXG2_6097
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_5_Q_6088,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_5_CYSELG_6089
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0F07",
      LOC => "SLICE_X33Y25"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR1 => lcd_cntrl_inst_lap_tenths(1),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd20_2997,
      ADR3 => lcd_cntrl_inst_lap_tenths(3),
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_5_Q_6088
    );
  lcd_e_OBUF : X_OBUF
    generic map(
      LOC => "PAD278"
    )
    port map (
      I => lcd_e_O,
      O => lcd_e
    );
  sf_d_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => sf_d_1_O,
      O => sf_d(1)
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_9_Q : X_LUT4
    generic map(
      INIT => X"4555",
      LOC => "SLICE_X33Y27"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd26_3006,
      ADR1 => timer_inst_tens_cnt(3),
      ADR2 => timer_inst_tens_cnt(1),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_9_Q_6148
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_8_Q : X_LUT4
    generic map(
      INIT => X"2333",
      LOC => "SLICE_X33Y27"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd34_3005,
      ADR2 => timer_inst_ones_cnt(1),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_8_Q_6162
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y27"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_LOGIC_ONE_6155
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y27"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_LOGIC_ONE_6155,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_LOGIC_ONE_6155,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELF_6161,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXF2_6156
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_8_Q_6162,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELF_6161
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_cy_7_CYMUXFAST_6130,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_FASTCARRY_6158
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y27"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELG_6149,
      I1 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELF_6161,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYAND_6159
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y27"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXG2_6157,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_FASTCARRY_6158,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYAND_6159,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXFAST_6160
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y27"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_LOGIC_ONE_6155,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXF2_6156,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELG_6149,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYMUXG2_6157
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_9_Q_6148,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_9_CYSELG_6149
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_7_Q : X_LUT4
    generic map(
      INIT => X"3133",
      LOC => "SLICE_X33Y26"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd33_3001,
      ADR2 => timer_inst_tenths_cnt(3),
      ADR3 => timer_inst_tenths_cnt(1),
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_7_Q_6118
    );
  Inst_dcm1_CLKIN_IBUFG_INST : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk,
      O => CLKIN_IBUFG
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"2333",
      LOC => "SLICE_X33Y24"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_min(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd4_2992,
      ADR2 => lcd_cntrl_inst_lap_min(1),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_3_Q_6057
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"FF3F",
      LOC => "SLICE_X33Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR2 => timer_inst_hundredths_cnt(1),
      ADR3 => timer_inst_hundredths_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_1_wg_lut_2_Q_6071
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y24"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_LOGIC_ONE_6064
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y24"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_LOGIC_ONE_6064,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_LOGIC_ONE_6064,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELF_6070,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXF2_6065
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_2_Q_6071,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELF_6070
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_cy_1_CYMUXG_6037,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_FASTCARRY_6067
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y24"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELG_6058,
      I1 => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELF_6070,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYAND_6068
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y24"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXG2_6066,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_FASTCARRY_6067,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYAND_6068,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXFAST_6069
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y24"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_LOGIC_ONE_6064,
      IB => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXF2_6065,
      SEL => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELG_6058,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYMUXG2_6066
    );
  lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_wg_lut_3_Q_6057,
      O => lcd_cntrl_inst_sf_d_temp_1_wg_cy_3_CYSELG_6058
    );
  sf_d_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD246"
    )
    port map (
      I => sf_d_4_O,
      O => sf_d(4)
    );
  sf_d_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => sf_d_5_O,
      O => sf_d(5)
    );
  sf_d_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => sf_d_6_O,
      O => sf_d(6)
    );
  sf_d_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => sf_d_7_O,
      O => sf_d(7)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IPAD214",
      PATHPULSE => 592 ps
    )
    port map (
      I => reset,
      O => reset_IBUF_6296
    );
  lcd_rs_OBUF : X_OBUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => lcd_rs_O,
      O => lcd_rs
    );
  lcd_rw_OBUF : X_OBUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => lcd_rw_O,
      O => lcd_rw
    );
  timer_inst_mins_cnt_and000011_SW6_G : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X53Y12"
    )
    port map (
      ADR0 => N65_0,
      ADR1 => timer_inst_tc_2_cmp_eq0000,
      ADR2 => N64,
      ADR3 => timer_inst_tc_3_cmp_eq0000,
      O => N173
    );
  N157_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => N157_F5MUX_6506,
      O => N157
    );
  N157_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X53Y12"
    )
    port map (
      IA => N64_pack_1,
      IB => N173,
      SEL => N157_BXINV_6499,
      O => N157_F5MUX_6506
    );
  N157_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_1_cmp_eq0000,
      O => N157_BXINV_6499
    );
  N157_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => N64_pack_1,
      O => N64
    );
  timer_inst_mins_cnt_mux0002_19_37_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X53Y12"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(0),
      ADR1 => timer_inst_mins_cnt(1),
      ADR2 => timer_inst_mins_cnt(2),
      ADR3 => timer_inst_mins_cnt(3),
      O => N64_pack_1
    );
  lap_load_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 592 ps
    )
    port map (
      I => lap_load,
      O => lap_load_IBUF_6319
    );
  lcd_cntrl_inst_sf_d_temp_6_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_6_15_F5MUX_6531,
      O => lcd_cntrl_inst_sf_d_temp_6_15
    );
  lcd_cntrl_inst_sf_d_temp_6_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y28"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_6_151_6518,
      IB => lcd_cntrl_inst_sf_d_temp_6_15_F,
      SEL => lcd_cntrl_inst_sf_d_temp_6_15_BXINV_6520,
      O => lcd_cntrl_inst_sf_d_temp_6_15_F5MUX_6531
    );
  lcd_cntrl_inst_sf_d_temp_6_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd6_3011,
      O => lcd_cntrl_inst_sf_d_temp_6_15_BXINV_6520
    );
  lcd_cntrl_inst_sf_d_temp_6_151 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X32Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd4_2992,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd34_3005,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd38_3068,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd32_3069,
      O => lcd_cntrl_inst_sf_d_temp_6_151_6518
    );
  clk_divider_div_262144_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y0"
    )
    port map (
      I0 => clk_divider_div_262144_BUFG_I0_INV,
      I1 => GND,
      S => clk_divider_div_262144_BUFG_S_INVNOT,
      O => clk_100
    );
  clk_divider_div_262144_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => clk_divider_div_262144_BUFG_S_INVNOT
    );
  clk_divider_div_262144_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_div_262144_3038,
      O => clk_divider_div_262144_BUFG_I0_INV
    );
  timer_inst_tenths_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_2_F5MUX_6599,
      O => timer_inst_tenths_cnt_2_DXMUX_6601
    );
  timer_inst_tenths_cnt_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      IA => N174,
      IB => timer_inst_tenths_cnt_2_F,
      SEL => timer_inst_tenths_cnt_2_BXINV_6588,
      O => timer_inst_tenths_cnt_2_F5MUX_6599
    );
  timer_inst_tenths_cnt_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd5_3054,
      O => timer_inst_tenths_cnt_2_BXINV_6588
    );
  timer_inst_tenths_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tenths_cnt_2_CLKINV_6580
    );
  timer_inst_tenths_cnt_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tenths_cnt_2_CEINV_6579
    );
  strtstop_IBUF : X_BUF
    generic map(
      LOC => "IPAD199",
      PATHPULSE => 592 ps
    )
    port map (
      I => strtstop,
      O => strtstop_IBUF_6326
    );
  timer_inst_tens_cnt_mux0002_12_621 : X_LUT4
    generic map(
      INIT => X"0F3C",
      LOC => "SLICE_X54Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tens_cnt_and0001_0,
      ADR2 => timer_inst_tens_cnt(0),
      ADR3 => timer_inst_tens_cnt_and0000,
      O => timer_inst_tens_cnt_mux0002_12_62
    );
  timer_inst_tens_cnt_0_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X54Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tens_cnt_0_FFX_RST
    );
  timer_inst_tens_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y5",
      INIT => '0'
    )
    port map (
      I => timer_inst_tens_cnt_0_DXMUX_6473,
      CE => timer_inst_tens_cnt_0_CEINV_6450,
      CLK => timer_inst_tens_cnt_0_CLKINV_6451,
      SET => GND,
      RST => timer_inst_tens_cnt_0_FFX_RST,
      O => timer_inst_tens_cnt(0)
    );
  timer_inst_tens_cnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_0_F5MUX_6471,
      O => timer_inst_tens_cnt_0_DXMUX_6473
    );
  timer_inst_tens_cnt_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y5"
    )
    port map (
      IA => timer_inst_tens_cnt_mux0002_12_62,
      IB => timer_inst_tens_cnt_0_F,
      SEL => timer_inst_tens_cnt_0_BXINV_6460,
      O => timer_inst_tens_cnt_0_F5MUX_6471
    );
  timer_inst_tens_cnt_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd5_3054,
      O => timer_inst_tens_cnt_0_BXINV_6460
    );
  timer_inst_tens_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tens_cnt_0_CLKINV_6451
    );
  timer_inst_tens_cnt_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tens_cnt_0_CEINV_6450
    );
  timer_inst_tenths_cnt_mux0002_7_34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_7_34_F5MUX_6632,
      O => timer_inst_tenths_cnt_mux0002_7_34
    );
  timer_inst_tenths_cnt_mux0002_7_34_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X59Y8"
    )
    port map (
      IA => N192,
      IB => N193,
      SEL => timer_inst_tenths_cnt_mux0002_7_34_BXINV_6625,
      O => timer_inst_tenths_cnt_mux0002_7_34_F5MUX_6632
    );
  timer_inst_tenths_cnt_mux0002_7_34_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control_0,
      O => timer_inst_tenths_cnt_mux0002_7_34_BXINV_6625
    );
  timer_inst_N3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N3_F5MUX_6657,
      O => timer_inst_N3
    );
  timer_inst_N3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X57Y4"
    )
    port map (
      IA => N194,
      IB => N195,
      SEL => timer_inst_N3_BXINV_6650,
      O => timer_inst_N3_F5MUX_6657
    );
  timer_inst_N3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control_0,
      O => timer_inst_N3_BXINV_6650
    );
  timer_state_next_clken25_G : X_LUT4
    generic map(
      INIT => X"FDFC",
      LOC => "SLICE_X59Y17"
    )
    port map (
      ADR0 => ll_debounced,
      ADR1 => timer_state_sreg_FSM_FFd9_3042,
      ADR2 => timer_state_next_clken0_0,
      ADR3 => timer_state_sreg_FSM_FFd4_3043,
      O => N189
    );
  timer_state_next_clken25_F : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X59Y17"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd10_3049,
      ADR1 => timer_state_sreg_FSM_FFd3_3048,
      ADR2 => timer_state_sreg_FSM_FFd7_3046,
      ADR3 => timer_state_sreg_FSM_FFd1_3047,
      O => N188
    );
  timer_state_clken_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X59Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_clken_FFX_RST
    );
  timer_state_clken : X_FF
    generic map(
      LOC => "SLICE_X59Y17",
      INIT => '0'
    )
    port map (
      I => timer_state_clken_DXMUX_6399,
      CE => VCC,
      CLK => timer_state_clken_CLKINV_6382,
      SET => GND,
      RST => timer_state_clken_FFX_RST,
      O => timer_state_clken_3050
    );
  timer_state_clken_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_clken_F5MUX_6397,
      O => timer_state_clken_DXMUX_6399
    );
  timer_state_clken_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X59Y17"
    )
    port map (
      IA => N188,
      IB => N189,
      SEL => timer_state_clken_BXINV_6390,
      O => timer_state_clken_F5MUX_6397
    );
  timer_state_clken_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => strtstop_debounced,
      O => timer_state_clken_BXINV_6390
    );
  timer_state_clken_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_clken_CLKINV_6382
    );
  lcd_cntrl_inst_timer_flag_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_timer_flag_F5MUX_6562,
      O => lcd_cntrl_inst_timer_flag_DXMUX_6564
    );
  lcd_cntrl_inst_timer_flag_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y40"
    )
    port map (
      IA => lcd_cntrl_inst_mode_state_rt_6553,
      IB => lcd_cntrl_inst_timer_flag_mux000017,
      SEL => lcd_cntrl_inst_timer_flag_BXINV_6555,
      O => lcd_cntrl_inst_timer_flag_F5MUX_6562
    );
  lcd_cntrl_inst_timer_flag_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_timer_flag_3071,
      O => lcd_cntrl_inst_timer_flag_BXINV_6555
    );
  lcd_cntrl_inst_timer_flag_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_timer_flag_SRINV_6545
    );
  lcd_cntrl_inst_timer_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_timer_flag_CLKINV_6544
    );
  lcd_cntrl_inst_timer_flag_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_timer_flag_not0001,
      O => lcd_cntrl_inst_timer_flag_CEINV_6543
    );
  Inst_dcm1_CLKFX_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => Inst_dcm1_CLKFX_BUFG_INST_I0_INV,
      I1 => GND,
      S => Inst_dcm1_CLKFX_BUFG_INST_S_INVNOT,
      O => clk_26214k
    );
  Inst_dcm1_CLKFX_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => Inst_dcm1_CLKFX_BUFG_INST_S_INVNOT
    );
  Inst_dcm1_CLKFX_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => Inst_dcm1_CLKFX_BUF,
      O => Inst_dcm1_CLKFX_BUFG_INST_I0_INV
    );
  timer_state_sreg_FSM_FFd9_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X59Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd9_FFX_RST
    );
  timer_state_sreg_FSM_FFd9 : X_FF
    generic map(
      LOC => "SLICE_X59Y19",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd9_DXMUX_6435,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd9_CLKINV_6417,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd9_FFX_RST,
      O => timer_state_sreg_FSM_FFd9_3042
    );
  timer_state_sreg_FSM_FFd9_In_G : X_LUT4
    generic map(
      INIT => X"3F0F",
      LOC => "SLICE_X59Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => strtstop_debounced,
      ADR2 => mode_debounced,
      ADR3 => timer_state_sreg_FSM_FFd8_3052,
      O => N187
    );
  timer_state_sreg_FSM_FFd9_In_F : X_LUT4
    generic map(
      INIT => X"5504",
      LOC => "SLICE_X59Y19"
    )
    port map (
      ADR0 => strtstop_debounced,
      ADR1 => timer_state_sreg_FSM_FFd9_3042,
      ADR2 => mode_debounced,
      ADR3 => timer_state_sreg_FSM_FFd8_3052,
      O => N186
    );
  timer_state_sreg_FSM_FFd9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd9_F5MUX_6433,
      O => timer_state_sreg_FSM_FFd9_DXMUX_6435
    );
  timer_state_sreg_FSM_FFd9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X59Y19"
    )
    port map (
      IA => N186,
      IB => N187,
      SEL => timer_state_sreg_FSM_FFd9_BXINV_6425,
      O => timer_state_sreg_FSM_FFd9_F5MUX_6433
    );
  timer_state_sreg_FSM_FFd9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd12_3051,
      O => timer_state_sreg_FSM_FFd9_BXINV_6425
    );
  timer_state_sreg_FSM_FFd9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd9_CLKINV_6417
    );
  Inst_dcm1_DCM_SP_INST_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X2Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => Inst_dcm1_DCM_SP_INST_PSCLKINV_6344
    );
  Inst_dcm1_DCM_SP_INST : X_DCM_SP
    generic map(
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 25,
      CLKFX_MULTIPLY => 13,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLKIN_PERIOD => 20.000000,
      DESKEW_ADJUST => "8",
      DFS_FREQUENCY_MODE => "LOW",
      STARTUP_WAIT => TRUE,
      CLK_FEEDBACK => "1X",
      DLL_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      PHASE_SHIFT => 0,
      LOC => "DCM_X2Y3"
    )
    port map (
      CLKIN => Inst_dcm1_DCM_SP_INST_CLKIN_BUF_6342,
      CLKFB => Inst_dcm1_DCM_SP_INST_CLKFB_BUF_6343,
      RST => NlwBufferSignal_Inst_dcm1_DCM_SP_INST_RST,
      DSSEN => NLW_Inst_dcm1_DCM_SP_INST_DSSEN_UNCONNECTED,
      PSINCDEC => '0',
      PSEN => '0',
      PSCLK => Inst_dcm1_DCM_SP_INST_PSCLKINV_6344,
      PSDONE => Inst_dcm1_DCM_SP_INST_PSDONE,
      LOCKED => locked,
      CLKFX180 => Inst_dcm1_DCM_SP_INST_CLKFX180,
      CLKFX => Inst_dcm1_CLKFX_BUF,
      CLKDV => Inst_dcm1_DCM_SP_INST_CLKDV,
      CLK2X180 => Inst_dcm1_DCM_SP_INST_CLK2X180,
      CLK2X => Inst_dcm1_DCM_SP_INST_CLK2X,
      CLK270 => Inst_dcm1_DCM_SP_INST_CLK270,
      CLK180 => Inst_dcm1_DCM_SP_INST_CLK180,
      CLK90 => Inst_dcm1_DCM_SP_INST_CLK90,
      CLK0 => Inst_dcm1_CLK0_BUF,
      STATUS(7) => Inst_dcm1_DCM_SP_INST_STATUS7,
      STATUS(6) => Inst_dcm1_DCM_SP_INST_STATUS6,
      STATUS(5) => Inst_dcm1_DCM_SP_INST_STATUS5,
      STATUS(4) => Inst_dcm1_DCM_SP_INST_STATUS4,
      STATUS(3) => Inst_dcm1_DCM_SP_INST_STATUS3,
      STATUS(2) => Inst_dcm1_DCM_SP_INST_ML_NEW_I1,
      STATUS(1) => Inst_dcm1_DCM_SP_INST_STATUS1,
      STATUS(0) => Inst_dcm1_DCM_SP_INST_STATUS0
    );
  Inst_dcm1_DCM_SP_INST_CLKFB_BUF : X_BUF
    generic map(
      LOC => "DCM_X2Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLKFB_IN,
      O => Inst_dcm1_DCM_SP_INST_CLKFB_BUF_6343
    );
  Inst_dcm1_DCM_SP_INST_CLKIN_BUF : X_BUF
    generic map(
      LOC => "DCM_X2Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => CLKIN_IBUFG,
      O => Inst_dcm1_DCM_SP_INST_CLKIN_BUF_6342
    );
  Inst_dcm1_CLK0_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => Inst_dcm1_CLK0_BUFG_INST_I0_INV,
      I1 => GND,
      S => Inst_dcm1_CLK0_BUFG_INST_S_INVNOT,
      O => CLKFB_IN
    );
  Inst_dcm1_CLK0_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => '1',
      O => Inst_dcm1_CLK0_BUFG_INST_S_INVNOT
    );
  Inst_dcm1_CLK0_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => Inst_dcm1_CLK0_BUF,
      O => Inst_dcm1_CLK0_BUFG_INST_I0_INV
    );
  timer_inst_tens_cnt_mux0002_14_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_14_11_F5MUX_6682,
      O => timer_inst_tens_cnt_mux0002_14_11
    );
  timer_inst_tens_cnt_mux0002_14_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X58Y5"
    )
    port map (
      IA => N196,
      IB => N197,
      SEL => timer_inst_tens_cnt_mux0002_14_11_BXINV_6675,
      O => timer_inst_tens_cnt_mux0002_14_11_F5MUX_6682
    );
  timer_inst_tens_cnt_mux0002_14_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control_0,
      O => timer_inst_tens_cnt_mux0002_14_11_BXINV_6675
    );
  lcd_cntrl_inst_N9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N9,
      O => lcd_cntrl_inst_N9_0
    );
  lcd_cntrl_inst_N9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux0000111112_O_pack_1,
      O => lcd_cntrl_inst_clock_flag_mux0000111112_O
    );
  timer_inst_mins_cnt_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_and0000,
      O => timer_inst_mins_cnt_and0000_0
    );
  timer_inst_mins_cnt_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_2_cmp_eq0000_pack_1,
      O => timer_inst_tc_2_cmp_eq0000
    );
  lcd_cntrl_inst_N7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N7,
      O => lcd_cntrl_inst_N7_0
    );
  lcd_cntrl_inst_N7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux0000111_SW0_O_pack_1,
      O => lcd_cntrl_inst_clock_flag_mux0000111_SW0_O
    );
  timer_inst_mins_cnt_mux0002_18_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_18_1_6844,
      O => timer_inst_mins_cnt_mux0002_18_1_0
    );
  timer_inst_mins_cnt_mux0002_18_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_and0000_pack_1,
      O => timer_inst_tens_cnt_and0000
    );
  N104_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => N104,
      O => N104_0
    );
  N104_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_enable1_SW1_O_pack_1,
      O => timer_inst_enable1_SW1_O
    );
  timer_inst_hundredths_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt_mux0005(2),
      O => timer_inst_hundredths_cnt_2_DXMUX_6993
    );
  timer_inst_hundredths_cnt_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N27_pack_1,
      O => timer_inst_N27
    );
  timer_inst_hundredths_cnt_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X48Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_hundredths_cnt_2_CLKINVNOT
    );
  timer_inst_mins_cnt_mux0002_19_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_19_4_6868,
      O => timer_inst_mins_cnt_mux0002_19_4_0
    );
  timer_inst_mins_cnt_mux0002_19_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_5_cmp_eq0001_pack_2,
      O => timer_inst_tc_5_cmp_eq0001
    );
  N28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N28,
      O => N28_0
    );
  N28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_4_cmp_eq0001_pack_1,
      O => timer_inst_tc_4_cmp_eq0001
    );
  timer_inst_ones_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002(10),
      O => timer_inst_ones_cnt_2_DXMUX_7075
    );
  timer_inst_ones_cnt_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_10_40_SW0_O_pack_1,
      O => timer_inst_ones_cnt_mux0002_10_40_SW0_O
    );
  timer_inst_ones_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_ones_cnt_2_CLKINV_7058
    );
  timer_inst_ones_cnt_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_ones_cnt_2_CEINV_7057
    );
  lcd_cntrl_inst_sf_d_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_6_F5MUX_6711,
      O => lcd_cntrl_inst_sf_d_6_DXMUX_6713
    );
  lcd_cntrl_inst_sf_d_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y28"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_6_181,
      IB => lcd_cntrl_inst_sf_d_6_F,
      SEL => lcd_cntrl_inst_sf_d_6_BXINV_6700,
      O => lcd_cntrl_inst_sf_d_6_F5MUX_6711
    );
  lcd_cntrl_inst_sf_d_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd8_3091,
      O => lcd_cntrl_inst_sf_d_6_BXINV_6700
    );
  lcd_cntrl_inst_sf_d_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N12_0,
      O => lcd_cntrl_inst_sf_d_6_SRINV_6693
    );
  lcd_cntrl_inst_sf_d_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_6_CLKINV_6692
    );
  timer_inst_N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N6,
      O => timer_inst_N6_0
    );
  timer_inst_N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_11_11_SW2_O_pack_1,
      O => timer_inst_ones_cnt_mux0002_11_11_SW2_O
    );
  timer_inst_ones_cnt_mux0002_8_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_8_19_F5MUX_6787,
      O => timer_inst_ones_cnt_mux0002_8_19
    );
  timer_inst_ones_cnt_mux0002_8_19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X57Y5"
    )
    port map (
      IA => N190,
      IB => N191,
      SEL => timer_inst_ones_cnt_mux0002_8_19_BXINV_6780,
      O => timer_inst_ones_cnt_mux0002_8_19_F5MUX_6787
    );
  timer_inst_ones_cnt_mux0002_8_19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control_0,
      O => timer_inst_ones_cnt_mux0002_8_19_BXINV_6780
    );
  lcd_cntrl_inst_sf_d_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_7_F5MUX_6816,
      O => lcd_cntrl_inst_sf_d_7_DXMUX_6818
    );
  lcd_cntrl_inst_sf_d_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y26"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_temp_7_11_6803,
      IB => lcd_cntrl_inst_sf_d_7_F,
      SEL => lcd_cntrl_inst_sf_d_7_BXINV_6805,
      O => lcd_cntrl_inst_sf_d_7_F5MUX_6816
    );
  lcd_cntrl_inst_sf_d_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd33_3001,
      O => lcd_cntrl_inst_sf_d_7_BXINV_6805
    );
  lcd_cntrl_inst_sf_d_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N8_0,
      O => lcd_cntrl_inst_sf_d_7_SRINV_6798
    );
  lcd_cntrl_inst_sf_d_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_7_CLKINV_6797
    );
  N86_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => N86,
      O => N86_0
    );
  N86_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_ones_cnt_share0000_lut_1_1_O_pack_1,
      O => timer_inst_Maddsub_ones_cnt_share0000_lut_1_1_O
    );
  lcd_cntrl_inst_state_FSM_FFd41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd41_F5MUX_6756,
      O => lcd_cntrl_inst_state_FSM_FFd41_DXMUX_6758
    );
  lcd_cntrl_inst_state_FSM_FFd41_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y33"
    )
    port map (
      IA => lcd_cntrl_inst_state_FSM_FFd41_In222_6741,
      IB => lcd_cntrl_inst_state_FSM_FFd41_In221_6754,
      SEL => lcd_cntrl_inst_state_FSM_FFd41_BXINV_6749,
      O => lcd_cntrl_inst_state_FSM_FFd41_F5MUX_6756
    );
  lcd_cntrl_inst_state_FSM_FFd41_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control_0,
      O => lcd_cntrl_inst_state_FSM_FFd41_BXINV_6749
    );
  lcd_cntrl_inst_state_FSM_FFd41_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd43_3096,
      O => lcd_cntrl_inst_state_FSM_FFd41_DYMUX_6743
    );
  lcd_cntrl_inst_state_FSM_FFd41_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd41_SRINV_6734
    );
  lcd_cntrl_inst_state_FSM_FFd41_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd41_CLKINV_6733
    );
  lcd_cntrl_inst_state_FSM_FFd41_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd41_CEINV_6732
    );
  timer_inst_ones_cnt_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002(11),
      O => timer_inst_ones_cnt_3_DXMUX_7137
    );
  timer_inst_ones_cnt_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_11_37_O_pack_1,
      O => timer_inst_ones_cnt_mux0002_11_37_O
    );
  timer_inst_ones_cnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_ones_cnt_3_CLKINV_7120
    );
  timer_inst_ones_cnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_ones_cnt_3_CEINV_7119
    );
  N88_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N88,
      O => N88_0
    );
  N88_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_4_cmp_eq0000_pack_1,
      O => timer_inst_tc_4_cmp_eq0000
    );
  N153_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => N153,
      O => N153_0
    );
  N153_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_3_cmp_eq0000_pack_1,
      O => timer_inst_tc_3_cmp_eq0000
    );
  timer_inst_Maddsub_mins_cnt_share0000_cy_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_mins_cnt_share0000_cy(1),
      O => timer_inst_Maddsub_mins_cnt_share0000_cy_1_0
    );
  timer_inst_Maddsub_mins_cnt_share0000_cy_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_and000011_SW2_O_pack_1,
      O => timer_inst_mins_cnt_and000011_SW2_O
    );
  lcd_cntrl_inst_clock_flag_mux00002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux00002,
      O => lcd_cntrl_inst_clock_flag_mux00002_0
    );
  lcd_cntrl_inst_clock_flag_mux00002_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N4_pack_1,
      O => lcd_cntrl_inst_N4
    );
  N184_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => N184,
      O => N184_0
    );
  N184_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N11_pack_1,
      O => timer_inst_N11
    );
  timer_inst_tens_cnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002(13),
      O => timer_inst_tens_cnt_1_DXMUX_7457
    );
  timer_inst_tens_cnt_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_13_1_O_pack_2,
      O => timer_inst_tens_cnt_mux0002_13_1_O
    );
  timer_inst_tens_cnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tens_cnt_1_CLKINV_7439
    );
  timer_inst_tens_cnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tens_cnt_1_CEINV_7438
    );
  N180_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => N180,
      O => N180_0
    );
  N180_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt_mux0005_3_32_O_pack_1,
      O => timer_inst_hundredths_cnt_mux0005_3_32_O
    );
  timer_inst_Maddsub_ones_cnt_share0000_cy_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_ones_cnt_share0000_cy(1),
      O => timer_inst_Maddsub_ones_cnt_share0000_cy_1_0
    );
  timer_inst_Maddsub_ones_cnt_share0000_cy_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt_mux0005_3_110_SW0_O_pack_1,
      O => timer_inst_hundredths_cnt_mux0005_3_110_SW0_O
    );
  timer_inst_tens_cnt_mux0002_13_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_13_18_7486,
      O => timer_inst_tens_cnt_mux0002_13_18_0
    );
  timer_inst_tens_cnt_mux0002_13_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_13_11_SW1_O_pack_1,
      O => timer_inst_tens_cnt_mux0002_13_11_SW1_O
    );
  timer_inst_tenths_cnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_4_Q,
      O => timer_inst_tenths_cnt_0_DXMUX_7343
    );
  timer_inst_tenths_cnt_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_4_8_O_pack_2,
      O => timer_inst_tenths_cnt_mux0002_4_8_O
    );
  timer_inst_tenths_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tenths_cnt_0_CLKINV_7326
    );
  timer_inst_tenths_cnt_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tenths_cnt_0_CEINV_7325
    );
  timer_inst_N5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N5,
      O => timer_inst_N5_0
    );
  timer_inst_N5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_5_11_SW1_O_pack_1,
      O => timer_inst_tenths_cnt_mux0002_5_11_SW1_O
    );
  timer_inst_tens_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002(14),
      O => timer_inst_tens_cnt_2_DXMUX_7519
    );
  timer_inst_tens_cnt_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_14_5_O_pack_2,
      O => timer_inst_tens_cnt_mux0002_14_5_O
    );
  timer_inst_tens_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tens_cnt_2_CLKINV_7502
    );
  timer_inst_tens_cnt_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tens_cnt_2_CEINV_7501
    );
  timer_inst_tenths_cnt_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_7_Q,
      O => timer_inst_tenths_cnt_3_DXMUX_7419
    );
  timer_inst_tenths_cnt_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_7_8_O_pack_2,
      O => timer_inst_tenths_cnt_mux0002_7_8_O
    );
  timer_inst_tenths_cnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tenths_cnt_3_CLKINV_7402
    );
  timer_inst_tenths_cnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tenths_cnt_3_CEINV_7401
    );
  timer_inst_mins_cnt_mux0002_16_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_16_19_7658,
      O => timer_inst_mins_cnt_mux0002_16_19_0
    );
  timer_inst_mins_cnt_mux0002_16_19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_5_cmp_eq0000_pack_2,
      O => timer_inst_tc_5_cmp_eq0000
    );
  timer_inst_N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N4,
      O => timer_inst_N4_0
    );
  timer_inst_N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_and0001_pack_1,
      O => timer_inst_mins_cnt_and0001
    );
  timer_inst_mins_cnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002(16),
      O => timer_inst_mins_cnt_0_DXMUX_7715
    );
  timer_inst_mins_cnt_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_16_4_O_pack_2,
      O => timer_inst_mins_cnt_mux0002_16_4_O
    );
  timer_inst_mins_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_mins_cnt_0_CLKINV_7698
    );
  timer_inst_mins_cnt_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_mins_cnt_0_CEINV_7697
    );
  timer_inst_Maddsub_mins_cnt_share0000_lut_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_mins_cnt_share0000_lut(2),
      O => timer_inst_Maddsub_mins_cnt_share0000_lut_2_0
    );
  timer_inst_Maddsub_mins_cnt_share0000_lut_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_and000011_SW1_O_pack_1,
      O => timer_inst_mins_cnt_and000011_SW1_O
    );
  timer_inst_tenths_cnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_5_Q,
      O => timer_inst_tenths_cnt_1_DXMUX_7381
    );
  timer_inst_tenths_cnt_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_1_pack_2,
      O => timer_inst_tc_1
    );
  timer_inst_tenths_cnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tenths_cnt_1_CLKINV_7365
    );
  timer_inst_tenths_cnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tenths_cnt_1_CEINV_7364
    );
  timer_inst_tens_cnt_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002(15),
      O => timer_inst_tens_cnt_3_DXMUX_7557
    );
  timer_inst_tens_cnt_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_15_1_O_pack_2,
      O => timer_inst_tens_cnt_mux0002_15_1_O
    );
  timer_inst_tens_cnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_tens_cnt_3_CLKINV_7539
    );
  timer_inst_tens_cnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_tens_cnt_3_CEINV_7538
    );
  timer_inst_Maddsub_mins_cnt_share0000_lut_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_mins_cnt_share0000_lut(1),
      O => timer_inst_Maddsub_mins_cnt_share0000_lut_1_0
    );
  timer_inst_Maddsub_mins_cnt_share0000_lut_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_and000011_SW3_O_pack_1,
      O => timer_inst_mins_cnt_and000011_SW3_O
    );
  N60_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => N60,
      O => N60_0
    );
  N60_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_2_cmp_eq0001_pack_1,
      O => timer_inst_tc_2_cmp_eq0001
    );
  timer_inst_tens_cnt_and0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_and0001,
      O => timer_inst_tens_cnt_and0001_0
    );
  timer_inst_tens_cnt_and0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_3_cmp_eq0001_pack_1,
      O => timer_inst_tc_3_cmp_eq0001
    );
  timer_inst_mins_cnt_mux0002_19_37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_19_37_7820,
      O => timer_inst_mins_cnt_mux0002_19_37_0
    );
  timer_inst_mins_cnt_mux0002_19_37_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_19_37_SW0_O_pack_1,
      O => timer_inst_mins_cnt_mux0002_19_37_SW0_O
    );
  timer_state_sreg_FSM_FFd11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd4_In21_8130,
      O => timer_state_sreg_FSM_FFd4_In21_0
    );
  timer_state_sreg_FSM_FFd11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd11_In,
      O => timer_state_sreg_FSM_FFd11_DYMUX_8119
    );
  timer_state_sreg_FSM_FFd11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd11_CLKINV_8110
    );
  timer_inst_ones_cnt_mux0002_10_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_10_1_7844,
      O => timer_inst_ones_cnt_mux0002_10_1_0
    );
  timer_inst_ones_cnt_mux0002_10_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_and0002_pack_1,
      O => timer_inst_ones_cnt_and0002
    );
  lcd_cntrl_inst_next_mode_state_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_next_mode_state_FXMUX_7985,
      O => lcd_cntrl_inst_next_mode_state_DXMUX_7986
    );
  lcd_cntrl_inst_next_mode_state_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_next_mode_state_FXMUX_7985,
      O => mode_control_0
    );
  lcd_cntrl_inst_next_mode_state_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control,
      O => lcd_cntrl_inst_next_mode_state_FXMUX_7985
    );
  lcd_cntrl_inst_next_mode_state_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => N34_pack_1,
      O => N34
    );
  lcd_cntrl_inst_next_mode_state_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_next_mode_state_SRINV_7969
    );
  lcd_cntrl_inst_next_mode_state_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_next_mode_state_CLKINV_7968
    );
  timer_inst_mins_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002(18),
      O => timer_inst_mins_cnt_2_DXMUX_7791
    );
  timer_inst_mins_cnt_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_18_40_SW0_O_pack_1,
      O => timer_inst_mins_cnt_mux0002_18_40_SW0_O
    );
  timer_inst_mins_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_mins_cnt_2_CLKINV_7773
    );
  timer_inst_mins_cnt_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_mins_cnt_2_CEINV_7772
    );
  timer_state_sreg_FSM_FFd10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => N166,
      O => N166_0
    );
  timer_state_sreg_FSM_FFd10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd10_In,
      O => timer_state_sreg_FSM_FFd10_DYMUX_8083
    );
  timer_state_sreg_FSM_FFd10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd10_CLKINV_8073
    );
  timer_inst_ones_cnt_mux0002_11_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_11_5_7868,
      O => timer_inst_ones_cnt_mux0002_11_5_0
    );
  timer_inst_ones_cnt_mux0002_11_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N24_pack_1,
      O => timer_inst_N24
    );
  timer_inst_ones_cnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002(9),
      O => timer_inst_ones_cnt_1_DXMUX_7901
    );
  timer_inst_ones_cnt_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_9_1_O_pack_2,
      O => timer_inst_ones_cnt_mux0002_9_1_O
    );
  timer_inst_ones_cnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_ones_cnt_1_CLKINV_7884
    );
  timer_inst_ones_cnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_ones_cnt_1_CEINV_7883
    );
  lcd_cntrl_inst_count_temp_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp_or0000_7954,
      O => lcd_cntrl_inst_count_temp_or0000_0
    );
  lcd_cntrl_inst_count_temp_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N0_pack_1,
      O => lcd_cntrl_inst_N0
    );
  lcd_cntrl_inst_N13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N13,
      O => lcd_cntrl_inst_N13_0
    );
  lcd_cntrl_inst_N13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_1_1_SW0_O_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_1_1_SW0_O
    );
  timer_state_sreg1_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd2_In,
      O => timer_state_sreg1_FSM_FFd2_DXMUX_8166
    );
  timer_state_sreg1_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_next_lap_trigger1,
      O => timer_state_sreg1_FSM_FFd2_DYMUX_8154
    );
  timer_state_sreg1_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg1_FSM_FFd2_SRINV_8146
    );
  timer_state_sreg1_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg1_FSM_FFd2_CLKINV_8145
    );
  timer_inst_mins_cnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002(17),
      O => timer_inst_mins_cnt_1_DXMUX_7753
    );
  timer_inst_mins_cnt_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_17_40_SW0_O_pack_1,
      O => timer_inst_mins_cnt_mux0002_17_40_SW0_O
    );
  timer_inst_mins_cnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_mins_cnt_1_CLKINV_7735
    );
  timer_inst_mins_cnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_mins_cnt_1_CEINV_7734
    );
  timer_inst_tc_1_and0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_1_and0001,
      O => timer_inst_tc_1_and0001_0
    );
  timer_inst_tc_1_and0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_1_cmp_eq0001_pack_1,
      O => timer_inst_tc_1_cmp_eq0001
    );
  timer_inst_hundredths_cnt_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002,
      O => timer_inst_ones_cnt_not0002_0
    );
  timer_inst_hundredths_cnt_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt_mux0005(3),
      O => timer_inst_hundredths_cnt_3_DYMUX_8224
    );
  timer_inst_hundredths_cnt_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X53Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_hundredths_cnt_3_CLKINVNOT
    );
  timer_inst_hundredths_cnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt_mux0005(1),
      O => timer_inst_hundredths_cnt_1_DXMUX_8201
    );
  timer_inst_hundredths_cnt_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt_mux0005(0),
      O => timer_inst_hundredths_cnt_1_DYMUX_8189
    );
  timer_inst_hundredths_cnt_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X49Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_hundredths_cnt_1_CLKINVNOT
    );
  timer_inst_mins_cnt_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002(19),
      O => timer_inst_mins_cnt_3_DYMUX_8253
    );
  timer_inst_mins_cnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_mins_cnt_3_CLKINV_8243
    );
  timer_inst_mins_cnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_mins_cnt_3_CEINV_8242
    );
  timer_state_sreg_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y14",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd2_In,
      O => timer_state_sreg_FSM_FFd2_DXMUX_8296
    );
  timer_state_sreg_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y14",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd1_In,
      O => timer_state_sreg_FSM_FFd2_DYMUX_8281
    );
  timer_state_sreg_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y14",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd2_SRINV_8272
    );
  timer_state_sreg_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y14",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd2_CLKINV_8271
    );
  lcd_cntrl_inst_state_FSM_FFd36_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd37_3015,
      O => lcd_cntrl_inst_state_FSM_FFd36_DXMUX_8523
    );
  lcd_cntrl_inst_state_FSM_FFd36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_hundredths_cnt_share0000_lut(2),
      O => timer_inst_Maddsub_hundredths_cnt_share0000_lut_2_0
    );
  lcd_cntrl_inst_state_FSM_FFd36_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd35_In1,
      O => lcd_cntrl_inst_state_FSM_FFd36_DYMUX_8507
    );
  lcd_cntrl_inst_state_FSM_FFd36_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd36_SRINV_8497
    );
  lcd_cntrl_inst_state_FSM_FFd36_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd36_CLKINV_8496
    );
  lcd_cntrl_inst_state_FSM_FFd36_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd36_CEINV_8495
    );
  lcd_cntrl_inst_state_FSM_FFd43_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd43_In,
      O => lcd_cntrl_inst_state_FSM_FFd43_DYMUX_8548
    );
  lcd_cntrl_inst_state_FSM_FFd43_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd43_SRINV_8540
    );
  lcd_cntrl_inst_state_FSM_FFd43_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd43_CLKINV_8539
    );
  mode_debounce_Q2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_debounce_Q1_3222,
      O => mode_debounce_Q2_DXMUX_8643
    );
  mode_debounce_Q2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_IBUF_6217,
      O => mode_debounce_Q2_DYMUX_8638
    );
  mode_debounce_Q2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => mode_debounce_Q2_CLKINV_8636
    );
  lcd_cntrl_inst_clock_flag_mux0000114_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux0000114_8713,
      O => lcd_cntrl_inst_clock_flag_mux0000114_0
    );
  mode_debounce_Q3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_debounce_Q2_3223,
      O => mode_debounce_Q3_DYMUX_8652
    );
  mode_debounce_Q3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => mode_debounce_Q3_CLKINV_8650
    );
  lcd_cntrl_inst_clock_flag_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux0000,
      O => lcd_cntrl_inst_clock_flag_DXMUX_8625
    );
  lcd_cntrl_inst_clock_flag_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux000012_pack_2,
      O => lcd_cntrl_inst_clock_flag_mux000012_3221
    );
  lcd_cntrl_inst_clock_flag_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_clock_flag_SRINV_8609
    );
  lcd_cntrl_inst_clock_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_clock_flag_CLKINV_8608
    );
  lcd_cntrl_inst_clock_flag_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_control_0,
      O => lcd_cntrl_inst_clock_flag_CEINV_8607
    );
  timer_state_sreg_FSM_FFd3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_next_clken0_8335,
      O => timer_state_next_clken0_0
    );
  timer_state_sreg_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd3_In,
      O => timer_state_sreg_FSM_FFd3_DYMUX_8322
    );
  timer_state_sreg_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd3_CLKINV_8313
    );
  lcd_cntrl_inst_state_FSM_FFd46_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_control_0_25_8592,
      O => lcd_cntrl_inst_control_0_25_0
    );
  lcd_cntrl_inst_state_FSM_FFd46_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd46_In,
      O => lcd_cntrl_inst_state_FSM_FFd46_DYMUX_8583
    );
  lcd_cntrl_inst_state_FSM_FFd46_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd46_SRINV_8575
    );
  lcd_cntrl_inst_state_FSM_FFd46_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd46_CLKINV_8574
    );
  timer_state_sreg_FSM_FFd7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd7_In,
      O => timer_state_sreg_FSM_FFd7_DYMUX_8401
    );
  timer_state_sreg_FSM_FFd7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd7_CLKINV_8391
    );
  timer_inst_tens_cnt_mux0002_15_33_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt_mux0002_15_33_8701,
      O => timer_inst_tens_cnt_mux0002_15_33_0
    );
  timer_inst_tens_cnt_mux0002_15_33_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt_mux0002_17_1_8694,
      O => timer_inst_mins_cnt_mux0002_17_1_0
    );
  lcd_cntrl_inst_sf_d_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_173,
      O => lcd_cntrl_inst_sf_d_0_DXMUX_8768
    );
  lcd_cntrl_inst_sf_d_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_103_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_0_103_3230
    );
  lcd_cntrl_inst_sf_d_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N71_0,
      O => lcd_cntrl_inst_sf_d_0_SRINV_8751
    );
  lcd_cntrl_inst_sf_d_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_0_CLKINV_8750
    );
  lcd_cntrl_inst_sf_d_temp_0_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_25_8737,
      O => lcd_cntrl_inst_sf_d_temp_0_25_0
    );
  lcd_cntrl_inst_sf_d_temp_0_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux0000119_8730,
      O => lcd_cntrl_inst_clock_flag_mux0000119_0
    );
  N146_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => N146,
      O => N146_0
    );
  N146_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => N168,
      O => N168_0
    );
  timer_state_sreg_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd6_In,
      O => timer_state_sreg_FSM_FFd6_DXMUX_8373
    );
  timer_state_sreg_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd5_In,
      O => timer_state_sreg_FSM_FFd6_DYMUX_8358
    );
  timer_state_sreg_FSM_FFd6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd6_SRINV_8350
    );
  timer_state_sreg_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd6_CLKINV_8349
    );
  lcd_cntrl_inst_sf_d_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_5_1_8431,
      O => lcd_cntrl_inst_sf_d_5_DYMUX_8434
    );
  lcd_cntrl_inst_sf_d_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N111,
      O => lcd_cntrl_inst_sf_d_5_SRINV_8426
    );
  lcd_cntrl_inst_sf_d_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_5_CLKINV_8425
    );
  lcd_cntrl_inst_state_FSM_FFd34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000,
      O => lcd_cntrl_inst_lap_ones_or0000_0
    );
  lcd_cntrl_inst_state_FSM_FFd34_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd34_In1,
      O => lcd_cntrl_inst_state_FSM_FFd34_DYMUX_8469
    );
  lcd_cntrl_inst_state_FSM_FFd34_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd34_SRINV_8459
    );
  lcd_cntrl_inst_state_FSM_FFd34_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd34_CLKINV_8458
    );
  lcd_cntrl_inst_state_FSM_FFd34_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd34_CEINV_8457
    );
  lcd_cntrl_inst_sf_d_temp_0_152_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_152_8906,
      O => lcd_cntrl_inst_sf_d_temp_0_152_0
    );
  lcd_cntrl_inst_sf_d_temp_0_152_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_142_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_0_142_3250
    );
  lcd_cntrl_inst_sf_d_temp_4_181_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_181_9164,
      O => lcd_cntrl_inst_sf_d_temp_4_181_0
    );
  lcd_cntrl_inst_sf_d_temp_4_181_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_172_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_4_172_3272
    );
  lcd_cntrl_inst_sf_d_temp_4_120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_120_9011,
      O => lcd_cntrl_inst_sf_d_temp_4_120_0
    );
  lcd_cntrl_inst_sf_d_temp_4_120_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_253_9004,
      O => lcd_cntrl_inst_sf_d_temp_0_253_0
    );
  lcd_cntrl_inst_sf_d_temp_0_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_8_9059,
      O => lcd_cntrl_inst_sf_d_temp_0_8_0
    );
  lcd_cntrl_inst_sf_d_temp_0_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_200_9052,
      O => lcd_cntrl_inst_sf_d_temp_4_200_0
    );
  lcd_cntrl_inst_sf_d_temp_0_32_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_32_8794,
      O => lcd_cntrl_inst_sf_d_temp_0_32_0
    );
  lcd_cntrl_inst_sf_d_temp_0_32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_201_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_0_201_3236
    );
  lcd_cntrl_inst_sf_d_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_256_9123,
      O => lcd_cntrl_inst_sf_d_4_DXMUX_9126
    );
  lcd_cntrl_inst_sf_d_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_242_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_4_242_3270
    );
  lcd_cntrl_inst_sf_d_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_147_9140,
      O => lcd_cntrl_inst_sf_d_4_SRINV_9111
    );
  lcd_cntrl_inst_sf_d_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_4_CLKINV_9110
    );
  N160_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => N160,
      O => N160_0
    );
  N160_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => N159,
      O => N159_0
    );
  lcd_cntrl_inst_N71_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N71,
      O => lcd_cntrl_inst_N71_0
    );
  lcd_cntrl_inst_N71_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_261_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_0_261_3260
    );
  timer_state_sreg_FSM_FFd12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd12_In_9216,
      O => timer_state_sreg_FSM_FFd12_DXMUX_9219
    );
  timer_state_sreg_FSM_FFd12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => N15_pack_2,
      O => N15
    );
  timer_state_sreg_FSM_FFd12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd12_CLKINV_9202
    );
  lcd_cntrl_inst_sf_d_temp_0_250_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_250_8818,
      O => lcd_cntrl_inst_sf_d_temp_0_250_0
    );
  lcd_cntrl_inst_sf_d_temp_0_250_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_123_8810,
      O => lcd_cntrl_inst_sf_d_temp_0_123_0
    );
  lcd_cntrl_inst_sf_d_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X31Y27"
    )
    port map (
      O => lcd_cntrl_inst_sf_d_3_LOGIC_ONE_9097
    );
  lcd_cntrl_inst_sf_d_3_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X31Y27"
    )
    port map (
      IA => lcd_cntrl_inst_sf_d_3_LOGIC_ONE_9097,
      IB => lcd_cntrl_inst_sf_d_3_CYINIT_9096,
      SEL => lcd_cntrl_inst_sf_d_3_CYSELF_9090,
      O => lcd_cntrl_inst_sf_d_temp_3_Q
    );
  lcd_cntrl_inst_sf_d_3_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_cy_5_CYMUXFAST_3623,
      O => lcd_cntrl_inst_sf_d_3_CYINIT_9096
    );
  lcd_cntrl_inst_sf_d_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_wg_lut_6_Q_9089,
      O => lcd_cntrl_inst_sf_d_3_CYSELF_9090
    );
  lcd_cntrl_inst_sf_d_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_3_Q,
      O => lcd_cntrl_inst_sf_d_3_DYMUX_9085
    );
  lcd_cntrl_inst_sf_d_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N111_pack_2,
      O => lcd_cntrl_inst_N111
    );
  lcd_cntrl_inst_sf_d_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_3_CLKINV_9075
    );
  lcd_cntrl_inst_sf_d_temp_0_221_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_221_8842,
      O => lcd_cntrl_inst_sf_d_temp_0_221_0
    );
  lcd_cntrl_inst_sf_d_temp_0_221_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y24",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_220_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_0_220_3241
    );
  lcd_cntrl_inst_sf_d_temp_2_61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_61_8963,
      O => lcd_cntrl_inst_sf_d_temp_2_61_0
    );
  lcd_cntrl_inst_sf_d_temp_2_61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_242_8956,
      O => lcd_cntrl_inst_sf_d_temp_0_242_0
    );
  lcd_cntrl_inst_sf_d_temp_4_228_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_228_8882,
      O => lcd_cntrl_inst_sf_d_temp_4_228_0
    );
  lcd_cntrl_inst_sf_d_temp_4_228_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_117_8875,
      O => lcd_cntrl_inst_sf_d_temp_0_117_0
    );
  lcd_cntrl_inst_clock_flag_mux0000111117_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_mux0000111117_9035,
      O => lcd_cntrl_inst_clock_flag_mux0000111117_0
    );
  lcd_cntrl_inst_clock_flag_mux0000111117_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_239_9028,
      O => lcd_cntrl_inst_sf_d_temp_0_239_0
    );
  lcd_cntrl_inst_sf_d_temp_4_106_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_106_8939,
      O => lcd_cntrl_inst_sf_d_temp_4_106_0
    );
  lcd_cntrl_inst_sf_d_temp_4_106_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_136_8932,
      O => lcd_cntrl_inst_sf_d_temp_0_136_0
    );
  strtstop_debounce_Q2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => strtstop_debounce_Q1_3243,
      O => strtstop_debounce_Q2_DXMUX_8857
    );
  strtstop_debounce_Q2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => strtstop_IBUF_6326,
      O => strtstop_debounce_Q2_DYMUX_8852
    );
  strtstop_debounce_Q2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => strtstop_debounce_Q2_CLKINV_8850
    );
  strtstop_debounce_Q3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X63Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => strtstop_debounce_Q2_3244,
      O => strtstop_debounce_Q3_DYMUX_8914
    );
  strtstop_debounce_Q3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X63Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => strtstop_debounce_Q3_CLKINV_8912
    );
  timer_state_sreg_FSM_FFd4_In10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd4_In10_9271,
      O => timer_state_sreg_FSM_FFd4_In10_0
    );
  timer_state_sreg_FSM_FFd4_In10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => mode_debounced_pack_1,
      O => mode_debounced
    );
  Inst_dcm1_DCM_SP_INST_ML_NEW_OUT_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y95",
      PATHPULSE => 592 ps
    )
    port map (
      I => Inst_dcm1_DCM_SP_INST_ML_NEW_OUT,
      O => Inst_dcm1_DCM_SP_INST_ML_NEW_OUT_0
    );
  Inst_dcm1_DCM_SP_INST_ML_NEW_OUT_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y95",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset,
      O => timer_state_state_reset_0
    );
  timer_state_sreg_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd4_In,
      O => timer_state_sreg_FSM_FFd4_DXMUX_9302
    );
  timer_state_sreg_FSM_FFd4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => ll_debounced_pack_1,
      O => ll_debounced
    );
  timer_state_sreg_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd4_CLKINV_9284
    );
  clk_divider_div_temp_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_div_temp_3275,
      O => clk_divider_div_temp_DYMUX_9340
    );
  clk_divider_div_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_div_temp_CLKINV_9338
    );
  clk_divider_div_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_cnt_cmp_ge0000,
      O => clk_divider_div_temp_CEINV_9337
    );
  timer_inst_N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_N14,
      O => timer_inst_N14_0
    );
  timer_inst_N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tc_1_cmp_eq0000_pack_1,
      O => timer_inst_tc_1_cmp_eq0000
    );
  lcd_e_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y37",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_control_0_12_pack_1,
      O => lcd_cntrl_inst_control_0_12_3276
    );
  N82_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => N82,
      O => N82_0
    );
  N82_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => N155,
      O => N155_0
    );
  timer_state_rst_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_BYINV_9592,
      O => timer_state_rst_DYMUX_9593
    );
  timer_state_rst_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => timer_state_rst_BYINV_9592
    );
  timer_state_rst_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_rst_CLKINV_9590
    );
  timer_inst_tenths_cnt_mux0002_4_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_4_25_9620,
      O => timer_inst_tenths_cnt_mux0002_4_25_0
    );
  timer_inst_tenths_cnt_mux0002_4_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  lcd_cntrl_inst_lap_tenths_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt(3),
      O => lcd_cntrl_inst_lap_tenths_3_DXMUX_9665
    );
  lcd_cntrl_inst_lap_tenths_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt(2),
      O => lcd_cntrl_inst_lap_tenths_3_DYMUX_9658
    );
  lcd_cntrl_inst_lap_tenths_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_tenths_3_SRINV_9656
    );
  lcd_cntrl_inst_lap_tenths_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_tenths_3_CLKINV_9655
    );
  lcd_cntrl_inst_lap_tenths_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_tenths_3_CEINV_9654
    );
  timer_state_sreg_FSM_FFd8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg_FSM_FFd8_In,
      O => timer_state_sreg_FSM_FFd8_DXMUX_9699
    );
  timer_state_sreg_FSM_FFd8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => strtstop_debounced_pack_2,
      O => strtstop_debounced
    );
  timer_state_sreg_FSM_FFd8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_state_sreg_FSM_FFd8_CLKINV_9681
    );
  N123_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => N123,
      O => N123_0
    );
  N123_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_hundredths_cnt_share0000_cy(1),
      O => timer_inst_Maddsub_hundredths_cnt_share0000_cy_1_0
    );
  lcd_cntrl_inst_N12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N12,
      O => lcd_cntrl_inst_N12_0
    );
  lcd_cntrl_inst_N12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 592 ps
    )
    port map (
      I => N8_pack_1,
      O => N8
    );
  timer_inst_tenths_cnt_mux0002_5_17 : X_LUT4
    generic map(
      INIT => X"9030",
      LOC => "SLICE_X50Y8"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0000,
      ADR1 => N168_0,
      ADR2 => timer_inst_N5_0,
      ADR3 => mode_control_0,
      O => timer_inst_tenths_cnt_mux0002_5_17_O
    );
  timer_inst_tenths_cnt_mux0002_6_17_SW0 : X_LUT4
    generic map(
      INIT => X"7FEA",
      LOC => "SLICE_X50Y8"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(0),
      ADR1 => mode_control_0,
      ADR2 => timer_inst_tc_1_cmp_eq0000,
      ADR3 => timer_inst_tenths_cnt(1),
      O => N162
    );
  N162_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => N162,
      O => N162_0
    );
  N162_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y8",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt_mux0002_5_17_O,
      O => timer_inst_tenths_cnt_mux0002_5_17_O_0
    );
  lcd_cntrl_inst_lap_ones_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt(3),
      O => lcd_cntrl_inst_lap_ones_3_DXMUX_9387
    );
  lcd_cntrl_inst_lap_ones_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt(2),
      O => lcd_cntrl_inst_lap_ones_3_DYMUX_9380
    );
  lcd_cntrl_inst_lap_ones_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_ones_3_SRINV_9378
    );
  lcd_cntrl_inst_lap_ones_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_ones_3_CLKINV_9377
    );
  lcd_cntrl_inst_lap_ones_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_ones_3_CEINV_9376
    );
  timer_inst_Maddsub_ones_cnt_share0000_lut_2_1 : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X55Y7"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_tc_2_cmp_eq0000,
      ADR2 => timer_inst_tc_1_cmp_eq0000,
      ADR3 => timer_inst_ones_cnt(2),
      O => timer_inst_Maddsub_ones_cnt_share0000_lut(2)
    );
  timer_inst_Maddsub_ones_cnt_share0000_lut_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_Maddsub_ones_cnt_share0000_lut(2),
      O => timer_inst_Maddsub_ones_cnt_share0000_lut_2_0
    );
  timer_inst_Maddsub_ones_cnt_share0000_lut_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N49,
      O => N49_0
    );
  lcd_cntrl_inst_lap_ones_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt(1),
      O => lcd_cntrl_inst_lap_ones_1_DXMUX_9363
    );
  lcd_cntrl_inst_lap_ones_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt(0),
      O => lcd_cntrl_inst_lap_ones_1_DYMUX_9356
    );
  lcd_cntrl_inst_lap_ones_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_ones_1_SRINV_9354
    );
  lcd_cntrl_inst_lap_ones_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_ones_1_CLKINV_9353
    );
  lcd_cntrl_inst_lap_ones_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_ones_1_CEINV_9352
    );
  timer_inst_tens_cnt_mux0002_14_38_SW0 : X_LUT4
    generic map(
      INIT => X"2E00",
      LOC => "SLICE_X56Y7"
    )
    port map (
      ADR0 => N140_0,
      ADR1 => timer_inst_tens_cnt_and0000,
      ADR2 => N141_0,
      ADR3 => timer_inst_tens_cnt_mux0002_14_11,
      O => N70
    );
  N70_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N70,
      O => N70_0
    );
  lcd_cntrl_inst_lap_tens_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt(3),
      O => lcd_cntrl_inst_lap_tens_3_DXMUX_9435
    );
  lcd_cntrl_inst_lap_tens_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt(2),
      O => lcd_cntrl_inst_lap_tens_3_DYMUX_9428
    );
  lcd_cntrl_inst_lap_tens_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_tens_3_SRINV_9426
    );
  lcd_cntrl_inst_lap_tens_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_tens_3_CLKINV_9425
    );
  lcd_cntrl_inst_lap_tens_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_tens_3_CEINV_9424
    );
  lcd_cntrl_inst_sf_d_temp_3_3_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd24_3281,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd20_2997,
      ADR2 => lcd_cntrl_inst_N112,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd16_3280,
      O => N23_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_3_3 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd6_3011,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd2_3277,
      ADR2 => N23,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd10_3093,
      O => lcd_cntrl_inst_N8
    );
  lcd_cntrl_inst_N8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N8,
      O => lcd_cntrl_inst_N8_0
    );
  lcd_cntrl_inst_N8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => N23_pack_1,
      O => N23
    );
  lcd_cntrl_inst_lap_tens_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt(1),
      O => lcd_cntrl_inst_lap_tens_1_DXMUX_9411
    );
  lcd_cntrl_inst_lap_tens_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tens_cnt(0),
      O => lcd_cntrl_inst_lap_tens_1_DYMUX_9404
    );
  lcd_cntrl_inst_lap_tens_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_tens_1_SRINV_9402
    );
  lcd_cntrl_inst_lap_tens_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_tens_1_CLKINV_9401
    );
  lcd_cntrl_inst_lap_tens_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_tens_1_CEINV_9400
    );
  lap_load_debounce_Q2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => lap_load_debounce_Q1_3208,
      O => lap_load_debounce_Q2_DXMUX_9501
    );
  lap_load_debounce_Q2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => lap_load_IBUF_6319,
      O => lap_load_debounce_Q2_DYMUX_9496
    );
  lap_load_debounce_Q2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lap_load_debounce_Q2_CLKINV_9494
    );
  lap_load_debounce_Q3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => lap_load_debounce_Q2_3211,
      O => lap_load_debounce_Q3_DYMUX_9510
    );
  lap_load_debounce_Q3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lap_load_debounce_Q3_CLKINV_9508
    );
  lcd_cntrl_inst_lap_tenths_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt(1),
      O => lcd_cntrl_inst_lap_tenths_1_DXMUX_9641
    );
  lcd_cntrl_inst_lap_tenths_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_tenths_cnt(0),
      O => lcd_cntrl_inst_lap_tenths_1_DYMUX_9634
    );
  lcd_cntrl_inst_lap_tenths_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_tenths_1_SRINV_9632
    );
  lcd_cntrl_inst_lap_tenths_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_tenths_1_CLKINV_9631
    );
  lcd_cntrl_inst_lap_tenths_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_tenths_1_CEINV_9630
    );
  N114_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N114,
      O => N114_0
    );
  N114_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N147,
      O => N147_0
    );
  lcd_cntrl_inst_lap_hundredths_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt(1),
      O => lcd_cntrl_inst_lap_hundredths_1_DXMUX_9532
    );
  lcd_cntrl_inst_lap_hundredths_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt(0),
      O => lcd_cntrl_inst_lap_hundredths_1_DYMUX_9525
    );
  lcd_cntrl_inst_lap_hundredths_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_hundredths_1_SRINV_9523
    );
  lcd_cntrl_inst_lap_hundredths_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_hundredths_1_CLKINV_9522
    );
  lcd_cntrl_inst_lap_hundredths_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_hundredths_1_CEINV_9521
    );
  lcd_cntrl_inst_lap_hundredths_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt(3),
      O => lcd_cntrl_inst_lap_hundredths_3_DXMUX_9556
    );
  lcd_cntrl_inst_lap_hundredths_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_hundredths_cnt(2),
      O => lcd_cntrl_inst_lap_hundredths_3_DYMUX_9549
    );
  lcd_cntrl_inst_lap_hundredths_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_hundredths_3_SRINV_9547
    );
  lcd_cntrl_inst_lap_hundredths_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_hundredths_3_CLKINV_9546
    );
  lcd_cntrl_inst_lap_hundredths_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_hundredths_3_CEINV_9545
    );
  timer_inst_tenths_cnt_mux0002_5_11_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X57Y7"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(1),
      ADR1 => timer_inst_tenths_cnt(3),
      ADR2 => timer_inst_tenths_cnt(2),
      ADR3 => timer_inst_tenths_cnt(0),
      O => N116
    );
  timer_inst_ones_cnt_mux0002_11_211_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X57Y7"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(1),
      ADR1 => timer_inst_tc_1_cmp_eq0001,
      ADR2 => timer_inst_tenths_cnt(2),
      ADR3 => timer_inst_tenths_cnt(0),
      O => N113
    );
  N116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N116,
      O => N116_0
    );
  N116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y7",
      PATHPULSE => 592 ps
    )
    port map (
      I => N113,
      O => N113_0
    );
  lcd_cntrl_inst_mode_state : X_SFF
    generic map(
      LOC => "SLICE_X35Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_mode_state_DYMUX_9869,
      CE => VCC,
      CLK => lcd_cntrl_inst_mode_state_CLKINV_9866,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_mode_state_SRINV_9867,
      O => lcd_cntrl_inst_mode_state_3073
    );
  lcd_cntrl_inst_mode_state_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_next_mode_state_3203,
      O => lcd_cntrl_inst_mode_state_DYMUX_9869
    );
  lcd_cntrl_inst_mode_state_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_mode_state_SRINV_9867
    );
  lcd_cntrl_inst_mode_state_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_mode_state_CLKINV_9866
    );
  lcd_cntrl_inst_sf_d_temp_4_27 : X_LUT4
    generic map(
      INIT => X"1F00",
      LOC => "SLICE_X51Y12"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(1),
      ADR1 => timer_inst_mins_cnt(2),
      ADR2 => timer_inst_mins_cnt(3),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd27_2856,
      O => lcd_cntrl_inst_sf_d_temp_4_27_10159
    );
  timer_inst_mins_cnt_mux0002_19_37_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X51Y12"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(0),
      ADR1 => timer_inst_mins_cnt(2),
      ADR2 => timer_inst_mins_cnt(3),
      ADR3 => timer_inst_mins_cnt(1),
      O => N65
    );
  lcd_cntrl_inst_sf_d_temp_4_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_27_10159,
      O => lcd_cntrl_inst_sf_d_temp_4_27_0
    );
  lcd_cntrl_inst_sf_d_temp_4_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => N65,
      O => N65_0
    );
  lcd_cntrl_inst_sf_d_temp_0_41 : X_LUT4
    generic map(
      INIT => X"EA00",
      LOC => "SLICE_X30Y30"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(0),
      ADR1 => timer_inst_ones_cnt(2),
      ADR2 => timer_inst_ones_cnt(3),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      O => lcd_cntrl_inst_sf_d_temp_0_41_10200
    );
  lcd_cntrl_inst_clock_flag_mux0000111127_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X30Y30"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd36_3014,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd27_2856,
      O => N176
    );
  N176_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => N176,
      O => N176_0
    );
  N176_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_41_10200,
      O => lcd_cntrl_inst_sf_d_temp_0_41_0
    );
  lcd_cntrl_inst_sf_d_temp_2_5 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X26Y33"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd40_3013,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd33_3001,
      ADR2 => lcd_cntrl_inst_N6,
      ADR3 => lcd_cntrl_inst_N12_0,
      O => lcd_cntrl_inst_sf_d_temp_2_5_9895
    );
  lcd_cntrl_inst_count_temp_or000021 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X26Y33"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd46_3219,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd45_3285,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd44_3216,
      O => lcd_cntrl_inst_N6_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_5_9895,
      O => lcd_cntrl_inst_sf_d_temp_2_5_0
    );
  lcd_cntrl_inst_sf_d_temp_2_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N6_pack_1,
      O => lcd_cntrl_inst_N6
    );
  lcd_cntrl_inst_sf_d_temp_0_28 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      ADR2 => VCC,
      ADR3 => timer_inst_tenths_cnt(1),
      O => lcd_cntrl_inst_sf_d_temp_0_28_10223
    );
  lcd_cntrl_inst_sf_d_temp_0_57 : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(2),
      ADR1 => timer_inst_tenths_cnt(3),
      ADR2 => VCC,
      ADR3 => timer_inst_tenths_cnt(0),
      O => lcd_cntrl_inst_sf_d_temp_0_57_10231
    );
  lcd_cntrl_inst_sf_d_temp_0_57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_57_10231,
      O => lcd_cntrl_inst_sf_d_temp_0_57_0
    );
  lcd_cntrl_inst_sf_d_temp_0_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_28_10223,
      O => lcd_cntrl_inst_sf_d_temp_0_28_0
    );
  lcd_cntrl_inst_sf_d_temp_2_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_23_10327,
      O => lcd_cntrl_inst_sf_d_temp_2_23_0
    );
  lcd_cntrl_inst_sf_d_temp_2_23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y25",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_22_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_2_22_3297
    );
  lcd_cntrl_inst_sf_d_temp_2_50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_50_10339,
      O => lcd_cntrl_inst_sf_d_temp_2_50_0
    );
  lcd_cntrl_inst_lap_min_2 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_min_3_DYMUX_10077,
      CE => lcd_cntrl_inst_lap_min_3_CEINV_10073,
      CLK => lcd_cntrl_inst_lap_min_3_CLKINV_10074,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_min_3_SRINV_10075,
      O => lcd_cntrl_inst_lap_min(2)
    );
  lcd_cntrl_inst_lap_min_3 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_min_3_DXMUX_10084,
      CE => lcd_cntrl_inst_lap_min_3_CEINV_10073,
      CLK => lcd_cntrl_inst_lap_min_3_CLKINV_10074,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_min_3_SRINV_10075,
      O => lcd_cntrl_inst_lap_min(3)
    );
  lcd_cntrl_inst_lap_min_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt(3),
      O => lcd_cntrl_inst_lap_min_3_DXMUX_10084
    );
  lcd_cntrl_inst_lap_min_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt(2),
      O => lcd_cntrl_inst_lap_min_3_DYMUX_10077
    );
  lcd_cntrl_inst_lap_min_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_min_3_SRINV_10075
    );
  lcd_cntrl_inst_lap_min_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_min_3_CLKINV_10074
    );
  lcd_cntrl_inst_lap_min_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_min_3_CEINV_10073
    );
  lcd_cntrl_inst_sf_d_temp_2_23 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X30Y25"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd43_3096,
      ADR1 => lcd_cntrl_inst_sf_d_temp_2_12_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_2_22_3297,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd42_3099,
      O => lcd_cntrl_inst_sf_d_temp_2_23_10327
    );
  lcd_cntrl_inst_sf_d_temp_2_50 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X28Y21"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_min(2),
      ADR1 => lcd_cntrl_inst_lap_ones(2),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      O => lcd_cntrl_inst_sf_d_temp_2_50_10339
    );
  timer_inst_Maddsub_tens_cnt_share0000_cy_2_11_SW1 : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X52Y5"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(2),
      ADR1 => timer_inst_tens_cnt(0),
      ADR2 => timer_inst_tens_cnt(3),
      ADR3 => timer_inst_tens_cnt(1),
      O => N144
    );
  timer_inst_Maddsub_tens_cnt_share0000_cy_2_11_SW0 : X_LUT4
    generic map(
      INIT => X"F0E1",
      LOC => "SLICE_X52Y5"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(2),
      ADR1 => timer_inst_tens_cnt(0),
      ADR2 => timer_inst_tens_cnt(3),
      ADR3 => timer_inst_tens_cnt(1),
      O => N143
    );
  N144_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => N144,
      O => N144_0
    );
  N144_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => N143,
      O => N143_0
    );
  lcd_cntrl_inst_state_FSM_FFd7 : X_SFF
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd8_DYMUX_9981,
      CE => lcd_cntrl_inst_state_FSM_FFd8_CEINV_9977,
      CLK => lcd_cntrl_inst_state_FSM_FFd8_CLKINV_9978,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd8_SRINV_9979,
      O => lcd_cntrl_inst_state_FSM_FFd7_2847
    );
  lcd_cntrl_inst_state_FSM_FFd8 : X_SFF
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd8_DXMUX_9988,
      CE => lcd_cntrl_inst_state_FSM_FFd8_CEINV_9977,
      CLK => lcd_cntrl_inst_state_FSM_FFd8_CLKINV_9978,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd8_SRINV_9979,
      O => lcd_cntrl_inst_state_FSM_FFd8_3091
    );
  lcd_cntrl_inst_state_FSM_FFd8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd9_2842,
      O => lcd_cntrl_inst_state_FSM_FFd8_DXMUX_9988
    );
  lcd_cntrl_inst_state_FSM_FFd8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd8_3091,
      O => lcd_cntrl_inst_state_FSM_FFd8_DYMUX_9981
    );
  lcd_cntrl_inst_state_FSM_FFd8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd8_SRINV_9979
    );
  lcd_cntrl_inst_state_FSM_FFd8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd8_CLKINV_9978
    );
  lcd_cntrl_inst_state_FSM_FFd8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd8_CEINV_9977
    );
  lcd_cntrl_inst_sf_d_temp_4_13 : X_LUT4
    generic map(
      INIT => X"5700",
      LOC => "SLICE_X35Y21"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(3),
      ADR1 => timer_inst_tens_cnt(1),
      ADR2 => timer_inst_tens_cnt(2),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      O => lcd_cntrl_inst_sf_d_temp_4_13_10255
    );
  lcd_cntrl_inst_sf_d_temp_0_47 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X35Y21"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(3),
      ADR1 => timer_inst_tens_cnt(0),
      ADR2 => timer_inst_tens_cnt(2),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      O => lcd_cntrl_inst_sf_d_temp_0_47_10248
    );
  lcd_cntrl_inst_sf_d_temp_4_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_13_10255,
      O => lcd_cntrl_inst_sf_d_temp_4_13_0
    );
  lcd_cntrl_inst_sf_d_temp_4_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_47_10248,
      O => lcd_cntrl_inst_sf_d_temp_0_47_0
    );
  lcd_cntrl_inst_sf_d_temp_0_73 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_0_66_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_57_0,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      O => lcd_cntrl_inst_sf_d_temp_0_73_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_0_80 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_47_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_0_41_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_0_73_3294,
      O => lcd_cntrl_inst_sf_d_temp_0_80_10279
    );
  lcd_cntrl_inst_sf_d_temp_0_80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_80_10279,
      O => lcd_cntrl_inst_sf_d_temp_0_80_0
    );
  lcd_cntrl_inst_sf_d_temp_0_80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_73_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_0_73_3294
    );
  lcd_cntrl_inst_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X27Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd2_DXMUX_9916,
      CE => lcd_cntrl_inst_state_FSM_FFd2_CEINV_9905,
      CLK => lcd_cntrl_inst_state_FSM_FFd2_CLKINV_9906,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd2_SRINV_9907,
      O => lcd_cntrl_inst_state_FSM_FFd2_3277
    );
  lcd_cntrl_inst_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X27Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd2_DYMUX_9909,
      CE => lcd_cntrl_inst_state_FSM_FFd2_CEINV_9905,
      CLK => lcd_cntrl_inst_state_FSM_FFd2_CLKINV_9906,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd2_SRINV_9907,
      O => lcd_cntrl_inst_state_FSM_FFd1_2862
    );
  lcd_cntrl_inst_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd3_2851,
      O => lcd_cntrl_inst_state_FSM_FFd2_DXMUX_9916
    );
  lcd_cntrl_inst_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd2_3277,
      O => lcd_cntrl_inst_state_FSM_FFd2_DYMUX_9909
    );
  lcd_cntrl_inst_state_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd2_SRINV_9907
    );
  lcd_cntrl_inst_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd2_CLKINV_9906
    );
  lcd_cntrl_inst_state_FSM_FFd2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd2_CEINV_9905
    );
  lcd_cntrl_inst_sf_d_temp_4_52 : X_LUT4
    generic map(
      INIT => X"222A",
      LOC => "SLICE_X35Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR1 => timer_inst_hundredths_cnt(3),
      ADR2 => timer_inst_hundredths_cnt(1),
      ADR3 => timer_inst_hundredths_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_4_52_10303
    );
  lcd_cntrl_inst_sf_d_temp_2_12 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X35Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR1 => timer_inst_hundredths_cnt(3),
      ADR2 => timer_inst_hundredths_cnt(1),
      ADR3 => timer_inst_hundredths_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_2_12_10296
    );
  lcd_cntrl_inst_sf_d_temp_4_52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_52_10303,
      O => lcd_cntrl_inst_sf_d_temp_4_52_0
    );
  lcd_cntrl_inst_sf_d_temp_4_52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_12_10296,
      O => lcd_cntrl_inst_sf_d_temp_2_12_0
    );
  timer_inst_hundredths_cnt_mux0005_3_32_SW0 : X_LUT4
    generic map(
      INIT => X"8F0E",
      LOC => "SLICE_X44Y13"
    )
    port map (
      ADR0 => timer_inst_hundredths_cnt(1),
      ADR1 => timer_inst_hundredths_cnt(0),
      ADR2 => mode_control_0,
      ADR3 => timer_inst_hundredths_cnt(2),
      O => N178
    );
  lcd_cntrl_inst_sf_d_temp_0_66 : X_LUT4
    generic map(
      INIT => X"FECC",
      LOC => "SLICE_X44Y13"
    )
    port map (
      ADR0 => timer_inst_hundredths_cnt(2),
      ADR1 => timer_inst_hundredths_cnt(0),
      ADR2 => timer_inst_hundredths_cnt(1),
      ADR3 => timer_inst_hundredths_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_0_66_10135
    );
  lcd_cntrl_inst_sf_d_temp_0_66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_66_10135,
      O => lcd_cntrl_inst_sf_d_temp_0_66_0
    );
  lcd_cntrl_inst_sf_d_temp_0_66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => N178,
      O => N178_0
    );
  lcd_cntrl_inst_state_FSM_FFd6 : X_SFF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd6_DXMUX_9964,
      CE => lcd_cntrl_inst_state_FSM_FFd6_CEINV_9953,
      CLK => lcd_cntrl_inst_state_FSM_FFd6_CLKINV_9954,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd6_SRINV_9955,
      O => lcd_cntrl_inst_state_FSM_FFd6_3011
    );
  lcd_cntrl_inst_state_FSM_FFd5 : X_SFF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd6_DYMUX_9957,
      CE => lcd_cntrl_inst_state_FSM_FFd6_CEINV_9953,
      CLK => lcd_cntrl_inst_state_FSM_FFd6_CLKINV_9954,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd6_SRINV_9955,
      O => lcd_cntrl_inst_state_FSM_FFd5_3193
    );
  lcd_cntrl_inst_state_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd7_2847,
      O => lcd_cntrl_inst_state_FSM_FFd6_DXMUX_9964
    );
  lcd_cntrl_inst_state_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd6_3011,
      O => lcd_cntrl_inst_state_FSM_FFd6_DYMUX_9957
    );
  lcd_cntrl_inst_state_FSM_FFd6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd6_SRINV_9955
    );
  lcd_cntrl_inst_state_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd6_CLKINV_9954
    );
  lcd_cntrl_inst_state_FSM_FFd6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd6_CEINV_9953
    );
  lcd_cntrl_inst_state_FSM_FFd10 : X_SFF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd10_DXMUX_10012,
      CE => lcd_cntrl_inst_state_FSM_FFd10_CEINV_10001,
      CLK => lcd_cntrl_inst_state_FSM_FFd10_CLKINV_10002,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd10_SRINV_10003,
      O => lcd_cntrl_inst_state_FSM_FFd10_3093
    );
  lcd_cntrl_inst_state_FSM_FFd9 : X_SFF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd10_DYMUX_10005,
      CE => lcd_cntrl_inst_state_FSM_FFd10_CEINV_10001,
      CLK => lcd_cntrl_inst_state_FSM_FFd10_CLKINV_10002,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd10_SRINV_10003,
      O => lcd_cntrl_inst_state_FSM_FFd9_2842
    );
  lcd_cntrl_inst_state_FSM_FFd10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd11_3194,
      O => lcd_cntrl_inst_state_FSM_FFd10_DXMUX_10012
    );
  lcd_cntrl_inst_state_FSM_FFd10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd10_3093,
      O => lcd_cntrl_inst_state_FSM_FFd10_DYMUX_10005
    );
  lcd_cntrl_inst_state_FSM_FFd10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd10_SRINV_10003
    );
  lcd_cntrl_inst_state_FSM_FFd10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd10_CLKINV_10002
    );
  lcd_cntrl_inst_state_FSM_FFd10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd10_CEINV_10001
    );
  timer_inst_Maddsub_tens_cnt_share0000_cy_1_11_SW1 : X_LUT4
    generic map(
      INIT => X"9393",
      LOC => "SLICE_X57Y6"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(0),
      ADR1 => timer_inst_tens_cnt(2),
      ADR2 => timer_inst_tens_cnt(1),
      ADR3 => VCC,
      O => N141
    );
  timer_inst_Maddsub_tens_cnt_share0000_cy_1_11_SW0 : X_LUT4
    generic map(
      INIT => X"C9C9",
      LOC => "SLICE_X57Y6"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(0),
      ADR1 => timer_inst_tens_cnt(2),
      ADR2 => timer_inst_tens_cnt(1),
      ADR3 => VCC,
      O => N140
    );
  N141_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  N141_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => N140,
      O => N140_0
    );
  lcd_cntrl_inst_state_FSM_FFd4 : X_SFF
    generic map(
      LOC => "SLICE_X29Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd4_DXMUX_9940,
      CE => lcd_cntrl_inst_state_FSM_FFd4_CEINV_9929,
      CLK => lcd_cntrl_inst_state_FSM_FFd4_CLKINV_9930,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd4_SRINV_9931,
      O => lcd_cntrl_inst_state_FSM_FFd4_2992
    );
  lcd_cntrl_inst_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X29Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd4_DYMUX_9933,
      CE => lcd_cntrl_inst_state_FSM_FFd4_CEINV_9929,
      CLK => lcd_cntrl_inst_state_FSM_FFd4_CLKINV_9930,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd4_SRINV_9931,
      O => lcd_cntrl_inst_state_FSM_FFd3_2851
    );
  lcd_cntrl_inst_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd5_3193,
      O => lcd_cntrl_inst_state_FSM_FFd4_DXMUX_9940
    );
  lcd_cntrl_inst_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd4_2992,
      O => lcd_cntrl_inst_state_FSM_FFd4_DYMUX_9933
    );
  lcd_cntrl_inst_state_FSM_FFd4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd4_SRINV_9931
    );
  lcd_cntrl_inst_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd4_CLKINV_9930
    );
  lcd_cntrl_inst_state_FSM_FFd4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd4_CEINV_9929
    );
  lcd_cntrl_inst_sf_d_temp_0_31 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd4_2992,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd8_3091,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd18_2995,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd22_3289,
      O => lcd_cntrl_inst_N112_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_0_2 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd38_3068,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd41_3100,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_N112,
      O => lcd_cntrl_inst_sf_d_temp_0_2_10183
    );
  lcd_cntrl_inst_sf_d_temp_0_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_0_2_10183,
      O => lcd_cntrl_inst_sf_d_temp_0_2_0
    );
  lcd_cntrl_inst_sf_d_temp_0_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N112_pack_1,
      O => lcd_cntrl_inst_N112
    );
  lcd_cntrl_inst_sf_d_temp_2_22 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X30Y25"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(2),
      ADR1 => timer_inst_tens_cnt(2),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      O => lcd_cntrl_inst_sf_d_temp_2_22_pack_1
    );
  lcd_cntrl_inst_lap_min_0 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_min_1_DYMUX_10053,
      CE => lcd_cntrl_inst_lap_min_1_CEINV_10049,
      CLK => lcd_cntrl_inst_lap_min_1_CLKINV_10050,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_min_1_SRINV_10051,
      O => lcd_cntrl_inst_lap_min(0)
    );
  lcd_cntrl_inst_lap_min_1 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_min_1_DXMUX_10060,
      CE => lcd_cntrl_inst_lap_min_1_CEINV_10049,
      CLK => lcd_cntrl_inst_lap_min_1_CLKINV_10050,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_min_1_SRINV_10051,
      O => lcd_cntrl_inst_lap_min(1)
    );
  lcd_cntrl_inst_lap_min_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt(1),
      O => lcd_cntrl_inst_lap_min_1_DXMUX_10060
    );
  lcd_cntrl_inst_lap_min_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_mins_cnt(0),
      O => lcd_cntrl_inst_lap_min_1_DYMUX_10053
    );
  lcd_cntrl_inst_lap_min_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_min_1_SRINV_10051
    );
  lcd_cntrl_inst_lap_min_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_min_1_CLKINV_10050
    );
  lcd_cntrl_inst_lap_min_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_min_1_CEINV_10049
    );
  lcd_cntrl_inst_state_cmp_eq000113 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X20Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(11),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(10),
      O => lcd_cntrl_inst_state_cmp_eq000113_10480
    );
  lcd_cntrl_inst_state_cmp_eq000113_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq000113_10480,
      O => lcd_cntrl_inst_state_cmp_eq000113_0
    );
  lcd_cntrl_inst_state_cmp_eq000113_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq000013_10471,
      O => lcd_cntrl_inst_state_cmp_eq000013_0
    );
  lcd_cntrl_inst_count_12 : X_FF
    generic map(
      LOC => "SLICE_X18Y41",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_13_DYMUX_10594,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_13_CLKINV_10592,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(12)
    );
  lcd_cntrl_inst_count_13 : X_FF
    generic map(
      LOC => "SLICE_X18Y41",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_13_DXMUX_10599,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_13_CLKINV_10592,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(13)
    );
  lcd_cntrl_inst_count_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(13),
      O => lcd_cntrl_inst_count_13_DXMUX_10599
    );
  lcd_cntrl_inst_count_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(12),
      O => lcd_cntrl_inst_count_13_DYMUX_10594
    );
  lcd_cntrl_inst_count_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_13_CLKINV_10592
    );
  lcd_cntrl_inst_sf_d_temp_2_70 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X35Y22"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_2_68_3301,
      ADR1 => timer_inst_ones_cnt(2),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      O => lcd_cntrl_inst_sf_d_temp_2_70_10375
    );
  lcd_cntrl_inst_sf_d_temp_2_70_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_70_10375,
      O => lcd_cntrl_inst_sf_d_temp_2_70_0
    );
  lcd_cntrl_inst_sf_d_temp_2_70_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_68_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_2_68_3301
    );
  lcd_cntrl_inst_state_cmp_eq000110 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X18Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(7),
      ADR1 => lcd_cntrl_inst_count(12),
      ADR2 => lcd_cntrl_inst_count(14),
      ADR3 => lcd_cntrl_inst_count(6),
      O => lcd_cntrl_inst_state_cmp_eq000110_10456
    );
  lcd_cntrl_inst_state_cmp_eq000110_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq000110_10456,
      O => lcd_cntrl_inst_state_cmp_eq000110_0
    );
  lcd_cntrl_inst_state_cmp_eq000110_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq000010_10449,
      O => lcd_cntrl_inst_state_cmp_eq000010_0
    );
  lcd_cntrl_inst_state_cmp_eq000149 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X20Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq000113_0,
      ADR1 => lcd_cntrl_inst_state_cmp_eq000110_0,
      ADR2 => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_Q,
      ADR3 => lcd_cntrl_inst_state_cmp_eq000124_3310,
      O => lcd_cntrl_inst_state_cmp_eq0001
    );
  lcd_cntrl_inst_state_cmp_eq0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001,
      O => lcd_cntrl_inst_state_cmp_eq0001_0
    );
  lcd_cntrl_inst_state_cmp_eq0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq000124_pack_1,
      O => lcd_cntrl_inst_state_cmp_eq000124_3310
    );
  lcd_cntrl_inst_sf_d_temp_4_80 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X34Y20"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_4_13_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_4_52_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_4_27_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_4_66_3304,
      O => lcd_cntrl_inst_sf_d_temp_4_80_10432
    );
  lcd_cntrl_inst_sf_d_temp_4_80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_80_10432,
      O => lcd_cntrl_inst_sf_d_temp_4_80_0
    );
  lcd_cntrl_inst_sf_d_temp_4_80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y20",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_4_66_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_4_66_3304
    );
  lcd_cntrl_inst_sf_d_temp_2_68 : X_LUT4
    generic map(
      INIT => X"E0A0",
      LOC => "SLICE_X35Y22"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(2),
      ADR1 => timer_inst_mins_cnt(1),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd27_2856,
      ADR3 => timer_inst_mins_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_2_68_pack_1
    );
  lcd_cntrl_inst_state_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X18Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(7),
      ADR1 => lcd_cntrl_inst_count(14),
      ADR2 => lcd_cntrl_inst_count(12),
      ADR3 => lcd_cntrl_inst_count(6),
      O => lcd_cntrl_inst_state_cmp_eq000010_10449
    );
  clk_divider_div_262144 : X_FF
    generic map(
      LOC => "SLICE_X23Y0",
      INIT => '0'
    )
    port map (
      I => clk_divider_div_262144_DYMUX_10567,
      CE => VCC,
      CLK => clk_divider_div_262144_CLKINV_10565,
      SET => GND,
      RST => GND,
      O => clk_divider_div_262144_3038
    );
  clk_divider_div_262144_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_divider_div_temp_3275,
      O => clk_divider_div_262144_DYMUX_10567
    );
  clk_divider_div_262144_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y0",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => clk_divider_div_262144_CLKINV_10565
    );
  lcd_cntrl_inst_count_23 : X_FF
    generic map(
      LOC => "SLICE_X21Y42",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_23_DXMUX_10647,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_23_CLKINV_10640,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(23)
    );
  lcd_cntrl_inst_count_22 : X_FF
    generic map(
      LOC => "SLICE_X21Y42",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_23_DYMUX_10642,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_23_CLKINV_10640,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(22)
    );
  lcd_cntrl_inst_count_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(23),
      O => lcd_cntrl_inst_count_23_DXMUX_10647
    );
  lcd_cntrl_inst_count_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(22),
      O => lcd_cntrl_inst_count_23_DYMUX_10642
    );
  lcd_cntrl_inst_count_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_23_CLKINV_10640
    );
  lcd_cntrl_inst_count_30 : X_FF
    generic map(
      LOC => "SLICE_X20Y47",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_31_DYMUX_10658,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_31_CLKINV_10656,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(30)
    );
  lcd_cntrl_inst_count_31 : X_FF
    generic map(
      LOC => "SLICE_X20Y47",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_31_DXMUX_10663,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_31_CLKINV_10656,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(31)
    );
  lcd_cntrl_inst_count_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(31),
      O => lcd_cntrl_inst_count_31_DXMUX_10663
    );
  lcd_cntrl_inst_count_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(30),
      O => lcd_cntrl_inst_count_31_DYMUX_10658
    );
  lcd_cntrl_inst_count_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_31_CLKINV_10656
    );
  lcd_cntrl_inst_count_26 : X_FF
    generic map(
      LOC => "SLICE_X20Y44",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_27_DYMUX_10722,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_27_CLKINV_10720,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(26)
    );
  lcd_cntrl_inst_count_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(27),
      O => lcd_cntrl_inst_count_27_DXMUX_10727
    );
  lcd_cntrl_inst_count_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(26),
      O => lcd_cntrl_inst_count_27_DYMUX_10722
    );
  lcd_cntrl_inst_count_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_27_CLKINV_10720
    );
  lcd_cntrl_inst_count_24 : X_FF
    generic map(
      LOC => "SLICE_X20Y45",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_25_DYMUX_10690,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_25_CLKINV_10688,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(24)
    );
  lcd_cntrl_inst_count_25 : X_FF
    generic map(
      LOC => "SLICE_X20Y45",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_25_DXMUX_10695,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_25_CLKINV_10688,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(25)
    );
  lcd_cntrl_inst_count_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(25),
      O => lcd_cntrl_inst_count_25_DXMUX_10695
    );
  lcd_cntrl_inst_count_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(24),
      O => lcd_cntrl_inst_count_25_DYMUX_10690
    );
  lcd_cntrl_inst_count_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_25_CLKINV_10688
    );
  lcd_cntrl_inst_state_cmp_eq000124 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X20Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(16),
      ADR1 => lcd_cntrl_inst_count(4),
      ADR2 => lcd_cntrl_inst_count(18),
      ADR3 => lcd_cntrl_inst_count(5),
      O => lcd_cntrl_inst_state_cmp_eq000124_pack_1
    );
  lcd_cntrl_inst_count_18 : X_FF
    generic map(
      LOC => "SLICE_X23Y45",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_19_DYMUX_10706,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_19_CLKINV_10704,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(18)
    );
  lcd_cntrl_inst_count_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(19),
      O => lcd_cntrl_inst_count_19_DXMUX_10711
    );
  lcd_cntrl_inst_count_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(18),
      O => lcd_cntrl_inst_count_19_DYMUX_10706
    );
  lcd_cntrl_inst_count_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y45",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_19_CLKINV_10704
    );
  lcd_cntrl_inst_count_29 : X_FF
    generic map(
      LOC => "SLICE_X20Y46",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_29_DXMUX_10743,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_29_CLKINV_10736,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(29)
    );
  lcd_cntrl_inst_count_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(29),
      O => lcd_cntrl_inst_count_29_DXMUX_10743
    );
  lcd_cntrl_inst_count_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(28),
      O => lcd_cntrl_inst_count_29_DYMUX_10738
    );
  lcd_cntrl_inst_count_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y46",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_29_CLKINV_10736
    );
  lcd_cntrl_inst_count_28 : X_FF
    generic map(
      LOC => "SLICE_X20Y46",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_29_DYMUX_10738,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_29_CLKINV_10736,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(28)
    );
  lcd_cntrl_inst_sf_d_temp_4_66 : X_LUT4
    generic map(
      INIT => X"3070",
      LOC => "SLICE_X34Y20"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(1),
      ADR1 => timer_inst_tenths_cnt(3),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      ADR3 => timer_inst_tenths_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_4_66_pack_1
    );
  lcd_cntrl_inst_count_16 : X_FF
    generic map(
      LOC => "SLICE_X23Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_17_DYMUX_10674,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_17_CLKINV_10672,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(16)
    );
  lcd_cntrl_inst_count_17 : X_FF
    generic map(
      LOC => "SLICE_X23Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_17_DXMUX_10679,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_17_CLKINV_10672,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(17)
    );
  lcd_cntrl_inst_count_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(17),
      O => lcd_cntrl_inst_count_17_DXMUX_10679
    );
  lcd_cntrl_inst_count_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(16),
      O => lcd_cntrl_inst_count_17_DYMUX_10674
    );
  lcd_cntrl_inst_count_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_17_CLKINV_10672
    );
  lcd_cntrl_inst_state_cmp_eq000024 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X21Y41"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(16),
      ADR1 => lcd_cntrl_inst_count(18),
      ADR2 => lcd_cntrl_inst_count(4),
      ADR3 => lcd_cntrl_inst_count(5),
      O => lcd_cntrl_inst_state_cmp_eq000024_10492
    );
  lcd_cntrl_inst_state_cmp_eq000024_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq000024_10492,
      O => lcd_cntrl_inst_state_cmp_eq000024_0
    );
  lcd_cntrl_inst_count_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y43",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_15_DYMUX_10626,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_15_CLKINV_10624,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(14)
    );
  lcd_cntrl_inst_count_15 : X_FF
    generic map(
      LOC => "SLICE_X20Y43",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_15_DXMUX_10631,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_15_CLKINV_10624,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(15)
    );
  lcd_cntrl_inst_count_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(15),
      O => lcd_cntrl_inst_count_15_DXMUX_10631
    );
  lcd_cntrl_inst_count_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(14),
      O => lcd_cntrl_inst_count_15_DYMUX_10626
    );
  lcd_cntrl_inst_count_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_15_CLKINV_10624
    );
  lcd_cntrl_inst_count_temp_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X23Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_N6,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd47_3148,
      ADR2 => lcd_cntrl_inst_state_cmp_eq0000,
      ADR3 => lcd_cntrl_inst_state_cmp_ge0000,
      O => N17
    );
  N17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  N17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y42",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0000_pack_1,
      O => lcd_cntrl_inst_state_cmp_eq0000
    );
  lcd_cntrl_inst_sf_d_temp_2_45 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X30Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      ADR1 => lcd_cntrl_inst_lap_hundredths(2),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd16_3280,
      ADR3 => VCC,
      O => lcd_cntrl_inst_sf_d_temp_2_45_10351
    );
  lcd_cntrl_inst_sf_d_temp_2_45_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_45_10351,
      O => lcd_cntrl_inst_sf_d_temp_2_45_0
    );
  lcd_cntrl_inst_count_21 : X_FF
    generic map(
      LOC => "SLICE_X23Y44",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_21_DXMUX_10615,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_21_CLKINV_10608,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(21)
    );
  lcd_cntrl_inst_count_20 : X_FF
    generic map(
      LOC => "SLICE_X23Y44",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_21_DYMUX_10610,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_21_CLKINV_10608,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(20)
    );
  lcd_cntrl_inst_count_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(21),
      O => lcd_cntrl_inst_count_21_DXMUX_10615
    );
  lcd_cntrl_inst_count_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(20),
      O => lcd_cntrl_inst_count_21_DYMUX_10610
    );
  lcd_cntrl_inst_count_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y44",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_21_CLKINV_10608
    );
  lcd_cntrl_inst_state_cmp_eq000013 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X20Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(11),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(10),
      O => lcd_cntrl_inst_state_cmp_eq000013_10471
    );
  lcd_cntrl_inst_sf_d_temp_2_85 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_2_70_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_2_45_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_2_61_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_2_50_0,
      O => lcd_cntrl_inst_sf_d_temp_2_85_pack_1
    );
  lcd_cntrl_inst_sf_d_2 : X_SFF
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_2_DXMUX_10406,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_2_CLKINV_10389,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_sf_d_2_SRINV_10390,
      SRST => GND,
      O => lcd_cntrl_inst_sf_d(2)
    );
  lcd_cntrl_inst_sf_d_temp_2_1071 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_2_5_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_2_23_0,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_sf_d_temp_2_85_3303,
      O => lcd_cntrl_inst_sf_d_temp_2_107
    );
  lcd_cntrl_inst_sf_d_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_107,
      O => lcd_cntrl_inst_sf_d_2_DXMUX_10406
    );
  lcd_cntrl_inst_sf_d_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d_temp_2_85_pack_1,
      O => lcd_cntrl_inst_sf_d_temp_2_85_3303
    );
  lcd_cntrl_inst_sf_d_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_N71_0,
      O => lcd_cntrl_inst_sf_d_2_SRINV_10390
    );
  lcd_cntrl_inst_sf_d_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_sf_d_2_CLKINV_10389
    );
  lcd_cntrl_inst_count_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_11_DYMUX_10578,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_11_CLKINV_10576,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(10)
    );
  lcd_cntrl_inst_count_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_11_DXMUX_10583,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_11_CLKINV_10576,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(11)
    );
  lcd_cntrl_inst_count_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(11),
      O => lcd_cntrl_inst_count_11_DXMUX_10583
    );
  lcd_cntrl_inst_count_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(10),
      O => lcd_cntrl_inst_count_11_DYMUX_10578
    );
  lcd_cntrl_inst_count_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_11_CLKINV_10576
    );
  lcd_cntrl_inst_count_19 : X_FF
    generic map(
      LOC => "SLICE_X23Y45",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_19_DXMUX_10711,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_19_CLKINV_10704,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(19)
    );
  lcd_cntrl_inst_count_27 : X_FF
    generic map(
      LOC => "SLICE_X20Y44",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_27_DXMUX_10727,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_27_CLKINV_10720,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(27)
    );
  lcd_cntrl_inst_state_cmp_eq000049 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X23Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq000013_0,
      ADR1 => lcd_cntrl_inst_state_cmp_eq00001_wg_cy_5_Q,
      ADR2 => lcd_cntrl_inst_state_cmp_eq000024_0,
      ADR3 => lcd_cntrl_inst_state_cmp_eq000010_0,
      O => lcd_cntrl_inst_state_cmp_eq0000_pack_1
    );
  lcd_cntrl_inst_lap_flag : X_SFF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_lap_flag_DXMUX_10555,
      CE => lcd_cntrl_inst_lap_flag_CEINV_10549,
      CLK => lcd_cntrl_inst_lap_flag_CLKINV_10550,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_lap_flag_REVUSED_10553,
      SRST => lcd_cntrl_inst_lap_flag_SRINV_10551,
      O => lcd_cntrl_inst_lap_flag_3098
    );
  lcd_cntrl_inst_lap_flag_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_flag_BXINV_10554,
      O => lcd_cntrl_inst_lap_flag_DXMUX_10555
    );
  lcd_cntrl_inst_lap_flag_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => lcd_cntrl_inst_lap_flag_BXINV_10554
    );
  lcd_cntrl_inst_lap_flag_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_sreg1_FSM_FFd1_3209,
      O => lcd_cntrl_inst_lap_flag_REVUSED_10553
    );
  lcd_cntrl_inst_lap_flag_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_or0000_0,
      O => lcd_cntrl_inst_lap_flag_SRINV_10551
    );
  lcd_cntrl_inst_lap_flag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_lap_flag_CLKINV_10550
    );
  lcd_cntrl_inst_lap_flag_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_lap_flag_not0001,
      O => lcd_cntrl_inst_lap_flag_CEINV_10549
    );
  lcd_cntrl_inst_state_FSM_FFd32_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd35_3197,
      O => lcd_cntrl_inst_state_FSM_FFd32_DXMUX_11060
    );
  lcd_cntrl_inst_state_FSM_FFd32_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd32_3069,
      O => lcd_cntrl_inst_state_FSM_FFd32_DYMUX_11053
    );
  lcd_cntrl_inst_state_FSM_FFd32_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd32_SRINV_11051
    );
  lcd_cntrl_inst_state_FSM_FFd32_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd32_CLKINV_11050
    );
  lcd_cntrl_inst_state_FSM_FFd32_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd32_CEINV_11049
    );
  lcd_cntrl_inst_count_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(7),
      O => lcd_cntrl_inst_count_7_DXMUX_10845
    );
  lcd_cntrl_inst_count_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(6),
      O => lcd_cntrl_inst_count_7_DYMUX_10840
    );
  lcd_cntrl_inst_count_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_7_CLKINV_10838
    );
  lcd_cntrl_inst_state_FSM_FFd18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd19_3198,
      O => lcd_cntrl_inst_state_FSM_FFd18_DXMUX_11084
    );
  lcd_cntrl_inst_state_FSM_FFd18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd18_2995,
      O => lcd_cntrl_inst_state_FSM_FFd18_DYMUX_11077
    );
  lcd_cntrl_inst_state_FSM_FFd18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd18_SRINV_11075
    );
  lcd_cntrl_inst_state_FSM_FFd18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd18_CLKINV_11074
    );
  lcd_cntrl_inst_state_FSM_FFd18_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd18_CEINV_11073
    );
  lcd_cntrl_inst_state_FSM_FFd26_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd27_2856,
      O => lcd_cntrl_inst_state_FSM_FFd26_DXMUX_11108
    );
  lcd_cntrl_inst_state_FSM_FFd26_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd26_3006,
      O => lcd_cntrl_inst_state_FSM_FFd26_DYMUX_11101
    );
  lcd_cntrl_inst_state_FSM_FFd26_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd26_SRINV_11099
    );
  lcd_cntrl_inst_state_FSM_FFd26_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd26_CLKINV_11098
    );
  lcd_cntrl_inst_state_FSM_FFd26_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd26_CEINV_11097
    );
  lcd_cntrl_inst_state_FSM_FFd24_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd25_3199,
      O => lcd_cntrl_inst_state_FSM_FFd24_DXMUX_11036
    );
  lcd_cntrl_inst_state_FSM_FFd24_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd24_3281,
      O => lcd_cntrl_inst_state_FSM_FFd24_DYMUX_11029
    );
  lcd_cntrl_inst_state_FSM_FFd24_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd24_SRINV_11027
    );
  lcd_cntrl_inst_state_FSM_FFd24_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd24_CLKINV_11026
    );
  lcd_cntrl_inst_state_FSM_FFd24_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd24_CEINV_11025
    );
  lcd_cntrl_inst_count_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(1),
      O => lcd_cntrl_inst_count_1_DXMUX_10797
    );
  lcd_cntrl_inst_count_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(0),
      O => lcd_cntrl_inst_count_1_DYMUX_10792
    );
  lcd_cntrl_inst_count_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_1_CLKINV_10790
    );
  lcd_cntrl_inst_state_FSM_FFd33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd33_In33,
      O => lcd_cntrl_inst_state_FSM_FFd33_DXMUX_10895
    );
  lcd_cntrl_inst_state_FSM_FFd33_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd33_In10_pack_1,
      O => lcd_cntrl_inst_state_FSM_FFd33_In10_3312
    );
  lcd_cntrl_inst_state_FSM_FFd33_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd33_SRINV_10879
    );
  lcd_cntrl_inst_state_FSM_FFd33_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd33_CLKINV_10878
    );
  lcd_cntrl_inst_state_FSM_FFd33_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd33_CEINV_10877
    );
  lcd_cntrl_inst_state_FSM_FFd12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd13_2841,
      O => lcd_cntrl_inst_state_FSM_FFd12_DXMUX_10931
    );
  lcd_cntrl_inst_state_FSM_FFd12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd12_3010,
      O => lcd_cntrl_inst_state_FSM_FFd12_DYMUX_10924
    );
  lcd_cntrl_inst_state_FSM_FFd12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd12_SRINV_10922
    );
  lcd_cntrl_inst_state_FSM_FFd12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd12_CLKINV_10921
    );
  lcd_cntrl_inst_state_FSM_FFd12_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd12_CEINV_10920
    );
  timer_inst_ones_cnt_mux0002_8_5 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X55Y5"
    )
    port map (
      ADR0 => timer_inst_N24,
      ADR1 => timer_inst_tc_3_cmp_eq0001,
      ADR2 => timer_inst_ones_cnt_and0002,
      ADR3 => timer_inst_ones_cnt(0),
      O => timer_inst_ones_cnt_mux0002_8_5_pack_2
    );
  timer_inst_ones_cnt_mux0002_8_44 : X_LUT4
    generic map(
      INIT => X"0F0C",
      LOC => "SLICE_X55Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_ones_cnt_mux0002_8_19,
      ADR2 => timer_state_sreg_FSM_FFd5_3054,
      ADR3 => timer_inst_ones_cnt_mux0002_8_5_3311,
      O => timer_inst_ones_cnt_mux0002(8)
    );
  timer_inst_ones_cnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002(8),
      O => timer_inst_ones_cnt_0_DXMUX_10777
    );
  timer_inst_ones_cnt_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_mux0002_8_5_pack_2,
      O => timer_inst_ones_cnt_mux0002_8_5_3311
    );
  timer_inst_ones_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_100,
      O => timer_inst_ones_cnt_0_CLKINV_10760
    );
  timer_inst_ones_cnt_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_inst_ones_cnt_not0002_0,
      O => timer_inst_ones_cnt_0_CEINV_10759
    );
  lcd_cntrl_inst_state_FSM_FFd13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd14_3000,
      O => lcd_cntrl_inst_state_FSM_FFd13_DXMUX_10964
    );
  lcd_cntrl_inst_state_FSM_FFd13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd14_In1_10954,
      O => lcd_cntrl_inst_state_FSM_FFd13_DYMUX_10957
    );
  lcd_cntrl_inst_state_FSM_FFd13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd13_SRINV_10949
    );
  lcd_cntrl_inst_state_FSM_FFd13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd13_CLKINV_10948
    );
  lcd_cntrl_inst_state_FSM_FFd13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd13_CEINV_10947
    );
  lcd_cntrl_inst_state_FSM_FFd20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd21_2852,
      O => lcd_cntrl_inst_state_FSM_FFd20_DXMUX_11132
    );
  lcd_cntrl_inst_state_FSM_FFd20_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd20_2997,
      O => lcd_cntrl_inst_state_FSM_FFd20_DYMUX_11125
    );
  lcd_cntrl_inst_state_FSM_FFd20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd20_SRINV_11123
    );
  lcd_cntrl_inst_state_FSM_FFd20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd20_CLKINV_11122
    );
  lcd_cntrl_inst_state_FSM_FFd20_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd20_CEINV_11121
    );
  lcd_cntrl_inst_count_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(5),
      O => lcd_cntrl_inst_count_5_DXMUX_10829
    );
  lcd_cntrl_inst_count_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(4),
      O => lcd_cntrl_inst_count_5_DYMUX_10824
    );
  lcd_cntrl_inst_count_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y38",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_5_CLKINV_10822
    );
  lcd_cntrl_inst_state_FSM_FFd44_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd45_3285,
      O => lcd_cntrl_inst_state_FSM_FFd44_DYMUX_11171
    );
  lcd_cntrl_inst_state_FSM_FFd44_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd44_SRINV_11169
    );
  lcd_cntrl_inst_state_FSM_FFd44_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd44_CLKINV_11168
    );
  lcd_cntrl_inst_state_FSM_FFd44_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0000,
      O => lcd_cntrl_inst_state_FSM_FFd44_CEINV_11167
    );
  lcd_cntrl_inst_state_FSM_FFd28_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd29_3094,
      O => lcd_cntrl_inst_state_FSM_FFd28_DXMUX_11156
    );
  lcd_cntrl_inst_state_FSM_FFd28_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd33_3001,
      O => lcd_cntrl_inst_state_FSM_FFd28_DYMUX_11149
    );
  lcd_cntrl_inst_state_FSM_FFd28_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd28_SRINV_11147
    );
  lcd_cntrl_inst_state_FSM_FFd28_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd28_CLKINV_11146
    );
  lcd_cntrl_inst_state_FSM_FFd28_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd28_CEINV_11145
    );
  N127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => N127,
      O => N127_0
    );
  lcd_cntrl_inst_state_FSM_FFd16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd17_2848,
      O => lcd_cntrl_inst_state_FSM_FFd16_DXMUX_11012
    );
  lcd_cntrl_inst_state_FSM_FFd16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd16_3280,
      O => lcd_cntrl_inst_state_FSM_FFd16_DYMUX_11005
    );
  lcd_cntrl_inst_state_FSM_FFd16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd16_SRINV_11003
    );
  lcd_cntrl_inst_state_FSM_FFd16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd16_CLKINV_11002
    );
  lcd_cntrl_inst_state_FSM_FFd16_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd16_CEINV_11001
    );
  lcd_cntrl_inst_state_FSM_FFd30_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd31_2860,
      O => lcd_cntrl_inst_state_FSM_FFd30_DXMUX_11195
    );
  lcd_cntrl_inst_state_FSM_FFd30_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd30_3095,
      O => lcd_cntrl_inst_state_FSM_FFd30_DYMUX_11188
    );
  lcd_cntrl_inst_state_FSM_FFd30_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd30_SRINV_11186
    );
  lcd_cntrl_inst_state_FSM_FFd30_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd30_CLKINV_11185
    );
  lcd_cntrl_inst_state_FSM_FFd30_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y27",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd30_CEINV_11184
    );
  lcd_cntrl_inst_count_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(9),
      O => lcd_cntrl_inst_count_9_DXMUX_10861
    );
  lcd_cntrl_inst_count_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(8),
      O => lcd_cntrl_inst_count_9_DYMUX_10856
    );
  lcd_cntrl_inst_count_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_9_CLKINV_10854
    );
  lcd_cntrl_inst_count_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(3),
      O => lcd_cntrl_inst_count_3_DXMUX_10813
    );
  lcd_cntrl_inst_count_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_count_temp(2),
      O => lcd_cntrl_inst_count_3_DYMUX_10808
    );
  lcd_cntrl_inst_count_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_count_3_CLKINV_10806
    );
  lcd_cntrl_inst_state_FSM_FFd22_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd23_2857,
      O => lcd_cntrl_inst_state_FSM_FFd22_DXMUX_10988
    );
  lcd_cntrl_inst_state_FSM_FFd22_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd22_3289,
      O => lcd_cntrl_inst_state_FSM_FFd22_DYMUX_10981
    );
  lcd_cntrl_inst_state_FSM_FFd22_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd22_SRINV_10979
    );
  lcd_cntrl_inst_state_FSM_FFd22_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd22_CLKINV_10978
    );
  lcd_cntrl_inst_state_FSM_FFd22_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd22_CEINV_10977
    );
  lcd_cntrl_inst_state_FSM_FFd38_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd39_3115,
      O => lcd_cntrl_inst_state_FSM_FFd38_DXMUX_11219
    );
  lcd_cntrl_inst_state_FSM_FFd38_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd38_3068,
      O => lcd_cntrl_inst_state_FSM_FFd38_DYMUX_11212
    );
  lcd_cntrl_inst_state_FSM_FFd38_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd38_SRINV_11210
    );
  lcd_cntrl_inst_state_FSM_FFd38_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd38_CLKINV_11209
    );
  lcd_cntrl_inst_state_FSM_FFd38_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd38_CEINV_11208
    );
  lcd_cntrl_inst_state_FSM_FFd40_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd41_3100,
      O => lcd_cntrl_inst_state_FSM_FFd40_DXMUX_11258
    );
  lcd_cntrl_inst_state_FSM_FFd40_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd40_3013,
      O => lcd_cntrl_inst_state_FSM_FFd40_DYMUX_11251
    );
  lcd_cntrl_inst_state_FSM_FFd40_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd40_SRINV_11249
    );
  lcd_cntrl_inst_state_FSM_FFd40_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd40_CLKINV_11248
    );
  lcd_cntrl_inst_state_FSM_FFd40_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_state_FSM_FFd40_CEINV_11247
    );
  lcd_cntrl_inst_state_FSM_FFd47_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd47_BYINV_11272,
      O => lcd_cntrl_inst_state_FSM_FFd47_DYMUX_11273
    );
  lcd_cntrl_inst_state_FSM_FFd47_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => lcd_cntrl_inst_state_FSM_FFd47_BYINV_11272
    );
  lcd_cntrl_inst_state_FSM_FFd47_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd47_SRINV_11271
    );
  lcd_cntrl_inst_state_FSM_FFd47_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd47_CLKINV_11270
    );
  lcd_cntrl_inst_state_FSM_FFd47_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_ge0000,
      O => lcd_cntrl_inst_state_FSM_FFd47_CEINV_11269
    );
  lcd_cntrl_inst_state_FSM_FFd45_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd46_3219,
      O => lcd_cntrl_inst_state_FSM_FFd45_DYMUX_11234
    );
  lcd_cntrl_inst_state_FSM_FFd45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => lcd_cntrl_inst_state_FSM_FFd45_SRINV_11232
    );
  lcd_cntrl_inst_state_FSM_FFd45_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => clk_26214k,
      O => lcd_cntrl_inst_state_FSM_FFd45_CLKINV_11231
    );
  lcd_cntrl_inst_state_FSM_FFd45_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_state_cmp_eq0000,
      O => lcd_cntrl_inst_state_FSM_FFd45_CEINV_11230
    );
  lcd_cntrl_inst_count_5_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X17Y39"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_5_rt_3363
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_1_1_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X17Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_1_1
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_2 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X17Y38"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(2),
      ADR1 => lcd_cntrl_inst_count(3),
      ADR2 => lcd_cntrl_inst_count(1),
      ADR3 => lcd_cntrl_inst_count(0),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_0_2_3334
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_3_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X17Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(6),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_3_1
    );
  lcd_cntrl_inst_count_11_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(11),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_11_rt_3425
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_2 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X17Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(13),
      ADR1 => lcd_cntrl_inst_count(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_8_2_3457
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_9_1 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X17Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(16),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(15),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_9_1_3441
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_11_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X17Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(19),
      ADR1 => lcd_cntrl_inst_count(20),
      ADR2 => lcd_cntrl_inst_count(22),
      ADR3 => lcd_cntrl_inst_count(21),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_11_1_3474
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_5_1 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X17Y40"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(9),
      ADR1 => lcd_cntrl_inst_count(10),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(8),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_5_1_3379
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_13_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X17Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(29),
      ADR1 => lcd_cntrl_inst_count(28),
      ADR2 => lcd_cntrl_inst_count(30),
      ADR3 => lcd_cntrl_inst_count(27),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_13_1_3507
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_10_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X17Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(18),
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(17),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_10_1_3488
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_2_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X17Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_7_2
    );
  lcd_cntrl_inst_count_7_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(7),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_7_rt_3394
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"135F",
      LOC => "SLICE_X31Y25"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      ADR3 => lcd_cntrl_inst_lap_tenths(3),
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_3_Q_3581
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X19Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(6),
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_1_Q
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"153F",
      LOC => "SLICE_X31Y24"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR1 => lcd_cntrl_inst_lap_tens(3),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      ADR3 => timer_inst_hundredths_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_1_Q_3550
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"7777",
      LOC => "SLICE_X31Y24"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_min(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_0_Q_3561
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"135F",
      LOC => "SLICE_X31Y25"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      ADR2 => lcd_cntrl_inst_lap_ones(3),
      ADR3 => timer_inst_tenths_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_2_Q_3595
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"153F",
      LOC => "SLICE_X31Y26"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd27_2856,
      ADR2 => timer_inst_mins_cnt(3),
      ADR3 => timer_inst_tens_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_4_Q_3625
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_14_11_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X17Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(31),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_14_1
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X19Y40"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(4),
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(5),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_0_Q_3650
    );
  lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_12_1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X17Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(26),
      ADR1 => lcd_cntrl_inst_count(23),
      ADR2 => lcd_cntrl_inst_count(24),
      ADR3 => lcd_cntrl_inst_count(25),
      O => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_lut_12_1_3521
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0105",
      LOC => "SLICE_X31Y26"
    )
    port map (
      ADR0 => lcd_cntrl_inst_N8_0,
      ADR1 => lcd_cntrl_inst_lap_hundredths(3),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd31_2860,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_5_Q_3611
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X19Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(13),
      ADR1 => lcd_cntrl_inst_count(14),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(12),
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_4_Q_3715
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X19Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_5_Q
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(20),
      ADR1 => lcd_cntrl_inst_count(22),
      ADR2 => lcd_cntrl_inst_count(23),
      ADR3 => lcd_cntrl_inst_count(21),
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_9_Q_3761
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X19Y41"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(9),
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(11),
      ADR3 => lcd_cntrl_inst_count(10),
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_3_Q_3668
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X19Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(16),
      ADR2 => lcd_cntrl_inst_count(17),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_6_Q_3745
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X19Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(29),
      ADR1 => lcd_cntrl_inst_count(28),
      ADR2 => lcd_cntrl_inst_count(30),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_11_Q_3794
    );
  lcd_cntrl_inst_count_19_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X19Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(19),
      O => lcd_cntrl_inst_count_19_rt_3775
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X19Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count(8),
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count(7),
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_2_Q_3683
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_7_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X19Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_7_Q
    );
  clk_divider_cnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X29Y65",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_0_DYMUX_3855,
      CE => VCC,
      CLK => clk_divider_cnt_0_CLKINV_3838,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_0_SRINV_3839,
      O => clk_divider_cnt(1)
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y45"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count(26),
      ADR1 => lcd_cntrl_inst_count(27),
      ADR2 => lcd_cntrl_inst_count(24),
      ADR3 => lcd_cntrl_inst_count(25),
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_10_Q_3809
    );
  clk_divider_cnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X29Y66",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_2_DYMUX_3910,
      CE => VCC,
      CLK => clk_divider_cnt_2_CLKINV_3888,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_2_SRINV_3889,
      O => clk_divider_cnt(3)
    );
  clk_divider_Mcount_cnt_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X29Y65"
    )
    port map (
      ADR0 => clk_divider_cnt(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_Mcount_cnt_lut(0)
    );
  lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_12_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X19Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count(31),
      ADR3 => VCC,
      O => lcd_cntrl_inst_Mcompar_state_cmp_ge0000_lut_12_Q
    );
  clk_divider_cnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X29Y65",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_0_DXMUX_3875,
      CE => VCC,
      CLK => clk_divider_cnt_0_CLKINV_3838,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_0_SRINV_3839,
      O => clk_divider_cnt(0)
    );
  clk_divider_cnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X29Y67",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_4_DXMUX_3979,
      CE => VCC,
      CLK => clk_divider_cnt_4_CLKINV_3940,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_4_SRINV_3941,
      O => clk_divider_cnt(4)
    );
  clk_divider_cnt_7 : X_SFF
    generic map(
      LOC => "SLICE_X29Y68",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_6_DYMUX_4014,
      CE => VCC,
      CLK => clk_divider_cnt_6_CLKINV_3992,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_6_SRINV_3993,
      O => clk_divider_cnt(7)
    );
  clk_divider_cnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X29Y66",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_2_DXMUX_3927,
      CE => VCC,
      CLK => clk_divider_cnt_2_CLKINV_3888,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_2_SRINV_3889,
      O => clk_divider_cnt(2)
    );
  clk_divider_cnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X29Y67",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_4_DYMUX_3962,
      CE => VCC,
      CLK => clk_divider_cnt_4_CLKINV_3940,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_4_SRINV_3941,
      O => clk_divider_cnt(5)
    );
  clk_divider_cnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X29Y68",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_6_DXMUX_4031,
      CE => VCC,
      CLK => clk_divider_cnt_6_CLKINV_3992,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_6_SRINV_3993,
      O => clk_divider_cnt(6)
    );
  clk_divider_cnt_9 : X_SFF
    generic map(
      LOC => "SLICE_X29Y69",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_8_DYMUX_4066,
      CE => VCC,
      CLK => clk_divider_cnt_8_CLKINV_4044,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_8_SRINV_4045,
      O => clk_divider_cnt(9)
    );
  clk_divider_cnt_8 : X_SFF
    generic map(
      LOC => "SLICE_X29Y69",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_8_DXMUX_4083,
      CE => VCC,
      CLK => clk_divider_cnt_8_CLKINV_4044,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_8_SRINV_4045,
      O => clk_divider_cnt(8)
    );
  clk_divider_cnt_10 : X_SFF
    generic map(
      LOC => "SLICE_X29Y70",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_10_DXMUX_4135,
      CE => VCC,
      CLK => clk_divider_cnt_10_CLKINV_4096,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_10_SRINV_4097,
      O => clk_divider_cnt(10)
    );
  clk_divider_cnt_13 : X_SFF
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_12_DYMUX_4170,
      CE => VCC,
      CLK => clk_divider_cnt_12_CLKINV_4148,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_12_SRINV_4149,
      O => clk_divider_cnt(13)
    );
  clk_divider_cnt_11 : X_SFF
    generic map(
      LOC => "SLICE_X29Y70",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_10_DYMUX_4118,
      CE => VCC,
      CLK => clk_divider_cnt_10_CLKINV_4096,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_10_SRINV_4097,
      O => clk_divider_cnt(11)
    );
  clk_divider_cnt_14 : X_SFF
    generic map(
      LOC => "SLICE_X29Y72",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_14_DXMUX_4239,
      CE => VCC,
      CLK => clk_divider_cnt_14_CLKINV_4200,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_14_SRINV_4201,
      O => clk_divider_cnt(14)
    );
  clk_divider_cnt_12 : X_SFF
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_12_DXMUX_4187,
      CE => VCC,
      CLK => clk_divider_cnt_12_CLKINV_4148,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_12_SRINV_4149,
      O => clk_divider_cnt(12)
    );
  clk_divider_cnt_15 : X_SFF
    generic map(
      LOC => "SLICE_X29Y72",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_14_DYMUX_4222,
      CE => VCC,
      CLK => clk_divider_cnt_14_CLKINV_4200,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_14_SRINV_4201,
      O => clk_divider_cnt(15)
    );
  clk_divider_cnt_17 : X_SFF
    generic map(
      LOC => "SLICE_X29Y73",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_16_DYMUX_4274,
      CE => VCC,
      CLK => clk_divider_cnt_16_CLKINV_4252,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_16_SRINV_4253,
      O => clk_divider_cnt(17)
    );
  clk_divider_cnt_16 : X_SFF
    generic map(
      LOC => "SLICE_X29Y73",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_16_DXMUX_4291,
      CE => VCC,
      CLK => clk_divider_cnt_16_CLKINV_4252,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_16_SRINV_4253,
      O => clk_divider_cnt(16)
    );
  clk_divider_cnt_21 : X_SFF
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_20_DYMUX_4378,
      CE => VCC,
      CLK => clk_divider_cnt_20_CLKINV_4356,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_20_SRINV_4357,
      O => clk_divider_cnt(21)
    );
  clk_divider_cnt_20 : X_SFF
    generic map(
      LOC => "SLICE_X29Y75",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_20_DXMUX_4395,
      CE => VCC,
      CLK => clk_divider_cnt_20_CLKINV_4356,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_20_SRINV_4357,
      O => clk_divider_cnt(20)
    );
  clk_divider_cnt_18 : X_SFF
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_18_DXMUX_4343,
      CE => VCC,
      CLK => clk_divider_cnt_18_CLKINV_4304,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_18_SRINV_4305,
      O => clk_divider_cnt(18)
    );
  clk_divider_cnt_19 : X_SFF
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_18_DYMUX_4326,
      CE => VCC,
      CLK => clk_divider_cnt_18_CLKINV_4304,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_18_SRINV_4305,
      O => clk_divider_cnt(19)
    );
  lcd_cntrl_inst_count_temp_18 : X_SFF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_DXMUX_5166,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_18_CLKINV_5127,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_18_SRINV_5128,
      O => lcd_cntrl_inst_count_temp(18)
    );
  clk_divider_cnt_27 : X_SFF
    generic map(
      LOC => "SLICE_X29Y78",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_26_DYMUX_4534,
      CE => VCC,
      CLK => clk_divider_cnt_26_CLKINV_4512,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_26_SRINV_4513,
      O => clk_divider_cnt(27)
    );
  clk_divider_cnt_22 : X_SFF
    generic map(
      LOC => "SLICE_X29Y76",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_22_DXMUX_4447,
      CE => VCC,
      CLK => clk_divider_cnt_22_CLKINV_4408,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_22_SRINV_4409,
      O => clk_divider_cnt(22)
    );
  clk_divider_cnt_23 : X_SFF
    generic map(
      LOC => "SLICE_X29Y76",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_22_DYMUX_4430,
      CE => VCC,
      CLK => clk_divider_cnt_22_CLKINV_4408,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_22_SRINV_4409,
      O => clk_divider_cnt(23)
    );
  clk_divider_cnt_24 : X_SFF
    generic map(
      LOC => "SLICE_X29Y77",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_24_DXMUX_4499,
      CE => VCC,
      CLK => clk_divider_cnt_24_CLKINV_4460,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_24_SRINV_4461,
      O => clk_divider_cnt(24)
    );
  clk_divider_cnt_25 : X_SFF
    generic map(
      LOC => "SLICE_X29Y77",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_24_DYMUX_4482,
      CE => VCC,
      CLK => clk_divider_cnt_24_CLKINV_4460,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_24_SRINV_4461,
      O => clk_divider_cnt(25)
    );
  clk_divider_cnt_26 : X_SFF
    generic map(
      LOC => "SLICE_X29Y78",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_26_DXMUX_4551,
      CE => VCC,
      CLK => clk_divider_cnt_26_CLKINV_4512,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_26_SRINV_4513,
      O => clk_divider_cnt(26)
    );
  clk_divider_cnt_30 : X_SFF
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_30_DXMUX_4648,
      CE => VCC,
      CLK => clk_divider_cnt_30_CLKINV_4615,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_30_SRINV_4616,
      O => clk_divider_cnt(30)
    );
  clk_divider_cnt_29 : X_SFF
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_28_DYMUX_4586,
      CE => VCC,
      CLK => clk_divider_cnt_28_CLKINV_4564,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_28_SRINV_4565,
      O => clk_divider_cnt(29)
    );
  clk_divider_cnt_31_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(31),
      O => clk_divider_cnt_31_rt_4624
    );
  clk_divider_cnt_31 : X_SFF
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_30_DYMUX_4629,
      CE => VCC,
      CLK => clk_divider_cnt_30_CLKINV_4615,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_30_SRINV_4616,
      O => clk_divider_cnt(31)
    );
  clk_divider_cnt_28 : X_SFF
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => '0'
    )
    port map (
      I => clk_divider_cnt_28_DXMUX_4603,
      CE => VCC,
      CLK => clk_divider_cnt_28_CLKINV_4564,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_divider_cnt_28_SRINV_4565,
      O => clk_divider_cnt(28)
    );
  lcd_cntrl_inst_count_temp_1 : X_SFF
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_DYMUX_4678,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_0_CLKINV_4661,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_0_SRINV_4662,
      O => lcd_cntrl_inst_count_temp(1)
    );
  lcd_cntrl_inst_count_temp_0 : X_SFF
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_0_DXMUX_4698,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_0_CLKINV_4661,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_0_SRINV_4662,
      O => lcd_cntrl_inst_count_temp(0)
    );
  lcd_cntrl_inst_count_temp_3 : X_SFF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_DYMUX_4733,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_2_CLKINV_4711,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_2_SRINV_4712,
      O => lcd_cntrl_inst_count_temp(3)
    );
  lcd_cntrl_inst_count_temp_2 : X_SFF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_2_DXMUX_4750,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_2_CLKINV_4711,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_2_SRINV_4712,
      O => lcd_cntrl_inst_count_temp(2)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X22Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_Mcount_temp_lut(0)
    );
  lcd_cntrl_inst_count_temp_5 : X_SFF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_DYMUX_4785,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_4_CLKINV_4763,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_4_SRINV_4764,
      O => lcd_cntrl_inst_count_temp(5)
    );
  lcd_cntrl_inst_count_temp_6 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_DXMUX_4854,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_6_CLKINV_4815,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_6_SRINV_4816,
      O => lcd_cntrl_inst_count_temp(6)
    );
  lcd_cntrl_inst_count_temp_4 : X_SFF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_4_DXMUX_4802,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_4_CLKINV_4763,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_4_SRINV_4764,
      O => lcd_cntrl_inst_count_temp(4)
    );
  lcd_cntrl_inst_count_temp_7 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_6_DYMUX_4837,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_6_CLKINV_4815,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_6_SRINV_4816,
      O => lcd_cntrl_inst_count_temp(7)
    );
  lcd_cntrl_inst_count_temp_9 : X_SFF
    generic map(
      LOC => "SLICE_X22Y36",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_DYMUX_4889,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_8_CLKINV_4867,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_8_SRINV_4868,
      O => lcd_cntrl_inst_count_temp(9)
    );
  lcd_cntrl_inst_count_temp_11 : X_SFF
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_DYMUX_4941,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_10_CLKINV_4919,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_10_SRINV_4920,
      O => lcd_cntrl_inst_count_temp(11)
    );
  lcd_cntrl_inst_count_temp_13 : X_SFF
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_DYMUX_4993,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_12_CLKINV_4971,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_12_SRINV_4972,
      O => lcd_cntrl_inst_count_temp(13)
    );
  lcd_cntrl_inst_count_temp_10 : X_SFF
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_10_DXMUX_4958,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_10_CLKINV_4919,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_10_SRINV_4920,
      O => lcd_cntrl_inst_count_temp(10)
    );
  lcd_cntrl_inst_count_temp_8 : X_SFF
    generic map(
      LOC => "SLICE_X22Y36",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_8_DXMUX_4906,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_8_CLKINV_4867,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_8_SRINV_4868,
      O => lcd_cntrl_inst_count_temp(8)
    );
  lcd_cntrl_inst_count_temp_12 : X_SFF
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_12_DXMUX_5010,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_12_CLKINV_4971,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_12_SRINV_4972,
      O => lcd_cntrl_inst_count_temp(12)
    );
  lcd_cntrl_inst_count_temp_17 : X_SFF
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_DYMUX_5097,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_16_CLKINV_5075,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_16_SRINV_5076,
      O => lcd_cntrl_inst_count_temp(17)
    );
  lcd_cntrl_inst_count_temp_16 : X_SFF
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_16_DXMUX_5114,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_16_CLKINV_5075,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_16_SRINV_5076,
      O => lcd_cntrl_inst_count_temp(16)
    );
  lcd_cntrl_inst_count_temp_14 : X_SFF
    generic map(
      LOC => "SLICE_X22Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_DXMUX_5062,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_14_CLKINV_5023,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_14_SRINV_5024,
      O => lcd_cntrl_inst_count_temp(14)
    );
  lcd_cntrl_inst_count_temp_19 : X_SFF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_18_DYMUX_5149,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_18_CLKINV_5127,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_18_SRINV_5128,
      O => lcd_cntrl_inst_count_temp(19)
    );
  lcd_cntrl_inst_count_temp_15 : X_SFF
    generic map(
      LOC => "SLICE_X22Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_temp_14_DYMUX_5045,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_temp_14_CLKINV_5023,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_count_temp_14_SRINV_5024,
      O => lcd_cntrl_inst_count_temp(15)
    );
  timer_inst_ones_cnt_mux0002_11_37_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"AA59",
      LOC => "SLICE_X56Y5"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(3),
      ADR1 => timer_inst_tc_2_cmp_eq0000,
      ADR2 => timer_inst_N14_0,
      ADR3 => timer_inst_ones_cnt(2),
      O => N159
    );
  timer_state_state_reset_and00001 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X41Y95"
    )
    port map (
      ADR0 => locked,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => reset_IBUF_0,
      O => timer_state_state_reset
    );
  lcd_cntrl_inst_sf_d_temp_4_242 : X_LUT4
    generic map(
      INIT => X"02AA",
      LOC => "SLICE_X29Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      ADR1 => lcd_cntrl_inst_lap_ones(1),
      ADR2 => lcd_cntrl_inst_lap_ones(2),
      ADR3 => lcd_cntrl_inst_lap_ones(3),
      O => lcd_cntrl_inst_sf_d_temp_4_242_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_4_181 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X33Y29"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_4_172_3272,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd34_3005,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd29_3094,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd39_3115,
      O => lcd_cntrl_inst_sf_d_temp_4_181_9164
    );
  timer_state_sreg_FSM_FFd12_In_SW0 : X_LUT4
    generic map(
      INIT => X"EFEF",
      LOC => "SLICE_X58Y19"
    )
    port map (
      ADR0 => strtstop_debounced,
      ADR1 => ll_debounced,
      ADR2 => timer_state_sreg_FSM_FFd4_3043,
      ADR3 => VCC,
      O => N15_pack_2
    );
  S3A_DCM_SP_LOCKING_ML_LUT3_0 : X_LUT4
    generic map(
      INIT => X"FF44",
      LOC => "SLICE_X41Y95"
    )
    port map (
      ADR0 => locked,
      ADR1 => Inst_dcm1_DCM_SP_INST_ML_NEW_I1,
      ADR2 => VCC,
      ADR3 => reset_IBUF_0,
      O => Inst_dcm1_DCM_SP_INST_ML_NEW_OUT
    );
  mode_debounce_sig_out1 : X_LUT4
    generic map(
      INIT => X"0A00",
      LOC => "SLICE_X59Y18"
    )
    port map (
      ADR0 => mode_debounce_Q2_3223,
      ADR1 => VCC,
      ADR2 => mode_debounce_Q3_3224,
      ADR3 => mode_debounce_Q1_3222,
      O => mode_debounced_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_4_256 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X29Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_4_228_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_4_200_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_4_181_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_4_242_3270,
      O => lcd_cntrl_inst_sf_d_temp_4_256_9123
    );
  lcd_cntrl_inst_sf_d_temp_4_147 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X29Y22"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_4_80_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_4_120_0,
      ADR2 => lcd_cntrl_inst_N111,
      ADR3 => lcd_cntrl_inst_sf_d_temp_4_106_0,
      O => lcd_cntrl_inst_sf_d_temp_4_147_9140
    );
  timer_state_sreg_FSM_FFd12_In : X_LUT4
    generic map(
      INIT => X"FF8C",
      LOC => "SLICE_X58Y19"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd12_3051,
      ADR1 => mode_debounced,
      ADR2 => N15,
      ADR3 => timer_state_rst_3056,
      O => timer_state_sreg_FSM_FFd12_In_9216
    );
  lcd_cntrl_inst_sf_d_temp_4_172 : X_LUT4
    generic map(
      INIT => X"3700",
      LOC => "SLICE_X33Y29"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(2),
      ADR1 => timer_inst_ones_cnt(3),
      ADR2 => timer_inst_ones_cnt(1),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      O => lcd_cntrl_inst_sf_d_temp_4_172_pack_1
    );
  timer_inst_ones_cnt_mux0002_11_37_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"A6AA",
      LOC => "SLICE_X56Y5"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(3),
      ADR1 => timer_inst_tc_2_cmp_eq0000,
      ADR2 => timer_inst_N14_0,
      ADR3 => timer_inst_ones_cnt(2),
      O => N160
    );
  timer_state_sreg_FSM_FFd12 : X_FF
    generic map(
      LOC => "SLICE_X58Y19",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd12_DXMUX_9219,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd12_CLKINV_9202,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd12_FFX_RSTAND_9224,
      O => timer_state_sreg_FSM_FFd12_3051
    );
  timer_state_sreg_FSM_FFd12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y19",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd12_FFX_RSTAND_9224
    );
  lcd_cntrl_inst_sf_d_4 : X_SFF
    generic map(
      LOC => "SLICE_X29Y23",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_4_DXMUX_9126,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_4_CLKINV_9110,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_sf_d_4_SRINV_9111,
      SRST => GND,
      O => lcd_cntrl_inst_sf_d(4)
    );
  lcd_cntrl_inst_sf_d_temp_3_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X31Y27"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd42_3099,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd38_3068,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd37_3015,
      ADR3 => lcd_cntrl_inst_N111,
      O => lcd_cntrl_inst_sf_d_temp_3_wg_lut_6_Q_9089
    );
  clk_divider_div_temp : X_FF
    generic map(
      LOC => "SLICE_X22Y0",
      INIT => '0'
    )
    port map (
      I => clk_divider_div_temp_DYMUX_9340,
      CE => clk_divider_div_temp_CEINV_9337,
      CLK => clk_divider_div_temp_CLKINV_9338,
      SET => GND,
      RST => GND,
      O => clk_divider_div_temp_3275
    );
  lcd_cntrl_inst_lap_ones_0 : X_SFF
    generic map(
      LOC => "SLICE_X29Y18",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_1_DYMUX_9356,
      CE => lcd_cntrl_inst_lap_ones_1_CEINV_9352,
      CLK => lcd_cntrl_inst_lap_ones_1_CLKINV_9353,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_ones_1_SRINV_9354,
      O => lcd_cntrl_inst_lap_ones(0)
    );
  lcd_cntrl_inst_lap_ones_1 : X_SFF
    generic map(
      LOC => "SLICE_X29Y18",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_1_DXMUX_9363,
      CE => lcd_cntrl_inst_lap_ones_1_CEINV_9352,
      CLK => lcd_cntrl_inst_lap_ones_1_CLKINV_9353,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_ones_1_SRINV_9354,
      O => lcd_cntrl_inst_lap_ones(1)
    );
  lcd_cntrl_inst_lap_ones_2 : X_SFF
    generic map(
      LOC => "SLICE_X31Y18",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_3_DYMUX_9380,
      CE => lcd_cntrl_inst_lap_ones_3_CEINV_9376,
      CLK => lcd_cntrl_inst_lap_ones_3_CLKINV_9377,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_ones_3_SRINV_9378,
      O => lcd_cntrl_inst_lap_ones(2)
    );
  lcd_cntrl_inst_lap_ones_3 : X_SFF
    generic map(
      LOC => "SLICE_X31Y18",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_ones_3_DXMUX_9387,
      CE => lcd_cntrl_inst_lap_ones_3_CEINV_9376,
      CLK => lcd_cntrl_inst_lap_ones_3_CLKINV_9377,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_ones_3_SRINV_9378,
      O => lcd_cntrl_inst_lap_ones(3)
    );
  lcd_cntrl_inst_lap_tens_0 : X_SFF
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tens_1_DYMUX_9404,
      CE => lcd_cntrl_inst_lap_tens_1_CEINV_9400,
      CLK => lcd_cntrl_inst_lap_tens_1_CLKINV_9401,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tens_1_SRINV_9402,
      O => lcd_cntrl_inst_lap_tens(0)
    );
  lap_load_debounce_sig_out1 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X58Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lap_load_debounce_Q1_3208,
      ADR2 => lap_load_debounce_Q3_3210,
      ADR3 => lap_load_debounce_Q2_3211,
      O => ll_debounced_pack_1
    );
  timer_state_sreg_FSM_FFd4_In31 : X_LUT4
    generic map(
      INIT => X"F0FA",
      LOC => "SLICE_X58Y16"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd4_In21_0,
      ADR1 => VCC,
      ADR2 => timer_state_sreg_FSM_FFd4_In10_0,
      ADR3 => ll_debounced,
      O => timer_state_sreg_FSM_FFd4_In
    );
  timer_inst_hundredths_cnt_mux0005_3_110 : X_LUT4
    generic map(
      INIT => X"01FF",
      LOC => "SLICE_X54Y10"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd8_3052,
      ADR1 => timer_state_sreg_FSM_FFd7_3046,
      ADR2 => N166_0,
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => timer_inst_N14
    );
  timer_inst_tc_1_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X54Y10"
    )
    port map (
      ADR0 => timer_inst_hundredths_cnt(1),
      ADR1 => timer_inst_hundredths_cnt(0),
      ADR2 => timer_inst_hundredths_cnt(2),
      ADR3 => timer_inst_hundredths_cnt(3),
      O => timer_inst_tc_1_cmp_eq0000_pack_1
    );
  timer_state_sreg_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X58Y16",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd4_DXMUX_9302,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd4_CLKINV_9284,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd4_FFX_RSTAND_9307,
      O => timer_state_sreg_FSM_FFd4_3043
    );
  timer_state_sreg_FSM_FFd4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y16",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd4_FFX_RSTAND_9307
    );
  timer_state_sreg_FSM_FFd4_In10 : X_LUT4
    generic map(
      INIT => X"0ACE",
      LOC => "SLICE_X59Y18"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd11_3206,
      ADR1 => timer_state_sreg_FSM_FFd2_3213,
      ADR2 => mode_debounced,
      ADR3 => strtstop_debounced,
      O => timer_state_sreg_FSM_FFd4_In10_9271
    );
  lcd_cntrl_inst_lap_hundredths_0 : X_SFF
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_hundredths_1_DYMUX_9525,
      CE => lcd_cntrl_inst_lap_hundredths_1_CEINV_9521,
      CLK => lcd_cntrl_inst_lap_hundredths_1_CLKINV_9522,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_hundredths_1_SRINV_9523,
      O => lcd_cntrl_inst_lap_hundredths(0)
    );
  lcd_cntrl_inst_control_0_26 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X20Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_control_0_12_3276,
      ADR3 => lcd_cntrl_inst_control_0_25_0,
      O => lcd_e_OBUF_9462
    );
  lcd_cntrl_inst_control_0_12 : X_LUT4
    generic map(
      INIT => X"CCC4",
      LOC => "SLICE_X20Y37"
    )
    port map (
      ADR0 => lcd_cntrl_inst_control_cmp_le0000,
      ADR1 => lcd_cntrl_inst_N0,
      ADR2 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_Q,
      ADR3 => lcd_cntrl_inst_state_cmp_eq0001_0,
      O => lcd_cntrl_inst_control_0_12_pack_1
    );
  lap_load_debounce_Q1 : X_FF
    generic map(
      LOC => "SLICE_X61Y16",
      INIT => '0'
    )
    port map (
      I => lap_load_debounce_Q2_DYMUX_9496,
      CE => VCC,
      CLK => lap_load_debounce_Q2_CLKINV_9494,
      SET => GND,
      RST => GND,
      O => lap_load_debounce_Q1_3208
    );
  lcd_cntrl_inst_lap_tens_2 : X_SFF
    generic map(
      LOC => "SLICE_X29Y20",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tens_3_DYMUX_9428,
      CE => lcd_cntrl_inst_lap_tens_3_CEINV_9424,
      CLK => lcd_cntrl_inst_lap_tens_3_CLKINV_9425,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tens_3_SRINV_9426,
      O => lcd_cntrl_inst_lap_tens(2)
    );
  timer_inst_ones_cnt_mux0002_11_211_SW1 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X59Y7"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(0),
      ADR1 => timer_inst_tenths_cnt(1),
      ADR2 => timer_inst_tenths_cnt(2),
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => N114
    );
  lcd_cntrl_inst_lap_tens_3 : X_SFF
    generic map(
      LOC => "SLICE_X29Y20",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tens_3_DXMUX_9435,
      CE => lcd_cntrl_inst_lap_tens_3_CEINV_9424,
      CLK => lcd_cntrl_inst_lap_tens_3_CLKINV_9425,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tens_3_SRINV_9426,
      O => lcd_cntrl_inst_lap_tens(3)
    );
  lap_load_debounce_Q2 : X_FF
    generic map(
      LOC => "SLICE_X61Y16",
      INIT => '0'
    )
    port map (
      I => lap_load_debounce_Q2_DXMUX_9501,
      CE => VCC,
      CLK => lap_load_debounce_Q2_CLKINV_9494,
      SET => GND,
      RST => GND,
      O => lap_load_debounce_Q2_3211
    );
  timer_inst_tenths_cnt_mux0002_7_34_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"4CCD",
      LOC => "SLICE_X59Y7"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(0),
      ADR1 => timer_inst_tc_1_cmp_eq0000,
      ADR2 => timer_inst_tenths_cnt(1),
      ADR3 => timer_inst_tenths_cnt(2),
      O => N147
    );
  lcd_cntrl_inst_lap_tens_1 : X_SFF
    generic map(
      LOC => "SLICE_X29Y21",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tens_1_DXMUX_9411,
      CE => lcd_cntrl_inst_lap_tens_1_CEINV_9400,
      CLK => lcd_cntrl_inst_lap_tens_1_CLKINV_9401,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tens_1_SRINV_9402,
      O => lcd_cntrl_inst_lap_tens(1)
    );
  lap_load_debounce_Q3 : X_FF
    generic map(
      LOC => "SLICE_X48Y16",
      INIT => '0'
    )
    port map (
      I => lap_load_debounce_Q3_DYMUX_9510,
      CE => VCC,
      CLK => lap_load_debounce_Q3_CLKINV_9508,
      SET => GND,
      RST => GND,
      O => lap_load_debounce_Q3_3210
    );
  lcd_cntrl_inst_lap_hundredths_1 : X_SFF
    generic map(
      LOC => "SLICE_X32Y22",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_hundredths_1_DXMUX_9532,
      CE => lcd_cntrl_inst_lap_hundredths_1_CEINV_9521,
      CLK => lcd_cntrl_inst_lap_hundredths_1_CLKINV_9522,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_hundredths_1_SRINV_9523,
      O => lcd_cntrl_inst_lap_hundredths(1)
    );
  lcd_cntrl_inst_lap_hundredths_2 : X_SFF
    generic map(
      LOC => "SLICE_X31Y22",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_hundredths_3_DYMUX_9549,
      CE => lcd_cntrl_inst_lap_hundredths_3_CEINV_9545,
      CLK => lcd_cntrl_inst_lap_hundredths_3_CLKINV_9546,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_hundredths_3_SRINV_9547,
      O => lcd_cntrl_inst_lap_hundredths(2)
    );
  timer_inst_tenths_cnt_mux0002_4_25 : X_LUT4
    generic map(
      INIT => X"1033",
      LOC => "SLICE_X57Y11"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_tenths_cnt(0),
      ADR2 => timer_inst_tc_1_cmp_eq0001,
      ADR3 => timer_inst_N14_0,
      O => timer_inst_tenths_cnt_mux0002_4_25_9620
    );
  timer_inst_tens_cnt_mux0002_13_11_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X55Y7"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_tc_4_cmp_eq0000,
      ADR2 => N153_0,
      ADR3 => timer_inst_tc_2_cmp_eq0000,
      O => N49
    );
  lcd_cntrl_inst_lap_tenths_2 : X_SFF
    generic map(
      LOC => "SLICE_X32Y25",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tenths_3_DYMUX_9658,
      CE => lcd_cntrl_inst_lap_tenths_3_CEINV_9654,
      CLK => lcd_cntrl_inst_lap_tenths_3_CLKINV_9655,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tenths_3_SRINV_9656,
      O => lcd_cntrl_inst_lap_tenths(2)
    );
  timer_inst_mins_cnt_and000011_SW5 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "SLICE_X57Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tc_1_cmp_eq0000,
      ADR2 => timer_inst_tc_3_cmp_eq0000,
      ADR3 => timer_inst_tc_2_cmp_eq0000,
      O => N155
    );
  lcd_cntrl_inst_lap_tenths_1 : X_SFF
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tenths_1_DXMUX_9641,
      CE => lcd_cntrl_inst_lap_tenths_1_CEINV_9630,
      CLK => lcd_cntrl_inst_lap_tenths_1_CLKINV_9631,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tenths_1_SRINV_9632,
      O => lcd_cntrl_inst_lap_tenths(1)
    );
  timer_inst_ones_cnt_mux0002_10_11_SW0 : X_LUT4
    generic map(
      INIT => X"F7FF",
      LOC => "SLICE_X57Y9"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0000,
      ADR1 => mode_control_0,
      ADR2 => timer_inst_tc_3_cmp_eq0000,
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => N82
    );
  timer_state_rst : X_FF
    generic map(
      LOC => "SLICE_X40Y18",
      INIT => '1'
    )
    port map (
      I => timer_state_rst_DYMUX_9593,
      CE => VCC,
      CLK => timer_state_rst_CLKINV_9590,
      SET => timer_state_rst_FFY_SET,
      RST => GND,
      O => timer_state_rst_3056
    );
  timer_state_rst_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X40Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_rst_FFY_SET
    );
  timer_inst_ones_cnt_mux0002_10_11_SW1 : X_LUT4
    generic map(
      INIT => X"EFFF",
      LOC => "SLICE_X57Y11"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_tc_3_cmp_eq0001,
      ADR2 => timer_inst_tc_2_cmp_eq0001,
      ADR3 => timer_inst_tc_1_cmp_eq0001,
      O => N96
    );
  timer_state_sreg_FSM_FFd8_In1 : X_LUT4
    generic map(
      INIT => X"E0E0",
      LOC => "SLICE_X59Y12"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd8_3052,
      ADR1 => timer_state_sreg_FSM_FFd7_3046,
      ADR2 => strtstop_debounced,
      ADR3 => VCC,
      O => timer_state_sreg_FSM_FFd8_In
    );
  strtstop_debounce_sig_out1 : X_LUT4
    generic map(
      INIT => X"0088",
      LOC => "SLICE_X59Y12"
    )
    port map (
      ADR0 => strtstop_debounce_Q2_3244,
      ADR1 => strtstop_debounce_Q1_3243,
      ADR2 => VCC,
      ADR3 => strtstop_debounce_Q3_3253,
      O => strtstop_debounced_pack_2
    );
  lcd_cntrl_inst_lap_tenths_0 : X_SFF
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tenths_1_DYMUX_9634,
      CE => lcd_cntrl_inst_lap_tenths_1_CEINV_9630,
      CLK => lcd_cntrl_inst_lap_tenths_1_CLKINV_9631,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tenths_1_SRINV_9632,
      O => lcd_cntrl_inst_lap_tenths(0)
    );
  timer_state_sreg_FSM_FFd8 : X_FF
    generic map(
      LOC => "SLICE_X59Y12",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd8_DXMUX_9699,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd8_CLKINV_9681,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd8_FFX_RSTAND_9704,
      O => timer_state_sreg_FSM_FFd8_3052
    );
  timer_state_sreg_FSM_FFd8_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X59Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd8_FFX_RSTAND_9704
    );
  lcd_cntrl_inst_lap_hundredths_3 : X_SFF
    generic map(
      LOC => "SLICE_X31Y22",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_hundredths_3_DXMUX_9556,
      CE => lcd_cntrl_inst_lap_hundredths_3_CEINV_9545,
      CLK => lcd_cntrl_inst_lap_hundredths_3_CLKINV_9546,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_hundredths_3_SRINV_9547,
      O => lcd_cntrl_inst_lap_hundredths(3)
    );
  lcd_cntrl_inst_lap_tenths_3 : X_SFF
    generic map(
      LOC => "SLICE_X32Y25",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_lap_tenths_3_DXMUX_9665,
      CE => lcd_cntrl_inst_lap_tenths_3_CEINV_9654,
      CLK => lcd_cntrl_inst_lap_tenths_3_CLKINV_9655,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_lap_tenths_3_SRINV_9656,
      O => lcd_cntrl_inst_lap_tenths(3)
    );
  timer_inst_tenths_cnt_mux0002_7_34_G : X_LUT4
    generic map(
      INIT => X"0802",
      LOC => "SLICE_X59Y8"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0000,
      ADR1 => N147_0,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => timer_inst_tenths_cnt(3),
      O => N193
    );
  timer_inst_tens_cnt_mux0002_13_11_G : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X57Y4"
    )
    port map (
      ADR0 => timer_inst_tc_3_cmp_eq0000,
      ADR1 => timer_inst_tc_4_cmp_eq0000,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => N195
    );
  lcd_cntrl_inst_sf_d_temp_6_1811 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X26Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_6_15,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd10_3093,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd29_3094,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd30_3095,
      O => lcd_cntrl_inst_sf_d_temp_6_181
    );
  lcd_cntrl_inst_timer_flag : X_SFF
    generic map(
      LOC => "SLICE_X24Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_timer_flag_DXMUX_6564,
      CE => lcd_cntrl_inst_timer_flag_CEINV_6543,
      CLK => lcd_cntrl_inst_timer_flag_CLKINV_6544,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_timer_flag_SRINV_6545,
      O => lcd_cntrl_inst_timer_flag_3071
    );
  timer_inst_tenths_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y11",
      INIT => '0'
    )
    port map (
      I => timer_inst_tenths_cnt_2_DXMUX_6601,
      CE => timer_inst_tenths_cnt_2_CEINV_6579,
      CLK => timer_inst_tenths_cnt_2_CLKINV_6580,
      SET => GND,
      RST => timer_inst_tenths_cnt_2_FFX_RSTAND_6607,
      O => timer_inst_tenths_cnt(2)
    );
  timer_inst_tenths_cnt_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tenths_cnt_2_FFX_RSTAND_6607
    );
  timer_inst_tenths_cnt_mux0002_6_45_F : X_LUT4
    generic map(
      INIT => X"9B0A",
      LOC => "SLICE_X51Y11"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(2),
      ADR1 => N162_0,
      ADR2 => timer_inst_tc_1,
      ADR3 => timer_inst_N5_0,
      O => N174
    );
  lcd_cntrl_inst_mode_state_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X24Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_mode_state_3073,
      ADR3 => VCC,
      O => lcd_cntrl_inst_mode_state_rt_6553
    );
  lcd_cntrl_inst_timer_flag_mux0000171 : X_LUT4
    generic map(
      INIT => X"FDFC",
      LOC => "SLICE_X24Y40"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq0001_0,
      ADR1 => lcd_cntrl_inst_clock_flag_mux00002_0,
      ADR2 => lcd_cntrl_inst_mode_state_3073,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      O => lcd_cntrl_inst_timer_flag_mux000017
    );
  lcd_cntrl_inst_sf_d_temp_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y26"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd36_3014,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd12_3010,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd37_3015,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd39_3115,
      O => N8_pack_1
    );
  timer_inst_tenths_cnt_mux0002_7_34_F : X_LUT4
    generic map(
      INIT => X"30C0",
      LOC => "SLICE_X59Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tenths_cnt(3),
      ADR2 => timer_inst_tc_1_cmp_eq0001,
      ADR3 => N146_0,
      O => N192
    );
  timer_inst_tens_cnt_mux0002_14_11_G : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X58Y5"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0000,
      ADR1 => timer_inst_tc_4_cmp_eq0000,
      ADR2 => timer_inst_tc_1_cmp_eq0000,
      ADR3 => timer_inst_tc_3_cmp_eq0000,
      O => N197
    );
  timer_inst_tens_cnt_mux0002_13_11_F : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X57Y4"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0001,
      ADR1 => timer_inst_tc_3_cmp_eq0001,
      ADR2 => timer_inst_tc_4_cmp_eq0001,
      ADR3 => timer_inst_tc_2_cmp_eq0001,
      O => N194
    );
  timer_inst_tens_cnt_mux0002_14_11_F : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X58Y5"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0001,
      ADR1 => timer_inst_tc_3_cmp_eq0001,
      ADR2 => VCC,
      ADR3 => timer_inst_tc_1_cmp_eq0001,
      O => N196
    );
  lcd_cntrl_inst_state_FSM_FFd41_In222 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X27Y33"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd42_3099,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_timer_flag_3071,
      O => lcd_cntrl_inst_state_FSM_FFd41_In222_6741
    );
  timer_inst_ones_cnt_mux0002_8_19_F : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X57Y5"
    )
    port map (
      ADR0 => N113_0,
      ADR1 => timer_inst_ones_cnt(0),
      ADR2 => VCC,
      ADR3 => timer_inst_tenths_cnt(3),
      O => N190
    );
  timer_inst_mins_cnt_and000011 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X52Y10"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0000,
      ADR1 => timer_inst_tc_3_cmp_eq0000,
      ADR2 => mode_control_0,
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => timer_inst_tens_cnt_and0000_pack_1
    );
  lcd_cntrl_inst_sf_d_6 : X_SFF
    generic map(
      LOC => "SLICE_X26Y28",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_6_DXMUX_6713,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_6_CLKINV_6692,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_sf_d_6_SRINV_6693,
      SRST => GND,
      O => lcd_cntrl_inst_sf_d(6)
    );
  lcd_cntrl_inst_state_FSM_FFd42 : X_SFF
    generic map(
      LOC => "SLICE_X27Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd41_DYMUX_6743,
      CE => lcd_cntrl_inst_state_FSM_FFd41_CEINV_6732,
      CLK => lcd_cntrl_inst_state_FSM_FFd41_CLKINV_6733,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd41_SRINV_6734,
      O => lcd_cntrl_inst_state_FSM_FFd42_3099
    );
  timer_inst_mins_cnt_mux0002_19_4 : X_LUT4
    generic map(
      INIT => X"F202",
      LOC => "SLICE_X52Y8"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(3),
      ADR1 => timer_inst_mins_cnt_and0000_0,
      ADR2 => timer_inst_mins_cnt_and0001,
      ADR3 => timer_inst_tc_5_cmp_eq0001,
      O => timer_inst_mins_cnt_mux0002_19_4_6868
    );
  timer_inst_ones_cnt_mux0002_8_19_G : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X57Y5"
    )
    port map (
      ADR0 => timer_inst_tc_3_cmp_eq0000,
      ADR1 => timer_inst_ones_cnt(0),
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => N191
    );
  lcd_cntrl_inst_sf_d_7 : X_SFF
    generic map(
      LOC => "SLICE_X32Y26",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_7_DXMUX_6818,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_7_CLKINV_6797,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_sf_d_7_SRINV_6798,
      SRST => GND,
      O => lcd_cntrl_inst_sf_d(7)
    );
  lcd_cntrl_inst_state_FSM_FFd41 : X_SFF
    generic map(
      LOC => "SLICE_X27Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd41_DXMUX_6758,
      CE => lcd_cntrl_inst_state_FSM_FFd41_CEINV_6732,
      CLK => lcd_cntrl_inst_state_FSM_FFd41_CLKINV_6733,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd41_SRINV_6734,
      O => lcd_cntrl_inst_state_FSM_FFd41_3100
    );
  timer_inst_tc_5_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X52Y8"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(3),
      ADR1 => timer_inst_mins_cnt(0),
      ADR2 => timer_inst_mins_cnt(1),
      ADR3 => timer_inst_mins_cnt(2),
      O => timer_inst_tc_5_cmp_eq0001_pack_2
    );
  timer_inst_mins_cnt_mux0002_18_1 : X_LUT4
    generic map(
      INIT => X"004C",
      LOC => "SLICE_X52Y10"
    )
    port map (
      ADR0 => timer_inst_tens_cnt_and0000,
      ADR1 => timer_inst_mins_cnt(2),
      ADR2 => timer_inst_tc_4_cmp_eq0000,
      ADR3 => timer_inst_mins_cnt_and0001,
      O => timer_inst_mins_cnt_mux0002_18_1_6844
    );
  lcd_cntrl_inst_sf_d_temp_7_11 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X32Y26"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd14_3000,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd12_3010,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd32_3069,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd26_3006,
      O => lcd_cntrl_inst_sf_d_temp_7_11_6803
    );
  lcd_cntrl_inst_state_FSM_FFd41_In221 : X_LUT4
    generic map(
      INIT => X"AEAA",
      LOC => "SLICE_X27Y33"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd42_3099,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR2 => lcd_cntrl_inst_lap_flag_3098,
      ADR3 => lcd_cntrl_inst_clock_flag_3097,
      O => lcd_cntrl_inst_state_FSM_FFd41_In221_6754
    );
  timer_inst_Maddsub_ones_cnt_share0000_lut_1_1 : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X57Y8"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0000,
      ADR1 => mode_control_0,
      ADR2 => timer_inst_ones_cnt(1),
      ADR3 => timer_inst_tc_1_cmp_eq0000,
      O => timer_inst_Maddsub_ones_cnt_share0000_lut_1_1_O_pack_1
    );
  timer_inst_ones_cnt_mux0002_9_40_SW0 : X_LUT4
    generic map(
      INIT => X"143C",
      LOC => "SLICE_X57Y8"
    )
    port map (
      ADR0 => N96_0,
      ADR1 => timer_inst_ones_cnt(0),
      ADR2 => timer_inst_Maddsub_ones_cnt_share0000_lut_1_1_O,
      ADR3 => N82_0,
      O => N86
    );
  timer_inst_tc_4_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X51Y7"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(3),
      ADR1 => timer_inst_tens_cnt(2),
      ADR2 => timer_inst_tens_cnt(0),
      ADR3 => timer_inst_tens_cnt(1),
      O => timer_inst_tc_4_cmp_eq0001_pack_1
    );
  timer_inst_tc_2_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X50Y9"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(0),
      ADR1 => timer_inst_tenths_cnt(2),
      ADR2 => timer_inst_tenths_cnt(3),
      ADR3 => timer_inst_tenths_cnt(1),
      O => timer_inst_tc_2_cmp_eq0000_pack_1
    );
  timer_inst_hundredths_cnt_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X48Y12",
      INIT => '0'
    )
    port map (
      I => timer_inst_hundredths_cnt_2_DXMUX_6993,
      GE => VCC,
      CLK => NlwInverterSignal_timer_inst_hundredths_cnt_2_CLK,
      SET => GND,
      RST => GND,
      O => timer_inst_hundredths_cnt(2)
    );
  timer_inst_ones_cnt_mux0002_10_40 : X_LUT4
    generic map(
      INIT => X"00FA",
      LOC => "SLICE_X56Y9"
    )
    port map (
      ADR0 => timer_inst_ones_cnt_mux0002_10_1_0,
      ADR1 => VCC,
      ADR2 => timer_inst_ones_cnt_mux0002_10_40_SW0_O,
      ADR3 => timer_state_sreg_FSM_FFd5_3054,
      O => timer_inst_ones_cnt_mux0002(10)
    );
  timer_inst_hundredths_cnt_mux0005_2_Q : X_LUT4
    generic map(
      INIT => X"6000",
      LOC => "SLICE_X48Y12"
    )
    port map (
      ADR0 => timer_inst_Maddsub_hundredths_cnt_share0000_lut_2_0,
      ADR1 => timer_inst_Maddsub_hundredths_cnt_share0000_cy_1_0,
      ADR2 => timer_inst_N11,
      ADR3 => timer_inst_N27,
      O => timer_inst_hundredths_cnt_mux0005(2)
    );
  timer_inst_enable1_SW2 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X53Y8"
    )
    port map (
      ADR0 => N28_0,
      ADR1 => VCC,
      ADR2 => timer_inst_enable1_SW1_O,
      ADR3 => mode_control_0,
      O => N104
    );
  timer_inst_mins_cnt_and00002 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X50Y9"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0000,
      ADR1 => mode_control_0,
      ADR2 => timer_inst_tc_3_cmp_eq0000,
      ADR3 => N88_0,
      O => timer_inst_mins_cnt_and0000
    );
  lcd_cntrl_inst_clock_flag_mux0000111 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => lcd_cntrl_inst_N9_0,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd31_2860,
      ADR2 => lcd_cntrl_inst_clock_flag_mux0000111_SW0_O,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd37_3015,
      O => lcd_cntrl_inst_N7
    );
  timer_inst_hundredths_cnt_mux0005_0_21 : X_LUT4
    generic map(
      INIT => X"0700",
      LOC => "SLICE_X48Y12"
    )
    port map (
      ADR0 => N104_0,
      ADR1 => timer_inst_tc_1,
      ADR2 => timer_state_sreg_FSM_FFd5_3054,
      ADR3 => timer_state_clken_3050,
      O => timer_inst_N27_pack_1
    );
  lcd_cntrl_inst_clock_flag_mux0000111112 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd17_2848,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      O => lcd_cntrl_inst_clock_flag_mux0000111112_O_pack_1
    );
  timer_inst_enable1_SW1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X53Y8"
    )
    port map (
      ADR0 => timer_inst_tc_5_cmp_eq0000,
      ADR1 => timer_inst_tc_2_cmp_eq0000,
      ADR2 => timer_inst_tc_3_cmp_eq0000,
      ADR3 => timer_inst_tc_4_cmp_eq0000,
      O => timer_inst_enable1_SW1_O_pack_1
    );
  lcd_cntrl_inst_clock_flag_mux0000111127 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => N176_0,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      ADR2 => lcd_cntrl_inst_clock_flag_mux0000111117_0,
      ADR3 => lcd_cntrl_inst_clock_flag_mux0000111112_O,
      O => lcd_cntrl_inst_N9
    );
  timer_inst_ones_cnt_mux0002_10_40_SW0 : X_LUT4
    generic map(
      INIT => X"152A",
      LOC => "SLICE_X56Y9"
    )
    port map (
      ADR0 => timer_inst_Maddsub_ones_cnt_share0000_cy_1_0,
      ADR1 => N96_0,
      ADR2 => N82_0,
      ADR3 => timer_inst_Maddsub_ones_cnt_share0000_lut_2_0,
      O => timer_inst_ones_cnt_mux0002_10_40_SW0_O_pack_1
    );
  lcd_cntrl_inst_clock_flag_mux0000111_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd38_3068,
      ADR2 => lcd_cntrl_inst_N13_0,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd39_3115,
      O => lcd_cntrl_inst_clock_flag_mux0000111_SW0_O_pack_1
    );
  timer_inst_enable1_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X51Y7"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0001,
      ADR1 => timer_inst_tc_4_cmp_eq0001,
      ADR2 => timer_inst_tc_3_cmp_eq0001,
      ADR3 => timer_inst_tc_5_cmp_eq0001,
      O => N28
    );
  lcd_cntrl_inst_timer_flag_mux00002 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_N6,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd47_3148,
      ADR3 => lcd_cntrl_inst_N4,
      O => lcd_cntrl_inst_clock_flag_mux00002
    );
  timer_inst_mins_cnt_and000011_SW0 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X53Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => timer_inst_tc_1_cmp_eq0000,
      ADR3 => timer_inst_tc_4_cmp_eq0000,
      O => N88
    );
  timer_inst_mins_cnt_and000011_SW3 : X_LUT4
    generic map(
      INIT => X"7F7F",
      LOC => "SLICE_X52Y4"
    )
    port map (
      ADR0 => timer_inst_tc_4_cmp_eq0000,
      ADR1 => timer_inst_tc_1_cmp_eq0000,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => VCC,
      O => timer_inst_mins_cnt_and000011_SW3_O_pack_1
    );
  timer_inst_ones_cnt_mux0002_11_70 : X_LUT4
    generic map(
      INIT => X"0F0C",
      LOC => "SLICE_X56Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_ones_cnt_mux0002_11_5_0,
      ADR2 => timer_state_sreg_FSM_FFd5_3054,
      ADR3 => timer_inst_ones_cnt_mux0002_11_37_O,
      O => timer_inst_ones_cnt_mux0002(11)
    );
  timer_inst_ones_cnt_mux0002_11_11_SW2 : X_LUT4
    generic map(
      INIT => X"BFBF",
      LOC => "SLICE_X59Y4"
    )
    port map (
      ADR0 => timer_inst_tc_3_cmp_eq0000,
      ADR1 => timer_inst_tc_1_cmp_eq0000,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => VCC,
      O => timer_inst_ones_cnt_mux0002_11_11_SW2_O_pack_1
    );
  timer_inst_ones_cnt_mux0002_11_37 : X_LUT4
    generic map(
      INIT => X"C840",
      LOC => "SLICE_X56Y6"
    )
    port map (
      ADR0 => timer_inst_Maddsub_ones_cnt_share0000_cy_1_0,
      ADR1 => timer_inst_N6_0,
      ADR2 => N159_0,
      ADR3 => N160_0,
      O => timer_inst_ones_cnt_mux0002_11_37_O_pack_1
    );
  timer_inst_mins_cnt_and000011_SW2 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X51Y5"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0000,
      ADR1 => timer_inst_tc_4_cmp_eq0000,
      ADR2 => timer_inst_tc_3_cmp_eq0000,
      ADR3 => timer_inst_tc_2_cmp_eq0000,
      O => timer_inst_mins_cnt_and000011_SW2_O_pack_1
    );
  timer_inst_ones_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X56Y6",
      INIT => '0'
    )
    port map (
      I => timer_inst_ones_cnt_3_DXMUX_7137,
      CE => timer_inst_ones_cnt_3_CEINV_7119,
      CLK => timer_inst_ones_cnt_3_CLKINV_7120,
      SET => GND,
      RST => timer_inst_ones_cnt_3_FFX_RSTAND_7143,
      O => timer_inst_ones_cnt(3)
    );
  timer_inst_ones_cnt_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X56Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_ones_cnt_3_FFX_RSTAND_7143
    );
  timer_inst_tc_3_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X56Y4"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(0),
      ADR1 => timer_inst_ones_cnt(3),
      ADR2 => timer_inst_ones_cnt(1),
      ADR3 => timer_inst_ones_cnt(2),
      O => timer_inst_tc_3_cmp_eq0000_pack_1
    );
  timer_inst_tc_4_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X53Y7"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(0),
      ADR1 => timer_inst_tens_cnt(2),
      ADR2 => timer_inst_tens_cnt(3),
      ADR3 => timer_inst_tens_cnt(1),
      O => timer_inst_tc_4_cmp_eq0000_pack_1
    );
  timer_inst_Maddsub_mins_cnt_share0000_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8EEE",
      LOC => "SLICE_X51Y5"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(1),
      ADR1 => timer_inst_mins_cnt(0),
      ADR2 => mode_control_0,
      ADR3 => timer_inst_mins_cnt_and000011_SW2_O,
      O => timer_inst_Maddsub_mins_cnt_share0000_cy(1)
    );
  timer_inst_ones_cnt_mux0002_11_11 : X_LUT4
    generic map(
      INIT => X"0F11",
      LOC => "SLICE_X59Y4"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(3),
      ADR1 => N113_0,
      ADR2 => timer_inst_ones_cnt_mux0002_11_11_SW2_O,
      ADR3 => mode_control_0,
      O => timer_inst_N6
    );
  timer_inst_ones_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X56Y9",
      INIT => '0'
    )
    port map (
      I => timer_inst_ones_cnt_2_DXMUX_7075,
      CE => timer_inst_ones_cnt_2_CEINV_7057,
      CLK => timer_inst_ones_cnt_2_CLKINV_7058,
      SET => GND,
      RST => timer_inst_ones_cnt_2_FFX_RSTAND_7081,
      O => timer_inst_ones_cnt(2)
    );
  timer_inst_ones_cnt_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X56Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_ones_cnt_2_FFX_RSTAND_7081
    );
  timer_inst_Maddsub_hundredths_cnt_share0000_cy_1_11 : X_LUT4
    generic map(
      INIT => X"DD44",
      LOC => "SLICE_X49Y12"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_hundredths_cnt(1),
      ADR2 => VCC,
      ADR3 => timer_inst_hundredths_cnt(0),
      O => timer_inst_Maddsub_hundredths_cnt_share0000_cy(1)
    );
  timer_inst_mins_cnt_and000011_SW4 : X_LUT4
    generic map(
      INIT => X"D7FF",
      LOC => "SLICE_X56Y4"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0000,
      ADR1 => timer_inst_tens_cnt(1),
      ADR2 => timer_inst_tens_cnt(0),
      ADR3 => timer_inst_tc_3_cmp_eq0000,
      O => N153
    );
  lcd_cntrl_inst_clock_flag_mux00001127 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_clock_flag_mux0000114_0,
      ADR1 => lcd_cntrl_inst_N8_0,
      ADR2 => lcd_cntrl_inst_clock_flag_mux0000119_0,
      ADR3 => lcd_cntrl_inst_N7_0,
      O => lcd_cntrl_inst_N4_pack_1
    );
  timer_inst_tenths_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X51Y10",
      INIT => '0'
    )
    port map (
      I => timer_inst_tenths_cnt_1_DXMUX_7381,
      CE => timer_inst_tenths_cnt_1_CEINV_7364,
      CLK => timer_inst_tenths_cnt_1_CLKINV_7365,
      SET => GND,
      RST => timer_inst_tenths_cnt_1_FFX_RSTAND_7387,
      O => timer_inst_tenths_cnt(1)
    );
  timer_inst_tenths_cnt_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tenths_cnt_1_FFX_RSTAND_7387
    );
  timer_inst_tenths_cnt_mux0002_5_11_SW1 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X56Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tc_1_cmp_eq0000,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => VCC,
      O => timer_inst_tenths_cnt_mux0002_5_11_SW1_O_pack_1
    );
  timer_inst_tenths_cnt_mux0002_7_67 : X_LUT4
    generic map(
      INIT => X"00FC",
      LOC => "SLICE_X52Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tenths_cnt_mux0002_7_34,
      ADR2 => timer_inst_tenths_cnt_mux0002_7_8_O,
      ADR3 => timer_state_sreg_FSM_FFd5_3054,
      O => timer_inst_tenths_cnt_mux0002_7_Q
    );
  timer_inst_tenths_cnt_mux0002_7_8 : X_LUT4
    generic map(
      INIT => X"D5C0",
      LOC => "SLICE_X52Y11"
    )
    port map (
      ADR0 => timer_inst_tc_1,
      ADR1 => timer_inst_tc_2_cmp_eq0001,
      ADR2 => timer_inst_tc_1_and0001_0,
      ADR3 => timer_inst_tenths_cnt(3),
      O => timer_inst_tenths_cnt_mux0002_7_8_O_pack_2
    );
  timer_inst_tc_1_or00001 : X_LUT4
    generic map(
      INIT => X"0801",
      LOC => "SLICE_X51Y10"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_hundredths_cnt(0),
      ADR2 => N127_0,
      ADR3 => timer_inst_hundredths_cnt(3),
      O => timer_inst_tc_1_pack_2
    );
  timer_inst_Maddsub_mins_cnt_share0000_lut_2_1 : X_LUT4
    generic map(
      INIT => X"20DF",
      LOC => "SLICE_X50Y7"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_mins_cnt_and000011_SW1_O,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => timer_inst_mins_cnt(2),
      O => timer_inst_Maddsub_mins_cnt_share0000_lut(2)
    );
  timer_inst_mins_cnt_and000011_SW1 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "SLICE_X50Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tc_3_cmp_eq0000,
      ADR2 => timer_inst_tc_1_cmp_eq0000,
      ADR3 => timer_inst_tc_4_cmp_eq0000,
      O => timer_inst_mins_cnt_and000011_SW1_O_pack_1
    );
  timer_inst_tenths_cnt_mux0002_4_54 : X_LUT4
    generic map(
      INIT => X"3330",
      LOC => "SLICE_X50Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_state_sreg_FSM_FFd5_3054,
      ADR2 => timer_inst_tenths_cnt_mux0002_4_25_0,
      ADR3 => timer_inst_tenths_cnt_mux0002_4_8_O,
      O => timer_inst_tenths_cnt_mux0002_4_Q
    );
  timer_inst_tenths_cnt_mux0002_5_45 : X_LUT4
    generic map(
      INIT => X"5150",
      LOC => "SLICE_X51Y10"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => timer_inst_tc_1,
      ADR2 => timer_inst_tenths_cnt_mux0002_5_17_O_0,
      ADR3 => timer_inst_tenths_cnt(1),
      O => timer_inst_tenths_cnt_mux0002_5_Q
    );
  timer_inst_tenths_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y10",
      INIT => '0'
    )
    port map (
      I => timer_inst_tenths_cnt_0_DXMUX_7343,
      CE => timer_inst_tenths_cnt_0_CEINV_7325,
      CLK => timer_inst_tenths_cnt_0_CLKINV_7326,
      SET => GND,
      RST => timer_inst_tenths_cnt_0_FFX_RSTAND_7349,
      O => timer_inst_tenths_cnt(0)
    );
  timer_inst_tenths_cnt_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tenths_cnt_0_FFX_RSTAND_7349
    );
  timer_inst_tenths_cnt_mux0002_4_8 : X_LUT4
    generic map(
      INIT => X"CE0A",
      LOC => "SLICE_X50Y10"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(0),
      ADR1 => timer_inst_tc_1_and0001_0,
      ADR2 => timer_inst_tc_1,
      ADR3 => timer_inst_tc_2_cmp_eq0001,
      O => timer_inst_tenths_cnt_mux0002_4_8_O_pack_2
    );
  timer_inst_Maddsub_mins_cnt_share0000_lut_1_1 : X_LUT4
    generic map(
      INIT => X"4B0F",
      LOC => "SLICE_X52Y4"
    )
    port map (
      ADR0 => timer_inst_mins_cnt_and000011_SW3_O,
      ADR1 => timer_inst_tc_3_cmp_eq0000,
      ADR2 => timer_inst_mins_cnt(1),
      ADR3 => mode_control_0,
      O => timer_inst_Maddsub_mins_cnt_share0000_lut(1)
    );
  timer_inst_tenths_cnt_mux0002_5_11 : X_LUT4
    generic map(
      INIT => X"40EA",
      LOC => "SLICE_X56Y10"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => N116_0,
      ADR2 => timer_inst_tc_1_cmp_eq0001,
      ADR3 => timer_inst_tenths_cnt_mux0002_5_11_SW1_O,
      O => timer_inst_N5
    );
  timer_inst_hundredths_cnt_mux0005_1_SW1 : X_LUT4
    generic map(
      INIT => X"BF3F",
      LOC => "SLICE_X48Y13"
    )
    port map (
      ADR0 => N104_0,
      ADR1 => N123_0,
      ADR2 => timer_inst_N11,
      ADR3 => timer_inst_tc_1,
      O => N184
    );
  timer_inst_tenths_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y11",
      INIT => '0'
    )
    port map (
      I => timer_inst_tenths_cnt_3_DXMUX_7419,
      CE => timer_inst_tenths_cnt_3_CEINV_7401,
      CLK => timer_inst_tenths_cnt_3_CLKINV_7402,
      SET => GND,
      RST => timer_inst_tenths_cnt_3_FFX_RSTAND_7425,
      O => timer_inst_tenths_cnt(3)
    );
  timer_inst_tenths_cnt_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y11",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tenths_cnt_3_FFX_RSTAND_7425
    );
  timer_inst_tens_cnt_mux0002_14_5 : X_LUT4
    generic map(
      INIT => X"CC0A",
      LOC => "SLICE_X52Y6"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(2),
      ADR1 => timer_inst_tc_4_cmp_eq0001,
      ADR2 => timer_inst_tens_cnt_and0000,
      ADR3 => timer_inst_tens_cnt_and0001_0,
      O => timer_inst_tens_cnt_mux0002_14_5_O_pack_2
    );
  timer_inst_tens_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y6",
      INIT => '0'
    )
    port map (
      I => timer_inst_tens_cnt_2_DXMUX_7519,
      CE => timer_inst_tens_cnt_2_CEINV_7501,
      CLK => timer_inst_tens_cnt_2_CLKINV_7502,
      SET => GND,
      RST => timer_inst_tens_cnt_2_FFX_RSTAND_7525,
      O => timer_inst_tens_cnt(2)
    );
  timer_inst_tens_cnt_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tens_cnt_2_FFX_RSTAND_7525
    );
  timer_inst_tens_cnt_mux0002_15_1 : X_LUT4
    generic map(
      INIT => X"0044",
      LOC => "SLICE_X52Y3"
    )
    port map (
      ADR0 => timer_inst_tens_cnt_and0001_0,
      ADR1 => timer_inst_tens_cnt(3),
      ADR2 => VCC,
      ADR3 => timer_inst_tens_cnt_and0000,
      O => timer_inst_tens_cnt_mux0002_15_1_O_pack_2
    );
  timer_inst_tens_cnt_mux0002_13_18 : X_LUT4
    generic map(
      INIT => X"515D",
      LOC => "SLICE_X54Y6"
    )
    port map (
      ADR0 => N49_0,
      ADR1 => timer_inst_tens_cnt_and0001_0,
      ADR2 => timer_inst_tc_4_cmp_eq0001,
      ADR3 => timer_inst_tens_cnt_mux0002_13_11_SW1_O,
      O => timer_inst_tens_cnt_mux0002_13_18_7486
    );
  timer_inst_tens_cnt_mux0002_14_63 : X_LUT4
    generic map(
      INIT => X"5544",
      LOC => "SLICE_X52Y6"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => timer_inst_tens_cnt_mux0002_14_5_O,
      ADR2 => VCC,
      ADR3 => N70_0,
      O => timer_inst_tens_cnt_mux0002(14)
    );
  timer_inst_tens_cnt_mux0002_15_62 : X_LUT4
    generic map(
      INIT => X"5454",
      LOC => "SLICE_X52Y3"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => timer_inst_tens_cnt_mux0002_15_33_0,
      ADR2 => timer_inst_tens_cnt_mux0002_15_1_O,
      ADR3 => VCC,
      O => timer_inst_tens_cnt_mux0002(15)
    );
  timer_inst_tens_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y3",
      INIT => '0'
    )
    port map (
      I => timer_inst_tens_cnt_3_DXMUX_7557,
      CE => timer_inst_tens_cnt_3_CEINV_7538,
      CLK => timer_inst_tens_cnt_3_CLKINV_7539,
      SET => GND,
      RST => timer_inst_tens_cnt_3_FFX_RSTAND_7563,
      O => timer_inst_tens_cnt(3)
    );
  timer_inst_tens_cnt_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tens_cnt_3_FFX_RSTAND_7563
    );
  timer_inst_tens_cnt_mux0002_13_1 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X54Y3"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(1),
      ADR1 => timer_inst_tens_cnt_and0001_0,
      ADR2 => VCC,
      ADR3 => timer_inst_tens_cnt_and0000,
      O => timer_inst_tens_cnt_mux0002_13_1_O_pack_2
    );
  timer_inst_tens_cnt_mux0002_13_11_SW1 : X_LUT4
    generic map(
      INIT => X"6966",
      LOC => "SLICE_X54Y6"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(0),
      ADR1 => timer_inst_tens_cnt(1),
      ADR2 => N155_0,
      ADR3 => mode_control_0,
      O => timer_inst_tens_cnt_mux0002_13_11_SW1_O_pack_1
    );
  timer_inst_tens_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y3",
      INIT => '0'
    )
    port map (
      I => timer_inst_tens_cnt_1_DXMUX_7457,
      CE => timer_inst_tens_cnt_1_CEINV_7438,
      CLK => timer_inst_tens_cnt_1_CLKINV_7439,
      SET => GND,
      RST => timer_inst_tens_cnt_1_FFX_RSTAND_7463,
      O => timer_inst_tens_cnt(1)
    );
  timer_inst_tens_cnt_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y3",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_tens_cnt_1_FFX_RSTAND_7463
    );
  timer_inst_hundredths_cnt_mux0005_1_11 : X_LUT4
    generic map(
      INIT => X"3535",
      LOC => "SLICE_X48Y13"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0001,
      ADR1 => timer_inst_tc_1_cmp_eq0000,
      ADR2 => mode_control_0,
      ADR3 => VCC,
      O => timer_inst_N11_pack_1
    );
  timer_inst_tens_cnt_mux0002_13_41 : X_LUT4
    generic map(
      INIT => X"00FA",
      LOC => "SLICE_X54Y3"
    )
    port map (
      ADR0 => timer_inst_tens_cnt_mux0002_13_18_0,
      ADR1 => VCC,
      ADR2 => timer_inst_tens_cnt_mux0002_13_1_O,
      ADR3 => timer_state_sreg_FSM_FFd5_3054,
      O => timer_inst_tens_cnt_mux0002(13)
    );
  timer_inst_mins_cnt_mux0002_17_11 : X_LUT4
    generic map(
      INIT => X"44F4",
      LOC => "SLICE_X51Y8"
    )
    port map (
      ADR0 => timer_inst_tc_5_cmp_eq0001,
      ADR1 => timer_inst_mins_cnt_and0001,
      ADR2 => timer_inst_mins_cnt_and0000_0,
      ADR3 => timer_inst_tc_5_cmp_eq0000,
      O => timer_inst_N4
    );
  timer_inst_mins_cnt_mux0002_17_40_SW0 : X_LUT4
    generic map(
      INIT => X"4488",
      LOC => "SLICE_X51Y4"
    )
    port map (
      ADR0 => timer_inst_Maddsub_mins_cnt_share0000_lut_1_0,
      ADR1 => timer_inst_N4_0,
      ADR2 => VCC,
      ADR3 => timer_inst_mins_cnt(0),
      O => timer_inst_mins_cnt_mux0002_17_40_SW0_O_pack_1
    );
  timer_inst_mins_cnt_mux0002_17_40 : X_LUT4
    generic map(
      INIT => X"5454",
      LOC => "SLICE_X51Y4"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => timer_inst_mins_cnt_mux0002_17_1_0,
      ADR2 => timer_inst_mins_cnt_mux0002_17_40_SW0_O,
      ADR3 => VCC,
      O => timer_inst_mins_cnt_mux0002(17)
    );
  timer_inst_hundredths_cnt_mux0005_3_110_SW0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X56Y8"
    )
    port map (
      ADR0 => timer_inst_tc_1_cmp_eq0000,
      ADR1 => timer_inst_tc_2_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => timer_inst_hundredths_cnt_mux0005_3_110_SW0_O_pack_1
    );
  timer_inst_mins_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X51Y4",
      INIT => '0'
    )
    port map (
      I => timer_inst_mins_cnt_1_DXMUX_7753,
      CE => timer_inst_mins_cnt_1_CEINV_7734,
      CLK => timer_inst_mins_cnt_1_CLKINV_7735,
      SET => GND,
      RST => timer_inst_mins_cnt_1_FFX_RSTAND_7759,
      O => timer_inst_mins_cnt(1)
    );
  timer_inst_mins_cnt_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X51Y4",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_mins_cnt_1_FFX_RSTAND_7759
    );
  timer_inst_mins_cnt_mux0002_16_19 : X_LUT4
    generic map(
      INIT => X"4454",
      LOC => "SLICE_X51Y9"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(0),
      ADR1 => timer_inst_mins_cnt_and0001,
      ADR2 => timer_inst_mins_cnt_and0000_0,
      ADR3 => timer_inst_tc_5_cmp_eq0000,
      O => timer_inst_mins_cnt_mux0002_16_19_7658
    );
  timer_inst_mins_cnt_and00011 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X51Y8"
    )
    port map (
      ADR0 => timer_inst_tc_3_cmp_eq0001,
      ADR1 => timer_inst_tc_4_cmp_eq0001,
      ADR2 => mode_control_0,
      ADR3 => N60_0,
      O => timer_inst_mins_cnt_and0001_pack_1
    );
  timer_inst_tc_5_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X51Y9"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(2),
      ADR1 => timer_inst_mins_cnt(1),
      ADR2 => timer_inst_mins_cnt(0),
      ADR3 => timer_inst_mins_cnt(3),
      O => timer_inst_tc_5_cmp_eq0000_pack_2
    );
  timer_inst_mins_cnt_mux0002_16_4 : X_LUT4
    generic map(
      INIT => X"AA0C",
      LOC => "SLICE_X53Y6"
    )
    port map (
      ADR0 => timer_inst_tc_5_cmp_eq0001,
      ADR1 => timer_inst_mins_cnt(0),
      ADR2 => timer_inst_mins_cnt_and0000_0,
      ADR3 => timer_inst_mins_cnt_and0001,
      O => timer_inst_mins_cnt_mux0002_16_4_O_pack_2
    );
  timer_inst_hundredths_cnt_mux0005_3_56_SW0 : X_LUT4
    generic map(
      INIT => X"AB03",
      LOC => "SLICE_X53Y10"
    )
    port map (
      ADR0 => timer_inst_tc_1,
      ADR1 => timer_inst_tc_1_and0001_0,
      ADR2 => timer_inst_hundredths_cnt_mux0005_3_32_O,
      ADR3 => N104_0,
      O => N180
    );
  timer_inst_mins_cnt_mux0002_16_44 : X_LUT4
    generic map(
      INIT => X"5454",
      LOC => "SLICE_X53Y6"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => timer_inst_mins_cnt_mux0002_16_19_0,
      ADR2 => timer_inst_mins_cnt_mux0002_16_4_O,
      ADR3 => VCC,
      O => timer_inst_mins_cnt_mux0002(16)
    );
  timer_inst_Maddsub_ones_cnt_share0000_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8EEE",
      LOC => "SLICE_X56Y8"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(1),
      ADR1 => timer_inst_ones_cnt(0),
      ADR2 => mode_control_0,
      ADR3 => timer_inst_hundredths_cnt_mux0005_3_110_SW0_O,
      O => timer_inst_Maddsub_ones_cnt_share0000_cy(1)
    );
  timer_inst_hundredths_cnt_mux0005_3_32 : X_LUT4
    generic map(
      INIT => X"6900",
      LOC => "SLICE_X53Y10"
    )
    port map (
      ADR0 => timer_inst_hundredths_cnt(3),
      ADR1 => N178_0,
      ADR2 => mode_control_0,
      ADR3 => timer_inst_N14_0,
      O => timer_inst_hundredths_cnt_mux0005_3_32_O_pack_1
    );
  timer_inst_mins_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X53Y6",
      INIT => '0'
    )
    port map (
      I => timer_inst_mins_cnt_0_DXMUX_7715,
      CE => timer_inst_mins_cnt_0_CEINV_7697,
      CLK => timer_inst_mins_cnt_0_CLKINV_7698,
      SET => GND,
      RST => timer_inst_mins_cnt_0_FFX_RSTAND_7721,
      O => timer_inst_mins_cnt(0)
    );
  timer_inst_mins_cnt_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X53Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_mins_cnt_0_FFX_RSTAND_7721
    );
  lcd_cntrl_inst_sf_d_temp_1_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd11_3194,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd28_3195,
      ADR2 => lcd_cntrl_inst_sf_d_temp_1_1_SW0_O,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd5_3193,
      O => lcd_cntrl_inst_N13
    );
  timer_inst_hundredths_cnt_mux0005_1_SW1_SW1 : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X49Y12"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => timer_inst_hundredths_cnt(1),
      ADR2 => VCC,
      ADR3 => timer_inst_hundredths_cnt(0),
      O => N123
    );
  timer_inst_mins_cnt_and000111 : X_LUT4
    generic map(
      INIT => X"0808",
      LOC => "SLICE_X55Y4"
    )
    port map (
      ADR0 => timer_inst_tc_2_cmp_eq0001,
      ADR1 => timer_inst_tc_1_cmp_eq0001,
      ADR2 => mode_control_0,
      ADR3 => VCC,
      O => timer_inst_ones_cnt_and0002_pack_1
    );
  timer_inst_mins_cnt_mux0002_18_40_SW0 : X_LUT4
    generic map(
      INIT => X"0CC0",
      LOC => "SLICE_X51Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_N4_0,
      ADR2 => timer_inst_Maddsub_mins_cnt_share0000_lut_2_0,
      ADR3 => timer_inst_Maddsub_mins_cnt_share0000_cy_1_0,
      O => timer_inst_mins_cnt_mux0002_18_40_SW0_O_pack_1
    );
  timer_inst_ones_cnt_mux0002_11_211 : X_LUT4
    generic map(
      INIT => X"F5EE",
      LOC => "SLICE_X55Y6"
    )
    port map (
      ADR0 => mode_control_0,
      ADR1 => N113_0,
      ADR2 => N114_0,
      ADR3 => timer_inst_tenths_cnt(3),
      O => timer_inst_N24_pack_1
    );
  timer_inst_mins_cnt_mux0002_19_37 : X_LUT4
    generic map(
      INIT => X"0AB0",
      LOC => "SLICE_X53Y11"
    )
    port map (
      ADR0 => timer_inst_mins_cnt_and0001,
      ADR1 => timer_inst_tc_5_cmp_eq0000,
      ADR2 => timer_inst_mins_cnt_and0000_0,
      ADR3 => timer_inst_mins_cnt_mux0002_19_37_SW0_O,
      O => timer_inst_mins_cnt_mux0002_19_37_7820
    );
  timer_inst_mins_cnt_mux0002_19_37_SW0 : X_LUT4
    generic map(
      INIT => X"CAAA",
      LOC => "SLICE_X53Y11"
    )
    port map (
      ADR0 => N64,
      ADR1 => N157,
      ADR2 => mode_control_0,
      ADR3 => timer_inst_tc_4_cmp_eq0000,
      O => timer_inst_mins_cnt_mux0002_19_37_SW0_O_pack_1
    );
  timer_inst_ones_cnt_mux0002_11_5 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X55Y6"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(3),
      ADR1 => timer_inst_tc_3_cmp_eq0001,
      ADR2 => timer_inst_N24,
      ADR3 => timer_inst_ones_cnt_and0002,
      O => timer_inst_ones_cnt_mux0002_11_5_7868
    );
  timer_inst_ones_cnt_mux0002_9_1 : X_LUT4
    generic map(
      INIT => X"4500",
      LOC => "SLICE_X55Y9"
    )
    port map (
      ADR0 => timer_inst_ones_cnt_and0002,
      ADR1 => timer_inst_N14_0,
      ADR2 => timer_inst_tc_2_cmp_eq0000,
      ADR3 => timer_inst_ones_cnt(1),
      O => timer_inst_ones_cnt_mux0002_9_1_O_pack_2
    );
  timer_inst_ones_cnt_mux0002_9_40 : X_LUT4
    generic map(
      INIT => X"0F0C",
      LOC => "SLICE_X55Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N86_0,
      ADR2 => timer_state_sreg_FSM_FFd5_3054,
      ADR3 => timer_inst_ones_cnt_mux0002_9_1_O,
      O => timer_inst_ones_cnt_mux0002(9)
    );
  timer_inst_ones_cnt_mux0002_10_1 : X_LUT4
    generic map(
      INIT => X"080A",
      LOC => "SLICE_X55Y4"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(2),
      ADR1 => timer_inst_N14_0,
      ADR2 => timer_inst_ones_cnt_and0002,
      ADR3 => timer_inst_tc_2_cmp_eq0000,
      O => timer_inst_ones_cnt_mux0002_10_1_7844
    );
  timer_inst_mins_cnt_mux0002_18_40 : X_LUT4
    generic map(
      INIT => X"5550",
      LOC => "SLICE_X51Y6"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => VCC,
      ADR2 => timer_inst_mins_cnt_mux0002_18_40_SW0_O,
      ADR3 => timer_inst_mins_cnt_mux0002_18_1_0,
      O => timer_inst_mins_cnt_mux0002(18)
    );
  timer_inst_ones_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y9",
      INIT => '0'
    )
    port map (
      I => timer_inst_ones_cnt_1_DXMUX_7901,
      CE => timer_inst_ones_cnt_1_CEINV_7883,
      CLK => timer_inst_ones_cnt_1_CLKINV_7884,
      SET => GND,
      RST => timer_inst_ones_cnt_1_FFX_RSTAND_7907,
      O => timer_inst_ones_cnt(1)
    );
  timer_inst_ones_cnt_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X55Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_ones_cnt_1_FFX_RSTAND_7907
    );
  lcd_cntrl_inst_sf_d_temp_1_1_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd35_3197,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd25_3199,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd19_3198,
      O => lcd_cntrl_inst_sf_d_temp_1_1_SW0_O_pack_1
    );
  timer_inst_mins_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y6",
      INIT => '0'
    )
    port map (
      I => timer_inst_mins_cnt_2_DXMUX_7791,
      CE => timer_inst_mins_cnt_2_CEINV_7772,
      CLK => timer_inst_mins_cnt_2_CLKINV_7773,
      SET => GND,
      RST => timer_inst_mins_cnt_2_FFX_RSTAND_7797,
      O => timer_inst_mins_cnt(2)
    );
  timer_inst_mins_cnt_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X51Y6",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_mins_cnt_2_FFX_RSTAND_7797
    );
  timer_inst_tc_2_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X50Y6"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(3),
      ADR1 => timer_inst_tenths_cnt(2),
      ADR2 => timer_inst_tenths_cnt(0),
      ADR3 => timer_inst_tenths_cnt(1),
      O => timer_inst_tc_2_cmp_eq0001_pack_1
    );
  lcd_cntrl_inst_next_mode_state : X_SFF
    generic map(
      LOC => "SLICE_X54Y11",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_next_mode_state_DXMUX_7986,
      CE => VCC,
      CLK => lcd_cntrl_inst_next_mode_state_CLKINV_7968,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_next_mode_state_SRINV_7969,
      O => lcd_cntrl_inst_next_mode_state_3203
    );
  timer_inst_tens_cnt_and00011 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y7"
    )
    port map (
      ADR0 => timer_inst_tc_3_cmp_eq0001,
      ADR1 => timer_inst_tc_2_cmp_eq0001,
      ADR2 => mode_control_0,
      ADR3 => timer_inst_tc_1_cmp_eq0001,
      O => timer_inst_tens_cnt_and0001
    );
  lcd_cntrl_inst_count_temp_or000011 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X23Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_N4,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd41_3100,
      O => lcd_cntrl_inst_N0_pack_1
    );
  lcd_cntrl_inst_count_temp_or0000 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X23Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq0001_0,
      ADR1 => N17_0,
      ADR2 => timer_state_rst_3056,
      ADR3 => lcd_cntrl_inst_N0,
      O => lcd_cntrl_inst_count_temp_or0000_7954
    );
  timer_state_sreg_FSM_Out7_SW0 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X54Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => timer_state_sreg_FSM_FFd8_3052,
      ADR3 => timer_state_sreg_FSM_FFd7_3046,
      O => N34_pack_1
    );
  timer_inst_tc_1_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y10"
    )
    port map (
      ADR0 => timer_inst_hundredths_cnt(1),
      ADR1 => timer_inst_hundredths_cnt(2),
      ADR2 => timer_inst_hundredths_cnt(0),
      ADR3 => timer_inst_hundredths_cnt(3),
      O => timer_inst_tc_1_cmp_eq0001_pack_1
    );
  timer_inst_hundredths_cnt_mux0005_3_212 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X48Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => mode_control_0,
      ADR3 => timer_inst_tc_1_cmp_eq0001,
      O => timer_inst_tc_1_and0001
    );
  timer_state_sreg_FSM_FFd10_In1 : X_LUT4
    generic map(
      INIT => X"AA88",
      LOC => "SLICE_X56Y13"
    )
    port map (
      ADR0 => strtstop_debounced,
      ADR1 => timer_state_sreg_FSM_FFd9_3042,
      ADR2 => VCC,
      ADR3 => timer_state_sreg_FSM_FFd10_3049,
      O => timer_state_sreg_FSM_FFd10_In
    );
  timer_state_sreg_FSM_FFd10 : X_FF
    generic map(
      LOC => "SLICE_X56Y13",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd10_DYMUX_8083,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd10_CLKINV_8073,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd10_FFY_RSTAND_8088,
      O => timer_state_sreg_FSM_FFd10_3049
    );
  timer_state_sreg_FSM_FFd10_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X56Y13",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd10_FFY_RSTAND_8088
    );
  timer_inst_hundredths_cnt_mux0005_3_110_SW1 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X56Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_state_sreg_FSM_FFd10_3049,
      ADR2 => timer_state_sreg_FSM_FFd12_3051,
      ADR3 => timer_state_sreg_FSM_FFd9_3042,
      O => N166
    );
  timer_inst_tc_3_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y7"
    )
    port map (
      ADR0 => timer_inst_ones_cnt(2),
      ADR1 => timer_inst_ones_cnt(0),
      ADR2 => timer_inst_ones_cnt(1),
      ADR3 => timer_inst_ones_cnt(3),
      O => timer_inst_tc_3_cmp_eq0001_pack_1
    );
  timer_state_sreg_FSM_FFd11_In1 : X_LUT4
    generic map(
      INIT => X"CC40",
      LOC => "SLICE_X58Y18"
    )
    port map (
      ADR0 => strtstop_debounced,
      ADR1 => mode_debounced,
      ADR2 => timer_state_sreg_FSM_FFd9_3042,
      ADR3 => timer_state_sreg_FSM_FFd11_3206,
      O => timer_state_sreg_FSM_FFd11_In
    );
  timer_inst_hundredths_cnt_mux0005_3_212_SW0 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X50Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_tc_1_cmp_eq0001,
      ADR2 => VCC,
      ADR3 => timer_inst_tc_2_cmp_eq0001,
      O => N60
    );
  timer_state_sreg_FSM_Out7 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X54Y11"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd9_3042,
      ADR1 => timer_state_sreg_FSM_FFd12_3051,
      ADR2 => N34,
      ADR3 => timer_state_sreg_FSM_FFd10_3049,
      O => mode_control
    );
  timer_state_sreg_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"3330",
      LOC => "SLICE_X59Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => strtstop_debounced,
      ADR2 => timer_state_sreg_FSM_FFd3_3048,
      ADR3 => timer_state_sreg_FSM_FFd1_3047,
      O => timer_state_sreg_FSM_FFd1_In
    );
  timer_state_sreg1_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"3313",
      LOC => "SLICE_X50Y16"
    )
    port map (
      ADR0 => lap_load_debounce_Q1_3208,
      ADR1 => timer_state_sreg1_FSM_FFd1_3209,
      ADR2 => lap_load_debounce_Q2_3211,
      ADR3 => lap_load_debounce_Q3_3210,
      O => timer_state_sreg1_FSM_FFd2_In
    );
  timer_inst_hundredths_cnt_mux0005_0_33 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X49Y13"
    )
    port map (
      ADR0 => timer_inst_N27,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => timer_inst_hundredths_cnt(0),
      O => timer_inst_hundredths_cnt_mux0005(0)
    );
  timer_state_sreg1_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X50Y16",
      INIT => '1'
    )
    port map (
      I => timer_state_sreg1_FSM_FFd2_DXMUX_8166,
      CE => VCC,
      CLK => timer_state_sreg1_FSM_FFd2_CLKINV_8145,
      SET => GND,
      RST => GND,
      SSET => timer_state_sreg1_FSM_FFd2_SRINV_8146,
      SRST => GND,
      O => timer_state_sreg1_FSM_FFd2_3212
    );
  timer_state_sreg1_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X50Y16"
    )
    port map (
      ADR0 => lap_load_debounce_Q1_3208,
      ADR1 => lap_load_debounce_Q3_3210,
      ADR2 => lap_load_debounce_Q2_3211,
      ADR3 => timer_state_sreg1_FSM_FFd2_3212,
      O => timer_state_next_lap_trigger1
    );
  timer_inst_hundredths_cnt_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X49Y13",
      INIT => '0'
    )
    port map (
      I => timer_inst_hundredths_cnt_1_DXMUX_8201,
      GE => VCC,
      CLK => NlwInverterSignal_timer_inst_hundredths_cnt_1_CLK,
      SET => GND,
      RST => GND,
      O => timer_inst_hundredths_cnt(1)
    );
  timer_state_sreg_FSM_FFd4_In21 : X_LUT4
    generic map(
      INIT => X"AABA",
      LOC => "SLICE_X58Y18"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd6_3205,
      ADR1 => mode_debounced,
      ADR2 => timer_state_sreg_FSM_FFd4_3043,
      ADR3 => strtstop_debounced,
      O => timer_state_sreg_FSM_FFd4_In21_8130
    );
  timer_inst_hundredths_cnt_mux0005_1_Q : X_LUT4
    generic map(
      INIT => X"0202",
      LOC => "SLICE_X49Y13"
    )
    port map (
      ADR0 => timer_state_clken_3050,
      ADR1 => timer_state_sreg_FSM_FFd5_3054,
      ADR2 => N184_0,
      ADR3 => VCC,
      O => timer_inst_hundredths_cnt_mux0005(1)
    );
  timer_inst_hundredths_cnt_mux0005_3_56 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X53Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_state_sreg_FSM_FFd5_3054,
      ADR2 => N180_0,
      ADR3 => timer_state_clken_3050,
      O => timer_inst_hundredths_cnt_mux0005(3)
    );
  timer_inst_hundredths_cnt_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X53Y9",
      INIT => '0'
    )
    port map (
      I => timer_inst_hundredths_cnt_3_DYMUX_8224,
      GE => VCC,
      CLK => NlwInverterSignal_timer_inst_hundredths_cnt_3_CLK,
      SET => GND,
      RST => GND,
      O => timer_inst_hundredths_cnt(3)
    );
  timer_state_sreg1_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X50Y16",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg1_FSM_FFd2_DYMUX_8154,
      CE => VCC,
      CLK => timer_state_sreg1_FSM_FFd2_CLKINV_8145,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => timer_state_sreg1_FSM_FFd2_SRINV_8146,
      O => timer_state_sreg1_FSM_FFd1_3209
    );
  timer_inst_hundredths_cnt_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X49Y13",
      INIT => '0'
    )
    port map (
      I => timer_inst_hundredths_cnt_1_DYMUX_8189,
      GE => VCC,
      CLK => NlwInverterSignal_timer_inst_hundredths_cnt_0_CLK,
      SET => GND,
      RST => GND,
      O => timer_inst_hundredths_cnt(0)
    );
  timer_state_sreg_FSM_FFd11 : X_FF
    generic map(
      LOC => "SLICE_X58Y18",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd11_DYMUX_8119,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd11_CLKINV_8110,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd11_FFY_RSTAND_8124,
      O => timer_state_sreg_FSM_FFd11_3206
    );
  timer_state_sreg_FSM_FFd11_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y18",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd11_FFY_RSTAND_8124
    );
  timer_inst_mins_cnt_mux0002_19_70 : X_LUT4
    generic map(
      INIT => X"00FA",
      LOC => "SLICE_X52Y9"
    )
    port map (
      ADR0 => timer_inst_mins_cnt_mux0002_19_4_0,
      ADR1 => VCC,
      ADR2 => timer_inst_mins_cnt_mux0002_19_37_0,
      ADR3 => timer_state_sreg_FSM_FFd5_3054,
      O => timer_inst_mins_cnt_mux0002(19)
    );
  timer_inst_ones_cnt_not00021 : X_LUT4
    generic map(
      INIT => X"BAFA",
      LOC => "SLICE_X53Y9"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd5_3054,
      ADR1 => N104_0,
      ADR2 => timer_state_clken_3050,
      ADR3 => timer_inst_tc_1,
      O => timer_inst_ones_cnt_not0002
    );
  timer_inst_mins_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y9",
      INIT => '0'
    )
    port map (
      I => timer_inst_mins_cnt_3_DYMUX_8253,
      CE => timer_inst_mins_cnt_3_CEINV_8242,
      CLK => timer_inst_mins_cnt_3_CLKINV_8243,
      SET => GND,
      RST => timer_inst_mins_cnt_3_FFY_RSTAND_8259,
      O => timer_inst_mins_cnt(3)
    );
  timer_inst_mins_cnt_3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y9",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_mins_cnt_3_FFY_RSTAND_8259
    );
  timer_state_sreg_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"C0C8",
      LOC => "SLICE_X58Y17"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd4_3043,
      ADR1 => strtstop_debounced,
      ADR2 => timer_state_sreg_FSM_FFd3_3048,
      ADR3 => ll_debounced,
      O => timer_state_sreg_FSM_FFd3_In
    );
  timer_state_next_clken0 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X58Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => timer_state_sreg_FSM_FFd3_3048,
      ADR3 => timer_state_sreg_FSM_FFd10_3049,
      O => timer_state_next_clken0_8335
    );
  timer_state_sreg_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X59Y14",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd2_DYMUX_8281,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd2_CLKINV_8271,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd2_SRINV_8272,
      O => timer_state_sreg_FSM_FFd1_3047
    );
  timer_state_sreg_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X58Y17",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd3_DYMUX_8322,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd3_CLKINV_8313,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd3_FFY_RSTAND_8327,
      O => timer_state_sreg_FSM_FFd3_3048
    );
  timer_state_sreg_FSM_FFd3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X58Y17",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd3_FFY_RSTAND_8327
    );
  timer_state_sreg_FSM_FFd6_In1 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X59Y16"
    )
    port map (
      ADR0 => ll_debounced,
      ADR1 => timer_state_sreg_FSM_FFd6_3205,
      ADR2 => timer_state_sreg_FSM_FFd5_3054,
      ADR3 => VCC,
      O => timer_state_sreg_FSM_FFd6_In
    );
  timer_state_sreg_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"CC88",
      LOC => "SLICE_X59Y14"
    )
    port map (
      ADR0 => timer_state_sreg_FSM_FFd2_3213,
      ADR1 => strtstop_debounced,
      ADR2 => VCC,
      ADR3 => timer_state_sreg_FSM_FFd1_3047,
      O => timer_state_sreg_FSM_FFd2_In
    );
  timer_state_sreg_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X59Y14",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd2_DXMUX_8296,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd2_CLKINV_8271,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd2_SRINV_8272,
      O => timer_state_sreg_FSM_FFd2_3213
    );
  timer_state_sreg_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X59Y16"
    )
    port map (
      ADR0 => lap_load_debounce_Q2_3211,
      ADR1 => lap_load_debounce_Q3_3210,
      ADR2 => lap_load_debounce_Q1_3208,
      ADR3 => timer_state_sreg_FSM_FFd4_3043,
      O => timer_state_sreg_FSM_FFd5_In
    );
  timer_state_sreg_FSM_FFd7 : X_FF
    generic map(
      LOC => "SLICE_X54Y12",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd7_DYMUX_8401,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd7_CLKINV_8391,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd7_FFY_RSTAND_8406,
      O => timer_state_sreg_FSM_FFd7_3046
    );
  timer_state_sreg_FSM_FFd7_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y12",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_state_reset_0,
      O => timer_state_sreg_FSM_FFd7_FFY_RSTAND_8406
    );
  timer_state_sreg_FSM_FFd7_In1 : X_LUT4
    generic map(
      INIT => X"0F0C",
      LOC => "SLICE_X54Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_state_sreg_FSM_FFd10_3049,
      ADR2 => strtstop_debounced,
      ADR3 => timer_state_sreg_FSM_FFd7_3046,
      O => timer_state_sreg_FSM_FFd7_In
    );
  lcd_cntrl_inst_timer_flag_not00011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y12"
    )
    port map (
      ADR0 => N34,
      ADR1 => timer_state_sreg_FSM_FFd9_3042,
      ADR2 => timer_state_sreg_FSM_FFd12_3051,
      ADR3 => timer_state_sreg_FSM_FFd10_3049,
      O => lcd_cntrl_inst_timer_flag_not0001
    );
  timer_state_sreg_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X59Y16",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd6_DYMUX_8358,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd6_CLKINV_8349,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd6_SRINV_8350,
      O => timer_state_sreg_FSM_FFd5_3054
    );
  timer_state_sreg_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X59Y16",
      INIT => '0'
    )
    port map (
      I => timer_state_sreg_FSM_FFd6_DXMUX_8373,
      CE => VCC,
      CLK => timer_state_sreg_FSM_FFd6_CLKINV_8349,
      SET => GND,
      RST => timer_state_sreg_FSM_FFd6_SRINV_8350,
      O => timer_state_sreg_FSM_FFd6_3205
    );
  lcd_cntrl_inst_sf_d_temp_5_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X34Y29"
    )
    port map (
      ADR0 => lcd_cntrl_inst_N9_0,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd37_3015,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd38_3068,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      O => lcd_cntrl_inst_sf_d_temp_5_1_8431
    );
  lcd_cntrl_inst_state_FSM_FFd34_In11 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => mode_control_0,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd36_3014,
      O => lcd_cntrl_inst_state_FSM_FFd34_In1
    );
  lcd_cntrl_inst_state_FSM_FFd43_In1 : X_LUT4
    generic map(
      INIT => X"F444",
      LOC => "SLICE_X24Y32"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq0001_0,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd43_3096,
      ADR2 => lcd_cntrl_inst_state_cmp_eq0000,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd44_3216,
      O => lcd_cntrl_inst_state_FSM_FFd43_In
    );
  lcd_cntrl_inst_state_FSM_FFd43 : X_SFF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd43_DYMUX_8548,
      CE => VCC,
      CLK => lcd_cntrl_inst_state_FSM_FFd43_CLKINV_8539,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd43_SRINV_8540,
      O => lcd_cntrl_inst_state_FSM_FFd43_3096
    );
  lcd_cntrl_inst_state_FSM_FFd35 : X_SFF
    generic map(
      LOC => "SLICE_X31Y30",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd36_DYMUX_8507,
      CE => lcd_cntrl_inst_state_FSM_FFd36_CEINV_8495,
      CLK => lcd_cntrl_inst_state_FSM_FFd36_CLKINV_8496,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd36_SRINV_8497,
      O => lcd_cntrl_inst_state_FSM_FFd35_3197
    );
  lcd_cntrl_inst_lap_flag_not00011 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X24Y32"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq0001_0,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_lap_flag_not0001
    );
  lcd_cntrl_inst_lap_ones_or00001 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => timer_state_rst_3056,
      ADR1 => VCC,
      ADR2 => mode_control_0,
      ADR3 => VCC,
      O => lcd_cntrl_inst_lap_ones_or0000
    );
  lcd_cntrl_inst_state_FSM_FFd46_In1 : X_LUT4
    generic map(
      INIT => X"D5C0",
      LOC => "SLICE_X23Y37"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq0000,
      ADR1 => lcd_cntrl_inst_state_cmp_ge0000,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd47_3148,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd46_3219,
      O => lcd_cntrl_inst_state_FSM_FFd46_In
    );
  lcd_cntrl_inst_state_FSM_FFd46 : X_SFF
    generic map(
      LOC => "SLICE_X23Y37",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd46_DYMUX_8583,
      CE => VCC,
      CLK => lcd_cntrl_inst_state_FSM_FFd46_CLKINV_8574,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd46_SRINV_8575,
      O => lcd_cntrl_inst_state_FSM_FFd46_3219
    );
  lcd_cntrl_inst_control_0_25 : X_LUT4
    generic map(
      INIT => X"E0F0",
      LOC => "SLICE_X23Y37"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_cmp_eq0000,
      ADR1 => lcd_cntrl_inst_Mcompar_control_cmp_gt0000_cy_8_Q,
      ADR2 => lcd_cntrl_inst_N6,
      ADR3 => lcd_cntrl_inst_control_cmp_le0001,
      O => lcd_cntrl_inst_control_0_25_8592
    );
  lcd_cntrl_inst_control_2_1 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X34Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_N7_0,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      O => lcd_rs_OBUF_8445
    );
  lcd_cntrl_inst_state_FSM_FFd36 : X_SFF
    generic map(
      LOC => "SLICE_X31Y30",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd36_DXMUX_8523,
      CE => lcd_cntrl_inst_state_FSM_FFd36_CEINV_8495,
      CLK => lcd_cntrl_inst_state_FSM_FFd36_CLKINV_8496,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd36_SRINV_8497,
      O => lcd_cntrl_inst_state_FSM_FFd36_3014
    );
  lcd_cntrl_inst_state_FSM_FFd35_In11 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X31Y30"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd36_3014,
      ADR1 => VCC,
      ADR2 => mode_control_0,
      ADR3 => VCC,
      O => lcd_cntrl_inst_state_FSM_FFd35_In1
    );
  timer_inst_Maddsub_hundredths_cnt_share0000_lut_2_1 : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X31Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_hundredths_cnt(2),
      ADR2 => mode_control_0,
      ADR3 => VCC,
      O => timer_inst_Maddsub_hundredths_cnt_share0000_lut(2)
    );
  lcd_cntrl_inst_state_FSM_FFd34 : X_SFF
    generic map(
      LOC => "SLICE_X29Y26",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd34_DYMUX_8469,
      CE => lcd_cntrl_inst_state_FSM_FFd34_CEINV_8457,
      CLK => lcd_cntrl_inst_state_FSM_FFd34_CLKINV_8458,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd34_SRINV_8459,
      O => lcd_cntrl_inst_state_FSM_FFd34_3005
    );
  lcd_cntrl_inst_sf_d_5 : X_SFF
    generic map(
      LOC => "SLICE_X34Y29",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_5_DYMUX_8434,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_5_CLKINV_8425,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_sf_d_5_SRINV_8426,
      SRST => GND,
      O => lcd_cntrl_inst_sf_d(5)
    );
  lcd_cntrl_inst_sf_d_temp_0_25 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_hundredths(3),
      ADR1 => lcd_cntrl_inst_lap_hundredths(1),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd26_3006,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      O => lcd_cntrl_inst_sf_d_temp_0_25_8737
    );
  timer_inst_Maddsub_tenths_cnt_share0000_lut_1_1_SW0 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X58Y8"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => timer_inst_tenths_cnt(0),
      O => N168
    );
  mode_debounce_Q1 : X_FF
    generic map(
      LOC => "SLICE_X61Y18",
      INIT => '0'
    )
    port map (
      I => mode_debounce_Q2_DYMUX_8638,
      CE => VCC,
      CLK => mode_debounce_Q2_CLKINV_8636,
      SET => GND,
      RST => GND,
      O => mode_debounce_Q1_3222
    );
  lcd_cntrl_inst_sf_d_temp_0_1731 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_152_0,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_sf_d_temp_0_103_3230,
      O => lcd_cntrl_inst_sf_d_temp_0_173
    );
  lcd_cntrl_inst_clock_flag_mux000025 : X_LUT4
    generic map(
      INIT => X"F555",
      LOC => "SLICE_X25Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_mode_state_3073,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_clock_flag_mux000012_3221,
      ADR3 => lcd_cntrl_inst_clock_flag_3097,
      O => lcd_cntrl_inst_clock_flag_mux0000
    );
  lcd_cntrl_inst_clock_flag_mux000012 : X_LUT4
    generic map(
      INIT => X"FFA2",
      LOC => "SLICE_X25Y42"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      ADR1 => lcd_cntrl_inst_state_cmp_eq0001_0,
      ADR2 => lcd_cntrl_inst_lap_flag_3098,
      ADR3 => lcd_cntrl_inst_clock_flag_mux00002_0,
      O => lcd_cntrl_inst_clock_flag_mux000012_pack_2
    );
  mode_debounce_Q2 : X_FF
    generic map(
      LOC => "SLICE_X61Y18",
      INIT => '0'
    )
    port map (
      I => mode_debounce_Q2_DXMUX_8643,
      CE => VCC,
      CLK => mode_debounce_Q2_CLKINV_8636,
      SET => GND,
      RST => GND,
      O => mode_debounce_Q2_3223
    );
  lcd_cntrl_inst_clock_flag : X_SFF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_clock_flag_DXMUX_8625,
      CE => lcd_cntrl_inst_clock_flag_CEINV_8607,
      CLK => lcd_cntrl_inst_clock_flag_CLKINV_8608,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_clock_flag_SRINV_8609,
      O => lcd_cntrl_inst_clock_flag_3097
    );
  timer_inst_tens_cnt_mux0002_15_33 : X_LUT4
    generic map(
      INIT => X"0C88",
      LOC => "SLICE_X53Y5"
    )
    port map (
      ADR0 => N143_0,
      ADR1 => timer_inst_N3,
      ADR2 => N144_0,
      ADR3 => timer_inst_tens_cnt_and0000,
      O => timer_inst_tens_cnt_mux0002_15_33_8701
    );
  timer_inst_mins_cnt_mux0002_17_1 : X_LUT4
    generic map(
      INIT => X"1030",
      LOC => "SLICE_X53Y5"
    )
    port map (
      ADR0 => timer_inst_tc_4_cmp_eq0000,
      ADR1 => timer_inst_mins_cnt_and0001,
      ADR2 => timer_inst_mins_cnt(1),
      ADR3 => timer_inst_tens_cnt_and0000,
      O => timer_inst_mins_cnt_mux0002_17_1_8694
    );
  lcd_cntrl_inst_sf_d_temp_2_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y26"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd14_3000,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd31_2860,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd2_3277,
      ADR3 => N8,
      O => lcd_cntrl_inst_N12
    );
  mode_debounce_Q3 : X_FF
    generic map(
      LOC => "SLICE_X59Y21",
      INIT => '0'
    )
    port map (
      I => mode_debounce_Q3_DYMUX_8652,
      CE => VCC,
      CLK => mode_debounce_Q3_CLKINV_8650,
      SET => GND,
      RST => GND,
      O => mode_debounce_Q3_3224
    );
  lcd_cntrl_inst_sf_d_temp_0_103 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_0_32_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_8_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_0_2_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_0_80_0,
      O => lcd_cntrl_inst_sf_d_temp_0_103_pack_1
    );
  lcd_cntrl_inst_clock_flag_mux0000119 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd14_3000,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd12_3010,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd26_3006,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd33_3001,
      O => lcd_cntrl_inst_clock_flag_mux0000119_8730
    );
  timer_inst_tenths_cnt_mux0002_7_34_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X58Y8"
    )
    port map (
      ADR0 => timer_inst_tenths_cnt(1),
      ADR1 => timer_inst_tenths_cnt(2),
      ADR2 => VCC,
      ADR3 => timer_inst_tenths_cnt(0),
      O => N146
    );
  lcd_cntrl_inst_clock_flag_mux0000114 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X27Y32"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd42_3099,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd32_3069,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd40_3013,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd43_3096,
      O => lcd_cntrl_inst_clock_flag_mux0000114_8713
    );
  strtstop_debounce_Q1 : X_FF
    generic map(
      LOC => "SLICE_X59Y13",
      INIT => '0'
    )
    port map (
      I => strtstop_debounce_Q2_DYMUX_8852,
      CE => VCC,
      CLK => strtstop_debounce_Q2_CLKINV_8850,
      SET => GND,
      RST => GND,
      O => strtstop_debounce_Q1_3243
    );
  lcd_cntrl_inst_sf_d_temp_0_220 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X30Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd21_2852,
      ADR2 => timer_inst_ones_cnt(1),
      ADR3 => timer_inst_ones_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_0_220_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_0_201 : X_LUT4
    generic map(
      INIT => X"FEF0",
      LOC => "SLICE_X32Y27"
    )
    port map (
      ADR0 => timer_inst_mins_cnt(1),
      ADR1 => timer_inst_mins_cnt(2),
      ADR2 => timer_inst_mins_cnt(0),
      ADR3 => timer_inst_mins_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_0_201_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_0_117 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_tenths(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR2 => lcd_cntrl_inst_lap_tenths(2),
      ADR3 => lcd_cntrl_inst_lap_tenths(0),
      O => lcd_cntrl_inst_sf_d_temp_0_117_8875
    );
  lcd_cntrl_inst_sf_d_0 : X_SFF
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_0_DXMUX_8768,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_0_CLKINV_8750,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_sf_d_0_SRINV_8751,
      SRST => GND,
      O => lcd_cntrl_inst_sf_d(0)
    );
  lcd_cntrl_inst_sf_d_temp_0_136 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X28Y20"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_tens(2),
      ADR1 => lcd_cntrl_inst_lap_tens(3),
      ADR2 => lcd_cntrl_inst_lap_tens(0),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      O => lcd_cntrl_inst_sf_d_temp_0_136_8932
    );
  lcd_cntrl_inst_sf_d_temp_0_142 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X26Y21"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_min(2),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      ADR2 => lcd_cntrl_inst_lap_min(0),
      ADR3 => lcd_cntrl_inst_lap_min(3),
      O => lcd_cntrl_inst_sf_d_temp_0_142_pack_1
    );
  strtstop_debounce_Q3 : X_FF
    generic map(
      LOC => "SLICE_X63Y13",
      INIT => '0'
    )
    port map (
      I => strtstop_debounce_Q3_DYMUX_8914,
      CE => VCC,
      CLK => strtstop_debounce_Q3_CLKINV_8912,
      SET => GND,
      RST => GND,
      O => strtstop_debounce_Q3_3253
    );
  lcd_cntrl_inst_sf_d_temp_4_106 : X_LUT4
    generic map(
      INIT => X"1F00",
      LOC => "SLICE_X28Y20"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_tens(2),
      ADR1 => lcd_cntrl_inst_lap_tens(1),
      ADR2 => lcd_cntrl_inst_lap_tens(3),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      O => lcd_cntrl_inst_sf_d_temp_4_106_8939
    );
  lcd_cntrl_inst_sf_d_temp_0_32 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X32Y27"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_0_201_3236,
      ADR1 => lcd_cntrl_inst_N16_0,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd27_2856,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd30_3095,
      O => lcd_cntrl_inst_sf_d_temp_0_32_8794
    );
  lcd_cntrl_inst_sf_d_temp_0_123 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      ADR1 => lcd_cntrl_inst_lap_ones(2),
      ADR2 => lcd_cntrl_inst_lap_ones(3),
      ADR3 => lcd_cntrl_inst_lap_ones(0),
      O => lcd_cntrl_inst_sf_d_temp_0_123_8810
    );
  lcd_cntrl_inst_sf_d_temp_0_250 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_lap_ones(1),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd7_2847,
      ADR3 => lcd_cntrl_inst_lap_ones(3),
      O => lcd_cntrl_inst_sf_d_temp_0_250_8818
    );
  lcd_cntrl_inst_sf_d_temp_0_221 : X_LUT4
    generic map(
      INIT => X"ECCC",
      LOC => "SLICE_X30Y24"
    )
    port map (
      ADR0 => timer_inst_tens_cnt(3),
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_220_3241,
      ADR2 => timer_inst_tens_cnt(1),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd23_2857,
      O => lcd_cntrl_inst_sf_d_temp_0_221_8842
    );
  lcd_cntrl_inst_sf_d_temp_4_228 : X_LUT4
    generic map(
      INIT => X"444C",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_tenths(3),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR2 => lcd_cntrl_inst_lap_tenths(1),
      ADR3 => lcd_cntrl_inst_lap_tenths(2),
      O => lcd_cntrl_inst_sf_d_temp_4_228_8882
    );
  lcd_cntrl_inst_sf_d_temp_0_152 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X26Y21"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_0_117_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_123_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_0_142_3250,
      ADR3 => lcd_cntrl_inst_sf_d_temp_0_136_0,
      O => lcd_cntrl_inst_sf_d_temp_0_152_8906
    );
  strtstop_debounce_Q2 : X_FF
    generic map(
      LOC => "SLICE_X59Y13",
      INIT => '0'
    )
    port map (
      I => strtstop_debounce_Q2_DXMUX_8857,
      CE => VCC,
      CLK => strtstop_debounce_Q2_CLKINV_8850,
      SET => GND,
      RST => GND,
      O => strtstop_debounce_Q2_3244
    );
  lcd_cntrl_inst_sf_d_temp_4_124 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X31Y27"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd43_3096,
      ADR1 => lcd_cntrl_inst_N6,
      ADR2 => lcd_cntrl_inst_N13_0,
      ADR3 => VCC,
      O => lcd_cntrl_inst_N111_pack_2
    );
  lcd_cntrl_inst_sf_d_3 : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_sf_d_3_DYMUX_9085,
      CE => VCC,
      CLK => lcd_cntrl_inst_sf_d_3_CLKINV_9075,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_sf_d(3)
    );
  lcd_cntrl_inst_sf_d_temp_0_239 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X29Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_tenths(1),
      ADR1 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_lap_tenths(3),
      O => lcd_cntrl_inst_sf_d_temp_0_239_9028
    );
  lcd_cntrl_inst_sf_d_temp_4_120 : X_LUT4
    generic map(
      INIT => X"1F00",
      LOC => "SLICE_X26Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_min(2),
      ADR1 => lcd_cntrl_inst_lap_min(1),
      ADR2 => lcd_cntrl_inst_lap_min(3),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      O => lcd_cntrl_inst_sf_d_temp_4_120_9011
    );
  lcd_cntrl_inst_sf_d_temp_0_261 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y22"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_0_250_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_253_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_0_242_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_0_239_0,
      O => lcd_cntrl_inst_sf_d_temp_0_261_pack_1
    );
  lcd_cntrl_inst_sf_d_temp_0_253 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X26Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd13_2841,
      ADR1 => lcd_cntrl_inst_lap_min(1),
      ADR2 => lcd_cntrl_inst_lap_min(3),
      ADR3 => VCC,
      O => lcd_cntrl_inst_sf_d_temp_0_253_9004
    );
  lcd_cntrl_inst_clock_flag_mux0000111117 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X29Y28"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd34_3005,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd29_3094,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd30_3095,
      O => lcd_cntrl_inst_clock_flag_mux0000111117_9035
    );
  lcd_cntrl_inst_sf_d_temp_2_61 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X28Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd3_2851,
      ADR1 => lcd_cntrl_inst_lap_tenths(2),
      ADR2 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      ADR3 => lcd_cntrl_inst_lap_tens(2),
      O => lcd_cntrl_inst_sf_d_temp_2_61_8963
    );
  lcd_cntrl_inst_sf_d_temp_0_242 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X28Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd9_2842,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_lap_tens(1),
      ADR3 => lcd_cntrl_inst_lap_tens(3),
      O => lcd_cntrl_inst_sf_d_temp_0_242_8956
    );
  lcd_cntrl_inst_sf_d_temp_4_200 : X_LUT4
    generic map(
      INIT => X"5700",
      LOC => "SLICE_X31Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_hundredths(3),
      ADR1 => lcd_cntrl_inst_lap_hundredths(2),
      ADR2 => lcd_cntrl_inst_lap_hundredths(1),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      O => lcd_cntrl_inst_sf_d_temp_4_200_9052
    );
  lcd_cntrl_inst_sf_d_temp_0_8 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X31Y23"
    )
    port map (
      ADR0 => lcd_cntrl_inst_lap_hundredths(3),
      ADR1 => lcd_cntrl_inst_lap_hundredths(0),
      ADR2 => lcd_cntrl_inst_lap_hundredths(2),
      ADR3 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      O => lcd_cntrl_inst_sf_d_temp_0_8_9059
    );
  lcd_cntrl_inst_sf_d_temp_0_272 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X28Y22"
    )
    port map (
      ADR0 => lcd_cntrl_inst_sf_d_temp_0_221_0,
      ADR1 => lcd_cntrl_inst_sf_d_temp_0_28_0,
      ADR2 => lcd_cntrl_inst_sf_d_temp_0_25_0,
      ADR3 => lcd_cntrl_inst_sf_d_temp_0_261_3260,
      O => lcd_cntrl_inst_N71
    );
  lcd_cntrl_inst_state_FSM_FFd33_In10 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => mode_control_0,
      ADR2 => lcd_cntrl_inst_timer_flag_3071,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      O => lcd_cntrl_inst_state_FSM_FFd33_In10_pack_1
    );
  lcd_cntrl_inst_count_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y38",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_5_DXMUX_10829,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_5_CLKINV_10822,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(5)
    );
  lcd_cntrl_inst_count_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_1_DYMUX_10792,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_1_CLKINV_10790,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(0)
    );
  timer_inst_ones_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y5",
      INIT => '0'
    )
    port map (
      I => timer_inst_ones_cnt_0_DXMUX_10777,
      CE => timer_inst_ones_cnt_0_CEINV_10759,
      CLK => timer_inst_ones_cnt_0_CLKINV_10760,
      SET => GND,
      RST => timer_inst_ones_cnt_0_FFX_RSTAND_10783,
      O => timer_inst_ones_cnt(0)
    );
  timer_inst_ones_cnt_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X55Y5",
      PATHPULSE => 592 ps
    )
    port map (
      I => timer_state_rst_3056,
      O => timer_inst_ones_cnt_0_FFX_RSTAND_10783
    );
  lcd_cntrl_inst_state_FSM_FFd33_In331 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => lcd_cntrl_inst_state_FSM_FFd1_2862,
      ADR1 => lcd_cntrl_inst_state_FSM_FFd34_3005,
      ADR2 => lcd_cntrl_inst_state_FSM_FFd28_3195,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd33_In10_3312,
      O => lcd_cntrl_inst_state_FSM_FFd33_In33
    );
  lcd_cntrl_inst_count_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_3_DYMUX_10808,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_3_CLKINV_10806,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(2)
    );
  lcd_cntrl_inst_count_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_3_DXMUX_10813,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_3_CLKINV_10806,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(3)
    );
  lcd_cntrl_inst_count_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_7_DYMUX_10840,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_7_CLKINV_10838,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(6)
    );
  lcd_cntrl_inst_count_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_9_DYMUX_10856,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_9_CLKINV_10854,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(8)
    );
  lcd_cntrl_inst_count_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_1_DXMUX_10797,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_1_CLKINV_10790,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(1)
    );
  lcd_cntrl_inst_count_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y39",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_7_DXMUX_10845,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_7_CLKINV_10838,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(7)
    );
  lcd_cntrl_inst_count_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_9_DXMUX_10861,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_9_CLKINV_10854,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(9)
    );
  lcd_cntrl_inst_count_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y38",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_count_5_DYMUX_10824,
      CE => VCC,
      CLK => lcd_cntrl_inst_count_5_CLKINV_10822,
      SET => GND,
      RST => GND,
      O => lcd_cntrl_inst_count(4)
    );
  lcd_cntrl_inst_state_FSM_FFd11 : X_SFF
    generic map(
      LOC => "SLICE_X28Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd12_DYMUX_10924,
      CE => lcd_cntrl_inst_state_FSM_FFd12_CEINV_10920,
      CLK => lcd_cntrl_inst_state_FSM_FFd12_CLKINV_10921,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd12_SRINV_10922,
      O => lcd_cntrl_inst_state_FSM_FFd11_3194
    );
  lcd_cntrl_inst_state_FSM_FFd23 : X_SFF
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd24_DYMUX_11029,
      CE => lcd_cntrl_inst_state_FSM_FFd24_CEINV_11025,
      CLK => lcd_cntrl_inst_state_FSM_FFd24_CLKINV_11026,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd24_SRINV_11027,
      O => lcd_cntrl_inst_state_FSM_FFd23_2857
    );
  lcd_cntrl_inst_state_FSM_FFd24 : X_SFF
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd24_DXMUX_11036,
      CE => lcd_cntrl_inst_state_FSM_FFd24_CEINV_11025,
      CLK => lcd_cntrl_inst_state_FSM_FFd24_CLKINV_11026,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd24_SRINV_11027,
      O => lcd_cntrl_inst_state_FSM_FFd24_3281
    );
  lcd_cntrl_inst_state_FSM_FFd14 : X_SFF
    generic map(
      LOC => "SLICE_X27Y30",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd13_DYMUX_10957,
      CE => lcd_cntrl_inst_state_FSM_FFd13_CEINV_10947,
      CLK => lcd_cntrl_inst_state_FSM_FFd13_CLKINV_10948,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd13_SRINV_10949,
      O => lcd_cntrl_inst_state_FSM_FFd14_3000
    );
  timer_inst_tc_1_or00001_SW0 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X55Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => timer_inst_hundredths_cnt(2),
      ADR2 => VCC,
      ADR3 => timer_inst_hundredths_cnt(1),
      O => N127
    );
  lcd_cntrl_inst_state_FSM_FFd15 : X_SFF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd16_DYMUX_11005,
      CE => lcd_cntrl_inst_state_FSM_FFd16_CEINV_11001,
      CLK => lcd_cntrl_inst_state_FSM_FFd16_CLKINV_11002,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd16_SRINV_11003,
      O => lcd_cntrl_inst_state_FSM_FFd15_2843
    );
  lcd_cntrl_inst_state_FSM_FFd21 : X_SFF
    generic map(
      LOC => "SLICE_X31Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd22_DYMUX_10981,
      CE => lcd_cntrl_inst_state_FSM_FFd22_CEINV_10977,
      CLK => lcd_cntrl_inst_state_FSM_FFd22_CLKINV_10978,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd22_SRINV_10979,
      O => lcd_cntrl_inst_state_FSM_FFd21_2852
    );
  lcd_cntrl_inst_state_FSM_FFd16 : X_SFF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd16_DXMUX_11012,
      CE => lcd_cntrl_inst_state_FSM_FFd16_CEINV_11001,
      CLK => lcd_cntrl_inst_state_FSM_FFd16_CLKINV_11002,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd16_SRINV_11003,
      O => lcd_cntrl_inst_state_FSM_FFd16_3280
    );
  lcd_cntrl_inst_state_FSM_FFd13 : X_SFF
    generic map(
      LOC => "SLICE_X27Y30",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd13_DXMUX_10964,
      CE => lcd_cntrl_inst_state_FSM_FFd13_CEINV_10947,
      CLK => lcd_cntrl_inst_state_FSM_FFd13_CLKINV_10948,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd13_SRINV_10949,
      O => lcd_cntrl_inst_state_FSM_FFd13_2841
    );
  lcd_cntrl_inst_state_FSM_FFd22 : X_SFF
    generic map(
      LOC => "SLICE_X31Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd22_DXMUX_10988,
      CE => lcd_cntrl_inst_state_FSM_FFd22_CEINV_10977,
      CLK => lcd_cntrl_inst_state_FSM_FFd22_CLKINV_10978,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd22_SRINV_10979,
      O => lcd_cntrl_inst_state_FSM_FFd22_3289
    );
  lcd_cntrl_inst_state_FSM_FFd12 : X_SFF
    generic map(
      LOC => "SLICE_X28Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd12_DXMUX_10931,
      CE => lcd_cntrl_inst_state_FSM_FFd12_CEINV_10920,
      CLK => lcd_cntrl_inst_state_FSM_FFd12_CLKINV_10921,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd12_SRINV_10922,
      O => lcd_cntrl_inst_state_FSM_FFd12_3010
    );
  lcd_cntrl_inst_state_FSM_FFd14_In1 : X_LUT4
    generic map(
      INIT => X"D000",
      LOC => "SLICE_X27Y30"
    )
    port map (
      ADR0 => lcd_cntrl_inst_clock_flag_3097,
      ADR1 => lcd_cntrl_inst_lap_flag_3098,
      ADR2 => mode_control_0,
      ADR3 => lcd_cntrl_inst_state_FSM_FFd15_2843,
      O => lcd_cntrl_inst_state_FSM_FFd14_In1_10954
    );
  lcd_cntrl_inst_state_FSM_FFd33 : X_SFF
    generic map(
      LOC => "SLICE_X29Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd33_DXMUX_10895,
      CE => lcd_cntrl_inst_state_FSM_FFd33_CEINV_10877,
      CLK => lcd_cntrl_inst_state_FSM_FFd33_CLKINV_10878,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd33_SRINV_10879,
      O => lcd_cntrl_inst_state_FSM_FFd33_3001
    );
  lcd_cntrl_inst_state_FSM_FFd19 : X_SFF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd20_DYMUX_11125,
      CE => lcd_cntrl_inst_state_FSM_FFd20_CEINV_11121,
      CLK => lcd_cntrl_inst_state_FSM_FFd20_CLKINV_11122,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd20_SRINV_11123,
      O => lcd_cntrl_inst_state_FSM_FFd19_3198
    );
  lcd_cntrl_inst_state_FSM_FFd25 : X_SFF
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd26_DYMUX_11101,
      CE => lcd_cntrl_inst_state_FSM_FFd26_CEINV_11097,
      CLK => lcd_cntrl_inst_state_FSM_FFd26_CLKINV_11098,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd26_SRINV_11099,
      O => lcd_cntrl_inst_state_FSM_FFd25_3199
    );
  lcd_cntrl_inst_state_FSM_FFd17 : X_SFF
    generic map(
      LOC => "SLICE_X29Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd18_DYMUX_11077,
      CE => lcd_cntrl_inst_state_FSM_FFd18_CEINV_11073,
      CLK => lcd_cntrl_inst_state_FSM_FFd18_CLKINV_11074,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd18_SRINV_11075,
      O => lcd_cntrl_inst_state_FSM_FFd17_2848
    );
  lcd_cntrl_inst_state_FSM_FFd32 : X_SFF
    generic map(
      LOC => "SLICE_X30Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd32_DXMUX_11060,
      CE => lcd_cntrl_inst_state_FSM_FFd32_CEINV_11049,
      CLK => lcd_cntrl_inst_state_FSM_FFd32_CLKINV_11050,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd32_SRINV_11051,
      O => lcd_cntrl_inst_state_FSM_FFd32_3069
    );
  lcd_cntrl_inst_state_FSM_FFd26 : X_SFF
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd26_DXMUX_11108,
      CE => lcd_cntrl_inst_state_FSM_FFd26_CEINV_11097,
      CLK => lcd_cntrl_inst_state_FSM_FFd26_CLKINV_11098,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd26_SRINV_11099,
      O => lcd_cntrl_inst_state_FSM_FFd26_3006
    );
  lcd_cntrl_inst_state_FSM_FFd18 : X_SFF
    generic map(
      LOC => "SLICE_X29Y32",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd18_DXMUX_11084,
      CE => lcd_cntrl_inst_state_FSM_FFd18_CEINV_11073,
      CLK => lcd_cntrl_inst_state_FSM_FFd18_CLKINV_11074,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd18_SRINV_11075,
      O => lcd_cntrl_inst_state_FSM_FFd18_2995
    );
  lcd_cntrl_inst_state_FSM_FFd20 : X_SFF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd20_DXMUX_11132,
      CE => lcd_cntrl_inst_state_FSM_FFd20_CEINV_11121,
      CLK => lcd_cntrl_inst_state_FSM_FFd20_CLKINV_11122,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd20_SRINV_11123,
      O => lcd_cntrl_inst_state_FSM_FFd20_2997
    );
  lcd_cntrl_inst_state_FSM_FFd27 : X_SFF
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd28_DYMUX_11149,
      CE => lcd_cntrl_inst_state_FSM_FFd28_CEINV_11145,
      CLK => lcd_cntrl_inst_state_FSM_FFd28_CLKINV_11146,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd28_SRINV_11147,
      O => lcd_cntrl_inst_state_FSM_FFd27_2856
    );
  lcd_cntrl_inst_state_FSM_FFd28 : X_SFF
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd28_DXMUX_11156,
      CE => lcd_cntrl_inst_state_FSM_FFd28_CEINV_11145,
      CLK => lcd_cntrl_inst_state_FSM_FFd28_CLKINV_11146,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd28_SRINV_11147,
      O => lcd_cntrl_inst_state_FSM_FFd28_3195
    );
  lcd_cntrl_inst_state_FSM_FFd31 : X_SFF
    generic map(
      LOC => "SLICE_X30Y31",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd32_DYMUX_11053,
      CE => lcd_cntrl_inst_state_FSM_FFd32_CEINV_11049,
      CLK => lcd_cntrl_inst_state_FSM_FFd32_CLKINV_11050,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd32_SRINV_11051,
      O => lcd_cntrl_inst_state_FSM_FFd31_2860
    );
  lcd_cntrl_inst_state_FSM_FFd44 : X_SFF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd44_DYMUX_11171,
      CE => lcd_cntrl_inst_state_FSM_FFd44_CEINV_11167,
      CLK => lcd_cntrl_inst_state_FSM_FFd44_CLKINV_11168,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd44_SRINV_11169,
      O => lcd_cntrl_inst_state_FSM_FFd44_3216
    );
  lcd_cntrl_inst_state_FSM_FFd30 : X_SFF
    generic map(
      LOC => "SLICE_X28Y27",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd30_DXMUX_11195,
      CE => lcd_cntrl_inst_state_FSM_FFd30_CEINV_11184,
      CLK => lcd_cntrl_inst_state_FSM_FFd30_CLKINV_11185,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd30_SRINV_11186,
      O => lcd_cntrl_inst_state_FSM_FFd30_3095
    );
  lcd_cntrl_inst_state_FSM_FFd29 : X_SFF
    generic map(
      LOC => "SLICE_X28Y27",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd30_DYMUX_11188,
      CE => lcd_cntrl_inst_state_FSM_FFd30_CEINV_11184,
      CLK => lcd_cntrl_inst_state_FSM_FFd30_CLKINV_11185,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd30_SRINV_11186,
      O => lcd_cntrl_inst_state_FSM_FFd29_3094
    );
  lcd_cntrl_inst_state_FSM_FFd47 : X_SFF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '1'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd47_DYMUX_11273,
      CE => lcd_cntrl_inst_state_FSM_FFd47_CEINV_11269,
      CLK => lcd_cntrl_inst_state_FSM_FFd47_CLKINV_11270,
      SET => GND,
      RST => GND,
      SSET => lcd_cntrl_inst_state_FSM_FFd47_SRINV_11271,
      SRST => GND,
      O => lcd_cntrl_inst_state_FSM_FFd47_3148
    );
  lcd_cntrl_inst_state_FSM_FFd37 : X_SFF
    generic map(
      LOC => "SLICE_X31Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd38_DYMUX_11212,
      CE => lcd_cntrl_inst_state_FSM_FFd38_CEINV_11208,
      CLK => lcd_cntrl_inst_state_FSM_FFd38_CLKINV_11209,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd38_SRINV_11210,
      O => lcd_cntrl_inst_state_FSM_FFd37_3015
    );
  lcd_cntrl_inst_state_FSM_FFd40 : X_SFF
    generic map(
      LOC => "SLICE_X29Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd40_DXMUX_11258,
      CE => lcd_cntrl_inst_state_FSM_FFd40_CEINV_11247,
      CLK => lcd_cntrl_inst_state_FSM_FFd40_CLKINV_11248,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd40_SRINV_11249,
      O => lcd_cntrl_inst_state_FSM_FFd40_3013
    );
  lcd_cntrl_inst_state_FSM_FFd45 : X_SFF
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd45_DYMUX_11234,
      CE => lcd_cntrl_inst_state_FSM_FFd45_CEINV_11230,
      CLK => lcd_cntrl_inst_state_FSM_FFd45_CLKINV_11231,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd45_SRINV_11232,
      O => lcd_cntrl_inst_state_FSM_FFd45_3285
    );
  lcd_cntrl_inst_state_FSM_FFd38 : X_SFF
    generic map(
      LOC => "SLICE_X31Y29",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd38_DXMUX_11219,
      CE => lcd_cntrl_inst_state_FSM_FFd38_CEINV_11208,
      CLK => lcd_cntrl_inst_state_FSM_FFd38_CLKINV_11209,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd38_SRINV_11210,
      O => lcd_cntrl_inst_state_FSM_FFd38_3068
    );
  lcd_cntrl_inst_state_FSM_FFd39 : X_SFF
    generic map(
      LOC => "SLICE_X29Y33",
      INIT => '0'
    )
    port map (
      I => lcd_cntrl_inst_state_FSM_FFd40_DYMUX_11251,
      CE => lcd_cntrl_inst_state_FSM_FFd40_CEINV_11247,
      CLK => lcd_cntrl_inst_state_FSM_FFd40_CLKINV_11248,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => lcd_cntrl_inst_state_FSM_FFd40_SRINV_11249,
      O => lcd_cntrl_inst_state_FSM_FFd39_3115
    );
  clk_divider_cnt_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(8),
      ADR3 => VCC,
      O => clk_divider_cnt_8_F
    );
  clk_divider_cnt_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(9),
      O => clk_divider_cnt_8_G
    );
  clk_divider_cnt_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_0_G
    );
  clk_divider_cnt_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y66"
    )
    port map (
      ADR0 => clk_divider_cnt(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_2_F
    );
  clk_divider_cnt_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(3),
      O => clk_divider_cnt_2_G
    );
  clk_divider_cnt_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y68"
    )
    port map (
      ADR0 => clk_divider_cnt(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_6_F
    );
  clk_divider_cnt_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_6_G
    );
  clk_divider_cnt_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_4_F
    );
  clk_divider_cnt_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(5),
      ADR3 => VCC,
      O => clk_divider_cnt_4_G
    );
  clk_divider_cnt_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y70"
    )
    port map (
      ADR0 => clk_divider_cnt(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_10_F
    );
  clk_divider_cnt_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(11),
      O => clk_divider_cnt_10_G
    );
  clk_divider_cnt_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y74"
    )
    port map (
      ADR0 => clk_divider_cnt(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_18_F
    );
  clk_divider_cnt_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(19),
      O => clk_divider_cnt_18_G
    );
  clk_divider_cnt_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_16_F
    );
  clk_divider_cnt_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(17),
      ADR3 => VCC,
      O => clk_divider_cnt_16_G
    );
  clk_divider_cnt_20_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(20),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_20_F
    );
  clk_divider_cnt_20_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(21),
      ADR3 => VCC,
      O => clk_divider_cnt_20_G
    );
  clk_divider_cnt_22_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(22),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_22_F
    );
  clk_divider_cnt_22_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(23),
      ADR3 => VCC,
      O => clk_divider_cnt_22_G
    );
  clk_divider_cnt_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_12_F
    );
  clk_divider_cnt_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(13),
      ADR3 => VCC,
      O => clk_divider_cnt_12_G
    );
  clk_divider_cnt_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y72"
    )
    port map (
      ADR0 => clk_divider_cnt(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_14_F
    );
  clk_divider_cnt_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(15),
      O => clk_divider_cnt_14_G
    );
  lcd_cntrl_inst_count_temp_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(2),
      O => lcd_cntrl_inst_count_temp_2_F
    );
  lcd_cntrl_inst_count_temp_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y33"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_2_G
    );
  clk_divider_cnt_26_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y78"
    )
    port map (
      ADR0 => clk_divider_cnt(26),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_26_F
    );
  clk_divider_cnt_26_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(27),
      O => clk_divider_cnt_26_G
    );
  clk_divider_cnt_30_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y80"
    )
    port map (
      ADR0 => clk_divider_cnt(30),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_30_F
    );
  clk_divider_cnt_24_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X29Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => clk_divider_cnt(24),
      O => clk_divider_cnt_24_F
    );
  clk_divider_cnt_24_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y77"
    )
    port map (
      ADR0 => clk_divider_cnt(25),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_24_G
    );
  clk_divider_cnt_28_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X29Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clk_divider_cnt(28),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_divider_cnt_28_F
    );
  clk_divider_cnt_28_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X29Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => clk_divider_cnt(29),
      ADR3 => VCC,
      O => clk_divider_cnt_28_G
    );
  lcd_cntrl_inst_count_temp_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X22Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count_temp(1),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_0_G
    );
  lcd_cntrl_inst_count_temp_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(4),
      O => lcd_cntrl_inst_count_temp_4_F
    );
  lcd_cntrl_inst_count_temp_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_4_G
    );
  lcd_cntrl_inst_count_temp_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y35"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_6_F
    );
  lcd_cntrl_inst_count_temp_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X22Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count_temp(7),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_6_G
    );
  lcd_cntrl_inst_count_temp_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(14),
      O => lcd_cntrl_inst_count_temp_14_F
    );
  lcd_cntrl_inst_count_temp_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y39"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(15),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_14_G
    );
  lcd_cntrl_inst_count_temp_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_10_F
    );
  lcd_cntrl_inst_count_temp_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X22Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count_temp(11),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_10_G
    );
  lcd_cntrl_inst_count_temp_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_12_F
    );
  lcd_cntrl_inst_count_temp_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X22Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count_temp(13),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_12_G
    );
  lcd_cntrl_inst_count_temp_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(16),
      O => lcd_cntrl_inst_count_temp_16_F
    );
  lcd_cntrl_inst_count_temp_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(17),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_16_G
    );
  lcd_cntrl_inst_count_temp_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_8_F
    );
  lcd_cntrl_inst_count_temp_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(9),
      O => lcd_cntrl_inst_count_temp_8_G
    );
  lcd_cntrl_inst_count_temp_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(18),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_18_F
    );
  lcd_cntrl_inst_count_temp_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y41"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_18_G
    );
  lcd_cntrl_inst_count_temp_22_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X22Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count_temp(22),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_22_F
    );
  lcd_cntrl_inst_count_temp_22_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y43"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(23),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_22_G
    );
  lcd_cntrl_inst_count_temp_28_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(28),
      O => lcd_cntrl_inst_count_temp_28_F
    );
  lcd_cntrl_inst_count_temp_28_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X22Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => lcd_cntrl_inst_count_temp(29),
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_28_G
    );
  lcd_cntrl_inst_count_temp_26_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(26),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_26_F
    );
  lcd_cntrl_inst_count_temp_26_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(27),
      O => lcd_cntrl_inst_count_temp_26_G
    );
  lcd_cntrl_inst_count_temp_20_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X22Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => lcd_cntrl_inst_count_temp(20),
      O => lcd_cntrl_inst_count_temp_20_F
    );
  lcd_cntrl_inst_count_temp_20_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(21),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_20_G
    );
  lcd_cntrl_inst_count_temp_24_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(24),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_24_F
    );
  lcd_cntrl_inst_count_temp_24_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X22Y44"
    )
    port map (
      ADR0 => lcd_cntrl_inst_count_temp(25),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_24_G
    );
  lcd_cntrl_inst_count_temp_30_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X22Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => lcd_cntrl_inst_count_temp(30),
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_count_temp_30_F
    );
  sf_d_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(2),
      O => sf_d_2_O
    );
  sf_d_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(0),
      O => sf_d_0_O
    );
  sf_d_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD245",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(3),
      O => sf_d_3_O
    );
  lcd_e_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD278",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_e_OBUF_9462,
      O => lcd_e_O
    );
  sf_d_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(1),
      O => sf_d_1_O
    );
  sf_d_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(4),
      O => sf_d_4_O
    );
  sf_d_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(5),
      O => sf_d_5_O
    );
  sf_d_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(6),
      O => sf_d_6_O
    );
  sf_d_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_cntrl_inst_sf_d(7),
      O => sf_d_7_O
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD214",
      PATHPULSE => 592 ps
    )
    port map (
      I => reset_IBUF_6296,
      O => reset_IBUF_0
    );
  lcd_rs_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD235",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_rs_OBUF_8445,
      O => lcd_rs_O
    );
  lcd_rw_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 592 ps
    )
    port map (
      I => lcd_rw_OUTPUT_OFF_O1INV_6312,
      O => lcd_rw_O
    );
  lcd_rw_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 592 ps
    )
    port map (
      I => '0',
      O => lcd_rw_OUTPUT_OFF_O1INV_6312
    );
  lcd_cntrl_inst_sf_d_temp_6_15_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X32Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_sf_d_temp_6_15_F
    );
  timer_inst_tenths_cnt_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X51Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => timer_inst_tenths_cnt_2_F
    );
  timer_inst_tens_cnt_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X54Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => timer_inst_tens_cnt_0_F
    );
  lcd_cntrl_inst_sf_d_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X26Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_sf_d_6_F
    );
  lcd_cntrl_inst_sf_d_7_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X32Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => lcd_cntrl_inst_sf_d_7_F
    );
  NlwBufferBlock_Inst_dcm1_DCM_SP_INST_RST : X_BUF
    generic map(
      PATHPULSE => 592 ps
    )
    port map (
      I => Inst_dcm1_DCM_SP_INST_ML_NEW_OUT_0,
      O => NlwBufferSignal_Inst_dcm1_DCM_SP_INST_RST
    );
  NlwBlock_stopwatch_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_stopwatch_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_timer_inst_hundredths_cnt_2_CLK : X_INV
    port map (
      I => timer_inst_hundredths_cnt_2_CLKINVNOT,
      O => NlwInverterSignal_timer_inst_hundredths_cnt_2_CLK
    );
  NlwInverterBlock_timer_inst_hundredths_cnt_1_CLK : X_INV
    port map (
      I => timer_inst_hundredths_cnt_1_CLKINVNOT,
      O => NlwInverterSignal_timer_inst_hundredths_cnt_1_CLK
    );
  NlwInverterBlock_timer_inst_hundredths_cnt_3_CLK : X_INV
    port map (
      I => timer_inst_hundredths_cnt_3_CLKINVNOT,
      O => NlwInverterSignal_timer_inst_hundredths_cnt_3_CLK
    );
  NlwInverterBlock_timer_inst_hundredths_cnt_0_CLK : X_INV
    port map (
      I => timer_inst_hundredths_cnt_1_CLKINVNOT,
      O => NlwInverterSignal_timer_inst_hundredths_cnt_0_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

