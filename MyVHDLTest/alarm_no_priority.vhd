----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:56:13 07/28/2017 
-- Design Name: 
-- Module Name:    alarm_no_priority - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
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

entity alarm_no_priority is
    Port ( 
	        clk : in STD_LOGIC;
	        zone : in  STD_LOGIC_VECTOR (1 to 8);
           intrude_zone : out  STD_LOGIC_VECTOR(2 downto 0);
           valid : out  STD_LOGIC);
			  
end alarm_no_priority;

-- 编码格式
-- 1区：000  2区：001  3区：010  4区：011
-- 5区：100  6区：101  7区：110  8区: 111   
-- Note 左边为最高位  同一时刻输入信号只有一个1
architecture eqn of alarm_no_priority is 
begin
  intrude_zone(2) <= zone(5) or zone(6) or zone(7) or zone(8);
  intrude_zone(1) <= zone(3) or zone(4) or zone(7) or zone(8);
  intrude_zone(0) <= zone(2) or zone(4) or zone(6) or zone(8);
  valid <= zone(1) or zone(2) or zone(3) or zone(4) or zone(5)
            or zone(6) or zone(7) or zone(8);
end eqn;

