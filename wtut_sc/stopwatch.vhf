--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : stopwatch.vhf
-- /___/   /\     Timestamp : 07/17/2017 14:12:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl C:/Xilinx/14.7/ISE_DS/ISE/ISEexamples/wtut_sc/stopwatch.vhf -w C:/Xilinx/14.7/ISE_DS/ISE/ISEexamples/wtut_sc/wtut_sc/stopwatch.sch
--Design Name: stopwatch
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB8CE_HXILINX_stopwatch -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB8CE_HXILINX_stopwatch is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB8CE_HXILINX_stopwatch;

architecture Behavioral of CB8CE_HXILINX_stopwatch is

  signal COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stopwatch is
   port ( lcd_e  : out   std_logic; 
          lcd_rs : out   std_logic; 
          lcd_rw : out   std_logic; 
          sf_d   : out   std_logic_vector (7 downto 0));
   attribute LOC : string ;
   attribute LOC of lcd_e : signal is "AB4";
   attribute LOC of lcd_rs : signal is "Y14";
   attribute LOC of lcd_rw : signal is "W13";
   attribute LOC of sf_d : signal is "Y15,AB16,Y12,AA12,AB12,AB17,AB18,Y13";
end stopwatch;

architecture BEHAVIORAL of stopwatch is
   attribute HU_SET     : string ;
   signal address                        : std_logic_vector (7 downto 0);
   signal clk_100                        : std_logic;
   signal clk_26214k                     : std_logic;
   signal count1                         : std_logic_vector (3 downto 0);
   signal count2                         : std_logic_vector (3 downto 0);
   signal count3                         : std_logic_vector (3 downto 0);
   signal count4                         : std_logic_vector (3 downto 0);
   signal count5                         : std_logic_vector (3 downto 0);
   signal load                           : std_logic;
   signal mode_control                   : std_logic;
   signal rst_int                        : std_logic;
   signal lcd_cntrl_inst_lap_openSignal  : std_logic;
   signal lcd_cntrl_inst_mode_openSignal : std_logic;
   component lcd_control
      port ( rst        : in    std_logic; 
             clk        : in    std_logic; 
             lap        : in    std_logic; 
             control    : out   std_logic_vector (2 downto 0); 
             sf_d       : out   std_logic_vector (7 downto 0); 
             hundredths : in    std_logic_vector (3 downto 0); 
             tenths     : in    std_logic_vector (3 downto 0); 
             ones       : in    std_logic_vector (3 downto 0); 
             tens       : in    std_logic_vector (3 downto 0); 
             minutes    : in    std_logic_vector (3 downto 0); 
             mode       : in    std_logic);
   end component;
   
   component CB8CE_HXILINX_stopwatch
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component clk_div_262k
      port ( clk_in     : in    std_logic; 
             div_262144 : out   std_logic);
   end component;
   
   attribute HU_SET of timer_load_address : label is "timer_load_address_0";
begin
   lcd_cntrl_inst : lcd_control
      port map (clk=>clk_26214k,
                hundredths(3 downto 0)=>count1(3 downto 0),
                lap=>lcd_cntrl_inst_lap_openSignal,
                minutes(3 downto 0)=>count5(3 downto 0),
                mode=>lcd_cntrl_inst_mode_openSignal,
                ones(3 downto 0)=>count3(3 downto 0),
                rst=>rst_int,
                tens(3 downto 0)=>count4(3 downto 0),
                tenths(3 downto 0)=>count2(3 downto 0),
                control(2)=>lcd_rs,
                control(1)=>lcd_rw,
                control(0)=>lcd_e,
                sf_d(7 downto 0)=>sf_d(7 downto 0));
   
   timer_load_address : CB8CE_HXILINX_stopwatch
      port map (C=>clk_100,
                CE=>load,
                CLR=>mode_control,
                CEO=>open,
                Q(7 downto 0)=>address(7 downto 0),
                TC=>open);
   
   XLXI_159 : clk_div_262k
      port map (clk_in=>clk_26214k,
                div_262144=>clk_100);
   
end BEHAVIORAL;


