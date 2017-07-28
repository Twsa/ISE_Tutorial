----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:22 07/28/2017 
-- Design Name: 
-- Module Name:    alarm_priority_tb - Behavioral 
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

entity alarm_priority_tb is
    Port ( zone : in  STD_LOGIC_VECTOR (1 to 8);
           intrude_zone : out  STD_LOGIC_VECTOR (2 downto 0);
           valid : out  STD_LOGIC);
end alarm_priority_tb;

architecture priority of alarm_priority_tb is

begin
  intrude_zone<= "000" when zone(1)= '1' else
                 "001" when zone(2)= '1' else
					  "010" when zone(3)= '1' else
					  "011" when zone(4)= '1' else
					  "100" when zone(5)= '1' else
					  "101" when zone(6)= '1' else
					  "110" when zone(7)= '1' else
					  "111" when zone(8)= '1' else
                       "000";
   valid <= zone(1) or zone(2) or zone(3) or zone(4) or
	         zone(5) or zone(6) or zone(7) or zone(8);
end architecture priority;

