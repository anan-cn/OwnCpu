--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:52:42 04/01/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/Final CPU Architecture/task3/ALUCtrl_TB.vhd
-- Project Name:  task3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUCtrl
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
 
ENTITY ALUCtrl_TB IS
END ALUCtrl_TB;
 
ARCHITECTURE behavior OF ALUCtrl_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUCtrl
    PORT(
         ALUOp : IN  std_logic_vector(1 downto 0);
         Instr : IN  std_logic_vector(5 downto 0);
         ALUCtr : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALUOp : std_logic_vector(1 downto 0) := (others => '0');
   signal Instr : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALUCtr : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUCtrl PORT MAP (
          ALUOp => ALUOp,
          Instr => Instr,
          ALUCtr => ALUCtr
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		ALUOp <= "00";
		Instr <= "000000";
      wait for 10 ns;	
		
		ALUOp <= "01";		
      wait for 10 ns;	
		
		ALUOp <= "10";
		Instr <= "100000";
      wait for 10 ns;	
		
		ALUOp <= "10";
		Instr <= "100010";
      wait for 10 ns;	
		
		ALUOp <= "10";
		Instr <= "100100";
      wait for 10 ns;
		
		ALUOp <= "10";
		Instr <= "100101";
      wait for 10 ns;
		
		ALUOp <= "10";
		Instr <= "101010";
      wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
