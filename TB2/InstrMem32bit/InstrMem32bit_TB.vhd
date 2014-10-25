--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:53:35 03/13/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/TB2/tb2/InstrMem32bit_TB.vhd
-- Project Name:  tb2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstrMem32bit
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
 
ENTITY InstrMem32bit_TB IS
END InstrMem32bit_TB;
 
ARCHITECTURE behavior OF InstrMem32bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstrMem32bit
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         Instr : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Instr : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstrMem32bit PORT MAP (
          address => address,
          Instr => Instr
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      address <= X"00000000";
		wait for 100 ns;
		address <= X"00000004";
		wait for 100 ns;
		address <= X"00000008";
		wait for 100 ns;
		address <= X"0000000C";
		wait for 100 ns;
		address <= X"00000010";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
