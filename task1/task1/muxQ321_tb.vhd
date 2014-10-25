--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:27 02/23/2013
-- Design Name:   
-- Module Name:   C:/Users/aloupas/task1/muxQ321_tb.vhd
-- Project Name:  task1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxQ321
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
 
ENTITY muxQ321_tb IS
END muxQ321_tb;
 
ARCHITECTURE behavior OF muxQ321_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxQ321
    PORT(
         s : IN  std_logic_vector(4 downto 0);
         d0 : IN  std_logic_vector(31 downto 0);
         d1 : IN  std_logic_vector(31 downto 0);
         d2 : IN  std_logic_vector(31 downto 0);
         d3 : IN  std_logic_vector(31 downto 0);
         d4 : IN  std_logic_vector(31 downto 0);
         d5 : IN  std_logic_vector(31 downto 0);
         d6 : IN  std_logic_vector(31 downto 0);
         d7 : IN  std_logic_vector(31 downto 0);
         d8 : IN  std_logic_vector(31 downto 0);
         d9 : IN  std_logic_vector(31 downto 0);
         d10 : IN  std_logic_vector(31 downto 0);
         d11 : IN  std_logic_vector(31 downto 0);
         d12 : IN  std_logic_vector(31 downto 0);
         d13 : IN  std_logic_vector(31 downto 0);
         d14 : IN  std_logic_vector(31 downto 0);
         d15 : IN  std_logic_vector(31 downto 0);
         d16 : IN  std_logic_vector(31 downto 0);
         d17 : IN  std_logic_vector(31 downto 0);
         d18 : IN  std_logic_vector(31 downto 0);
         d19 : IN  std_logic_vector(31 downto 0);
         d20 : IN  std_logic_vector(31 downto 0);
         d21 : IN  std_logic_vector(31 downto 0);
         d22 : IN  std_logic_vector(31 downto 0);
         d23 : IN  std_logic_vector(31 downto 0);
         d24 : IN  std_logic_vector(31 downto 0);
         d25 : IN  std_logic_vector(31 downto 0);
         d26 : IN  std_logic_vector(31 downto 0);
         d27 : IN  std_logic_vector(31 downto 0);
         d28 : IN  std_logic_vector(31 downto 0);
         d29 : IN  std_logic_vector(31 downto 0);
         d30 : IN  std_logic_vector(31 downto 0);
         d31 : IN  std_logic_vector(31 downto 0);
         y : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(4 downto 0) := (others => '0');
   signal d0 : std_logic_vector(31 downto 0) := (others => '0');
   signal d1 : std_logic_vector(31 downto 0) := (others => '0');
   signal d2 : std_logic_vector(31 downto 0) := (others => '0');
   signal d3 : std_logic_vector(31 downto 0) := (others => '0');
   signal d4 : std_logic_vector(31 downto 0) := (others => '0');
   signal d5 : std_logic_vector(31 downto 0) := (others => '0');
   signal d6 : std_logic_vector(31 downto 0) := (others => '0');
   signal d7 : std_logic_vector(31 downto 0) := (others => '0');
   signal d8 : std_logic_vector(31 downto 0) := (others => '0');
   signal d9 : std_logic_vector(31 downto 0) := (others => '0');
   signal d10 : std_logic_vector(31 downto 0) := (others => '0');
   signal d11 : std_logic_vector(31 downto 0) := (others => '0');
   signal d12 : std_logic_vector(31 downto 0) := (others => '0');
   signal d13 : std_logic_vector(31 downto 0) := (others => '0');
   signal d14 : std_logic_vector(31 downto 0) := (others => '0');
   signal d15 : std_logic_vector(31 downto 0) := (others => '0');
   signal d16 : std_logic_vector(31 downto 0) := (others => '0');
   signal d17 : std_logic_vector(31 downto 0) := (others => '0');
   signal d18 : std_logic_vector(31 downto 0) := (others => '0');
   signal d19 : std_logic_vector(31 downto 0) := (others => '0');
   signal d20 : std_logic_vector(31 downto 0) := (others => '0');
   signal d21 : std_logic_vector(31 downto 0) := (others => '0');
   signal d22 : std_logic_vector(31 downto 0) := (others => '0');
   signal d23 : std_logic_vector(31 downto 0) := (others => '0');
   signal d24 : std_logic_vector(31 downto 0) := (others => '0');
   signal d25 : std_logic_vector(31 downto 0) := (others => '0');
   signal d26 : std_logic_vector(31 downto 0) := (others => '0');
   signal d27 : std_logic_vector(31 downto 0) := (others => '0');
   signal d28 : std_logic_vector(31 downto 0) := (others => '0');
   signal d29 : std_logic_vector(31 downto 0) := (others => '0');
   signal d30 : std_logic_vector(31 downto 0) := (others => '0');
   signal d31 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxQ321 PORT MAP (
          s => s,
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3,
          d4 => d4,
          d5 => d5,
          d6 => d6,
          d7 => d7,
          d8 => d8,
          d9 => d9,
          d10 => d10,
          d11 => d11,
          d12 => d12,
          d13 => d13,
          d14 => d14,
          d15 => d15,
          d16 => d16,
          d17 => d17,
          d18 => d18,
          d19 => d19,
          d20 => d20,
          d21 => d21,
          d22 => d22,
          d23 => d23,
          d24 => d24,
          d25 => d25,
          d26 => d26,
          d27 => d27,
          d28 => d28,
          d29 => d29,
          d30 => d30,
          d31 => d31,
          y => y
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		
							d1 <= X"00000001";
							d2 <= X"00000AB0";
							d3 <= X"000ABC11";
							d4 <= X"00025500";
							d5 <= X"26600456";
							d6 <= X"AAAAAAAA";
							d7 <= X"BBBBBBBB";
							d8 <= X"CCCCCCCC";
							d9 <= X"DDDDDDDD";
							d10 <= X"FFFFFFFF";
							d11 <= X"11111111";
							d12 <= X"22222222";
							d13 <= X"33333333";
							d14 <= X"44444444";
							d15 <= X"55555555";
							d16 <= X"66666666";
							d17 <= X"77777777";
							d18 <= X"88888888";
							d19 <= X"99999999";
							d20 <= X"ABABABAB";
							d21 <= X"BFBDBFFB";
							d22 <= X"1111AAAA";
							d23 <= X"2222AAAA";
							d24 <= X"3333AAAA";
							d25 <= X"4444AAAA";
							d26 <= X"5555AAAA";
							d27 <= X"6666AAAA";
							d28 <= X"7777AAAA";
							d29 <= X"8888AAAA";
							d30 <= X"9999AAAA";
							d31 <= X"FFFFAAAA";	
							
							s<= "00001";
							wait for 100 ns;	
							s<= "00010";
							wait for 100 ns;	
							s<= "00100";
							wait for 100 ns;	
							s<= "00011";

      wait;
   end process;

END;
