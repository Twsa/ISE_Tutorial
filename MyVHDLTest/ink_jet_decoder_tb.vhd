--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:11:04 07/28/2017
-- Design Name:   
-- Module Name:   D:/GitHub/ISE_Tutorial/MyVHDLTest/ink_jet_decoder_tb.vhd
-- Project Name:  MyVHDLTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ink_jet_ecoder
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
 
ENTITY ink_jet_decoder_tb IS
END ink_jet_decoder_tb;
 
ARCHITECTURE behavior OF ink_jet_decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ink_jet_ecoder
    PORT(
	      clk     : in std_logic;
         color2 : IN  std_logic;
         color1 : IN  std_logic;
         color0 : IN  std_logic;
         black : OUT  std_logic;
         cyan : OUT  std_logic;
         megenta : OUT  std_logic;
         yellow : OUT  std_logic;
         light_cyan : OUT  std_logic;
         light_megenta : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal clk : std_logic := '0';
   signal color2 : std_logic := '0';
   signal color1 : std_logic := '0';
   signal color0 : std_logic := '0';

 	--Outputs
   signal black : std_logic;
   signal cyan : std_logic;
   signal megenta : std_logic;
   signal yellow : std_logic;
   signal light_cyan : std_logic;
   signal light_megenta : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ink_jet_ecoder PORT MAP (
	       clk => clk,
          color2 => color2,
          color1 => color1,
          color0 => color0,
          black => black,
          cyan => cyan,
          megenta => megenta,
          yellow => yellow,
          light_cyan => light_cyan,
          light_megenta => light_megenta
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
		
      -- insert stimulus here
		--black
		color2 <= '0';
      color1 <= '0';
      color0 <= '1';
		
		wait for clk_period*2;
		--cyan
	   color2 <= '0';
      color1 <= '1';
      color0 <= '0';
--		
	   wait for clk_period*2;
		--megenta
	   color2 <= '0';
      color1 <= '1';
      color0 <= '1';
--		
      wait for clk_period*2;
		--yellow
	   color2 <= '0';
      color1 <= '0';
      color0 <= '0';
		
		wait for clk_period*2;
		--light-cyan
	   color2 <= '1';
      color1 <= '0';
      color0 <= '1';
		
	   wait for clk_period*2;
		--light-megenta
	   color2 <= '1';
      color1 <= '1';
      color0 <= '0';
      wait;
   end process;

END;
