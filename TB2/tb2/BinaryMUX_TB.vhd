--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:40:56 03/13/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/TB2/tb2/BinaryMUX_TB.vhd
-- Project Name:  tb2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BinaryMUX
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
 
ENTITY BinaryMUX_TB IS
END BinaryMUX_TB;
 
ARCHITECTURE behavior OF BinaryMUX_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BinaryMUX
    PORT(
         inputA : IN  std_logic_vector(31 downto 0);
         inputB : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic;
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputA : std_logic_vector(31 downto 0) := (others => '0');
   signal inputB : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BinaryMUX PORT MAP (
          inputA => inputA,
          inputB => inputB,
          sel => sel,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		inputA <= X"AAAAAAAA";
		inputB <= X"BBBBBBBB";
		sel <= '0';
		wait for 100 ns;
		sel <= '1';
		wait for 100 ns;
		sel <= '0';
		wait for 100 ns;
		sel <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
