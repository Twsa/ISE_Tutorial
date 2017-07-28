--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:41:31 07/28/2017
-- Design Name:   
-- Module Name:   D:/GitHub/ISE_Tutorial/MyVHDLTest/multiplex_4_to_1_tb.vhd
-- Project Name:  MyVHDLTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplex_4_to_1
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
 
ENTITY multiplex_4_to_1_tb IS
END multiplex_4_to_1_tb;
 
ARCHITECTURE behavior OF multiplex_4_to_1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplex_4_to_1
    PORT(
         clk : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplex_4_to_1 PORT MAP (
          clk => clk,
          a => a,
          sel => sel,
          z => z
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
    -- signal a(0) process definitions
   a0_process :process
   begin
		a(0) <= '0';
		wait for clk_period/2;
		a(0) <= '1';
		wait for clk_period/2;
   end process;
	
    -- signal a1 process definitions
   a1_process :process
   begin
		a(1) <= '0';
		wait for clk_period;
		a(1) <= '1';
		wait for clk_period;
   end process;
	
  -- signal a2 process definitions
   a2_process :process
   begin
		a(2) <= '0';
		wait for clk_period*2;
		a(2) <= '1';
		wait for clk_period*2;
   end process;
	-- signal a3 process definitions
   a3_process :process
   begin
		a(3) <= '0';
		wait for clk_period*3;
		a(3) <= '1';
		wait for clk_period*3;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for clk_period*10;	

      -- insert stimulus here 
		sel <= "00";

		
		wait for clk_period*10;
		sel <= "01";
		
		wait for clk_period*10;
		sel <= "10";
		
	   wait for clk_period*10;
		sel <= "11";
      wait;
   end process;

END;
