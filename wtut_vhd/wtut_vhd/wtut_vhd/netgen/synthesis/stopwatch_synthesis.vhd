--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: stopwatch_synthesis.vhd
-- /___/   /\     Timestamp: Sat Jul 15 14:11:47 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm stopwatch -w -dir netgen/synthesis -ofmt vhdl -sim stopwatch.ngc stopwatch_synthesis.vhd 
-- Device	: xc6slx4l-1L-tqg144
-- Input file	: stopwatch.ngc
-- Output file	: C:\Xilinx\14.7\ISE_DS\ISE\ISEexamples\wtut_vhd\wtut_vhd\wtut_vhd\netgen\synthesis\stopwatch_synthesis.vhd
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity stopwatch is
  port (
    clk : in STD_LOGIC := 'X'; 
    lap_load : in STD_LOGIC := 'X'; 
    mode : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    strtstop : in STD_LOGIC := 'X'; 
    lcd_e : out STD_LOGIC; 
    lcd_rs : out STD_LOGIC; 
    lcd_rw : out STD_LOGIC; 
    sf_d : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end stopwatch;

architecture Structure of stopwatch is
  component timer_preset
    port (
      spo : out STD_LOGIC_VECTOR ( 19 downto 0 ); 
      a : in STD_LOGIC_VECTOR ( 5 downto 0 ) 
    );
  end component;
  signal lap_load_IBUF_1 : STD_LOGIC; 
  signal mode_IBUF_2 : STD_LOGIC; 
  signal reset_IBUF_3 : STD_LOGIC; 
  signal strtstop_IBUF_4 : STD_LOGIC; 
  signal clk_26214k : STD_LOGIC; 
  signal locked : STD_LOGIC; 
  signal ll_debounced : STD_LOGIC; 
  signal mode_debounced : STD_LOGIC; 
  signal timer_state_clken_9 : STD_LOGIC; 
  signal load : STD_LOGIC; 
  signal mode_control : STD_LOGIC; 
  signal timer_state_rst_13 : STD_LOGIC; 
  signal strtstop_debounced : STD_LOGIC; 
  signal clk_100 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_3_26 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_2_27 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_1_28 : STD_LOGIC; 
  signal timer_inst_hundredths_cnt_0_29 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal CLKFB_IN : STD_LOGIC; 
  signal Inst_dcm1_CLKFX_BUF : STD_LOGIC; 
  signal Inst_dcm1_CLK0_BUF : STD_LOGIC; 
  signal CLKIN_IBUFG : STD_LOGIC; 
  signal strtstop_debounce_Q3_77 : STD_LOGIC; 
  signal strtstop_debounce_Q2_78 : STD_LOGIC; 
  signal strtstop_debounce_Q1_79 : STD_LOGIC; 
  signal mode_debounce_Q3_80 : STD_LOGIC; 
  signal mode_debounce_Q2_81 : STD_LOGIC; 
  signal mode_debounce_Q1_82 : STD_LOGIC; 
  signal lap_load_debounce_Q3_83 : STD_LOGIC; 
  signal lap_load_debounce_Q2_84 : STD_LOGIC; 
  signal lap_load_debounce_Q1_85 : STD_LOGIC; 
  signal clk_divider_div_temp_INV_1_o : STD_LOGIC; 
  signal clk_divider_div_temp_87 : STD_LOGIC; 
  signal Mcount_address : STD_LOGIC; 
  signal Mcount_address1 : STD_LOGIC; 
  signal Mcount_address2 : STD_LOGIC; 
  signal Mcount_address3 : STD_LOGIC; 
  signal Mcount_address4 : STD_LOGIC; 
  signal Mcount_address5 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd1_In : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_In_150 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_In_151 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_In_152 : STD_LOGIC; 
  signal timer_state_next_clken : STD_LOGIC; 
  signal timer_state_state_reset : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_157 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_158 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_159 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd1_160 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_3 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_In5_163 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_5_164 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_12 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_5_166 : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_1_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_6_Q_169 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_5_Q_170 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_5_Q_171 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_4_Q_172 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_4_Q_173 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_3_Q_174 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_3_Q_175 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi3_176 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_2_Q_177 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_2_Q_178 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi2_179 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_1_Q_180 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_1_Q_181 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi1_182 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_0_Q_183 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_0_Q_184 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi_185 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_6_Q_186 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_6_Q : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_5_Q_188 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_5_Q_189 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_4_Q_190 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_4_Q_191 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_3_Q_192 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_3_Q_193 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_2_Q_194 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_2_Q_195 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_1_Q_196 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_1_Q_197 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_0_Q_198 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_0_Q_199 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_6_Q_200 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_5_Q_201 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_5_Q_202 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_4_Q_203 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_4_Q_204 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_3_Q_205 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_3_Q_206 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi2_207 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_2_Q_208 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_2_Q_209 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi1_210 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_1_Q_211 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_1_Q_212 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi_213 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_0_Q_214 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_0_Q_215 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_n0000_lutdi5_218 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_n0000_lutdi4_221 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_n0000_lutdi3_224 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_n0000_lutdi2_227 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_n0000_lutdi1_230 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mcompar_n0000_lutdi_233 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp31 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp30 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp29 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp28 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp27 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp26 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp25 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp24 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp23 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp22 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp21 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp20 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp19 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp18 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp17 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp16 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp15 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp14 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp13 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp12 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp11 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp10 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp9 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp8 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp7 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp6 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp5 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp4 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp3 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp2 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp1 : STD_LOGIC; 
  signal lcd_cntrl_inst_count_Mcount_temp : STD_LOGIC; 
  signal lcd_cntrl_inst_state_flag_inv : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd1_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd3_In_332 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd5_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In1_336 : STD_LOGIC; 
  signal lcd_cntrl_inst_n0385_inv : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_LessThan_291_o : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_LessThan_17_o : STD_LOGIC; 
  signal lcd_cntrl_inst_state_flag : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_289_o : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_15_o : STD_LOGIC; 
  signal lcd_cntrl_inst_n0408 : STD_LOGIC; 
  signal lcd_cntrl_inst_n0515 : STD_LOGIC; 
  signal lcd_cntrl_inst_n0510 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_mode_AND_50_o : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_360 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_393 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_394 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_395 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd5_396 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_397 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd3_398 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_399 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd1_400 : STD_LOGIC; 
  signal lcd_cntrl_inst_mode_state_433 : STD_LOGIC; 
  signal lcd_cntrl_inst_next_mode_state_434 : STD_LOGIC; 
  signal lcd_cntrl_inst_rst_mode_OR_32_o : STD_LOGIC; 
  signal timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_3_Q : STD_LOGIC; 
  signal timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_1_Q : STD_LOGIC; 
  signal timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_cy_1_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_2_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_cy_1_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_0_Q : STD_LOGIC; 
  signal timer_inst_n0256_inv_463 : STD_LOGIC; 
  signal timer_inst_n0246_inv : STD_LOGIC; 
  signal timer_inst_n0236_inv : STD_LOGIC; 
  signal timer_inst_n0226_inv : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_GND_13_o_equal_10_o : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_GND_13_o_equal_8_o : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_GND_13_o_equal_6_o : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_GND_13_o_equal_4_o : STD_LOGIC; 
  signal timer_inst_up_ones_cnt_3_AND_85_o : STD_LOGIC; 
  signal timer_inst_up_ones_cnt_3_AND_78_o : STD_LOGIC; 
  signal timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_A_0_Q : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_PWR_13_o_equal_9_o : STD_LOGIC; 
  signal timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_A_0_Q : STD_LOGIC; 
  signal timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_A_2_Q : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_GND_13_o_equal_7_o : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_PWR_13_o_equal_5_o : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o : STD_LOGIC; 
  signal timer_inst_up_hundredths_cnt_3_AND_56_o : STD_LOGIC; 
  signal timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q : STD_LOGIC; 
  signal timer_inst_up_tenths_cnt_3_AND_73_o : STD_LOGIC; 
  signal timer_inst_up_hundredths_cnt_3_AND_55_o : STD_LOGIC; 
  signal timer_inst_GND_13_o_q_3_mux_18_OUT_0_Q : STD_LOGIC; 
  signal timer_inst_GND_13_o_q_3_mux_18_OUT_1_Q : STD_LOGIC; 
  signal timer_inst_GND_13_o_q_3_mux_18_OUT_2_Q : STD_LOGIC; 
  signal timer_inst_GND_13_o_q_3_mux_18_OUT_3_Q : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_q_19_mux_82_OUT_0_Q : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_q_19_mux_82_OUT_1_Q : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_q_19_mux_82_OUT_2_Q : STD_LOGIC; 
  signal timer_inst_mins_cnt_3_q_19_mux_82_OUT_3_Q : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_q_15_mux_63_OUT_0_Q : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_q_15_mux_63_OUT_1_Q : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_q_15_mux_63_OUT_2_Q : STD_LOGIC; 
  signal timer_inst_tens_cnt_3_q_15_mux_63_OUT_3_Q : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_q_11_mux_46_OUT_0_Q : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_q_11_mux_46_OUT_1_Q : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_q_11_mux_46_OUT_2_Q : STD_LOGIC; 
  signal timer_inst_ones_cnt_3_q_11_mux_46_OUT_3_Q : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_q_7_mux_31_OUT_0_Q : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_q_7_mux_31_OUT_1_Q : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_q_7_mux_31_OUT_2_Q : STD_LOGIC; 
  signal timer_inst_tenths_cnt_3_q_7_mux_31_OUT_3_Q : STD_LOGIC; 
  signal timer_inst_enable : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal lcd_cntrl_inst_n0331_inv2_511 : STD_LOGIC; 
  signal lcd_cntrl_inst_n0385_inv1_512 : STD_LOGIC; 
  signal lcd_cntrl_inst_n0385_inv2_513 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_In1_514 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd2_In2_515 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_In1_516 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_In3_517 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_In4_518 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd4_In6 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In2_520 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In3_521 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In4_522 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In5_523 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In6_524 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In7_525 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd6_In8_526 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd1_In1_527 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd1_In2_528 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd1_In3_529 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_1_531 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_2_532 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_3_533 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_4_534 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_5_535 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_6_536 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_7_537 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_8_538 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_9_539 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_10_540 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_11_541 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_12_542 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_7_13_543 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_1 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_3 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_4_547 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_6_548 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_7_549 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_8_550 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_9_551 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_10_552 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_12_553 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_13_554 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_14_555 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_15_556 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_8_16_557 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_1_558 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_2_559 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_6_560 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_7_561 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_8 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_10_563 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_11_564 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_12_565 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_13_566 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_14_567 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_6_15_568 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd5_In1_569 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd5_In2_570 : STD_LOGIC; 
  signal lcd_cntrl_inst_state_FSM_FFd5_In4_571 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_1_572 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_2_573 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_4_574 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_5_575 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_6_576 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_7_577 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_8_578 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_9_579 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_10 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_12_581 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_13_582 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_4_14_583 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_1_584 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_5_585 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_6 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_8 : STD_LOGIC; 
  signal lcd_cntrl_inst_sf_d_temp_5_10_588 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mmux_control1 : STD_LOGIC; 
  signal lcd_cntrl_inst_Mmux_control11_590 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_11_593 : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_12_594 : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_13_595 : STD_LOGIC; 
  signal lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_14_596 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal timer_inst_enable1_601 : STD_LOGIC; 
  signal timer_inst_enable2_602 : STD_LOGIC; 
  signal lcd_cntrl_inst_clock_flag_glue_rst_618 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_glue_ce_619 : STD_LOGIC; 
  signal lcd_cntrl_inst_lap_flag_glue_rst_620 : STD_LOGIC; 
  signal lcd_cntrl_inst_timer_flag_glue_set_621 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_1_rt_622 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_2_rt_623 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_3_rt_624 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_4_rt_625 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_5_rt_626 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_6_rt_627 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_7_rt_628 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_8_rt_629 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_9_rt_630 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_10_rt_631 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_11_rt_632 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_12_rt_633 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_13_rt_634 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_14_rt_635 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_15_rt_636 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_cy_16_rt_637 : STD_LOGIC; 
  signal clk_divider_Mcount_cnt_xor_17_rt_638 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal timer_inst_ones_cnt_1_rstpot_652 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal timer_inst_tenths_cnt_0_rstpot_657 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal timer_inst_mins_cnt_2_rstpot_659 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal timer_state_sreg_n0105_0_1_665 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd3_1_666 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd4_1_667 : STD_LOGIC; 
  signal timer_state_sreg_FSM_FFd2_1_668 : STD_LOGIC; 
  signal clk_divider_div_temp_rstpot_669 : STD_LOGIC; 
  signal clk_divider_div_262144_670 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_DCM_SP_INST_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal timer_state_sreg1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal n0016 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal lcd_cntrl_inst_sf_d : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal timer_inst_tenths_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_ones_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_tens_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal timer_inst_mins_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal address : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal preset_time : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal clk_divider_cnt : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal clk_divider_Mcount_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clk_divider_Mcount_cnt_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal timer_state_next_sreg1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal lcd_cntrl_inst_Mcompar_n0000_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal lcd_cntrl_inst_Mcompar_n0000_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal lcd_cntrl_inst_count_Mcount_temp_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lcd_cntrl_inst_count_Mcount_temp_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal lcd_cntrl_inst_lap_min : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_ones : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_tenths : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_tens : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_lap_hundredths : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal lcd_cntrl_inst_sf_d_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal lcd_cntrl_inst_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lcd_cntrl_inst_count_temp : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lcd_cntrl_inst_n0502 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => n0016(1)
    );
  strtstop_debounce_Q3 : FD
    port map (
      C => clk_26214k,
      D => strtstop_debounce_Q2_78,
      Q => strtstop_debounce_Q3_77
    );
  strtstop_debounce_Q2 : FD
    port map (
      C => clk_26214k,
      D => strtstop_debounce_Q1_79,
      Q => strtstop_debounce_Q2_78
    );
  strtstop_debounce_Q1 : FD
    port map (
      C => clk_26214k,
      D => strtstop_IBUF_4,
      Q => strtstop_debounce_Q1_79
    );
  mode_debounce_Q3 : FD
    port map (
      C => clk_26214k,
      D => mode_debounce_Q2_81,
      Q => mode_debounce_Q3_80
    );
  mode_debounce_Q2 : FD
    port map (
      C => clk_26214k,
      D => mode_debounce_Q1_82,
      Q => mode_debounce_Q2_81
    );
  mode_debounce_Q1 : FD
    port map (
      C => clk_26214k,
      D => mode_IBUF_2,
      Q => mode_debounce_Q1_82
    );
  lap_load_debounce_Q3 : FD
    port map (
      C => clk_26214k,
      D => lap_load_debounce_Q2_84,
      Q => lap_load_debounce_Q3_83
    );
  lap_load_debounce_Q2 : FD
    port map (
      C => clk_26214k,
      D => lap_load_debounce_Q1_85,
      Q => lap_load_debounce_Q2_84
    );
  lap_load_debounce_Q1 : FD
    port map (
      C => clk_26214k,
      D => lap_load_IBUF_1,
      Q => lap_load_debounce_Q1_85
    );
  clk_divider_div_262144 : FD
    port map (
      C => clk_26214k,
      D => clk_divider_div_temp_87,
      Q => clk_divider_div_262144_670
    );
  address_0 : FDCE
    port map (
      C => clk_100,
      CE => load,
      CLR => mode_control,
      D => Mcount_address,
      Q => address(0)
    );
  address_1 : FDCE
    port map (
      C => clk_100,
      CE => load,
      CLR => mode_control,
      D => Mcount_address1,
      Q => address(1)
    );
  address_2 : FDCE
    port map (
      C => clk_100,
      CE => load,
      CLR => mode_control,
      D => Mcount_address2,
      Q => address(2)
    );
  address_3 : FDCE
    port map (
      C => clk_100,
      CE => load,
      CLR => mode_control,
      D => Mcount_address3,
      Q => address(3)
    );
  address_4 : FDCE
    port map (
      C => clk_100,
      CE => load,
      CLR => mode_control,
      D => Mcount_address4,
      Q => address(4)
    );
  address_5 : FDCE
    port map (
      C => clk_100,
      CE => load,
      CLR => mode_control,
      D => Mcount_address5,
      Q => address(5)
    );
  clk_divider_cnt_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(0),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(0)
    );
  clk_divider_cnt_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(1),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(1)
    );
  clk_divider_cnt_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(2),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(2)
    );
  clk_divider_cnt_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(3),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(3)
    );
  clk_divider_cnt_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(4),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(4)
    );
  clk_divider_cnt_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(5),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(5)
    );
  clk_divider_cnt_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(6),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(6)
    );
  clk_divider_cnt_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(7),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(7)
    );
  clk_divider_cnt_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(8),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(8)
    );
  clk_divider_cnt_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(9),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(9)
    );
  clk_divider_cnt_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(10),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(10)
    );
  clk_divider_cnt_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(11),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(11)
    );
  clk_divider_cnt_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(12),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(12)
    );
  clk_divider_cnt_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(13),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(13)
    );
  clk_divider_cnt_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(14),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(14)
    );
  clk_divider_cnt_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(15),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(15)
    );
  clk_divider_cnt_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(16),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(16)
    );
  clk_divider_cnt_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => Result(17),
      R => clk_divider_cnt(17),
      Q => clk_divider_cnt(17)
    );
  clk_divider_Mcount_cnt_cy_0_Q : MUXCY
    port map (
      CI => n0016(1),
      DI => N0,
      S => clk_divider_Mcount_cnt_lut(0),
      O => clk_divider_Mcount_cnt_cy(0)
    );
  clk_divider_Mcount_cnt_xor_0_Q : XORCY
    port map (
      CI => n0016(1),
      LI => clk_divider_Mcount_cnt_lut(0),
      O => Result(0)
    );
  clk_divider_Mcount_cnt_cy_1_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(0),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_1_rt_622,
      O => clk_divider_Mcount_cnt_cy(1)
    );
  clk_divider_Mcount_cnt_xor_1_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(0),
      LI => clk_divider_Mcount_cnt_cy_1_rt_622,
      O => Result(1)
    );
  clk_divider_Mcount_cnt_cy_2_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(1),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_2_rt_623,
      O => clk_divider_Mcount_cnt_cy(2)
    );
  clk_divider_Mcount_cnt_xor_2_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(1),
      LI => clk_divider_Mcount_cnt_cy_2_rt_623,
      O => Result(2)
    );
  clk_divider_Mcount_cnt_cy_3_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(2),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_3_rt_624,
      O => clk_divider_Mcount_cnt_cy(3)
    );
  clk_divider_Mcount_cnt_xor_3_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(2),
      LI => clk_divider_Mcount_cnt_cy_3_rt_624,
      O => Result(3)
    );
  clk_divider_Mcount_cnt_cy_4_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(3),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_4_rt_625,
      O => clk_divider_Mcount_cnt_cy(4)
    );
  clk_divider_Mcount_cnt_xor_4_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(3),
      LI => clk_divider_Mcount_cnt_cy_4_rt_625,
      O => Result(4)
    );
  clk_divider_Mcount_cnt_cy_5_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(4),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_5_rt_626,
      O => clk_divider_Mcount_cnt_cy(5)
    );
  clk_divider_Mcount_cnt_xor_5_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(4),
      LI => clk_divider_Mcount_cnt_cy_5_rt_626,
      O => Result(5)
    );
  clk_divider_Mcount_cnt_cy_6_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(5),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_6_rt_627,
      O => clk_divider_Mcount_cnt_cy(6)
    );
  clk_divider_Mcount_cnt_xor_6_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(5),
      LI => clk_divider_Mcount_cnt_cy_6_rt_627,
      O => Result(6)
    );
  clk_divider_Mcount_cnt_cy_7_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(6),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_7_rt_628,
      O => clk_divider_Mcount_cnt_cy(7)
    );
  clk_divider_Mcount_cnt_xor_7_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(6),
      LI => clk_divider_Mcount_cnt_cy_7_rt_628,
      O => Result(7)
    );
  clk_divider_Mcount_cnt_cy_8_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(7),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_8_rt_629,
      O => clk_divider_Mcount_cnt_cy(8)
    );
  clk_divider_Mcount_cnt_xor_8_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(7),
      LI => clk_divider_Mcount_cnt_cy_8_rt_629,
      O => Result(8)
    );
  clk_divider_Mcount_cnt_cy_9_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(8),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_9_rt_630,
      O => clk_divider_Mcount_cnt_cy(9)
    );
  clk_divider_Mcount_cnt_xor_9_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(8),
      LI => clk_divider_Mcount_cnt_cy_9_rt_630,
      O => Result(9)
    );
  clk_divider_Mcount_cnt_cy_10_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(9),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_10_rt_631,
      O => clk_divider_Mcount_cnt_cy(10)
    );
  clk_divider_Mcount_cnt_xor_10_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(9),
      LI => clk_divider_Mcount_cnt_cy_10_rt_631,
      O => Result(10)
    );
  clk_divider_Mcount_cnt_cy_11_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(10),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_11_rt_632,
      O => clk_divider_Mcount_cnt_cy(11)
    );
  clk_divider_Mcount_cnt_xor_11_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(10),
      LI => clk_divider_Mcount_cnt_cy_11_rt_632,
      O => Result(11)
    );
  clk_divider_Mcount_cnt_cy_12_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(11),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_12_rt_633,
      O => clk_divider_Mcount_cnt_cy(12)
    );
  clk_divider_Mcount_cnt_xor_12_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(11),
      LI => clk_divider_Mcount_cnt_cy_12_rt_633,
      O => Result(12)
    );
  clk_divider_Mcount_cnt_cy_13_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(12),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_13_rt_634,
      O => clk_divider_Mcount_cnt_cy(13)
    );
  clk_divider_Mcount_cnt_xor_13_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(12),
      LI => clk_divider_Mcount_cnt_cy_13_rt_634,
      O => Result(13)
    );
  clk_divider_Mcount_cnt_cy_14_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(13),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_14_rt_635,
      O => clk_divider_Mcount_cnt_cy(14)
    );
  clk_divider_Mcount_cnt_xor_14_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(13),
      LI => clk_divider_Mcount_cnt_cy_14_rt_635,
      O => Result(14)
    );
  clk_divider_Mcount_cnt_cy_15_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(14),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_15_rt_636,
      O => clk_divider_Mcount_cnt_cy(15)
    );
  clk_divider_Mcount_cnt_xor_15_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(14),
      LI => clk_divider_Mcount_cnt_cy_15_rt_636,
      O => Result(15)
    );
  clk_divider_Mcount_cnt_cy_16_Q : MUXCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(15),
      DI => n0016(1),
      S => clk_divider_Mcount_cnt_cy_16_rt_637,
      O => clk_divider_Mcount_cnt_cy(16)
    );
  clk_divider_Mcount_cnt_xor_16_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(15),
      LI => clk_divider_Mcount_cnt_cy_16_rt_637,
      O => Result(16)
    );
  clk_divider_Mcount_cnt_xor_17_Q : XORCY
    port map (
      CI => clk_divider_Mcount_cnt_cy(16),
      LI => clk_divider_Mcount_cnt_xor_17_rt_638,
      O => Result(17)
    );
  Inst_dcm1_CLKFX_BUFG_INST : BUFG
    port map (
      I => Inst_dcm1_CLKFX_BUF,
      O => clk_26214k
    );
  Inst_dcm1_CLK0_BUFG_INST : BUFG
    port map (
      I => Inst_dcm1_CLK0_BUF,
      O => CLKFB_IN
    );
  Inst_dcm1_DCM_SP_INST : DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 25,
      CLKFX_MULTIPLY => 13,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 20.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"0000",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => TRUE
    )
    port map (
      CLK2X180 => NLW_Inst_dcm1_DCM_SP_INST_CLK2X180_UNCONNECTED,
      PSCLK => n0016(1),
      CLK2X => NLW_Inst_dcm1_DCM_SP_INST_CLK2X_UNCONNECTED,
      CLKFX => Inst_dcm1_CLKFX_BUF,
      CLK180 => NLW_Inst_dcm1_DCM_SP_INST_CLK180_UNCONNECTED,
      CLK270 => NLW_Inst_dcm1_DCM_SP_INST_CLK270_UNCONNECTED,
      RST => reset_IBUF_3,
      PSINCDEC => n0016(1),
      CLKIN => CLKIN_IBUFG,
      CLKFB => CLKFB_IN,
      PSEN => n0016(1),
      CLK0 => Inst_dcm1_CLK0_BUF,
      CLKFX180 => NLW_Inst_dcm1_DCM_SP_INST_CLKFX180_UNCONNECTED,
      CLKDV => NLW_Inst_dcm1_DCM_SP_INST_CLKDV_UNCONNECTED,
      PSDONE => NLW_Inst_dcm1_DCM_SP_INST_PSDONE_UNCONNECTED,
      CLK90 => NLW_Inst_dcm1_DCM_SP_INST_CLK90_UNCONNECTED,
      LOCKED => locked,
      DSSEN => n0016(1),
      STATUS(7) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_dcm1_DCM_SP_INST_STATUS_0_UNCONNECTED
    );
  Inst_dcm1_CLKIN_IBUFG_INST : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clk,
      O => CLKIN_IBUFG
    );
  timer_state_sreg_FSM_FFd1 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd1_In,
      Q => timer_state_sreg_FSM_FFd1_160
    );
  timer_state_sreg_FSM_FFd2 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd2_In_150,
      Q => timer_state_sreg_FSM_FFd2_159
    );
  timer_state_sreg_FSM_FFd4 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd4_In_152,
      Q => timer_state_sreg_FSM_FFd4_157
    );
  timer_state_sreg_FSM_FFd3 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd3_In_151,
      Q => timer_state_sreg_FSM_FFd3_158
    );
  timer_state_clken : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_next_clken,
      Q => timer_state_clken_9
    );
  timer_state_sreg1_1 : FD
    port map (
      C => clk_100,
      D => timer_state_next_sreg1(1),
      Q => timer_state_sreg1(1)
    );
  timer_state_sreg1_0 : FD
    port map (
      C => clk_100,
      D => timer_state_next_sreg1(0),
      Q => timer_state_sreg1(0)
    );
  timer_state_rst : FDP
    port map (
      C => clk_100,
      D => n0016(1),
      PRE => timer_state_state_reset,
      Q => timer_state_rst_13
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_6_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_5_Q_170,
      DI => lcd_cntrl_inst_count(31),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_6_Q_169,
      O => lcd_cntrl_inst_GND_11_o_count_31_LessThan_291_o
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lcd_cntrl_inst_count(30),
      I1 => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_6_Q_169
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_5_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_4_Q_172,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_5_Q_171,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_5_Q_170
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(25),
      I1 => lcd_cntrl_inst_count(26),
      I2 => lcd_cntrl_inst_count(27),
      I3 => lcd_cntrl_inst_count(28),
      I4 => lcd_cntrl_inst_count(29),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_5_Q_171
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_4_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_3_Q_174,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_4_Q_173,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_4_Q_172
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(20),
      I1 => lcd_cntrl_inst_count(21),
      I2 => lcd_cntrl_inst_count(22),
      I3 => lcd_cntrl_inst_count(23),
      I4 => lcd_cntrl_inst_count(24),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_4_Q_173
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_3_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_2_Q_177,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi3_176,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_3_Q_175,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_3_Q_174
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => lcd_cntrl_inst_count(17),
      I1 => lcd_cntrl_inst_count(16),
      I2 => lcd_cntrl_inst_count(15),
      I3 => lcd_cntrl_inst_count(18),
      I4 => lcd_cntrl_inst_count(19),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_3_Q_175
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi3 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => lcd_cntrl_inst_count(18),
      I1 => lcd_cntrl_inst_count(19),
      I2 => lcd_cntrl_inst_count(17),
      I3 => lcd_cntrl_inst_count(16),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi3_176
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_2_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_1_Q_180,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi2_179,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_2_Q_178,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_2_Q_177
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => lcd_cntrl_inst_count(11),
      I1 => lcd_cntrl_inst_count(10),
      I2 => lcd_cntrl_inst_count(12),
      I3 => lcd_cntrl_inst_count(13),
      I4 => lcd_cntrl_inst_count(14),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_2_Q_178
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi2 : LUT5
    generic map(
      INIT => X"11155555"
    )
    port map (
      I0 => lcd_cntrl_inst_count(14),
      I1 => lcd_cntrl_inst_count(12),
      I2 => lcd_cntrl_inst_count(10),
      I3 => lcd_cntrl_inst_count(11),
      I4 => lcd_cntrl_inst_count(13),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi2_179
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_1_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_0_Q_183,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi1_182,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_1_Q_181,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_1_Q_180
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000100"
    )
    port map (
      I0 => lcd_cntrl_inst_count(5),
      I1 => lcd_cntrl_inst_count(7),
      I2 => lcd_cntrl_inst_count(8),
      I3 => lcd_cntrl_inst_count(6),
      I4 => lcd_cntrl_inst_count(9),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_1_Q_181
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(6),
      I1 => lcd_cntrl_inst_count(7),
      I2 => lcd_cntrl_inst_count(8),
      I3 => lcd_cntrl_inst_count(9),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi1_182
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi_185,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_0_Q_184,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_cy_0_Q_183
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000100"
    )
    port map (
      I0 => lcd_cntrl_inst_count(0),
      I1 => lcd_cntrl_inst_count(1),
      I2 => lcd_cntrl_inst_count(2),
      I3 => lcd_cntrl_inst_count(4),
      I4 => lcd_cntrl_inst_count(3),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lut_0_Q_184
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi : LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lcd_cntrl_inst_count(4),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_291_o_lutdi_185
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_6_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_5_Q_188,
      DI => lcd_cntrl_inst_count(31),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_6_Q,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_6_Q_186
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_5_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_4_Q_190,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_5_Q_189,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_5_Q_188
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(26),
      I1 => lcd_cntrl_inst_count(27),
      I2 => lcd_cntrl_inst_count(28),
      I3 => lcd_cntrl_inst_count(29),
      I4 => lcd_cntrl_inst_count(30),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_5_Q_189
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_4_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_3_Q_192,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_4_Q_191,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_4_Q_190
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(21),
      I1 => lcd_cntrl_inst_count(22),
      I2 => lcd_cntrl_inst_count(23),
      I3 => lcd_cntrl_inst_count(24),
      I4 => lcd_cntrl_inst_count(25),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_4_Q_191
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_3_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_2_Q_194,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_3_Q_193,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_3_Q_192
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(16),
      I1 => lcd_cntrl_inst_count(17),
      I2 => lcd_cntrl_inst_count(18),
      I3 => lcd_cntrl_inst_count(19),
      I4 => lcd_cntrl_inst_count(20),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_3_Q_193
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_2_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_1_Q_196,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_2_Q_195,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_2_Q_194
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(11),
      I1 => lcd_cntrl_inst_count(12),
      I2 => lcd_cntrl_inst_count(13),
      I3 => lcd_cntrl_inst_count(14),
      I4 => lcd_cntrl_inst_count(15),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_2_Q_195
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_1_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_0_Q_198,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_1_Q_197,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_1_Q_196
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(6),
      I1 => lcd_cntrl_inst_count(7),
      I2 => lcd_cntrl_inst_count(8),
      I3 => lcd_cntrl_inst_count(9),
      I4 => lcd_cntrl_inst_count(10),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_1_Q_197
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_0_Q_199,
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_0_Q_198
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(1),
      I1 => lcd_cntrl_inst_count(2),
      I2 => lcd_cntrl_inst_count(3),
      I3 => lcd_cntrl_inst_count(4),
      I4 => lcd_cntrl_inst_count(5),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_0_Q_199
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_6_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_5_Q_201,
      DI => lcd_cntrl_inst_count(31),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_6_Q_200,
      O => lcd_cntrl_inst_GND_11_o_count_31_LessThan_17_o
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lcd_cntrl_inst_count(30),
      I1 => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_6_Q_200
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_5_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_4_Q_203,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_5_Q_202,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_5_Q_201
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(25),
      I1 => lcd_cntrl_inst_count(26),
      I2 => lcd_cntrl_inst_count(27),
      I3 => lcd_cntrl_inst_count(28),
      I4 => lcd_cntrl_inst_count(29),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_5_Q_202
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_4_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_3_Q_205,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_4_Q_204,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_4_Q_203
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(20),
      I1 => lcd_cntrl_inst_count(21),
      I2 => lcd_cntrl_inst_count(22),
      I3 => lcd_cntrl_inst_count(23),
      I4 => lcd_cntrl_inst_count(24),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_4_Q_204
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_3_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_2_Q_208,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi2_207,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_3_Q_206,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_3_Q_205
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => lcd_cntrl_inst_count(17),
      I1 => lcd_cntrl_inst_count(18),
      I2 => lcd_cntrl_inst_count(15),
      I3 => lcd_cntrl_inst_count(16),
      I4 => lcd_cntrl_inst_count(19),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_3_Q_206
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi2 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => lcd_cntrl_inst_count(19),
      I1 => lcd_cntrl_inst_count(17),
      I2 => lcd_cntrl_inst_count(18),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi2_207
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_2_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_1_Q_211,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi1_210,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_2_Q_209,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_2_Q_208
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => lcd_cntrl_inst_count(10),
      I1 => lcd_cntrl_inst_count(14),
      I2 => lcd_cntrl_inst_count(11),
      I3 => lcd_cntrl_inst_count(13),
      I4 => lcd_cntrl_inst_count(12),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_2_Q_209
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi1 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => lcd_cntrl_inst_count(14),
      I1 => lcd_cntrl_inst_count(12),
      I2 => lcd_cntrl_inst_count(11),
      I3 => lcd_cntrl_inst_count(13),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi1_210
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_1_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_0_Q_214,
      DI => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi_213,
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_1_Q_212,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_1_Q_211
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => lcd_cntrl_inst_count(7),
      I1 => lcd_cntrl_inst_count(5),
      I2 => lcd_cntrl_inst_count(6),
      I3 => lcd_cntrl_inst_count(8),
      I4 => lcd_cntrl_inst_count(9),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_1_Q_212
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi : LUT5
    generic map(
      INIT => X"00011111"
    )
    port map (
      I0 => lcd_cntrl_inst_count(8),
      I1 => lcd_cntrl_inst_count(9),
      I2 => lcd_cntrl_inst_count(6),
      I3 => lcd_cntrl_inst_count(5),
      I4 => lcd_cntrl_inst_count(7),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lutdi_213
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => n0016(1),
      S => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_0_Q_215,
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_cy_0_Q_214
    );
  lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(0),
      I1 => lcd_cntrl_inst_count(1),
      I2 => lcd_cntrl_inst_count(2),
      I3 => lcd_cntrl_inst_count(3),
      I4 => lcd_cntrl_inst_count(4),
      O => lcd_cntrl_inst_Mcompar_GND_11_o_count_31_LessThan_17_o_lut_0_Q_215
    );
  lcd_cntrl_inst_Mcompar_n0000_cy_5_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_n0000_cy(4),
      DI => lcd_cntrl_inst_Mcompar_n0000_lutdi5_218,
      S => lcd_cntrl_inst_Mcompar_n0000_lut(5),
      O => lcd_cntrl_inst_Mcompar_n0000_cy(5)
    );
  lcd_cntrl_inst_Mcompar_n0000_lut_5_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => lcd_cntrl_inst_count(29),
      I1 => lcd_cntrl_inst_count(30),
      I2 => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_Mcompar_n0000_lut(5)
    );
  lcd_cntrl_inst_Mcompar_n0000_lutdi5 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => lcd_cntrl_inst_count(31),
      I1 => lcd_cntrl_inst_count(29),
      I2 => lcd_cntrl_inst_count(30),
      O => lcd_cntrl_inst_Mcompar_n0000_lutdi5_218
    );
  lcd_cntrl_inst_Mcompar_n0000_cy_4_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_n0000_cy(3),
      DI => lcd_cntrl_inst_Mcompar_n0000_lutdi4_221,
      S => lcd_cntrl_inst_Mcompar_n0000_lut(4),
      O => lcd_cntrl_inst_Mcompar_n0000_cy(4)
    );
  lcd_cntrl_inst_Mcompar_n0000_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(24),
      I1 => lcd_cntrl_inst_count(25),
      I2 => lcd_cntrl_inst_count(26),
      I3 => lcd_cntrl_inst_count(27),
      I4 => lcd_cntrl_inst_count(28),
      O => lcd_cntrl_inst_Mcompar_n0000_lut(4)
    );
  lcd_cntrl_inst_Mcompar_n0000_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => lcd_cntrl_inst_count(28),
      I1 => lcd_cntrl_inst_count(27),
      I2 => lcd_cntrl_inst_count(26),
      I3 => lcd_cntrl_inst_count(25),
      I4 => lcd_cntrl_inst_count(24),
      O => lcd_cntrl_inst_Mcompar_n0000_lutdi4_221
    );
  lcd_cntrl_inst_Mcompar_n0000_cy_3_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_n0000_cy(2),
      DI => lcd_cntrl_inst_Mcompar_n0000_lutdi3_224,
      S => lcd_cntrl_inst_Mcompar_n0000_lut(3),
      O => lcd_cntrl_inst_Mcompar_n0000_cy(3)
    );
  lcd_cntrl_inst_Mcompar_n0000_lut_3_Q : LUT5
    generic map(
      INIT => X"00000100"
    )
    port map (
      I0 => lcd_cntrl_inst_count(20),
      I1 => lcd_cntrl_inst_count(21),
      I2 => lcd_cntrl_inst_count(22),
      I3 => lcd_cntrl_inst_count(19),
      I4 => lcd_cntrl_inst_count(23),
      O => lcd_cntrl_inst_Mcompar_n0000_lut(3)
    );
  lcd_cntrl_inst_Mcompar_n0000_lutdi3 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcd_cntrl_inst_count(23),
      I1 => lcd_cntrl_inst_count(22),
      I2 => lcd_cntrl_inst_count(21),
      I3 => lcd_cntrl_inst_count(20),
      O => lcd_cntrl_inst_Mcompar_n0000_lutdi3_224
    );
  lcd_cntrl_inst_Mcompar_n0000_cy_2_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_n0000_cy(1),
      DI => lcd_cntrl_inst_Mcompar_n0000_lutdi2_227,
      S => lcd_cntrl_inst_Mcompar_n0000_lut(2),
      O => lcd_cntrl_inst_Mcompar_n0000_cy(2)
    );
  lcd_cntrl_inst_Mcompar_n0000_lut_2_Q : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => lcd_cntrl_inst_count(15),
      I1 => lcd_cntrl_inst_count(14),
      I2 => lcd_cntrl_inst_count(16),
      I3 => lcd_cntrl_inst_count(17),
      I4 => lcd_cntrl_inst_count(18),
      O => lcd_cntrl_inst_Mcompar_n0000_lut(2)
    );
  lcd_cntrl_inst_Mcompar_n0000_lutdi2 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => lcd_cntrl_inst_count(17),
      I1 => lcd_cntrl_inst_count(16),
      I2 => lcd_cntrl_inst_count(15),
      I3 => lcd_cntrl_inst_count(18),
      O => lcd_cntrl_inst_Mcompar_n0000_lutdi2_227
    );
  lcd_cntrl_inst_Mcompar_n0000_cy_1_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_Mcompar_n0000_cy(0),
      DI => lcd_cntrl_inst_Mcompar_n0000_lutdi1_230,
      S => lcd_cntrl_inst_Mcompar_n0000_lut(1),
      O => lcd_cntrl_inst_Mcompar_n0000_cy(1)
    );
  lcd_cntrl_inst_Mcompar_n0000_lut_1_Q : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => lcd_cntrl_inst_count(13),
      I1 => lcd_cntrl_inst_count(12),
      I2 => lcd_cntrl_inst_count(9),
      I3 => lcd_cntrl_inst_count(10),
      I4 => lcd_cntrl_inst_count(11),
      O => lcd_cntrl_inst_Mcompar_n0000_lut(1)
    );
  lcd_cntrl_inst_Mcompar_n0000_lutdi1 : LUT5
    generic map(
      INIT => X"88888880"
    )
    port map (
      I0 => lcd_cntrl_inst_count(13),
      I1 => lcd_cntrl_inst_count(12),
      I2 => lcd_cntrl_inst_count(11),
      I3 => lcd_cntrl_inst_count(10),
      I4 => lcd_cntrl_inst_count(9),
      O => lcd_cntrl_inst_Mcompar_n0000_lutdi1_230
    );
  lcd_cntrl_inst_Mcompar_n0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => lcd_cntrl_inst_Mcompar_n0000_lutdi_233,
      S => lcd_cntrl_inst_Mcompar_n0000_lut(0),
      O => lcd_cntrl_inst_Mcompar_n0000_cy(0)
    );
  lcd_cntrl_inst_Mcompar_n0000_lut_0_Q : LUT5
    generic map(
      INIT => X"08000000"
    )
    port map (
      I0 => lcd_cntrl_inst_count(4),
      I1 => lcd_cntrl_inst_count(5),
      I2 => lcd_cntrl_inst_count(6),
      I3 => lcd_cntrl_inst_count(7),
      I4 => lcd_cntrl_inst_count(8),
      O => lcd_cntrl_inst_Mcompar_n0000_lut(0)
    );
  lcd_cntrl_inst_Mcompar_n0000_lutdi : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => lcd_cntrl_inst_count(8),
      I1 => lcd_cntrl_inst_count(7),
      I2 => lcd_cntrl_inst_count(6),
      O => lcd_cntrl_inst_Mcompar_n0000_lutdi_233
    );
  lcd_cntrl_inst_count_temp_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp31,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(31)
    );
  lcd_cntrl_inst_count_temp_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp30,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(30)
    );
  lcd_cntrl_inst_count_temp_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp29,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(29)
    );
  lcd_cntrl_inst_count_temp_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp28,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(28)
    );
  lcd_cntrl_inst_count_temp_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp27,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(27)
    );
  lcd_cntrl_inst_count_temp_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp26,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(26)
    );
  lcd_cntrl_inst_count_temp_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp25,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(25)
    );
  lcd_cntrl_inst_count_temp_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp24,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(24)
    );
  lcd_cntrl_inst_count_temp_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp23,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(23)
    );
  lcd_cntrl_inst_count_temp_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp22,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(22)
    );
  lcd_cntrl_inst_count_temp_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp21,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(21)
    );
  lcd_cntrl_inst_count_temp_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp20,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(20)
    );
  lcd_cntrl_inst_count_temp_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp19,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(19)
    );
  lcd_cntrl_inst_count_temp_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp18,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(18)
    );
  lcd_cntrl_inst_count_temp_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp17,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(17)
    );
  lcd_cntrl_inst_count_temp_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp16,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(16)
    );
  lcd_cntrl_inst_count_temp_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp15,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(15)
    );
  lcd_cntrl_inst_count_temp_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp14,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(14)
    );
  lcd_cntrl_inst_count_temp_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp13,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(13)
    );
  lcd_cntrl_inst_count_temp_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp12,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(12)
    );
  lcd_cntrl_inst_count_temp_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp11,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(11)
    );
  lcd_cntrl_inst_count_temp_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp10,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(10)
    );
  lcd_cntrl_inst_count_temp_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp9,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(9)
    );
  lcd_cntrl_inst_count_temp_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp8,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(8)
    );
  lcd_cntrl_inst_count_temp_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp7,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(7)
    );
  lcd_cntrl_inst_count_temp_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp6,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(6)
    );
  lcd_cntrl_inst_count_temp_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp5,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(5)
    );
  lcd_cntrl_inst_count_temp_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp4,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(4)
    );
  lcd_cntrl_inst_count_temp_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp3,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(3)
    );
  lcd_cntrl_inst_count_temp_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp2,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(2)
    );
  lcd_cntrl_inst_count_temp_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp1,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(1)
    );
  lcd_cntrl_inst_count_temp_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_Mcount_temp,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_count_temp(0)
    );
  lcd_cntrl_inst_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_state_FSM_FFd1_In,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_state_FSM_FFd1_400
    );
  lcd_cntrl_inst_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_state_FSM_FFd3_In_332,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_state_FSM_FFd3_398
    );
  lcd_cntrl_inst_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_state_FSM_FFd4_In,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_state_FSM_FFd4_397
    );
  lcd_cntrl_inst_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_state_FSM_FFd2_In,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_state_FSM_FFd2_399
    );
  lcd_cntrl_inst_state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_state_FSM_FFd5_In,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_state_FSM_FFd5_396
    );
  lcd_cntrl_inst_state_FSM_FFd6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_state_FSM_FFd6_In,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_state_FSM_FFd6_395
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_31_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(30),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(31),
      O => lcd_cntrl_inst_count_Mcount_temp31
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_31_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(31),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(31)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_30_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(29),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(30),
      O => lcd_cntrl_inst_count_Mcount_temp30
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_30_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(29),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(30),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(30)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_30_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(30),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(30)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_29_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(28),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(29),
      O => lcd_cntrl_inst_count_Mcount_temp29
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_29_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(28),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(29),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(29)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_29_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(29),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(29)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_28_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(27),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(28),
      O => lcd_cntrl_inst_count_Mcount_temp28
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_28_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(27),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(28),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(28)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_28_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(28),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(28)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_27_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(26),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(27),
      O => lcd_cntrl_inst_count_Mcount_temp27
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_27_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(26),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(27),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(27)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_27_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(27),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(27)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_26_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(25),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(26),
      O => lcd_cntrl_inst_count_Mcount_temp26
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_26_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(25),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(26),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(26)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_26_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(26),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(26)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_25_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(24),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(25),
      O => lcd_cntrl_inst_count_Mcount_temp25
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_25_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(24),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(25),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(25)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_25_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(25),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(25)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_24_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(23),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(24),
      O => lcd_cntrl_inst_count_Mcount_temp24
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_24_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(23),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(24),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(24)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_24_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(24),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(24)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_23_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(22),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(23),
      O => lcd_cntrl_inst_count_Mcount_temp23
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_23_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(22),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(23),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(23)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_23_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(23),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(23)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_22_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(21),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(22),
      O => lcd_cntrl_inst_count_Mcount_temp22
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_22_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(21),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(22),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(22)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_22_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(22),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(22)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_21_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(20),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(21),
      O => lcd_cntrl_inst_count_Mcount_temp21
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_21_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(20),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(21),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(21)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_21_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(21),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(21)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_20_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(19),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(20),
      O => lcd_cntrl_inst_count_Mcount_temp20
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_20_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(19),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(20),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(20)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_20_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(20),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(20)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_19_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(18),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(19),
      O => lcd_cntrl_inst_count_Mcount_temp19
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_19_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(18),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(19),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(19)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_19_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(19),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(19)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_18_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(17),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(18),
      O => lcd_cntrl_inst_count_Mcount_temp18
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_18_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(17),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(18),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(18)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_18_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(18),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(18)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_17_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(16),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(17),
      O => lcd_cntrl_inst_count_Mcount_temp17
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_17_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(16),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(17),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(17)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_17_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(17),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(17)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_16_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(15),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(16),
      O => lcd_cntrl_inst_count_Mcount_temp16
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_16_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(15),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(16),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(16)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_16_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(16),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(16)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_15_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(14),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(15),
      O => lcd_cntrl_inst_count_Mcount_temp15
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_15_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(14),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(15),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(15)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_15_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(15),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(15)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_14_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(13),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(14),
      O => lcd_cntrl_inst_count_Mcount_temp14
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_14_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(13),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(14),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(14)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_14_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(14),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(14)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_13_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(12),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(13),
      O => lcd_cntrl_inst_count_Mcount_temp13
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_13_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(12),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(13),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(13)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(13),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(13)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_12_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(11),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(12),
      O => lcd_cntrl_inst_count_Mcount_temp12
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_12_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(11),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(12),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(12)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(12),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(12)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_11_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(10),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(11),
      O => lcd_cntrl_inst_count_Mcount_temp11
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_11_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(10),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(11),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(11)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(11),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(11)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_10_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(9),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(10),
      O => lcd_cntrl_inst_count_Mcount_temp10
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_10_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(9),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(10),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(10)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(10),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(10)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_9_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(8),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(9),
      O => lcd_cntrl_inst_count_Mcount_temp9
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_9_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(8),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(9),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(9)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(9),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(9)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_8_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(7),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(8),
      O => lcd_cntrl_inst_count_Mcount_temp8
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_8_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(7),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(8),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(8)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(8),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(8)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_7_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(6),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(7),
      O => lcd_cntrl_inst_count_Mcount_temp7
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_7_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(6),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(7),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(7)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(7),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(7)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_6_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(5),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(6),
      O => lcd_cntrl_inst_count_Mcount_temp6
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_6_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(5),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(6),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(6)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(6),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(6)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_5_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(4),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(5),
      O => lcd_cntrl_inst_count_Mcount_temp5
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_5_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(4),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(5),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(5)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(5),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(5)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_4_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(3),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(4),
      O => lcd_cntrl_inst_count_Mcount_temp4
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_4_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(3),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(4),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(4)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(4),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(4)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_3_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(2),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(3),
      O => lcd_cntrl_inst_count_Mcount_temp3
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_3_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(2),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(3),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(3)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(3),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(3)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_2_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(1),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(2),
      O => lcd_cntrl_inst_count_Mcount_temp2
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_2_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(1),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(2),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(2)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(2),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(2)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_1_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(0),
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(1),
      O => lcd_cntrl_inst_count_Mcount_temp1
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_1_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_count_Mcount_temp_cy(0),
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(1),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(1)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(1),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(1)
    );
  lcd_cntrl_inst_count_Mcount_temp_xor_0_Q : XORCY
    port map (
      CI => lcd_cntrl_inst_state_flag_inv,
      LI => lcd_cntrl_inst_count_Mcount_temp_lut(0),
      O => lcd_cntrl_inst_count_Mcount_temp
    );
  lcd_cntrl_inst_count_Mcount_temp_cy_0_Q : MUXCY
    port map (
      CI => lcd_cntrl_inst_state_flag_inv,
      DI => n0016(1),
      S => lcd_cntrl_inst_count_Mcount_temp_lut(0),
      O => lcd_cntrl_inst_count_Mcount_temp_cy(0)
    );
  lcd_cntrl_inst_count_Mcount_temp_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => lcd_cntrl_inst_state_flag,
      I1 => lcd_cntrl_inst_count_temp(0),
      I2 => n0016(1),
      O => lcd_cntrl_inst_count_Mcount_temp_lut(0)
    );
  lcd_cntrl_inst_count_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(31),
      Q => lcd_cntrl_inst_count(31)
    );
  lcd_cntrl_inst_count_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(30),
      Q => lcd_cntrl_inst_count(30)
    );
  lcd_cntrl_inst_count_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(29),
      Q => lcd_cntrl_inst_count(29)
    );
  lcd_cntrl_inst_count_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(28),
      Q => lcd_cntrl_inst_count(28)
    );
  lcd_cntrl_inst_count_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(27),
      Q => lcd_cntrl_inst_count(27)
    );
  lcd_cntrl_inst_count_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(26),
      Q => lcd_cntrl_inst_count(26)
    );
  lcd_cntrl_inst_count_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(25),
      Q => lcd_cntrl_inst_count(25)
    );
  lcd_cntrl_inst_count_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(24),
      Q => lcd_cntrl_inst_count(24)
    );
  lcd_cntrl_inst_count_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(23),
      Q => lcd_cntrl_inst_count(23)
    );
  lcd_cntrl_inst_count_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(22),
      Q => lcd_cntrl_inst_count(22)
    );
  lcd_cntrl_inst_count_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(21),
      Q => lcd_cntrl_inst_count(21)
    );
  lcd_cntrl_inst_count_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(20),
      Q => lcd_cntrl_inst_count(20)
    );
  lcd_cntrl_inst_count_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(19),
      Q => lcd_cntrl_inst_count(19)
    );
  lcd_cntrl_inst_count_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(18),
      Q => lcd_cntrl_inst_count(18)
    );
  lcd_cntrl_inst_count_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(17),
      Q => lcd_cntrl_inst_count(17)
    );
  lcd_cntrl_inst_count_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(16),
      Q => lcd_cntrl_inst_count(16)
    );
  lcd_cntrl_inst_count_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(15),
      Q => lcd_cntrl_inst_count(15)
    );
  lcd_cntrl_inst_count_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(14),
      Q => lcd_cntrl_inst_count(14)
    );
  lcd_cntrl_inst_count_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(13),
      Q => lcd_cntrl_inst_count(13)
    );
  lcd_cntrl_inst_count_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(12),
      Q => lcd_cntrl_inst_count(12)
    );
  lcd_cntrl_inst_count_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(11),
      Q => lcd_cntrl_inst_count(11)
    );
  lcd_cntrl_inst_count_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(10),
      Q => lcd_cntrl_inst_count(10)
    );
  lcd_cntrl_inst_count_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(9),
      Q => lcd_cntrl_inst_count(9)
    );
  lcd_cntrl_inst_count_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(8),
      Q => lcd_cntrl_inst_count(8)
    );
  lcd_cntrl_inst_count_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(7),
      Q => lcd_cntrl_inst_count(7)
    );
  lcd_cntrl_inst_count_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(6),
      Q => lcd_cntrl_inst_count(6)
    );
  lcd_cntrl_inst_count_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(5),
      Q => lcd_cntrl_inst_count(5)
    );
  lcd_cntrl_inst_count_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(4),
      Q => lcd_cntrl_inst_count(4)
    );
  lcd_cntrl_inst_count_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(3),
      Q => lcd_cntrl_inst_count(3)
    );
  lcd_cntrl_inst_count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(2),
      Q => lcd_cntrl_inst_count(2)
    );
  lcd_cntrl_inst_count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(1),
      Q => lcd_cntrl_inst_count(1)
    );
  lcd_cntrl_inst_count_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_count_temp(0),
      Q => lcd_cntrl_inst_count(0)
    );
  lcd_cntrl_inst_mode_state : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_next_mode_state_434,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_mode_state_433
    );
  lcd_cntrl_inst_sf_d_7 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(7),
      Q => lcd_cntrl_inst_sf_d(7)
    );
  lcd_cntrl_inst_sf_d_6 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(6),
      Q => lcd_cntrl_inst_sf_d(6)
    );
  lcd_cntrl_inst_sf_d_5 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(5),
      Q => lcd_cntrl_inst_sf_d(5)
    );
  lcd_cntrl_inst_sf_d_4 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(4),
      Q => lcd_cntrl_inst_sf_d(4)
    );
  lcd_cntrl_inst_sf_d_3 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(3),
      Q => lcd_cntrl_inst_sf_d(3)
    );
  lcd_cntrl_inst_sf_d_2 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(2),
      Q => lcd_cntrl_inst_sf_d(2)
    );
  lcd_cntrl_inst_sf_d_1 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(1),
      Q => lcd_cntrl_inst_sf_d(1)
    );
  lcd_cntrl_inst_sf_d_0 : FD
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_sf_d_temp(0),
      Q => lcd_cntrl_inst_sf_d(0)
    );
  lcd_cntrl_inst_next_mode_state : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => mode_control,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_next_mode_state_434
    );
  lcd_cntrl_inst_lap_min_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_mins_cnt(3),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_min(3)
    );
  lcd_cntrl_inst_lap_min_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_mins_cnt(2),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_min(2)
    );
  lcd_cntrl_inst_lap_min_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_mins_cnt(1),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_min(1)
    );
  lcd_cntrl_inst_lap_min_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_mins_cnt(0),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_min(0)
    );
  lcd_cntrl_inst_lap_tens_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tens_cnt(3),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tens(3)
    );
  lcd_cntrl_inst_lap_tens_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tens_cnt(2),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tens(2)
    );
  lcd_cntrl_inst_lap_tens_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tens_cnt(1),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tens(1)
    );
  lcd_cntrl_inst_lap_tens_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tens_cnt(0),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tens(0)
    );
  lcd_cntrl_inst_lap_tenths_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tenths_cnt(3),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tenths(3)
    );
  lcd_cntrl_inst_lap_tenths_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tenths_cnt(2),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tenths(2)
    );
  lcd_cntrl_inst_lap_tenths_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tenths_cnt(1),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tenths(1)
    );
  lcd_cntrl_inst_lap_tenths_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_tenths_cnt(0),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_tenths(0)
    );
  lcd_cntrl_inst_lap_hundredths_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_hundredths_cnt_3_26,
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_hundredths(3)
    );
  lcd_cntrl_inst_lap_hundredths_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_hundredths_cnt_2_27,
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_hundredths(2)
    );
  lcd_cntrl_inst_lap_hundredths_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_hundredths_cnt_1_28,
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_hundredths(1)
    );
  lcd_cntrl_inst_lap_hundredths_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_hundredths_cnt_0_29,
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_hundredths(0)
    );
  lcd_cntrl_inst_lap_ones_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_ones_cnt(3),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_ones(3)
    );
  lcd_cntrl_inst_lap_ones_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_ones_cnt(2),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_ones(2)
    );
  lcd_cntrl_inst_lap_ones_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_ones_cnt(1),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_ones(1)
    );
  lcd_cntrl_inst_lap_ones_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      CE => lcd_cntrl_inst_lap_mode_AND_50_o,
      D => timer_inst_ones_cnt(0),
      R => lcd_cntrl_inst_rst_mode_OR_32_o,
      Q => lcd_cntrl_inst_lap_ones(0)
    );
  timer_inst_hundredths_cnt_2 : LD
    port map (
      D => timer_inst_GND_13_o_q_3_mux_18_OUT_2_Q,
      G => timer_state_rst_13,
      Q => timer_inst_hundredths_cnt_2_27
    );
  timer_inst_hundredths_cnt_0 : LD
    port map (
      D => timer_inst_GND_13_o_q_3_mux_18_OUT_0_Q,
      G => timer_state_rst_13,
      Q => timer_inst_hundredths_cnt_0_29
    );
  timer_inst_mins_cnt_3 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0256_inv_463,
      CLR => timer_state_rst_13,
      D => timer_inst_mins_cnt_3_q_19_mux_82_OUT_3_Q,
      Q => timer_inst_mins_cnt(3)
    );
  timer_inst_mins_cnt_1 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0256_inv_463,
      CLR => timer_state_rst_13,
      D => timer_inst_mins_cnt_3_q_19_mux_82_OUT_1_Q,
      Q => timer_inst_mins_cnt(1)
    );
  timer_inst_mins_cnt_0 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0256_inv_463,
      CLR => timer_state_rst_13,
      D => timer_inst_mins_cnt_3_q_19_mux_82_OUT_0_Q,
      Q => timer_inst_mins_cnt(0)
    );
  timer_inst_tens_cnt_3 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0246_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tens_cnt_3_q_15_mux_63_OUT_3_Q,
      Q => timer_inst_tens_cnt(3)
    );
  timer_inst_tens_cnt_2 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0246_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tens_cnt_3_q_15_mux_63_OUT_2_Q,
      Q => timer_inst_tens_cnt(2)
    );
  timer_inst_tens_cnt_1 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0246_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tens_cnt_3_q_15_mux_63_OUT_1_Q,
      Q => timer_inst_tens_cnt(1)
    );
  timer_inst_tens_cnt_0 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0246_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tens_cnt_3_q_15_mux_63_OUT_0_Q,
      Q => timer_inst_tens_cnt(0)
    );
  timer_inst_ones_cnt_3 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0236_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_ones_cnt_3_q_11_mux_46_OUT_3_Q,
      Q => timer_inst_ones_cnt(3)
    );
  timer_inst_ones_cnt_2 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0236_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_ones_cnt_3_q_11_mux_46_OUT_2_Q,
      Q => timer_inst_ones_cnt(2)
    );
  timer_inst_ones_cnt_0 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0236_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_ones_cnt_3_q_11_mux_46_OUT_0_Q,
      Q => timer_inst_ones_cnt(0)
    );
  timer_inst_tenths_cnt_3 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0226_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_3_Q,
      Q => timer_inst_tenths_cnt(3)
    );
  timer_inst_tenths_cnt_2 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0226_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_2_Q,
      Q => timer_inst_tenths_cnt(2)
    );
  timer_inst_tenths_cnt_1 : FDCE
    port map (
      C => clk_100,
      CE => timer_inst_n0226_inv,
      CLR => timer_state_rst_13,
      D => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_1_Q,
      Q => timer_inst_tenths_cnt(1)
    );
  timer_inst_hundredths_cnt_3 : LD
    port map (
      D => timer_inst_GND_13_o_q_3_mux_18_OUT_3_Q,
      G => timer_state_rst_13,
      Q => timer_inst_hundredths_cnt_3_26
    );
  timer_inst_hundredths_cnt_1 : LD
    port map (
      D => timer_inst_GND_13_o_q_3_mux_18_OUT_1_Q,
      G => timer_state_rst_13,
      Q => timer_inst_hundredths_cnt_1_28
    );
  strtstop_debounce_sig_out1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => strtstop_debounce_Q1_79,
      I1 => strtstop_debounce_Q2_78,
      I2 => strtstop_debounce_Q3_77,
      O => strtstop_debounced
    );
  mode_debounce_sig_out1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => mode_debounce_Q1_82,
      I1 => mode_debounce_Q2_81,
      I2 => mode_debounce_Q3_80,
      O => mode_debounced
    );
  lap_load_debounce_sig_out1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => lap_load_debounce_Q1_85,
      I1 => lap_load_debounce_Q2_84,
      I2 => lap_load_debounce_Q3_83,
      O => ll_debounced
    );
  Mcount_address_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => address(0),
      I1 => address(1),
      O => Mcount_address1
    );
  Mcount_address_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => address(2),
      I1 => address(0),
      I2 => address(1),
      O => Mcount_address2
    );
  Mcount_address51 : LUT6
    generic map(
      INIT => X"78F0F0F0F0F0F0F0"
    )
    port map (
      I0 => address(3),
      I1 => address(4),
      I2 => address(5),
      I3 => address(0),
      I4 => address(1),
      I5 => address(2),
      O => Mcount_address5
    );
  Mcount_address41 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => address(3),
      I1 => address(4),
      I2 => address(0),
      I3 => address(1),
      I4 => address(2),
      O => Mcount_address4
    );
  Mcount_address31 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => address(3),
      I1 => address(0),
      I2 => address(1),
      I3 => address(2),
      O => Mcount_address3
    );
  timer_state_Mmux_next_clken21 : LUT6
    generic map(
      INIT => X"1410154014141540"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd2_159,
      I1 => timer_state_sreg_FSM_FFd1_160,
      I2 => timer_state_sreg_FSM_FFd4_157,
      I3 => timer_state_sreg_FSM_FFd3_158,
      I4 => strtstop_debounced,
      I5 => ll_debounced,
      O => timer_state_next_clken
    );
  timer_state_sreg_n0105_0_1 : LUT4
    generic map(
      INIT => X"999C"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd1_160,
      I1 => timer_state_sreg_FSM_FFd2_1_668,
      I2 => timer_state_sreg_FSM_FFd3_1_666,
      I3 => timer_state_sreg_FSM_FFd4_1_667,
      O => mode_control
    );
  timer_state_sreg_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"AAE8A9A9BAF8ABAB"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd1_160,
      I1 => timer_state_sreg_FSM_FFd4_157,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => mode_debounced,
      I4 => timer_state_sreg_FSM_FFd2_159,
      I5 => ll_debounced,
      O => timer_state_sreg_FSM_FFd1_In
    );
  timer_state_sreg_n0105_1_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd2_159,
      I1 => timer_state_sreg_FSM_FFd4_157,
      I2 => timer_state_sreg_FSM_FFd3_158,
      O => load
    );
  timer_state_state_reset1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => locked,
      I1 => reset_IBUF_3,
      O => timer_state_state_reset
    );
  lcd_cntrl_inst_n0510_5_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I4 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I5 => lcd_cntrl_inst_state_FSM_FFd6_395,
      O => lcd_cntrl_inst_n0510
    );
  lcd_cntrl_inst_state_FSM_FFd6_In11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_state_FSM_FFd6_In1_336
    );
  lcd_cntrl_inst_sf_d_temp_7_141 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_sf_d_temp_5_3
    );
  lcd_cntrl_inst_sf_d_temp_3_1 : LUT6
    generic map(
      INIT => X"545757565457555E"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_state_FSM_FFd3_398,
      O => lcd_cntrl_inst_sf_d_temp(5)
    );
  lcd_cntrl_inst_Mmux_state_flag11 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => lcd_cntrl_inst_n0510,
      I1 => lcd_cntrl_inst_n0408,
      I2 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I4 => lcd_cntrl_inst_Mcompar_n0000_cy(5),
      O => lcd_cntrl_inst_state_flag
    );
  lcd_cntrl_inst_state_FSM_FFd4_In51 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_state_FSM_FFd4_In5_163
    );
  lcd_cntrl_inst_sf_d_temp_6_51 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp_6_5_164
    );
  lcd_cntrl_inst_sf_d_temp_5_121 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_sf_d_temp_5_12
    );
  timer_inst_up_hundredths_cnt_3_AND_56_o1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_0_29,
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_1_28,
      I3 => timer_inst_hundredths_cnt_3_26,
      I4 => timer_state_sreg_n0105_0_1_665,
      O => timer_inst_up_hundredths_cnt_3_AND_56_o
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT21 : LUT6
    generic map(
      INIT => X"B88BB88B88BBBB88"
    )
    port map (
      I0 => preset_time(17),
      I1 => load,
      I2 => timer_inst_up_ones_cnt_3_AND_85_o,
      I3 => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_1_Q,
      I4 => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_A_0_Q,
      I5 => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_0_Q,
      O => timer_inst_mins_cnt_3_q_19_mux_82_OUT_1_Q
    );
  timer_inst_up_hundredths_cnt_3_AND_55_o1 : LUT5
    generic map(
      INIT => X"02000000"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_0_29,
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_1_28,
      I3 => timer_inst_hundredths_cnt_3_26,
      I4 => timer_state_sreg_n0105_0_1_665,
      O => timer_inst_up_hundredths_cnt_3_AND_55_o
    );
  timer_inst_n0236_inv1 : LUT6
    generic map(
      INIT => X"FEFCFAF0F0F0F0F0"
    )
    port map (
      I0 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I1 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I2 => load,
      I3 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I4 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I5 => timer_inst_enable,
      O => timer_inst_n0236_inv
    );
  timer_inst_n0246_inv1 : LUT6
    generic map(
      INIT => X"FFF8FFF0F0F0F0F0"
    )
    port map (
      I0 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I1 => timer_inst_ones_cnt_3_GND_13_o_equal_6_o,
      I2 => load,
      I3 => timer_inst_up_ones_cnt_3_AND_78_o,
      I4 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I5 => timer_inst_enable,
      O => timer_inst_n0246_inv
    );
  timer_inst_mins_cnt_3_GND_13_o_equal_10_o_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => timer_inst_mins_cnt(0),
      I1 => timer_inst_mins_cnt(1),
      I2 => timer_inst_mins_cnt(2),
      I3 => timer_inst_mins_cnt(3),
      O => timer_inst_mins_cnt_3_GND_13_o_equal_10_o
    );
  timer_inst_tens_cnt_3_GND_13_o_equal_8_o_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(2),
      I2 => timer_inst_tens_cnt(1),
      I3 => timer_inst_tens_cnt(3),
      O => timer_inst_tens_cnt_3_GND_13_o_equal_8_o
    );
  timer_inst_ones_cnt_3_GND_13_o_equal_6_o_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => timer_inst_ones_cnt(0),
      I1 => timer_inst_ones_cnt(2),
      I2 => timer_inst_ones_cnt(1),
      I3 => timer_inst_ones_cnt(3),
      O => timer_inst_ones_cnt_3_GND_13_o_equal_6_o
    );
  timer_inst_tenths_cnt_3_GND_13_o_equal_4_o_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => timer_inst_tenths_cnt(0),
      I1 => timer_inst_tenths_cnt(2),
      I2 => timer_inst_tenths_cnt(1),
      I3 => timer_inst_tenths_cnt(3),
      O => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o
    );
  timer_inst_mins_cnt_3_PWR_13_o_equal_9_o_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => timer_inst_mins_cnt(0),
      I1 => timer_inst_mins_cnt(2),
      I2 => timer_inst_mins_cnt(3),
      I3 => timer_inst_mins_cnt(1),
      O => timer_inst_mins_cnt_3_PWR_13_o_equal_9_o
    );
  timer_inst_tens_cnt_3_GND_13_o_equal_7_o_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(2),
      I2 => timer_inst_tens_cnt(1),
      I3 => timer_inst_tens_cnt(3),
      O => timer_inst_tens_cnt_3_GND_13_o_equal_7_o
    );
  timer_inst_ones_cnt_3_PWR_13_o_equal_5_o_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => timer_inst_ones_cnt(0),
      I1 => timer_inst_ones_cnt(2),
      I2 => timer_inst_ones_cnt(3),
      I3 => timer_inst_ones_cnt(1),
      O => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o
    );
  timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => timer_inst_tenths_cnt(0),
      I1 => timer_inst_tenths_cnt(2),
      I2 => timer_inst_tenths_cnt(3),
      I3 => timer_inst_tenths_cnt(1),
      O => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o
    );
  timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_lut_2_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_inst_ones_cnt(2),
      I1 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_lut_2_Q
    );
  timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_0_1 : LUT4
    generic map(
      INIT => X"A35C"
    )
    port map (
      I0 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I1 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I2 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I3 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q,
      O => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_0_Q
    );
  timer_state_sreg_FSM_FFd2_In_SW1 : LUT5
    generic map(
      INIT => X"FFFFFF51"
    )
    port map (
      I0 => ll_debounced,
      I1 => mode_debounced,
      I2 => strtstop_debounced,
      I3 => timer_state_sreg_FSM_FFd3_158,
      I4 => timer_state_sreg_FSM_FFd4_157,
      O => N1
    );
  lcd_cntrl_inst_n0385_inv1 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => lcd_cntrl_inst_clock_flag_393,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_lap_flag_360,
      O => lcd_cntrl_inst_n0385_inv1_512
    );
  lcd_cntrl_inst_n0385_inv3 : LUT5
    generic map(
      INIT => X"55555D55"
    )
    port map (
      I0 => lcd_cntrl_inst_mode_state_433,
      I1 => lcd_cntrl_inst_n0385_inv2_513,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => mode_control,
      I4 => lcd_cntrl_inst_state_FSM_FFd3_398,
      O => lcd_cntrl_inst_n0385_inv
    );
  lcd_cntrl_inst_state_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"8088808000080000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I5 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_state_FSM_FFd2_In1_514
    );
  lcd_cntrl_inst_state_FSM_FFd2_In2 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => mode_control,
      I1 => lcd_cntrl_inst_timer_flag_394,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I5 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_state_FSM_FFd2_In2_515
    );
  lcd_cntrl_inst_state_FSM_FFd2_In3 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_sf_d_temp_1_1
    );
  lcd_cntrl_inst_state_FSM_FFd2_In4 : LUT6
    generic map(
      INIT => X"FFAA8FAAFFAA8AAA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => lcd_cntrl_inst_sf_d_temp_1_1,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I4 => lcd_cntrl_inst_state_FSM_FFd2_In1_514,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_In2_515,
      O => lcd_cntrl_inst_state_FSM_FFd2_In
    );
  lcd_cntrl_inst_state_FSM_FFd4_In1 : LUT5
    generic map(
      INIT => X"5545DFFF"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      O => lcd_cntrl_inst_state_FSM_FFd4_In1_516
    );
  lcd_cntrl_inst_state_FSM_FFd4_In2 : LUT6
    generic map(
      INIT => X"0444040400400000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_In5_163,
      I2 => mode_control,
      I3 => lcd_cntrl_inst_lap_flag_360,
      I4 => lcd_cntrl_inst_clock_flag_393,
      I5 => lcd_cntrl_inst_timer_flag_394,
      O => lcd_cntrl_inst_state_FSM_FFd4_In3_517
    );
  lcd_cntrl_inst_state_FSM_FFd4_In3 : LUT6
    generic map(
      INIT => X"A2A22223A2A22220"
    )
    port map (
      I0 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I5 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o,
      O => lcd_cntrl_inst_state_FSM_FFd4_In4_518
    );
  lcd_cntrl_inst_state_FSM_FFd4_In4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_state_FSM_FFd4_In6
    );
  lcd_cntrl_inst_state_FSM_FFd4_In5 : LUT6
    generic map(
      INIT => X"FFFFFA8AFA8AFA8A"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_In1_516,
      I2 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_In3_517,
      I4 => lcd_cntrl_inst_state_FSM_FFd4_In4_518,
      I5 => lcd_cntrl_inst_state_FSM_FFd4_In6,
      O => lcd_cntrl_inst_state_FSM_FFd4_In
    );
  lcd_cntrl_inst_state_FSM_FFd6_In1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_state_FSM_FFd6_In2_520
    );
  lcd_cntrl_inst_state_FSM_FFd6_In2 : LUT4
    generic map(
      INIT => X"6762"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_Mcompar_n0000_cy(5),
      O => lcd_cntrl_inst_state_FSM_FFd6_In3_521
    );
  lcd_cntrl_inst_state_FSM_FFd6_In3 : LUT6
    generic map(
      INIT => X"20202020A8202020"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_In2_520,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_In3_521,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I5 => mode_control,
      O => lcd_cntrl_inst_state_FSM_FFd6_In4_522
    );
  lcd_cntrl_inst_state_FSM_FFd6_In4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      O => lcd_cntrl_inst_state_FSM_FFd6_In5_523
    );
  lcd_cntrl_inst_state_FSM_FFd6_In5 : LUT6
    generic map(
      INIT => X"8082808000020000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_In5_523,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I5 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      O => lcd_cntrl_inst_state_FSM_FFd6_In6_524
    );
  lcd_cntrl_inst_state_FSM_FFd6_In6 : LUT6
    generic map(
      INIT => X"AAAA8088AAAAA2AA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => mode_control,
      I2 => lcd_cntrl_inst_lap_flag_360,
      I3 => lcd_cntrl_inst_clock_flag_393,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_timer_flag_394,
      O => lcd_cntrl_inst_state_FSM_FFd6_In7_525
    );
  lcd_cntrl_inst_state_FSM_FFd6_In8 : LUT6
    generic map(
      INIT => X"FFFFFFFFBBEAAAEA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_In6_524,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_In8_526,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_In1_336,
      I5 => lcd_cntrl_inst_state_FSM_FFd6_In4_522,
      O => lcd_cntrl_inst_state_FSM_FFd6_In
    );
  lcd_cntrl_inst_state_FSM_FFd1_In2 : LUT5
    generic map(
      INIT => X"FFFF7F7E"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_In1_527,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      O => lcd_cntrl_inst_state_FSM_FFd1_In2_528
    );
  lcd_cntrl_inst_state_FSM_FFd1_In3 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_state_FSM_FFd1_In3_529
    );
  lcd_cntrl_inst_state_FSM_FFd1_In4 : LUT4
    generic map(
      INIT => X"EEA2"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_In2_528,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_In3_529,
      O => lcd_cntrl_inst_state_FSM_FFd1_In
    );
  lcd_cntrl_inst_state_FSM_FFd3_In_SW0 : LUT5
    generic map(
      INIT => X"DDA2A8AA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => N15
    );
  lcd_cntrl_inst_state_FSM_FFd3_In : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I3 => N15,
      O => lcd_cntrl_inst_state_FSM_FFd3_In_332
    );
  lcd_cntrl_inst_sf_d_temp_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_tens(1),
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_sf_d_temp_7_1_531
    );
  lcd_cntrl_inst_sf_d_temp_7_2 : LUT6
    generic map(
      INIT => X"10BA101010101010"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_lap_tens(3),
      I2 => lcd_cntrl_inst_sf_d_temp_7_1_531,
      I3 => lcd_cntrl_inst_lap_hundredths(3),
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_lap_hundredths(1),
      O => lcd_cntrl_inst_sf_d_temp_7_2_532
    );
  lcd_cntrl_inst_sf_d_temp_7_3 : LUT6
    generic map(
      INIT => X"0808080888080808"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => timer_inst_tenths_cnt(1),
      I4 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I5 => timer_inst_tenths_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_7_3_533
    );
  lcd_cntrl_inst_sf_d_temp_7_4 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_3_26,
      I1 => timer_inst_hundredths_cnt_1_28,
      O => lcd_cntrl_inst_sf_d_temp_7_4_534
    );
  lcd_cntrl_inst_sf_d_temp_7_5 : LUT6
    generic map(
      INIT => X"2020202064202020"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_sf_d_temp_7_4_534,
      I3 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I4 => timer_inst_tens_cnt(1),
      I5 => timer_inst_tens_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_7_5_535
    );
  lcd_cntrl_inst_sf_d_temp_7_6 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => timer_inst_mins_cnt(1),
      I2 => timer_inst_mins_cnt(3),
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_sf_d_temp_7_6_536
    );
  lcd_cntrl_inst_sf_d_temp_7_7 : LUT6
    generic map(
      INIT => X"FFFFFFFF08A80808"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_sf_d_temp_7_6_536,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_lap_tenths(3),
      I4 => lcd_cntrl_inst_lap_tenths(1),
      I5 => lcd_cntrl_inst_sf_d_temp_7_5_535,
      O => lcd_cntrl_inst_sf_d_temp_7_7_537
    );
  lcd_cntrl_inst_sf_d_temp_7_8 : LUT6
    generic map(
      INIT => X"5140514055555140"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_sf_d_temp_7_2_532,
      I3 => lcd_cntrl_inst_sf_d_temp_7_3_533,
      I4 => lcd_cntrl_inst_sf_d_temp_7_7_537,
      I5 => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_sf_d_temp_7_8_538
    );
  lcd_cntrl_inst_sf_d_temp_7_9 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => timer_inst_ones_cnt(3),
      I1 => timer_inst_ones_cnt(1),
      O => lcd_cntrl_inst_sf_d_temp_7_9_539
    );
  lcd_cntrl_inst_sf_d_temp_7_10 : LUT6
    generic map(
      INIT => X"AA80FF80AA80AA80"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_sf_d_temp_7_9_539,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => lcd_cntrl_inst_lap_min(3),
      I5 => lcd_cntrl_inst_lap_min(1),
      O => lcd_cntrl_inst_sf_d_temp_7_10_540
    );
  lcd_cntrl_inst_sf_d_temp_7_11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_ones(1),
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_lap_ones(3),
      O => lcd_cntrl_inst_sf_d_temp_7_11_541
    );
  lcd_cntrl_inst_sf_d_temp_7_12 : LUT6
    generic map(
      INIT => X"FFA8F8A8FFA8A8A8"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_sf_d_temp_7_11_541,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_sf_d_temp_7_10_540,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp_7_12_542
    );
  lcd_cntrl_inst_sf_d_temp_7_13 : LUT4
    generic map(
      INIT => X"0F28"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_state_FSM_FFd3_398,
      O => lcd_cntrl_inst_sf_d_temp_7_13_543
    );
  lcd_cntrl_inst_sf_d_temp_7_14 : LUT5
    generic map(
      INIT => X"FFFF2E22"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_7_12_542,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_sf_d_temp_7_13_543,
      I4 => lcd_cntrl_inst_sf_d_temp_7_8_538,
      O => lcd_cntrl_inst_sf_d_temp(1)
    );
  lcd_cntrl_inst_n0502_5_1 : LUT6
    generic map(
      INIT => X"0A88AABBAA88AA80"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I5 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_n0502(5)
    );
  lcd_cntrl_inst_sf_d_temp_8_2 : LUT6
    generic map(
      INIT => X"5555444055555555"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => timer_inst_tens_cnt(3),
      I2 => timer_inst_tens_cnt(2),
      I3 => timer_inst_tens_cnt(1),
      I4 => timer_inst_tens_cnt(0),
      I5 => lcd_cntrl_inst_state_FSM_FFd3_398,
      O => lcd_cntrl_inst_sf_d_temp_8_1
    );
  lcd_cntrl_inst_sf_d_temp_8_6 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => timer_inst_ones_cnt(3),
      I1 => timer_inst_ones_cnt(1),
      I2 => timer_inst_ones_cnt(2),
      I3 => timer_inst_ones_cnt(0),
      O => lcd_cntrl_inst_sf_d_temp_8_6_548
    );
  lcd_cntrl_inst_sf_d_temp_8_7 : LUT5
    generic map(
      INIT => X"15154404"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => lcd_cntrl_inst_sf_d_temp_8_6_548,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      O => lcd_cntrl_inst_sf_d_temp_8_7_549
    );
  lcd_cntrl_inst_sf_d_temp_8_8 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_ones(3),
      I1 => lcd_cntrl_inst_lap_ones(1),
      I2 => lcd_cntrl_inst_lap_ones(2),
      I3 => lcd_cntrl_inst_lap_ones(0),
      O => lcd_cntrl_inst_sf_d_temp_8_8_550
    );
  lcd_cntrl_inst_sf_d_temp_8_9 : LUT5
    generic map(
      INIT => X"22202020"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_sf_d_temp_8_7_549,
      I3 => lcd_cntrl_inst_sf_d_temp_8_8_550,
      I4 => lcd_cntrl_inst_state_FSM_FFd4_In5_163,
      O => lcd_cntrl_inst_sf_d_temp_8_9_551
    );
  lcd_cntrl_inst_sf_d_temp_8_10 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_tenths(3),
      I1 => lcd_cntrl_inst_lap_tenths(1),
      I2 => lcd_cntrl_inst_lap_tenths(2),
      I3 => lcd_cntrl_inst_lap_tenths(0),
      O => lcd_cntrl_inst_sf_d_temp_8_10_552
    );
  lcd_cntrl_inst_sf_d_temp_8_13 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_hundredths(3),
      I1 => lcd_cntrl_inst_lap_hundredths(1),
      I2 => lcd_cntrl_inst_lap_hundredths(2),
      I3 => lcd_cntrl_inst_lap_hundredths(0),
      O => lcd_cntrl_inst_sf_d_temp_8_13_554
    );
  lcd_cntrl_inst_sf_d_temp_8_14 : LUT5
    generic map(
      INIT => X"55554440"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_lap_min(3),
      I2 => lcd_cntrl_inst_lap_min(2),
      I3 => lcd_cntrl_inst_lap_min(1),
      I4 => lcd_cntrl_inst_lap_min(0),
      O => lcd_cntrl_inst_sf_d_temp_8_14_555
    );
  lcd_cntrl_inst_sf_d_temp_8_15 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_tens(3),
      I1 => lcd_cntrl_inst_lap_tens(1),
      I2 => lcd_cntrl_inst_lap_tens(2),
      I3 => lcd_cntrl_inst_lap_tens(0),
      O => lcd_cntrl_inst_sf_d_temp_8_15_556
    );
  lcd_cntrl_inst_sf_d_temp_8_16 : LUT6
    generic map(
      INIT => X"77DC76DC55DC54DC"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_sf_d_temp_8_14_555,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I4 => lcd_cntrl_inst_sf_d_temp_8_15_556,
      I5 => lcd_cntrl_inst_sf_d_temp_8_13_554,
      O => lcd_cntrl_inst_sf_d_temp_8_16_557
    );
  lcd_cntrl_inst_sf_d_temp_8_17 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_8_9_551,
      I1 => lcd_cntrl_inst_sf_d_temp_8_12_553,
      I2 => lcd_cntrl_inst_sf_d_temp_8_16_557,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I5 => lcd_cntrl_inst_sf_d_temp_8_4_547,
      O => lcd_cntrl_inst_sf_d_temp(0)
    );
  lcd_cntrl_inst_sf_d_temp_6_1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => timer_inst_ones_cnt(1),
      I1 => timer_inst_ones_cnt(3),
      I2 => timer_inst_ones_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_6_1_558
    );
  lcd_cntrl_inst_sf_d_temp_6_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => timer_inst_tens_cnt(1),
      I1 => timer_inst_tens_cnt(3),
      I2 => timer_inst_tens_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_6_2_559
    );
  lcd_cntrl_inst_sf_d_temp_6_6 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_min(1),
      I1 => lcd_cntrl_inst_lap_min(3),
      I2 => lcd_cntrl_inst_lap_min(2),
      O => lcd_cntrl_inst_sf_d_temp_6_7_561
    );
  lcd_cntrl_inst_sf_d_temp_6_7 : LUT6
    generic map(
      INIT => X"7777755522222000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_lap_tens(1),
      I3 => lcd_cntrl_inst_lap_tens(3),
      I4 => lcd_cntrl_inst_lap_tens(2),
      I5 => lcd_cntrl_inst_sf_d_temp_6_7_561,
      O => lcd_cntrl_inst_sf_d_temp_6_8
    );
  lcd_cntrl_inst_sf_d_temp_6_10 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I1 => timer_inst_tenths_cnt(1),
      I2 => timer_inst_tenths_cnt(3),
      I3 => timer_inst_tenths_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_6_11_564
    );
  lcd_cntrl_inst_sf_d_temp_6_11 : LUT6
    generic map(
      INIT => X"7773737366626262"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_lap_hundredths(2),
      I3 => lcd_cntrl_inst_lap_hundredths(1),
      I4 => lcd_cntrl_inst_lap_hundredths(3),
      I5 => lcd_cntrl_inst_sf_d_temp_6_11_564,
      O => lcd_cntrl_inst_sf_d_temp_6_12_565
    );
  lcd_cntrl_inst_sf_d_temp_6_12 : LUT5
    generic map(
      INIT => X"FEEEFFFF"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => timer_inst_mins_cnt(2),
      I2 => timer_inst_mins_cnt(1),
      I3 => timer_inst_mins_cnt(3),
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp_6_13_566
    );
  lcd_cntrl_inst_sf_d_temp_6_13 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_tenths(2),
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_lap_tenths(1),
      I3 => lcd_cntrl_inst_lap_tenths(3),
      O => lcd_cntrl_inst_sf_d_temp_6_14_567
    );
  lcd_cntrl_inst_sf_d_temp_6_14 : LUT6
    generic map(
      INIT => X"A9892101A8882000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_sf_d_temp_6_14_567,
      I4 => lcd_cntrl_inst_sf_d_temp_6_12_565,
      I5 => lcd_cntrl_inst_sf_d_temp_6_13_566,
      O => lcd_cntrl_inst_sf_d_temp_6_15_568
    );
  lcd_cntrl_inst_sf_d_temp_6_15 : LUT4
    generic map(
      INIT => X"FBEA"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_6_10_563,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_sf_d_temp_6_15_568,
      I3 => lcd_cntrl_inst_sf_d_temp_6_6_560,
      O => lcd_cntrl_inst_sf_d_temp(2)
    );
  lcd_cntrl_inst_state_FSM_FFd5_In2 : LUT5
    generic map(
      INIT => X"EAEE60CC"
    )
    port map (
      I0 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_In1_336,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_In1_569,
      O => lcd_cntrl_inst_state_FSM_FFd5_In2_570
    );
  lcd_cntrl_inst_state_FSM_FFd5_In5 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_In4_571,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_In2_570,
      O => lcd_cntrl_inst_state_FSM_FFd5_In
    );
  lcd_cntrl_inst_sf_d_temp_4_1 : LUT5
    generic map(
      INIT => X"08080888"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_5_3,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => timer_inst_tenths_cnt(3),
      I3 => timer_inst_tenths_cnt(2),
      I4 => timer_inst_tenths_cnt(1),
      O => lcd_cntrl_inst_sf_d_temp_4_1_572
    );
  lcd_cntrl_inst_sf_d_temp_4_2 : LUT6
    generic map(
      INIT => X"5555555500044444"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => timer_inst_ones_cnt(2),
      I3 => timer_inst_ones_cnt(1),
      I4 => timer_inst_ones_cnt(3),
      I5 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_sf_d_temp_4_2_573
    );
  lcd_cntrl_inst_sf_d_temp_4_3 : LUT6
    generic map(
      INIT => X"AAAAAAAA08080888"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_lap_hundredths(3),
      I3 => lcd_cntrl_inst_lap_hundredths(2),
      I4 => lcd_cntrl_inst_lap_hundredths(1),
      I5 => lcd_cntrl_inst_sf_d_temp_4_2_573,
      O => lcd_cntrl_inst_sf_d_temp_4_4_574
    );
  lcd_cntrl_inst_sf_d_temp_4_4 : LUT6
    generic map(
      INIT => X"4445555555555555"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => timer_inst_tens_cnt(2),
      I3 => timer_inst_tens_cnt(1),
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => timer_inst_tens_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_4_5_575
    );
  lcd_cntrl_inst_sf_d_temp_4_5 : LUT6
    generic map(
      INIT => X"5555555500044444"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_lap_tenths(2),
      I3 => lcd_cntrl_inst_lap_tenths(1),
      I4 => lcd_cntrl_inst_lap_tenths(3),
      I5 => lcd_cntrl_inst_sf_d_temp_4_5_575,
      O => lcd_cntrl_inst_sf_d_temp_4_6_576
    );
  lcd_cntrl_inst_sf_d_temp_4_6 : LUT5
    generic map(
      INIT => X"04040444"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_lap_ones(3),
      I3 => lcd_cntrl_inst_lap_ones(1),
      I4 => lcd_cntrl_inst_lap_ones(2),
      O => lcd_cntrl_inst_sf_d_temp_4_7_577
    );
  lcd_cntrl_inst_sf_d_temp_4_7 : LUT5
    generic map(
      INIT => X"08080888"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_lap_tens(3),
      I3 => lcd_cntrl_inst_lap_tens(2),
      I4 => lcd_cntrl_inst_lap_tens(1),
      O => lcd_cntrl_inst_sf_d_temp_4_8_578
    );
  lcd_cntrl_inst_sf_d_temp_4_8 : LUT5
    generic map(
      INIT => X"11155555"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_lap_min(3),
      I2 => lcd_cntrl_inst_lap_min(1),
      I3 => lcd_cntrl_inst_lap_min(2),
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_sf_d_temp_4_9_579
    );
  lcd_cntrl_inst_sf_d_temp_4_12 : LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFAAA8"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_sf_d_temp_4_6_576,
      I2 => lcd_cntrl_inst_sf_d_temp_4_7_577,
      I3 => lcd_cntrl_inst_sf_d_temp_4_4_574,
      I4 => lcd_cntrl_inst_sf_d_temp_4_1_572,
      I5 => lcd_cntrl_inst_sf_d_temp_4_12_581,
      O => lcd_cntrl_inst_sf_d_temp_4_13_582
    );
  lcd_cntrl_inst_sf_d_temp_5_10 : LUT6
    generic map(
      INIT => X"FFFFFFAEFFFF5504"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_sf_d_temp_5_10_588,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_sf_d_temp_5_8,
      I4 => lcd_cntrl_inst_sf_d_temp_5_1_584,
      I5 => lcd_cntrl_inst_sf_d_temp_5_6,
      O => lcd_cntrl_inst_sf_d_temp(3)
    );
  lcd_cntrl_inst_Mmux_control13 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => lcd_cntrl_inst_n0510,
      I1 => lcd_cntrl_inst_n0515,
      I2 => lcd_cntrl_inst_Mmux_control1,
      I3 => lcd_cntrl_inst_Mmux_control11_590,
      O => n0016(0)
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_289_o_31_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
    port map (
      I0 => lcd_cntrl_inst_count(14),
      I1 => lcd_cntrl_inst_count(11),
      I2 => lcd_cntrl_inst_count(4),
      I3 => lcd_cntrl_inst_count(18),
      I4 => lcd_cntrl_inst_count(7),
      I5 => lcd_cntrl_inst_count(10),
      O => N17
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_289_o_31_Q : LUT6
    generic map(
      INIT => X"0000000000008000"
    )
    port map (
      I0 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_1,
      I1 => lcd_cntrl_inst_count(16),
      I2 => lcd_cntrl_inst_count(12),
      I3 => lcd_cntrl_inst_count(6),
      I4 => lcd_cntrl_inst_count(5),
      I5 => N17,
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
    port map (
      I0 => lcd_cntrl_inst_count(18),
      I1 => lcd_cntrl_inst_count(14),
      I2 => lcd_cntrl_inst_count(4),
      I3 => lcd_cntrl_inst_count(7),
      I4 => lcd_cntrl_inst_count(11),
      I5 => lcd_cntrl_inst_count(10),
      O => N19
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_Q : LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      I0 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_1,
      I1 => lcd_cntrl_inst_count(16),
      I2 => lcd_cntrl_inst_count(12),
      I3 => lcd_cntrl_inst_count(6),
      I4 => lcd_cntrl_inst_count(5),
      I5 => N19,
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_11 : LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      I0 => lcd_cntrl_inst_count(13),
      I1 => lcd_cntrl_inst_count(0),
      I2 => lcd_cntrl_inst_count(2),
      I3 => lcd_cntrl_inst_count(1),
      I4 => lcd_cntrl_inst_count(17),
      I5 => lcd_cntrl_inst_count(3),
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_11_593
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_12 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(20),
      I1 => lcd_cntrl_inst_count(15),
      I2 => lcd_cntrl_inst_count(22),
      I3 => lcd_cntrl_inst_count(21),
      I4 => lcd_cntrl_inst_count(23),
      I5 => lcd_cntrl_inst_count(24),
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_12_594
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_13 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(27),
      I1 => lcd_cntrl_inst_count(25),
      I2 => lcd_cntrl_inst_count(26),
      I3 => lcd_cntrl_inst_count(28),
      I4 => lcd_cntrl_inst_count(29),
      I5 => lcd_cntrl_inst_count(30),
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_13_595
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcd_cntrl_inst_count(8),
      I1 => lcd_cntrl_inst_count(19),
      I2 => lcd_cntrl_inst_count(9),
      I3 => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_14_596
    );
  lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_15 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_11_593,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_12_594,
      I2 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_13_595,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_14_596,
      O => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o_31_1
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_12_SW0 : LUT5
    generic map(
      INIT => X"6CC96CC8"
    )
    port map (
      I0 => mode_control,
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_1_28,
      I3 => timer_inst_hundredths_cnt_0_29,
      I4 => timer_inst_hundredths_cnt_3_26,
      O => N21
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_11_SW0 : LUT5
    generic map(
      INIT => X"69692968"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_1_28,
      I1 => mode_control,
      I2 => timer_inst_hundredths_cnt_0_29,
      I3 => timer_inst_hundredths_cnt_3_26,
      I4 => timer_inst_hundredths_cnt_2_27,
      O => N23
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_13_SW0 : LUT5
    generic map(
      INIT => X"78D0F0E1"
    )
    port map (
      I0 => mode_control,
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_3_26,
      I3 => timer_inst_hundredths_cnt_1_28,
      I4 => timer_inst_hundredths_cnt_0_29,
      O => N25
    );
  timer_inst_n0256_inv : LUT6
    generic map(
      INIT => X"FFECFFCCCCCCCCCC"
    )
    port map (
      I0 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I1 => load,
      I2 => N27,
      I3 => timer_inst_up_ones_cnt_3_AND_85_o,
      I4 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I5 => timer_inst_enable,
      O => timer_inst_n0256_inv_463
    );
  timer_inst_enable1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => timer_inst_mins_cnt_3_PWR_13_o_equal_9_o,
      I1 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I2 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I3 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      O => timer_inst_enable1_601
    );
  timer_inst_enable2 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => timer_inst_mins_cnt_3_GND_13_o_equal_10_o,
      I1 => timer_inst_tens_cnt_3_GND_13_o_equal_8_o,
      I2 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I3 => timer_inst_ones_cnt_3_GND_13_o_equal_6_o,
      O => timer_inst_enable2_602
    );
  timer_inst_enable3 : LUT6
    generic map(
      INIT => X"A820A820A820AAAA"
    )
    port map (
      I0 => timer_state_clken_9,
      I1 => mode_control,
      I2 => timer_inst_enable2_602,
      I3 => timer_inst_enable1_601,
      I4 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I5 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      O => timer_inst_enable
    );
  lap_load_IBUF : IBUF
    port map (
      I => lap_load,
      O => lap_load_IBUF_1
    );
  mode_IBUF : IBUF
    port map (
      I => mode,
      O => mode_IBUF_2
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_3
    );
  strtstop_IBUF : IBUF
    port map (
      I => strtstop,
      O => strtstop_IBUF_4
    );
  sf_d_7_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(7),
      O => sf_d(7)
    );
  sf_d_6_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(6),
      O => sf_d(6)
    );
  sf_d_5_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(5),
      O => sf_d(5)
    );
  sf_d_4_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(4),
      O => sf_d(4)
    );
  sf_d_3_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(3),
      O => sf_d(3)
    );
  sf_d_2_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(2),
      O => sf_d(2)
    );
  sf_d_1_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(1),
      O => sf_d(1)
    );
  sf_d_0_OBUF : OBUF
    port map (
      I => lcd_cntrl_inst_sf_d(0),
      O => sf_d(0)
    );
  lcd_e_OBUF : OBUF
    port map (
      I => n0016(0),
      O => lcd_e
    );
  lcd_rs_OBUF : OBUF
    port map (
      I => n0016(2),
      O => lcd_rs
    );
  lcd_rw_OBUF : OBUF
    port map (
      I => n0016(1),
      O => lcd_rw
    );
  lcd_cntrl_inst_clock_flag : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_clock_flag_glue_rst_618,
      Q => lcd_cntrl_inst_clock_flag_393
    );
  lcd_cntrl_inst_lap_flag : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_lap_flag_glue_rst_620,
      Q => lcd_cntrl_inst_lap_flag_360
    );
  lcd_cntrl_inst_timer_flag : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => lcd_cntrl_inst_timer_flag_glue_set_621,
      R => timer_state_rst_13,
      Q => lcd_cntrl_inst_timer_flag_394
    );
  clk_divider_Mcount_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(1),
      O => clk_divider_Mcount_cnt_cy_1_rt_622
    );
  clk_divider_Mcount_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(2),
      O => clk_divider_Mcount_cnt_cy_2_rt_623
    );
  clk_divider_Mcount_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(3),
      O => clk_divider_Mcount_cnt_cy_3_rt_624
    );
  clk_divider_Mcount_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(4),
      O => clk_divider_Mcount_cnt_cy_4_rt_625
    );
  clk_divider_Mcount_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(5),
      O => clk_divider_Mcount_cnt_cy_5_rt_626
    );
  clk_divider_Mcount_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(6),
      O => clk_divider_Mcount_cnt_cy_6_rt_627
    );
  clk_divider_Mcount_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(7),
      O => clk_divider_Mcount_cnt_cy_7_rt_628
    );
  clk_divider_Mcount_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(8),
      O => clk_divider_Mcount_cnt_cy_8_rt_629
    );
  clk_divider_Mcount_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(9),
      O => clk_divider_Mcount_cnt_cy_9_rt_630
    );
  clk_divider_Mcount_cnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(10),
      O => clk_divider_Mcount_cnt_cy_10_rt_631
    );
  clk_divider_Mcount_cnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(11),
      O => clk_divider_Mcount_cnt_cy_11_rt_632
    );
  clk_divider_Mcount_cnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(12),
      O => clk_divider_Mcount_cnt_cy_12_rt_633
    );
  clk_divider_Mcount_cnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(13),
      O => clk_divider_Mcount_cnt_cy_13_rt_634
    );
  clk_divider_Mcount_cnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(14),
      O => clk_divider_Mcount_cnt_cy_14_rt_635
    );
  clk_divider_Mcount_cnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(15),
      O => clk_divider_Mcount_cnt_cy_15_rt_636
    );
  clk_divider_Mcount_cnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(16),
      O => clk_divider_Mcount_cnt_cy_16_rt_637
    );
  clk_divider_Mcount_cnt_xor_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_divider_cnt(17),
      O => clk_divider_Mcount_cnt_xor_17_rt_638
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_1_SW0 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(3),
      I2 => timer_inst_tens_cnt(2),
      I3 => timer_inst_tens_cnt(1),
      O => N29
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_1_SW1 : LUT4
    generic map(
      INIT => X"04FF"
    )
    port map (
      I0 => timer_inst_tens_cnt(1),
      I1 => timer_inst_tens_cnt(2),
      I2 => timer_inst_tens_cnt(3),
      I3 => timer_inst_tens_cnt(0),
      O => N30
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_1 : LUT6
    generic map(
      INIT => X"33CCA5A5A5A5A5A5"
    )
    port map (
      I0 => N29,
      I1 => N30,
      I2 => timer_inst_tens_cnt_3_GND_13_o_equal_8_o,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_Q
    );
  timer_inst_Mmux_tens_cnt_3_q_15_mux_63_OUT41 : LUT6
    generic map(
      INIT => X"88BB8BB8BB888BB8"
    )
    port map (
      I0 => preset_time(15),
      I1 => load,
      I2 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_A_2_Q,
      I3 => N32,
      I4 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_2_Q,
      I5 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_Q,
      O => timer_inst_tens_cnt_3_q_15_mux_63_OUT_3_Q
    );
  timer_inst_up_tenths_cnt_3_AND_73_o1 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_1_28,
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_3_26,
      I3 => timer_inst_hundredths_cnt_0_29,
      I4 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I5 => mode_control,
      O => timer_inst_up_tenths_cnt_3_AND_73_o
    );
  timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_0_1_SW1 : LUT4
    generic map(
      INIT => X"04FF"
    )
    port map (
      I0 => timer_inst_mins_cnt(1),
      I1 => timer_inst_mins_cnt(3),
      I2 => timer_inst_mins_cnt(2),
      I3 => timer_inst_mins_cnt(0),
      O => N35
    );
  timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_0_1 : LUT6
    generic map(
      INIT => X"3CAAAAAAAAAAAAAA"
    )
    port map (
      I0 => timer_inst_mins_cnt(0),
      I1 => N35,
      I2 => timer_inst_mins_cnt_3_PWR_13_o_equal_9_o,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_0_Q
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_2_1 : LUT6
    generic map(
      INIT => X"9999919855555550"
    )
    port map (
      I0 => timer_inst_tens_cnt(2),
      I1 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I2 => timer_inst_tens_cnt(3),
      I3 => timer_inst_tens_cnt(0),
      I4 => timer_inst_tens_cnt(1),
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_2_Q
    );
  timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_2_1 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => timer_inst_mins_cnt(2),
      I1 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I2 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I3 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_2_Q
    );
  timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_1_1 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => timer_inst_mins_cnt(1),
      I1 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I2 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I3 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_1_Q
    );
  timer_inst_up_hundredths_cnt_3_AND_55_o1_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_1_28,
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_3_26,
      I3 => timer_inst_hundredths_cnt_0_29,
      O => N47
    );
  timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_A11 : LUT6
    generic map(
      INIT => X"CCCCC8CECCCCCCCF"
    )
    port map (
      I0 => N47,
      I1 => timer_inst_tenths_cnt(0),
      I2 => timer_inst_tenths_cnt(1),
      I3 => timer_inst_tenths_cnt(3),
      I4 => timer_inst_tenths_cnt(2),
      I5 => mode_control,
      O => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT31 : LUT6
    generic map(
      INIT => X"0800FBFFFBFF0800"
    )
    port map (
      I0 => preset_time(10),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_lut_2_Q,
      I5 => timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_cy_1_Q,
      O => timer_inst_ones_cnt_3_q_11_mux_46_OUT_2_Q
    );
  timer_inst_Mmux_tenths_cnt_3_q_7_mux_31_OUT31 : LUT6
    generic map(
      INIT => X"0800FBFFFBFF0800"
    )
    port map (
      I0 => preset_time(6),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_2_Q,
      I5 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_cy_1_Q,
      O => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_2_Q
    );
  timer_inst_Mmux_tens_cnt_3_q_15_mux_63_OUT31 : LUT6
    generic map(
      INIT => X"0800FBFFFBFF0800"
    )
    port map (
      I0 => preset_time(14),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_2_Q,
      I5 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_Q,
      O => timer_inst_tens_cnt_3_q_15_mux_63_OUT_2_Q
    );
  timer_inst_up_ones_cnt_3_AND_85_o1_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => timer_inst_mins_cnt(2),
      I1 => timer_inst_mins_cnt(1),
      O => N55
    );
  timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_A11 : LUT6
    generic map(
      INIT => X"2ABABABABABABABA"
    )
    port map (
      I0 => timer_inst_mins_cnt(0),
      I1 => timer_inst_mins_cnt(3),
      I2 => N55,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_A_0_Q
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT41 : LUT6
    generic map(
      INIT => X"A0A3AFACAFA3A0AC"
    )
    port map (
      I0 => preset_time(19),
      I1 => timer_inst_mins_cnt(2),
      I2 => load,
      I3 => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_2_Q,
      I4 => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_3_Q,
      I5 => N57,
      O => timer_inst_mins_cnt_3_q_19_mux_82_OUT_3_Q
    );
  timer_inst_Mmux_tens_cnt_3_q_15_mux_63_OUT21 : LUT6
    generic map(
      INIT => X"ACACACACA3ACACA3"
    )
    port map (
      I0 => preset_time(13),
      I1 => timer_inst_tens_cnt(1),
      I2 => load,
      I3 => timer_inst_up_ones_cnt_3_AND_78_o,
      I4 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_A_0_Q,
      I5 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_Q,
      O => timer_inst_tens_cnt_3_q_15_mux_63_OUT_1_Q
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT21 : LUT5
    generic map(
      INIT => X"AACCAAF0"
    )
    port map (
      I0 => preset_time(9),
      I1 => N60,
      I2 => N59,
      I3 => load,
      I4 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_ones_cnt_3_q_11_mux_46_OUT_1_Q
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_A11 : LUT6
    generic map(
      INIT => X"AAA2AAABAAABAAAB"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(2),
      I2 => timer_inst_tens_cnt(3),
      I3 => timer_inst_tens_cnt(1),
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_A_0_Q
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_A31 : LUT6
    generic map(
      INIT => X"CCC4CCCDCCCDCCCD"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(2),
      I2 => timer_inst_tens_cnt(3),
      I3 => timer_inst_tens_cnt(1),
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_A_2_Q
    );
  timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_3_1 : LUT6
    generic map(
      INIT => X"2205050505050505"
    )
    port map (
      I0 => timer_inst_mins_cnt(3),
      I1 => timer_inst_mins_cnt_3_PWR_13_o_equal_9_o,
      I2 => timer_inst_mins_cnt_3_GND_13_o_equal_10_o,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_3_Q
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_11_SW0 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(3),
      I2 => timer_inst_tens_cnt(2),
      I3 => timer_inst_tens_cnt(1),
      O => N68
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_11 : LUT6
    generic map(
      INIT => X"AAAAFCCFFCCFFCCF"
    )
    port map (
      I0 => N69,
      I1 => N68,
      I2 => N29,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_8_o,
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_Q
    );
  timer_inst_Mmux_tenths_cnt_3_q_7_mux_31_OUT21 : LUT6
    generic map(
      INIT => X"ACACACACA3ACACA3"
    )
    port map (
      I0 => preset_time(5),
      I1 => timer_inst_tenths_cnt(1),
      I2 => load,
      I3 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q,
      I4 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I5 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_0_Q,
      O => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_1_Q
    );
  timer_inst_Mmux_tenths_cnt_3_q_7_mux_31_OUT11 : LUT6
    generic map(
      INIT => X"AACCAAF0AA33AA0F"
    )
    port map (
      I0 => preset_time(4),
      I1 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I2 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I3 => load,
      I4 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I5 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q,
      O => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_0_Q
    );
  timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_2_1 : LUT6
    generic map(
      INIT => X"5555555565555555"
    )
    port map (
      I0 => timer_inst_tenths_cnt(2),
      I1 => timer_inst_hundredths_cnt_2_27,
      I2 => timer_inst_hundredths_cnt_0_29,
      I3 => mode_control,
      I4 => timer_inst_hundredths_cnt_3_26,
      I5 => timer_inst_hundredths_cnt_1_28,
      O => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_lut_2_Q
    );
  timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_cy_1_11_SW1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => timer_inst_tens_cnt(1),
      I1 => timer_inst_tens_cnt(0),
      O => N69
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT41_SW0_SW0 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => timer_inst_mins_cnt(2),
      I1 => timer_inst_mins_cnt(1),
      I2 => timer_inst_mins_cnt(3),
      I3 => timer_inst_mins_cnt(0),
      O => N71
    );
  timer_inst_up_ones_cnt_3_AND_78_o1_SW0 : LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_0_29,
      I1 => timer_inst_hundredths_cnt_3_26,
      I2 => timer_inst_hundredths_cnt_2_27,
      I3 => timer_inst_hundredths_cnt_1_28,
      I4 => timer_inst_ones_cnt(0),
      O => N74
    );
  timer_inst_up_ones_cnt_3_AND_78_o1 : LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => timer_inst_ones_cnt(1),
      I1 => timer_inst_ones_cnt(2),
      I2 => timer_inst_ones_cnt(3),
      I3 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I4 => N74,
      I5 => mode_control,
      O => timer_inst_up_ones_cnt_3_AND_78_o
    );
  timer_inst_ones_cnt_1 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_rst_13,
      D => timer_inst_ones_cnt_1_rstpot_652,
      Q => timer_inst_ones_cnt(1)
    );
  timer_inst_n0226_inv1 : LUT6
    generic map(
      INIT => X"FFFFFF2020202020"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd2_159,
      I1 => timer_state_sreg_FSM_FFd3_158,
      I2 => timer_state_sreg_FSM_FFd4_157,
      I3 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I4 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I5 => timer_inst_enable,
      O => timer_inst_n0226_inv
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT11 : LUT6
    generic map(
      INIT => X"FBFF08000800FBFF"
    )
    port map (
      I0 => preset_time(16),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_inst_up_ones_cnt_3_AND_85_o,
      I5 => timer_inst_Mmux_mins_cnt_3_mins_cnt_3_mux_80_OUT_rs_lut_0_Q,
      O => timer_inst_mins_cnt_3_q_19_mux_82_OUT_0_Q
    );
  timer_inst_Mmux_tens_cnt_3_q_15_mux_63_OUT11 : LUT6
    generic map(
      INIT => X"FBFF08000800FBFF"
    )
    port map (
      I0 => preset_time(12),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_inst_up_ones_cnt_3_AND_78_o,
      I5 => timer_inst_Mmux_tens_cnt_3_tens_cnt_3_mux_61_OUT_rs_lut_0_Q,
      O => timer_inst_tens_cnt_3_q_15_mux_63_OUT_0_Q
    );
  timer_inst_Mmux_tens_cnt_3_q_15_mux_63_OUT41_SW0 : LUT6
    generic map(
      INIT => X"0020FFDF0000FFFF"
    )
    port map (
      I0 => timer_inst_ones_cnt(0),
      I1 => timer_inst_ones_cnt(1),
      I2 => timer_inst_ones_cnt(3),
      I3 => timer_inst_ones_cnt(2),
      I4 => timer_inst_tens_cnt(3),
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => N32
    );
  timer_inst_ones_cnt_1_rstpot : LUT5
    generic map(
      INIT => X"FEEE0222"
    )
    port map (
      I0 => timer_inst_ones_cnt(1),
      I1 => load,
      I2 => N76,
      I3 => timer_inst_enable,
      I4 => timer_inst_ones_cnt_3_q_11_mux_46_OUT_1_Q,
      O => timer_inst_ones_cnt_1_rstpot_652
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT41_SW0 : LUT6
    generic map(
      INIT => X"88FCFCFCFCFCFCFC"
    )
    port map (
      I0 => timer_inst_mins_cnt(0),
      I1 => timer_inst_mins_cnt(1),
      I2 => N71,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => N57
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT31 : LUT6
    generic map(
      INIT => X"AAFCAA0CAACCAACC"
    )
    port map (
      I0 => preset_time(18),
      I1 => N78,
      I2 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I3 => load,
      I4 => N79,
      I5 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_mins_cnt_3_q_19_mux_82_OUT_2_Q
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT21_SW0 : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => timer_inst_ones_cnt(1),
      I1 => timer_inst_ones_cnt(0),
      I2 => timer_inst_ones_cnt(3),
      I3 => timer_inst_ones_cnt(2),
      O => N59
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT21_SW1 : LUT4
    generic map(
      INIT => X"6466"
    )
    port map (
      I0 => timer_inst_ones_cnt(0),
      I1 => timer_inst_ones_cnt(1),
      I2 => timer_inst_ones_cnt(2),
      I3 => timer_inst_ones_cnt(3),
      O => N60
    );
  timer_inst_up_tenths_cnt_3_AND_73_o1_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
    port map (
      I0 => timer_inst_hundredths_cnt_0_29,
      I1 => timer_inst_hundredths_cnt_1_28,
      I2 => timer_inst_hundredths_cnt_2_27,
      I3 => timer_inst_hundredths_cnt_3_26,
      I4 => timer_inst_ones_cnt(0),
      I5 => timer_inst_ones_cnt(1),
      O => N81
    );
  timer_inst_up_ones_cnt_3_AND_85_o1 : LUT6
    generic map(
      INIT => X"0000400000000000"
    )
    port map (
      I0 => timer_inst_ones_cnt(2),
      I1 => timer_inst_ones_cnt(3),
      I2 => timer_inst_tenths_cnt_3_PWR_13_o_equal_3_o,
      I3 => timer_inst_tens_cnt_3_GND_13_o_equal_7_o,
      I4 => N81,
      I5 => mode_control,
      O => timer_inst_up_ones_cnt_3_AND_85_o
    );
  timer_inst_tenths_cnt_0 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_rst_13,
      D => timer_inst_tenths_cnt_0_rstpot_657,
      Q => timer_inst_tenths_cnt(0)
    );
  timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_cy_1_11 : LUT6
    generic map(
      INIT => X"F0F0FFFF0000F0F1"
    )
    port map (
      I0 => timer_inst_tenths_cnt(0),
      I1 => timer_inst_tenths_cnt(2),
      I2 => timer_inst_tenths_cnt(1),
      I3 => timer_inst_tenths_cnt(3),
      I4 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I5 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q,
      O => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_cy_1_Q
    );
  timer_inst_n0226_inv1_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd3_158,
      I1 => timer_state_sreg_FSM_FFd4_157,
      I2 => timer_state_sreg_FSM_FFd2_159,
      O => N83
    );
  timer_inst_tenths_cnt_0_rstpot : LUT6
    generic map(
      INIT => X"FFFB0008BBBB8888"
    )
    port map (
      I0 => timer_inst_tenths_cnt(0),
      I1 => N83,
      I2 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I3 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I4 => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_0_Q,
      I5 => timer_inst_enable,
      O => timer_inst_tenths_cnt_0_rstpot_657
    );
  timer_inst_mins_cnt_2 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_rst_13,
      D => timer_inst_mins_cnt_2_rstpot_659,
      Q => timer_inst_mins_cnt(2)
    );
  timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_cy_1_11 : LUT5
    generic map(
      INIT => X"AA00FFAB"
    )
    port map (
      I0 => timer_inst_ones_cnt(0),
      I1 => timer_inst_ones_cnt(2),
      I2 => timer_inst_ones_cnt(3),
      I3 => timer_inst_ones_cnt(1),
      I4 => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_Mmux_ones_cnt_3_ones_cnt_3_mux_44_OUT_rs_cy_1_Q
    );
  timer_inst_mins_cnt_2_rstpot : LUT6
    generic map(
      INIT => X"FFFEEEEE00022222"
    )
    port map (
      I0 => timer_inst_mins_cnt(2),
      I1 => load,
      I2 => timer_inst_up_ones_cnt_3_AND_85_o,
      I3 => N85,
      I4 => timer_inst_enable,
      I5 => timer_inst_mins_cnt_3_q_19_mux_82_OUT_2_Q,
      O => timer_inst_mins_cnt_2_rstpot_659
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT31_SW0 : LUT4
    generic map(
      INIT => X"A9A8"
    )
    port map (
      I0 => timer_inst_mins_cnt(2),
      I1 => timer_inst_mins_cnt(0),
      I2 => timer_inst_mins_cnt(1),
      I3 => timer_inst_mins_cnt(3),
      O => N78
    );
  timer_inst_n0256_inv_SW1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => timer_inst_tenths_cnt_3_GND_13_o_equal_4_o,
      I1 => timer_inst_tens_cnt_3_GND_13_o_equal_8_o,
      I2 => timer_inst_ones_cnt_3_GND_13_o_equal_6_o,
      I3 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      O => N85
    );
  timer_inst_Mmux_mins_cnt_3_q_19_mux_82_OUT31_SW1 : LUT5
    generic map(
      INIT => X"6C6CC9C8"
    )
    port map (
      I0 => timer_inst_mins_cnt(0),
      I1 => timer_inst_mins_cnt(2),
      I2 => timer_inst_mins_cnt(1),
      I3 => timer_inst_mins_cnt(3),
      I4 => timer_inst_ones_cnt_3_PWR_13_o_equal_5_o,
      O => N79
    );
  lcd_cntrl_inst_n0385_inv2 : LUT6
    generic map(
      INIT => X"888F888888888888"
    )
    port map (
      I0 => lcd_cntrl_inst_n0385_inv1_512,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_n0385_inv2_513
    );
  timer_inst_n0256_inv_SW0 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => timer_inst_tens_cnt(0),
      I1 => timer_inst_tens_cnt(2),
      I2 => timer_inst_tens_cnt(1),
      I3 => timer_inst_tens_cnt(3),
      I4 => timer_inst_ones_cnt_3_GND_13_o_equal_6_o,
      O => N27
    );
  lcd_cntrl_inst_clock_flag_glue_rst : LUT5
    generic map(
      INIT => X"11105150"
    )
    port map (
      I0 => timer_state_rst_13,
      I1 => lcd_cntrl_inst_mode_state_433,
      I2 => lcd_cntrl_inst_clock_flag_393,
      I3 => mode_control,
      I4 => lcd_cntrl_inst_n0385_inv,
      O => lcd_cntrl_inst_clock_flag_glue_rst_618
    );
  lcd_cntrl_inst_lap_flag_glue_rst : LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      I0 => mode_control,
      I1 => timer_state_rst_13,
      I2 => lcd_cntrl_inst_lap_flag_glue_ce_619,
      I3 => lcd_cntrl_inst_lap_mode_AND_50_o,
      O => lcd_cntrl_inst_lap_flag_glue_rst_620
    );
  lcd_cntrl_inst_lap_flag_glue_ce : LUT5
    generic map(
      INIT => X"AA8AAAAA"
    )
    port map (
      I0 => lcd_cntrl_inst_lap_flag_360,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I3 => lcd_cntrl_inst_sf_d_temp_1_1,
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_lap_flag_glue_ce_619
    );
  timer_state_Mmux_next_sreg122 : LUT5
    generic map(
      INIT => X"08000808"
    )
    port map (
      I0 => timer_state_sreg1(0),
      I1 => ll_debounced,
      I2 => timer_state_sreg1(1),
      I3 => locked,
      I4 => reset_IBUF_3,
      O => timer_state_next_sreg1(1)
    );
  timer_state_sreg_FSM_FFd2_In_SW4 : LUT6
    generic map(
      INIT => X"F3E57361D3C55341"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd3_158,
      I1 => timer_state_sreg_FSM_FFd4_157,
      I2 => timer_state_sreg_FSM_FFd2_159,
      I3 => strtstop_debounced,
      I4 => mode_debounced,
      I5 => ll_debounced,
      O => N87
    );
  timer_state_sreg_FSM_FFd2_In : LUT5
    generic map(
      INIT => X"F757A202"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd1_160,
      I1 => N1,
      I2 => timer_state_sreg_FSM_FFd2_159,
      I3 => N3,
      I4 => N87,
      O => timer_state_sreg_FSM_FFd2_In_150
    );
  timer_state_sreg_FSM_FFd3_In_SW4 : LUT6
    generic map(
      INIT => X"FFAAC488FFBB8088"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd4_157,
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => mode_debounced,
      I3 => timer_state_sreg_FSM_FFd3_158,
      I4 => strtstop_debounced,
      I5 => ll_debounced,
      O => N89
    );
  timer_state_sreg_FSM_FFd3_In : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd1_160,
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => N12,
      I3 => N10,
      I4 => N89,
      O => timer_state_sreg_FSM_FFd3_In_151
    );
  timer_state_sreg_FSM_FFd4_In_SW4 : LUT5
    generic map(
      INIT => X"A2862206"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd4_157,
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => strtstop_debounced,
      I4 => mode_debounced,
      O => N91
    );
  timer_state_sreg_FSM_FFd4_In : LUT5
    generic map(
      INIT => X"FD5DA808"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd1_160,
      I1 => N6,
      I2 => timer_state_sreg_FSM_FFd2_159,
      I3 => N8,
      I4 => N91,
      O => timer_state_sreg_FSM_FFd4_In_152
    );
  lcd_cntrl_inst_n0408_5_1 : LUT6
    generic map(
      INIT => X"0001000100010000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_state_FSM_FFd6_395,
      O => lcd_cntrl_inst_n0408
    );
  lcd_cntrl_inst_sf_d_temp_5_1 : LUT6
    generic map(
      INIT => X"2820080008000800"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => timer_inst_tenths_cnt(3),
      O => lcd_cntrl_inst_sf_d_temp_5_1_584
    );
  lcd_cntrl_inst_state_flag_inv1 : LUT5
    generic map(
      INIT => X"0145ABEF"
    )
    port map (
      I0 => lcd_cntrl_inst_n0510,
      I1 => lcd_cntrl_inst_n0408,
      I2 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o,
      I4 => lcd_cntrl_inst_Mcompar_n0000_cy(5),
      O => lcd_cntrl_inst_state_flag_inv
    );
  lcd_cntrl_inst_sf_d_temp_4_9 : LUT6
    generic map(
      INIT => X"AA2AAA2AAA2AAAAA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => timer_inst_mins_cnt(3),
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => timer_inst_mins_cnt(1),
      I5 => timer_inst_mins_cnt(2),
      O => lcd_cntrl_inst_sf_d_temp_4_10
    );
  lcd_cntrl_inst_sf_d_temp_5_4 : LUT6
    generic map(
      INIT => X"62626262FF626262"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_lap_tenths(3),
      I3 => timer_inst_tens_cnt(3),
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_sf_d_temp_5_5_585
    );
  lcd_cntrl_inst_sf_d_temp_4_13 : LUT6
    generic map(
      INIT => X"0000010001000100"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp_4_14_583
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_14 : LUT6
    generic map(
      INIT => X"2000EFFF20002000"
    )
    port map (
      I0 => preset_time(0),
      I1 => timer_state_sreg_FSM_FFd3_158,
      I2 => timer_state_sreg_FSM_FFd2_159,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_inst_hundredths_cnt_0_29,
      I5 => timer_inst_enable,
      O => timer_inst_GND_13_o_q_3_mux_18_OUT_0_Q
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_12 : LUT6
    generic map(
      INIT => X"FBFF080008000800"
    )
    port map (
      I0 => preset_time(2),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => N21,
      I5 => timer_inst_enable,
      O => timer_inst_GND_13_o_q_3_mux_18_OUT_2_Q
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_11 : LUT6
    generic map(
      INIT => X"FBFF080008000800"
    )
    port map (
      I0 => preset_time(1),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => N23,
      I5 => timer_inst_enable,
      O => timer_inst_GND_13_o_q_3_mux_18_OUT_1_Q
    );
  timer_inst_Mmux_GND_13_o_q_3_mux_18_OUT_0_13 : LUT6
    generic map(
      INIT => X"FBFF080008000800"
    )
    port map (
      I0 => preset_time(3),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => N25,
      I5 => timer_inst_enable,
      O => timer_inst_GND_13_o_q_3_mux_18_OUT_3_Q
    );
  lcd_cntrl_inst_sf_d_temp_8_5 : LUT6
    generic map(
      INIT => X"0444040400400000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I5 => lcd_cntrl_inst_sf_d_temp_8_3,
      O => lcd_cntrl_inst_sf_d_temp_8_4_547
    );
  lcd_cntrl_inst_sf_d_temp_4_14 : LUT6
    generic map(
      INIT => X"AEAEAEAEAEAEFFAE"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_4_14_583,
      I1 => lcd_cntrl_inst_sf_d_temp_4_13_582,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => lcd_cntrl_inst_sf_d_temp_5_12,
      O => lcd_cntrl_inst_sf_d_temp(4)
    );
  timer_state_sreg_FSM_FFd2_In_SW3 : LUT6
    generic map(
      INIT => X"62626262FF626262"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd4_157,
      I1 => timer_state_sreg_FSM_FFd3_158,
      I2 => ll_debounced,
      I3 => mode_debounce_Q2_81,
      I4 => mode_debounce_Q1_82,
      I5 => mode_debounce_Q3_80,
      O => N3
    );
  timer_state_sreg_FSM_FFd4_In_SW1 : LUT6
    generic map(
      INIT => X"7777B7776666A666"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd4_157,
      I1 => timer_state_sreg_FSM_FFd3_158,
      I2 => strtstop_debounce_Q2_78,
      I3 => strtstop_debounce_Q1_79,
      I4 => strtstop_debounce_Q3_77,
      I5 => ll_debounced,
      O => N6
    );
  timer_state_sreg_FSM_FFd4_In_SW3 : LUT6
    generic map(
      INIT => X"FFFFDDFDFFFFFFFF"
    )
    port map (
      I0 => mode_debounce_Q1_82,
      I1 => timer_state_sreg_FSM_FFd4_157,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => strtstop_debounced,
      I4 => mode_debounce_Q3_80,
      I5 => mode_debounce_Q2_81,
      O => N8
    );
  timer_state_sreg_FSM_FFd3_In_SW0 : LUT6
    generic map(
      INIT => X"FFFFAA2AAAEAAA2A"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd3_158,
      I1 => strtstop_debounce_Q1_79,
      I2 => strtstop_debounce_Q2_78,
      I3 => strtstop_debounce_Q3_77,
      I4 => timer_state_sreg_FSM_FFd4_157,
      I5 => mode_debounced,
      O => N10
    );
  timer_state_sreg_FSM_FFd3_In_SW2 : LUT6
    generic map(
      INIT => X"6666E6662222A222"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd4_157,
      I1 => timer_state_sreg_FSM_FFd3_158,
      I2 => mode_debounce_Q2_81,
      I3 => mode_debounce_Q1_82,
      I4 => mode_debounce_Q3_80,
      I5 => ll_debounced,
      O => N12
    );
  lcd_cntrl_inst_state_FSM_FFd6_In7 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDAA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => lcd_cntrl_inst_state_FSM_FFd6_In7_525,
      O => lcd_cntrl_inst_state_FSM_FFd6_In8_526
    );
  lcd_cntrl_inst_state_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"999A0000999A999A"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd2_159,
      I1 => timer_state_sreg_FSM_FFd1_160,
      I2 => timer_state_sreg_FSM_FFd4_157,
      I3 => timer_state_sreg_FSM_FFd3_158,
      I4 => lcd_cntrl_inst_lap_flag_360,
      I5 => lcd_cntrl_inst_clock_flag_393,
      O => lcd_cntrl_inst_state_FSM_FFd1_In1_527
    );
  lcd_cntrl_inst_n0515_5_1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_n0515
    );
  lcd_cntrl_inst_Mmux_control21 : LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
    port map (
      I0 => lcd_cntrl_inst_n0515,
      I1 => lcd_cntrl_inst_n0510,
      I2 => lcd_cntrl_inst_sf_d_temp_8_5_166,
      I3 => lcd_cntrl_inst_n0502(5),
      I4 => lcd_cntrl_inst_n0408,
      O => n0016(2)
    );
  lcd_cntrl_inst_lap_mode_AND_50_o1 : LUT5
    generic map(
      INIT => X"88882228"
    )
    port map (
      I0 => timer_state_sreg1(1),
      I1 => timer_state_sreg_FSM_FFd2_159,
      I2 => timer_state_sreg_FSM_FFd3_158,
      I3 => timer_state_sreg_FSM_FFd4_157,
      I4 => timer_state_sreg_FSM_FFd1_160,
      O => lcd_cntrl_inst_lap_mode_AND_50_o
    );
  lcd_cntrl_inst_Mmux_control11 : LUT6
    generic map(
      INIT => X"EFEFEFAAEFEFEFEF"
    )
    port map (
      I0 => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_cy_6_Q_186,
      I1 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I2 => lcd_cntrl_inst_GND_11_o_count_31_LessThan_291_o,
      I3 => lcd_cntrl_inst_sf_d_temp_8_5_166,
      I4 => lcd_cntrl_inst_n0502(5),
      I5 => lcd_cntrl_inst_n0408,
      O => lcd_cntrl_inst_Mmux_control1
    );
  lcd_cntrl_inst_Mmux_control12 : LUT5
    generic map(
      INIT => X"02000202"
    )
    port map (
      I0 => lcd_cntrl_inst_n0408,
      I1 => lcd_cntrl_inst_sf_d_temp_8_5_166,
      I2 => lcd_cntrl_inst_n0502(5),
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o,
      I4 => lcd_cntrl_inst_GND_11_o_count_31_LessThan_17_o,
      O => lcd_cntrl_inst_Mmux_control11_590
    );
  lcd_cntrl_inst_state_FSM_FFd5_In4_SW0 : LUT4
    generic map(
      INIT => X"8AFF"
    )
    port map (
      I0 => mode_control,
      I1 => lcd_cntrl_inst_lap_flag_360,
      I2 => lcd_cntrl_inst_clock_flag_393,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      O => N95
    );
  lcd_cntrl_inst_state_FSM_FFd5_In4 : LUT6
    generic map(
      INIT => X"011000100B1A0A1A"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_15_o,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I5 => N95,
      O => lcd_cntrl_inst_state_FSM_FFd5_In4_571
    );
  lcd_cntrl_inst_sf_d_temp_5_7 : LUT6
    generic map(
      INIT => X"A8A088889890BABA"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_lap_tens(3),
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp_5_8
    );
  lcd_cntrl_inst_n0331_inv2 : LUT6
    generic map(
      INIT => X"1000000018080808"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_GND_11_o_count_31_equal_289_o,
      I4 => lcd_cntrl_inst_timer_flag_394,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_n0331_inv2_511
    );
  lcd_cntrl_inst_sf_d_temp_2_2 : LUT6
    generic map(
      INIT => X"0888888B38A8B8B8"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I4 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp(6)
    );
  lcd_cntrl_inst_timer_flag_glue_set : LUT6
    generic map(
      INIT => X"BBBBBBBBAAAAA8AA"
    )
    port map (
      I0 => lcd_cntrl_inst_timer_flag_394,
      I1 => mode_control,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_n0331_inv2_511,
      I4 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I5 => lcd_cntrl_inst_mode_state_433,
      O => lcd_cntrl_inst_timer_flag_glue_set_621
    );
  lcd_cntrl_inst_sf_d_temp_8_51 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      O => lcd_cntrl_inst_sf_d_temp_8_5_166
    );
  lcd_cntrl_inst_state_FSM_FFd5_In1 : LUT6
    generic map(
      INIT => X"8000800080008808"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I3 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I4 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_state_FSM_FFd5_In1_569
    );
  lcd_cntrl_inst_rst_mode_OR_32_o1 : LUT5
    generic map(
      INIT => X"FFFF6665"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd2_159,
      I1 => timer_state_sreg_FSM_FFd1_160,
      I2 => timer_state_sreg_FSM_FFd4_157,
      I3 => timer_state_sreg_FSM_FFd3_158,
      I4 => timer_state_rst_13,
      O => lcd_cntrl_inst_rst_mode_OR_32_o
    );
  timer_state_Mmux_next_sreg111 : LUT6
    generic map(
      INIT => X"5155FFFF51555155"
    )
    port map (
      I0 => timer_state_sreg1(1),
      I1 => lap_load_debounce_Q1_85,
      I2 => lap_load_debounce_Q3_83,
      I3 => lap_load_debounce_Q2_84,
      I4 => locked,
      I5 => reset_IBUF_3,
      O => timer_state_next_sreg1(0)
    );
  lcd_cntrl_inst_sf_d_temp_1_2 : LUT6
    generic map(
      INIT => X"2AAAAAA818888888"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I4 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => lcd_cntrl_inst_sf_d_temp(7)
    );
  timer_state_sreg_n0105_0_1_1 : LUT4
    generic map(
      INIT => X"999C"
    )
    port map (
      I0 => timer_state_sreg_FSM_FFd1_160,
      I1 => timer_state_sreg_FSM_FFd2_1_668,
      I2 => timer_state_sreg_FSM_FFd3_1_666,
      I3 => timer_state_sreg_FSM_FFd4_1_667,
      O => timer_state_sreg_n0105_0_1_665
    );
  timer_inst_n0236_inv1_SW0 : LUT6
    generic map(
      INIT => X"1001100000010000"
    )
    port map (
      I0 => timer_inst_tenths_cnt(2),
      I1 => timer_inst_tenths_cnt(1),
      I2 => timer_inst_tenths_cnt(3),
      I3 => timer_inst_tenths_cnt(0),
      I4 => timer_inst_up_hundredths_cnt_3_AND_56_o,
      I5 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      O => N76
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT11 : LUT3
    generic map(
      INIT => X"8D"
    )
    port map (
      I0 => load,
      I1 => preset_time(8),
      I2 => timer_inst_ones_cnt(0),
      O => timer_inst_ones_cnt_3_q_11_mux_46_OUT_0_Q
    );
  timer_state_sreg_FSM_FFd3_1 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd3_In_151,
      Q => timer_state_sreg_FSM_FFd3_1_666
    );
  timer_state_sreg_FSM_FFd4_1 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd4_In_152,
      Q => timer_state_sreg_FSM_FFd4_1_667
    );
  timer_state_sreg_FSM_FFd2_1 : FDC
    port map (
      C => clk_100,
      CLR => timer_state_state_reset,
      D => timer_state_sreg_FSM_FFd2_In_150,
      Q => timer_state_sreg_FSM_FFd2_1_668
    );
  clk_divider_div_temp_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => clk_divider_cnt(17),
      I1 => clk_divider_div_temp_87,
      I2 => clk_divider_div_temp_INV_1_o,
      O => clk_divider_div_temp_rstpot_669
    );
  clk_divider_div_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_26214k,
      D => clk_divider_div_temp_rstpot_669,
      Q => clk_divider_div_temp_87
    );
  clk_divider_div_262144_BUFG : BUFG
    port map (
      I => clk_divider_div_262144_670,
      O => clk_100
    );
  clk_divider_Mcount_cnt_lut_0_INV_0 : INV
    port map (
      I => clk_divider_cnt(0),
      O => clk_divider_Mcount_cnt_lut(0)
    );
  lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_6_INV_0 : INV
    port map (
      I => lcd_cntrl_inst_count(31),
      O => lcd_cntrl_inst_Mcompar_count_31_GND_11_o_LessThan_290_o_lut_6_Q
    );
  clk_divider_div_temp_INV_1_o1_INV_0 : INV
    port map (
      I => clk_divider_div_temp_87,
      O => clk_divider_div_temp_INV_1_o
    );
  Mcount_address_xor_0_11_INV_0 : INV
    port map (
      I => address(0),
      O => Mcount_address
    );
  lcd_cntrl_inst_sf_d_temp_6_9 : MUXF7
    port map (
      I0 => N97,
      I1 => N98,
      S => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_sf_d_temp_6_10_563
    );
  lcd_cntrl_inst_sf_d_temp_6_9_F : LUT6
    generic map(
      INIT => X"0202020202000000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I3 => timer_inst_hundredths_cnt_1_28,
      I4 => timer_inst_hundredths_cnt_3_26,
      I5 => timer_inst_hundredths_cnt_2_27,
      O => N97
    );
  lcd_cntrl_inst_sf_d_temp_6_9_G : LUT5
    generic map(
      INIT => X"0404AE04"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => lcd_cntrl_inst_sf_d_temp_6_8,
      I4 => lcd_cntrl_inst_state_FSM_FFd3_398,
      O => N98
    );
  lcd_cntrl_inst_sf_d_temp_8_12 : MUXF7
    port map (
      I0 => N99,
      I1 => N100,
      S => lcd_cntrl_inst_state_FSM_FFd4_397,
      O => lcd_cntrl_inst_sf_d_temp_8_12_553
    );
  lcd_cntrl_inst_sf_d_temp_8_12_F : LUT6
    generic map(
      INIT => X"2222222220202000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_In5_163,
      I1 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I2 => timer_inst_hundredths_cnt_3_26,
      I3 => timer_inst_hundredths_cnt_2_27,
      I4 => timer_inst_hundredths_cnt_1_28,
      I5 => timer_inst_hundredths_cnt_0_29,
      O => N99
    );
  lcd_cntrl_inst_sf_d_temp_8_12_G : LUT5
    generic map(
      INIT => X"AE040404"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_sf_d_temp_6_5_164,
      I2 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I3 => lcd_cntrl_inst_state_FSM_FFd4_In5_163,
      I4 => lcd_cntrl_inst_sf_d_temp_8_10_552,
      O => N100
    );
  lcd_cntrl_inst_sf_d_temp_5_9 : MUXF7
    port map (
      I0 => N101,
      I1 => N102,
      S => timer_inst_hundredths_cnt_3_26,
      O => lcd_cntrl_inst_sf_d_temp_5_10_588
    );
  lcd_cntrl_inst_sf_d_temp_5_9_F : LUT6
    generic map(
      INIT => X"64EE646620AA2022"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_lap_min(3),
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => timer_inst_mins_cnt(3),
      O => N101
    );
  lcd_cntrl_inst_sf_d_temp_5_9_G : LUT6
    generic map(
      INIT => X"75EE756675AA7522"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => lcd_cntrl_inst_lap_min(3),
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I4 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I5 => timer_inst_mins_cnt(3),
      O => N102
    );
  lcd_cntrl_inst_sf_d_temp_4_11 : MUXF7
    port map (
      I0 => N103,
      I1 => N104,
      S => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_sf_d_temp_4_12_581
    );
  lcd_cntrl_inst_sf_d_temp_4_11_F : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF222A"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I1 => timer_inst_hundredths_cnt_3_26,
      I2 => timer_inst_hundredths_cnt_2_27,
      I3 => timer_inst_hundredths_cnt_1_28,
      I4 => lcd_cntrl_inst_sf_d_temp_4_10,
      I5 => lcd_cntrl_inst_sf_d_temp_4_8_578,
      O => N103
    );
  lcd_cntrl_inst_sf_d_temp_4_11_G : LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_4_9_579,
      I1 => lcd_cntrl_inst_sf_d_temp_4_8_578,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => N104
    );
  lcd_cntrl_inst_sf_d_temp_5_5 : MUXF7
    port map (
      I0 => N105,
      I1 => N106,
      S => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_sf_d_temp_5_6
    );
  lcd_cntrl_inst_sf_d_temp_5_5_F : LUT6
    generic map(
      INIT => X"FFFFBEBAAEAABEBA"
    )
    port map (
      I0 => lcd_cntrl_inst_sf_d_temp_5_5_585,
      I1 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I2 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I3 => lcd_cntrl_inst_lap_ones(3),
      I4 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => N105
    );
  lcd_cntrl_inst_sf_d_temp_5_5_G : LUT6
    generic map(
      INIT => X"7777D9C95555D9C9"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_state_FSM_FFd2_399,
      I3 => timer_inst_ones_cnt(3),
      I4 => lcd_cntrl_inst_state_FSM_FFd1_400,
      I5 => lcd_cntrl_inst_lap_hundredths(3),
      O => N106
    );
  lcd_cntrl_inst_sf_d_temp_6_5 : MUXF7
    port map (
      I0 => N107,
      I1 => N108,
      S => lcd_cntrl_inst_state_FSM_FFd1_400,
      O => lcd_cntrl_inst_sf_d_temp_6_6_560
    );
  lcd_cntrl_inst_sf_d_temp_6_5_F : LUT6
    generic map(
      INIT => X"62426040F6F6F6F6"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_sf_d_temp_6_1_558,
      I4 => lcd_cntrl_inst_sf_d_temp_6_2_559,
      I5 => lcd_cntrl_inst_state_FSM_FFd2_399,
      O => N107
    );
  lcd_cntrl_inst_sf_d_temp_6_5_G : LUT6
    generic map(
      INIT => X"4646464646444444"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd6_395,
      I2 => lcd_cntrl_inst_state_FSM_FFd5_396,
      I3 => lcd_cntrl_inst_lap_ones(1),
      I4 => lcd_cntrl_inst_lap_ones(3),
      I5 => lcd_cntrl_inst_lap_ones(2),
      O => N108
    );
  lcd_cntrl_inst_sf_d_temp_8_4 : MUXF7
    port map (
      I0 => N109,
      I1 => N110,
      S => lcd_cntrl_inst_state_FSM_FFd5_396,
      O => lcd_cntrl_inst_sf_d_temp_8_3
    );
  lcd_cntrl_inst_sf_d_temp_8_4_F : LUT6
    generic map(
      INIT => X"FFFFFFFF55554440"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => timer_inst_mins_cnt(3),
      I2 => timer_inst_mins_cnt(2),
      I3 => timer_inst_mins_cnt(1),
      I4 => timer_inst_mins_cnt(0),
      I5 => lcd_cntrl_inst_sf_d_temp_8_1,
      O => N109
    );
  lcd_cntrl_inst_sf_d_temp_8_4_G : LUT6
    generic map(
      INIT => X"8888888880808000"
    )
    port map (
      I0 => lcd_cntrl_inst_state_FSM_FFd3_398,
      I1 => lcd_cntrl_inst_state_FSM_FFd4_397,
      I2 => timer_inst_tenths_cnt(3),
      I3 => timer_inst_tenths_cnt(1),
      I4 => timer_inst_tenths_cnt(2),
      I5 => timer_inst_tenths_cnt(0),
      O => N110
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT41 : MUXF7
    port map (
      I0 => N111,
      I1 => N112,
      S => timer_inst_up_tenths_cnt_3_AND_73_o,
      O => timer_inst_ones_cnt_3_q_11_mux_46_OUT_3_Q
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT41_F : LUT6
    generic map(
      INIT => X"EEEEEEEB44444441"
    )
    port map (
      I0 => load,
      I1 => timer_inst_ones_cnt(3),
      I2 => timer_inst_ones_cnt(2),
      I3 => timer_inst_ones_cnt(0),
      I4 => timer_inst_ones_cnt(1),
      I5 => preset_time(11),
      O => N111
    );
  timer_inst_Mmux_ones_cnt_3_q_11_mux_46_OUT41_G : LUT6
    generic map(
      INIT => X"BEEEEEAE14444404"
    )
    port map (
      I0 => load,
      I1 => timer_inst_ones_cnt(3),
      I2 => timer_inst_ones_cnt(0),
      I3 => timer_inst_ones_cnt(2),
      I4 => timer_inst_ones_cnt(1),
      I5 => preset_time(11),
      O => N112
    );
  timer_inst_Mmux_tenths_cnt_3_q_7_mux_31_OUT41 : MUXF7
    port map (
      I0 => N113,
      I1 => preset_time(7),
      S => load,
      O => timer_inst_tenths_cnt_3_q_7_mux_31_OUT_3_Q
    );
  timer_inst_Mmux_tenths_cnt_3_q_7_mux_31_OUT41_F : LUT6
    generic map(
      INIT => X"6A88AAA96AAAAAB9"
    )
    port map (
      I0 => timer_inst_tenths_cnt(3),
      I1 => timer_inst_tenths_cnt(2),
      I2 => timer_inst_Mmux_tenths_cnt_3_tenths_cnt_3_mux_29_OUT_rs_A_0_Q,
      I3 => timer_inst_tenths_cnt(1),
      I4 => timer_inst_up_hundredths_cnt_3_AND_55_o,
      I5 => timer_inst_tenths_cnt(0),
      O => N113
    );
  t_preset : timer_preset
    port map (
      spo(19) => preset_time(19),
      spo(18) => preset_time(18),
      spo(17) => preset_time(17),
      spo(16) => preset_time(16),
      spo(15) => preset_time(15),
      spo(14) => preset_time(14),
      spo(13) => preset_time(13),
      spo(12) => preset_time(12),
      spo(11) => preset_time(11),
      spo(10) => preset_time(10),
      spo(9) => preset_time(9),
      spo(8) => preset_time(8),
      spo(7) => preset_time(7),
      spo(6) => preset_time(6),
      spo(5) => preset_time(5),
      spo(4) => preset_time(4),
      spo(3) => preset_time(3),
      spo(2) => preset_time(2),
      spo(1) => preset_time(1),
      spo(0) => preset_time(0),
      a(5) => address(5),
      a(4) => address(4),
      a(3) => address(3),
      a(2) => address(2),
      a(1) => address(1),
      a(0) => address(0)
    );

end Structure;

-- synthesis translate_on
