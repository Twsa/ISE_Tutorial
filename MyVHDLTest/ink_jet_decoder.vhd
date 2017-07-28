----------------------------------------------------------------------------------
-- Company: None
-- Engineer: Twsa Liu
-- 
-- Create Date:    16:13:40 07/22/2017 
-- Design Name: 
-- Module Name:    ink_jet_ecoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 为喷墨打印机的编码器编写的VHDL模型
-- 。解码器有三个输入信号，能产生6个控制信号，分别用于选择6中色彩的墨盒
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ink_jet_ecoder is
    Port ( 
	        clk     : in std_logic;
	        color2 : in  STD_LOGIC;
           color1 : in  STD_LOGIC;
           color0 : in  STD_LOGIC;
           black : out  STD_LOGIC;
           cyan : out  STD_LOGIC;
           megenta : out  STD_LOGIC;
           yellow : out  STD_LOGIC;
           light_cyan : out  STD_LOGIC;
           light_megenta : out  STD_LOGIC);
end ink_jet_ecoder;

architecture eqn of ink_jet_ecoder is

begin
  black  <= not color2 and not color1 and color0;
  cyan   <= not color2 and color1 and not color0;
  megenta <= not color2 and color1 and color0;
  yellow <= not color2 and not color1 and not color0;
  light_cyan  <=color2 and not color1 and color0;
  light_megenta  <=color2 and color1 and not color0;
end architecture eqn;

