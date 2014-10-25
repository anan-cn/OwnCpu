--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:15:32 04/01/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/Final CPU Architecture/task3/ALU_TB.vhd
-- Project Name:  task3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Data1 : IN  std_logic_vector(31 downto 0);
         Data2 : IN  std_logic_vector(31 downto 0);
         Sign_Extended : IN  std_logic_vector(31 downto 0);
         ALUSrc : IN  std_logic;
         Zero : OUT  std_logic;
         ALU_Result : OUT  std_logic_vector(31 downto 0);
         ALUCtr : IN  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Sign_Extended : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUSrc : std_logic := '0';
   signal ALUCtr : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Zero : std_logic;
   signal ALU_Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Data1 => Data1,
          Data2 => Data2,
          Sign_Extended => Sign_Extended,
          ALUSrc => ALUSrc,
          Zero => Zero,
          ALU_Result => ALU_Result,
          ALUCtr => ALUCtr
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Data1 <= X"00000001";
		Data2 <= X"00000002";
		Sign_Extended <= X"00000003";
		ALUSrc <= '0';  --Select Data2 as input b
		ALUCtr <= "010"; --Addition
      wait for 100 ns;	
		
		ALUSrc <= '1';  --Select Sign_Extended as input b
		wait for 10 ns;
		
		ALUSrc <= '0';
		Data1 <= X"00000003";
		Data2 <= X"00000007";
		ALUCtr <= "000";  -- Boolean AND operation
		wait for 10 ns;
		
		Data1 <= X"00000003";
		Data2 <= X"0000000A";
		ALUCtr <= "001";  -- Boolean OR operation
		wait for 10 ns;
		
		Data1 <= X"0000000A";
		Data2 <= X"00000003";
		ALUCtr <= "110";  -- Subtraction
		wait for 10 ns;
		
		Data1 <= X"00000003";
		Data2 <= X"00000010";
		ALUCtr <= "111";  -- STL operation
		wait for 10 ns;
		
		Data1 <= X"00000010";
		Data2 <= X"00000003";
		ALUCtr <= "111";  -- STL operation
		wait for 10 ns;
		
		Data1 <= X"000000AA";
		Data2 <= X"000000AA";
		ALUCtr <= "110";  -- Subtraction
		wait for 10 ns;
      

      wait;
   end process;

END;
