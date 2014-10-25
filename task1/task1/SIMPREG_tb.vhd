--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:12:11 02/23/2013
-- Design Name:   
-- Module Name:   C:/Users/aloupas/task1/SIMPREG_tb.vhd
-- Project Name:  task1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIMPREG
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
 
ENTITY SIMPREG_tb IS
END SIMPREG_tb;
 
ARCHITECTURE behavior OF SIMPREG_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIMPREG
    PORT(
         RdData : IN  std_logic_vector(31 downto 0);
         DOUT : OUT  std_logic_vector(31 downto 0);
         ENABLE : IN  std_logic;
         CLK : IN  std_logic;
         RESET : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RdData : std_logic_vector(31 downto 0) := (others => '0');
   signal ENABLE : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal DOUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIMPREG PORT MAP (
          RdData => RdData,
          DOUT => DOUT,
          ENABLE => ENABLE,
          CLK => CLK,
          RESET => RESET
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
		enable <= '1';
		RdData <= X"8FFFF8FF";
		wait for CLK_period*10;
		
		RdData <= X"8827F8FF";
		wait for CLK_period*10;
		
		RdData <= X"AFABF8F1";
		wait for CLK_period*20;
		
		enable <= '0';
		
		RdData <= X"AAA2F8F1";
		wait for CLK_period*10;

      wait;
   end process;

END;
