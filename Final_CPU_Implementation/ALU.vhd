----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:56 04/01/2013 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Sign_Extended : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUSrc : in  STD_LOGIC;
           Zero : out  STD_LOGIC;
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0);
			  ALUCtr : in std_logic_vector(2 downto 0));
end ALU;

architecture Behavioral of ALU is

	SIGNAL A_input, B_input : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL ALU_output : STD_LOGIC_VECTOR (31 DOWNTO 0);	

begin

	A_input <= Data1;
	B_input <= Data2 when ALUSrc = '0' else
				  Sign_Extended;
				  
	Zero <= '1' when (ALU_output = X"00000000") else '0';
	ALU_Result <= (X"0000000" & "000" & ALU_output(31)) when ALUCtr = "111" else
						ALU_output;
						
	process(ALUCtr, A_input, B_input)
	begin
		case ALUCtr is
			when "000" => ALU_output <= A_input AND B_input;
			when "001" => ALU_output <= A_input OR B_input;
			when "010" => ALU_output <= A_input + B_input;
			when "110" => ALU_output <= A_input - B_input;
			when "111" => ALU_output <= A_input - B_input;
			when others => ALU_output <= X"00000000";
		end case;
	end process;

end Behavioral;

