--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:08:02 04/01/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/Final CPU Architecture/task3/ControlUnit_TB.vhd
-- Project Name:  task3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
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
 
ENTITY ControlUnit_TB IS
END ControlUnit_TB;
 
ARCHITECTURE behavior OF ControlUnit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         OPcode : IN  std_logic_vector(5 downto 0);
         ALUOp : OUT  std_logic_vector(1 downto 0);
         RegDst : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         MemToReg : OUT  std_logic;
         RegWrite : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemWrite : OUT  std_logic;
			Jump : OUT  std_logic;
			BranchNE : OUT std_logic;
         Branch : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal OPcode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALUOp : std_logic_vector(1 downto 0);
   signal RegDst : std_logic;
   signal ALUSrc : std_logic;
   signal MemToReg : std_logic;
   signal RegWrite : std_logic;
   signal MemRead : std_logic;
   signal MemWrite : std_logic;
	signal Jump : std_logic;
	signal BranchNE : std_logic;
   signal Branch : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          OPcode => OPcode,
          ALUOp => ALUOp,
          RegDst => RegDst,
          ALUSrc => ALUSrc,
          MemToReg => MemToReg,
          RegWrite => RegWrite,
          MemRead => MemRead,
          MemWrite => MemWrite,
			 Jump => Jump,
			 BranchNE => BranchNE,
          Branch => Branch
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		OPcode <= "000000";  --R_TYPE
      wait for 10 ns;	
		
		OPcode <= "100011"; --Load Word
      wait for 10 ns;	
		
		OPcode <= "101011"; --Store Word
      wait for 10 ns;	
		
		OPcode <= "000100"; --BRANCH
      wait for 10 ns;	
		
		OPcode <= "000010"; --JUMP
      wait for 10 ns;	
		
		OPcode <= "000101"; --Branch Not Equal
		wait for 10 ns;
		
		OPcode <= "001000"; --ADDI
		wait for 10 ns;

		
      wait;
   end process;

END;
