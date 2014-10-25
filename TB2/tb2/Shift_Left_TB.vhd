--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:32:05 03/13/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/TB2/tb2/Shift_Left_TB.vhd
-- Project Name:  tb2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_Left
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
 
ENTITY Shift_Left_TB IS
END Shift_Left_TB;
 
ARCHITECTURE behavior OF Shift_Left_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_Left
    PORT(
         input : IN  std_logic_vector(31 downto 0);
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_Left PORT MAP (
          input => input,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		input <= X"00000001";
		wait for 100 ns;
		input <= X"000000F0";
		wait for 100 ns;
		input <= X"0000ABCD";
		wait for 100 ns;

      wait;
   end process;

END;
