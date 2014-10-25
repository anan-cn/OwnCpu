--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:37:13 04/01/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/Final CPU Architecture/task3/Sign_Extend_TB.vhd
-- Project Name:  task3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sign_Extend
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
 
ENTITY Sign_Extend_TB IS
END Sign_Extend_TB;
 
ARCHITECTURE behavior OF Sign_Extend_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sign_Extend
    PORT(
         Input : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sign_Extend PORT MAP (
          Input => Input,
          Output => Output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
  
  --Zenios, check the results in Hex and in Dec, you should understand what is happening
  
		Input <= X"0001";
      wait for 10 ns;	
		
		Input <= X"8000";
      wait for 10 ns;	
		
		Input <= X"00AB";
      wait for 10 ns;

		Input <= X"FFFA";
      wait for 10 ns;			


      wait;
   end process;

END;
