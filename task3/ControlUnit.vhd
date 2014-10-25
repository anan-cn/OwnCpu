----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:46:26 04/01/2013 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( OPcode : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
			  Jump : out STD_LOGIC;
           Branch : out  STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is
	SIGNAL R_type, LWD, SWD, BEQ : std_logic;

begin

	R_type <= '1' when OPcode = "000000" else '0';
	LWD <= '1' when OPcode = "100011" else '0';
	SWD <= '1' when OPcode = "101011" else '0';
	BEQ <= '1' when  OPcode = "000100" else '0';
	Jump <= '1' when OPcode = "000010" else '0';
	
	Branch <= BEQ;
	MemToReg <= LWD;
	ALUSrc <= LWD Or SWD;
	RegDst <= R_type;
	MemRead <= LWD;
	MemWrite <= SWD;
	RegWrite <= R_type Or LWD;
	
	--See the document provided by Bendrikt in ALU control section
	ALUOp(1) <= R_type;
	ALUOp(0) <= BEQ;

end Behavioral;

