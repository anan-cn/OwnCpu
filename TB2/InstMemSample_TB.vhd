
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:16:23 02/20/2013
-- Design Name:   InstMemSample
-- Module Name:   C:/Documents and Settings/omar benkrid/Desktop/VHDL/Kelvin/crypto/InstMemSample_TB.vhd
-- Project Name:  crypto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstMemSample
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY InstMemSample_TB_vhd IS
END InstMemSample_TB_vhd;

ARCHITECTURE behavior OF InstMemSample_TB_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT InstMemSample
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;          
		MemOut : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL reset :  std_logic := '0';
	SIGNAL clk :  std_logic := '0';
   constant clk_period: time :=10 ns;
	--Outputs
	SIGNAL MemOut :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: InstMemSample PORT MAP(
		reset => reset,
		clk => clk,
		MemOut => MemOut
	);

   clk_process: process
	begin
	  clk<='0';
	    wait for clk_period/2;
	  clk<='1';
	    wait for clk_period/2;
	end process;


	tb : PROCESS
	BEGIN
       reset<='1';
		 wait for clk_period/2;
		 
		 reset<='0';
		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
