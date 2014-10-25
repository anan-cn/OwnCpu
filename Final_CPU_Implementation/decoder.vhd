----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:46 02/23/2013 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
	port (

		enable	 :in std_logic;	 -- Enable for decoder
		destinationRegister	 :in std_logic_vector (4 downto 0); -- 5 bit Input
		decoderOutput :out std_logic_vector (31 downto 0) -- 16 bit Output

	);
end entity;

architecture Behavioral of decoder is

begin
process (enable, destinationRegister) begin
	decoderOutput <= X"00000000";
	if (enable = '1') then
		case (destinationRegister) is
				when "00000"	=> decoderOutput <= X"00000001";
				when "00001"	=> decoderOutput <= X"00000002";
				when "00010"	=> decoderOutput <= X"00000004";
				when "00011"	=> decoderOutput <= X"00000008";
				when "00100"	=> decoderOutput <= X"00000010";
				when "00101"	=> decoderOutput <= X"00000020";
				when "00110"	=> decoderOutput <= X"00000040";
				when "00111"	=> decoderOutput <= X"00000080";
				when "01000"	=> decoderOutput <= X"00000100";
				when "01001"	=> decoderOutput <= X"00000200";
				when "01010"	=> decoderOutput <= X"00000400";
				when "01011"	=> decoderOutput <= X"00000800";
				when "01100"	=> decoderOutput <= X"00001000";
				when "01101"	=> decoderOutput <= X"00002000";
				when "01110"	=> decoderOutput <= X"00004000";
				when "01111"	=> decoderOutput <= X"00008000";
				when "10000"	=> decoderOutput <= X"00010000";
				when "10001"	=> decoderOutput <= X"00020000";
				when "10010"	=> decoderOutput <= X"00040000";
				when "10011"	=> decoderOutput <= X"00080000";
				when "10100"	=> decoderOutput <= X"00100000";
				when "10101"	=> decoderOutput <= X"00200000";
				when "10110"	=> decoderOutput <= X"00400000";
				when "10111"	=> decoderOutput <= X"00800000";
				when "11000"	=> decoderOutput <= X"01000000";
				when "11001"	=> decoderOutput <= X"02000000";
				when "11010"	=> decoderOutput <= X"04000000";
				when "11011"	=> decoderOutput <= X"08000000";
				when "11100"	=> decoderOutput <= X"10000000";
				when "11101"	=> decoderOutput <= X"20000000";
				when "11110"	=> decoderOutput <= X"40000000";
				when "11111"	=> decoderOutput <= X"80000000";
				when others	=> decoderOutput <= X"00000000";
			end case;
		end if;
	end process;
end architecture;

