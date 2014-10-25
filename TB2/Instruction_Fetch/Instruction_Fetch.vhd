----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:21 03/13/2013 
-- Design Name: 
-- Module Name:    Instruction_Fetch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Fetch is
    Port ( branch_in : in  STD_LOGIC_VECTOR (31 downto 0);           
           jump_bool : in  STD_LOGIC;
           branch_bool : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : out  STD_LOGIC_VECTOR (31 downto 0));
end Instruction_Fetch;

architecture Structural  of Instruction_Fetch is
	component Program_Counter is
			Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component InstrMem32bit
			Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           Instr : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component Adder
			Port ( num1 : in  STD_LOGIC_VECTOR (31 downto 0);
           num2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  result : OUT STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component Shift_Left
			Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);           
			  output : out STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
	component BinaryMUX
			Port ( inputA : in  STD_LOGIC_VECTOR (31 downto 0);
           inputB : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	signal pc_output : STD_LOGIC_VECTOR (31 downto 0);
	constant PC_INCREMENT : std_logic_vector(31 downto 0):= X"00000004"; 
	signal pc_adder_output : std_logic_vector(31 downto 0);
	signal branch_shift_output : std_logic_vector(31 downto 0);
	signal branch_adder_output : std_logic_vector(31 downto 0);
	signal jump_shift_output : std_logic_vector(31 downto 0);
	signal InstrMemOut : std_logic_vector(31 downto 0);
	signal jump_32bit_signal : std_logic_vector(31 downto 0);
	signal branchMUX_output : std_logic_vector(31 downto 0);
	signal PC_new_value : std_logic_vector(31 downto 0);
begin

	PC1: Program_Counter PORT MAP(PC_new_value, reset, clk, pc_output);
	InstrMem : InstrMem32bit PORT MAP( pc_output, InstrMemOut );
	instr <= InstrMemOut;
	PC_Adder : Adder PORT MAP( pc_output, PC_INCREMENT, pc_adder_output );
	Shift_Branch : Shift_Left PORT MAP( branch_in, branch_shift_output );
	Branch_Adder : Adder PORT MAP( branch_shift_output, pc_adder_output, branch_adder_output );
	Shift_Jump : Shift_Left PORT MAP( "000000" & InstrMemOut(25 downto 0), jump_shift_output );
	jump_32bit_signal <= pc_adder_output(31 downto 28) & jump_shift_output(27 downto 0);
	BranchMUX : BinaryMUX PORT MAP( pc_adder_output, branch_adder_output, branch_bool, branchMUX_output);
	JumpMUX : BinaryMUX PORT MAP ( branchMUX_output, jump_32bit_signal, jump_bool, PC_new_value);
	
end Structural ;

