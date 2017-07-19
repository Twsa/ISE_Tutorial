----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:46 07/14/2017 
-- Design Name: 
-- Module Name:    debounce - Behavioral 
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

entity debounce is
    Port ( sig_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           sig_out : out  STD_LOGIC);
end debounce;

architecture Behavioral of debounce is
--  Provides a one-shot pulse from a non-clock input, with reset  --单位脉冲输入，无时钟输入
--**Insert the following between the 'architecture' and
---'begin' keywords**
signal Q1, Q2, Q3 : std_logic;

begin

 --**Insert the following after the 'begin' keyword**
process(clk)
begin
   if (clk'event and clk = '1') then
--      if (<reset> = '1') then
--         Q1 <= '0';
--         Q2 <= '0';
--         Q3 <= '0'; 
--      else
         Q1 <= sig_in;
         Q2 <= Q1;
         Q3 <= Q2;
--      end if;
--修改日期：2017年7月14日
--修改人：刘传佳
--描述：<reset>在该设计中是用不着  VHDL
   end if;
end process;
sig_out <= Q1 and Q2 and (not Q3);

end Behavioral;
