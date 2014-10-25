--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:25:38 03/13/2013
-- Design Name:   
-- Module Name:   C:/Users/raivis/Desktop/TB2/tb2/Memory_TB.vhd
-- Project Name:  tb2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sp_Ram_asyncRead
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
 
ENTITY Memory_TB IS
END Memory_TB;
 
ARCHITECTURE behavior OF Memory_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sp_Ram_asyncRead
    PORT(
         clk : IN  std_logic;
         MemWrite : IN  std_logic;
         MemRead : IN  std_logic;
         addr : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0);
         din : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal MemWrite : std_logic := '0';
   signal MemRead : std_logic := '0';
   signal addr : std_logic_vector(31 downto 0) := (others => '0');
   signal din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sp_Ram_asyncRead PORT MAP (
          clk => clk,
          MemWrite => MemWrite,
          MemRead => MemRead,
          addr => addr,
          dout => dout,
          din => din
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
      wait for 100 ns;	

		addr <= X"00000000";
		MemWrite <= '1';
		din <= X"12345678";		
      wait for clk_period;
		--wait for clk_period;

		MemWrite <= '0';
		MemRead <= '1';
		wait for clk_period;
		--wait for clk_period;
		
		addr <= X"00000001";
		MemRead <= '0';
		MemWrite <= '1';
		din <= X"55555555";	
		wait for clk_period;
		--wait for clk_period;
		
		addr <= X"00000000";
		MemWrite <= '0';
		MemRead <= '1';
		wait for clk_period;
		--wait for clk_period;
		
		addr <= X"00000001";
		wait for clk_period;
		--wait for clk_period;
		
		addr <= X"00000000";
		MemRead <= '0';
		MemWrite <= '1';
		din <= X"33333333";	
		wait for clk_period;
		
		MemWrite <= '0';
		MemRead <= '1';
		wait for clk_period;
		--wait for clk_period;
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
