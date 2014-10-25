----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:27 02/23/2013 
-- Design Name: 
-- Module Name:    muxQ321 - Behavioral 
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
library IEEE;
use IEEE.std_logic_1164.all;
entity muxQ321 is
port(
			s : in std_logic_vector(4 downto 0);
			d0 : in std_logic_vector(31 downto 0);
			d1 : in std_logic_vector(31 downto 0);
			d2 : in std_logic_vector(31 downto 0);
			d3 : in std_logic_vector(31 downto 0);
			d4 : in std_logic_vector(31 downto 0);
			d5 : in std_logic_vector(31 downto 0);
			d6 : in std_logic_vector(31 downto 0);
			d7 : in std_logic_vector(31 downto 0);
			d8 : in std_logic_vector(31 downto 0);
			d9 : in std_logic_vector(31 downto 0);
			d10 : in std_logic_vector(31 downto 0);
			d11 : in std_logic_vector(31 downto 0);
			d12 : in std_logic_vector(31 downto 0);
			d13 : in std_logic_vector(31 downto 0);
			d14 : in std_logic_vector(31 downto 0);
			d15 : in std_logic_vector(31 downto 0);
			d16 : in std_logic_vector(31 downto 0);
			d17 : in std_logic_vector(31 downto 0);
			d18 : in std_logic_vector(31 downto 0);
			d19 : in std_logic_vector(31 downto 0);
			d20 : in std_logic_vector(31 downto 0);
			d21 : in std_logic_vector(31 downto 0);
			d22 : in std_logic_vector(31 downto 0);
			d23 : in std_logic_vector(31 downto 0);
			d24 : in std_logic_vector(31 downto 0);
			d25 : in std_logic_vector(31 downto 0);
			d26 : in std_logic_vector(31 downto 0);
			d27 : in std_logic_vector(31 downto 0);
			d28 : in std_logic_vector(31 downto 0);
			d29 : in std_logic_vector(31 downto 0);
			d30 : in std_logic_vector(31 downto 0);
			d31 : in std_logic_vector(31 downto 0);
			y : out std_logic_vector(31 downto 0)
		);
end muxQ321;

architecture behavioral of muxQ321 is

begin
-- Your VHDL code defining the model goes here
-- Selected signal assignment
with s select y <=   d0 when "00000",
							d1 when "00001",
							d2 when "00010",
							d3 when "00011",
							d4 when "00100",
							d5 when "00101",
							d6 when "00110",
							d7 when "00111",
							d8 when "01000",
							d9 when "01001",
							d10 when "01010",
							d11 when "01011",
							d12 when "01100",
							d13 when "01101",
							d14 when "01110",
							d15 when "01111",
							d16 when "10000",
							d17 when "10001",
							d18 when "10010",
							d19 when "10011",
							d20 when "10100",
							d21 when "10101",
							d22 when "10110",
							d23 when "10111",
							d24 when "11000",
							d25 when "11001",
							d26 when "11010",
							d27 when "11011",
							d28 when "11100",
							d29 when "11101",
							d30 when "11110",
							d31 when "11111";	
end behavioral;

