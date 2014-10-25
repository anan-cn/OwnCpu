--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:41:42 02/23/2013
-- Design Name:   
-- Module Name:   C:/Users/aloupas/task1/decoder_tb.vhd
-- Project Name:  task1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         enable : IN  std_logic;
         destinationRegister : IN  std_logic_vector(4 downto 0);
         decoderOutput : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enable : std_logic := '0';
   signal destinationRegister : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal decoderOutput : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          enable => enable,
          destinationRegister => destinationRegister,
          decoderOutput => decoderOutput
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		enable <= '1';
      wait for 100 ns;	
		destinationRegister <= "00000";
		wait for 100 ns;	
		destinationRegister <= "00001";
		wait for 100 ns;	
		destinationRegister <= "00010";
		wait for 100 ns;	
		destinationRegister <= "00011";
		wait for 100 ns;	
		destinationRegister <= "00100";
		wait for 100 ns;	
		destinationRegister <= "00101";
		
 --     wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
