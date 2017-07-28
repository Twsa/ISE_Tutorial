--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:16:41 07/28/2017
-- Design Name:   
-- Module Name:   D:/GitHub/ISE_Tutorial/MyVHDLTest/alarm_no_priority_tb.vhd
-- Project Name:  MyVHDLTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alarm_no_priority
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alarm_no_priority_tb IS
END alarm_no_priority_tb;
 
ARCHITECTURE behavior OF alarm_no_priority_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alarm_no_priority
    PORT(
         clk : IN  std_logic;
         zone : IN  std_logic_vector(1 to 8);
         intrude_zone : OUT  std_logic_vector(2 downto 0);
         valid : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal zone : std_logic_vector(1 to 8) := (others => '0');

 	--Outputs
   signal intrude_zone : std_logic_vector(2 downto 0);
   signal valid : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alarm_no_priority PORT MAP (
          clk => clk,
          zone => zone,
          intrude_zone => intrude_zone,
          valid => valid
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
		--2区 set
       wait for clk_period*2;
		 zone <= "01000000";
		--3区 set
       wait for clk_period*2;
		 zone <= "00100000";
		--4区 set
       wait for clk_period*2;
		 zone <= "00010000";
		--5区 set
       wait for clk_period*2;
		 zone <= "00001000";
	   --6区 set
       wait for clk_period*2;
		 zone <= "00000100";
		--7区 set
       wait for clk_period*2;
		 zone <= "00000010";
		--8区 set
       wait for clk_period*2;
		 zone <= "00000001";
      wait;
   end process;

END;
