--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:42:04 03/13/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/TB2/tb2/Instruction_Fetch_TB.vhd
-- Project Name:  tb2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Instruction_Fetch
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
 
ENTITY Instruction_Fetch_TB IS
END Instruction_Fetch_TB;
 
ARCHITECTURE behavior OF Instruction_Fetch_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Instruction_Fetch
    PORT(
         branch_in : IN  std_logic_vector(31 downto 0);
         jump_bool : IN  std_logic;
         branch_bool : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         instr : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal branch_in : std_logic_vector(31 downto 0) := (others => '0');
   signal jump_bool : std_logic := '0';
   signal branch_bool : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal instr : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Instruction_Fetch PORT MAP (
          branch_in => branch_in,
          jump_bool => jump_bool,
          branch_bool => branch_bool,
          clk => clk,
          reset => reset,
          instr => instr
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
		reset <= '1';
		branch_bool <= '0';
		jump_bool <= '0';
      wait for 100 ns;	
		reset <= '0';

		wait for clk_period * 2;
		branch_in <= X"00000003";
		branch_bool <= '1';
		wait for clk_period;
		branch_bool <= '0';
		
		wait for clk_period *2;
		jump_bool <= '1';
		wait for clk_period;
		jump_bool <= '0';
      --wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
