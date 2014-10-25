----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:58 04/06/2013 
-- Design Name: 
-- Module Name:    SingleCycleCPU - Behavioral 
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

entity SingleCycleCPU is
    Port ( clk : in  STD_LOGIC;
				instruction : out std_logic_vector(31 downto 0);
           reset : in  STD_LOGIC);
end SingleCycleCPU;

architecture Structural of SingleCycleCPU is

	component Instruction_Fetch is
				Port ( branch_in : in  STD_LOGIC_VECTOR (31 downto 0);           
				jump_bool : in  STD_LOGIC;
				branch_bool : in  STD_LOGIC;
				clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				instr : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component ControlUnit is
    Port ( OPcode : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
			  Jump : out STD_LOGIC;
			  BranchNE : out std_logic;
           Branch : out  STD_LOGIC);
	end component;
		
	component ALUCtrl is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Instr : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUCtr : out  STD_LOGIC_VECTOR (2 downto 0));
	end component;
	
	component ALU is
    Port ( Data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Sign_Extended : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUSrc : in  STD_LOGIC;
           Zero : out  STD_LOGIC;
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0);
			  ALUCtr : in std_logic_vector(2 downto 0));
	end component;
	
	component Sign_Extend is
    Port ( Input : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component RegisterFile
			PORT( RDData	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
				CLK	:	IN	STD_LOGIC; 
				Reset	:	IN	STD_LOGIC; 
				RS	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
				RS_OUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
				RT	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
				RT_OUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
				Rd	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
				RegWrite	:	IN	STD_LOGIC);
	end component;
	
	component  Sp_Ram_asyncRead is
	generic (
					ADDR_WIDTH :integer := 32 ;
					DATA_WIDTH : integer := 32
				);
	port (
				clk : in std_logic;
				MemWrite: in std_logic;
				MemRead: in std_logic;
				addr : in std_logic_vector (ADDR_WIDTH-1 downto 0) ;
				dout : out std_logic_vector (DATA_WIDTH-1 downto 0);
				din: in std_logic_vector (DATA_WIDTH -1 downto 0 ) 
		);
	end  component;

	--Instruction fetch signal
	signal jump_bool : std_logic;
	signal branch_bool : std_logic;
	signal instr : std_logic_vector (31 downto 0);
	
	--Control Unit signals
	signal ALUOp : std_logic_vector(1 downto 0);
	signal RegDst : std_logic;
	signal ALUSrc : std_logic;
	signal MemToReg : std_logic;
	signal RegWrite : std_logic;
	signal MemRead : std_logic;
	signal MemWrite : std_logic;
	signal branchFromctrlUnit : std_logic;
	signal branchNEFromCtrlUnit : std_logic;
	
	--ALU Control signals
	signal ALUCtr : std_logic_vector(2 downto 0);
	
	--ALU signals
	signal RegData1 : std_logic_vector(31 downto 0);
	signal RegData2 : std_logic_vector(31 downto 0);
	signal Sign_Extended : std_logic_vector(31 downto 0);
	signal Zero : std_logic;
	signal ALU_Result : std_logic_vector(31 downto 0);
	
	--Register File signals
	signal WriteData : std_logic_vector(31 downto 0);
	signal WriteAddr : std_logic_vector(4 downto 0);
	
	--Asynchronous RAM signals
	signal RamDataOut : std_logic_vector(31 downto 0);

begin

RAM : Sp_Ram_asyncRead PORT MAP(clk, MemWrite, MemRead, ALU_Result, RamDataOut, RegData2);
	WriteData <= RamDataOut when MemToReg = '1' else
					 ALU_Result;

	InstrFetch : Instruction_Fetch PORT MAP ( Sign_Extended, jump_bool, branch_bool, clk, reset, instr);
	CtrlUnit : ControlUnit PORT MAP( instr(31 downto 26), ALUOp, RegDst, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, jump_bool,branchNEFromCtrlUnit, branchFromctrlUnit);
	ALUControl : ALUCtrl PORT MAP(ALUOp, instr(5 downto 0), ALUCtr);
	
	ALUMain : ALU PORT MAP(RegData1, RegData2, Sign_Extended, ALUSrc, Zero, ALU_Result, ALUCtr);
	branch_bool <= (branchFromctrlUnit AND Zero) Or (branchNEFromCtrlUnit AND not Zero);
	
	Sign_Extender : Sign_Extend PORT MAP (instr(15 downto 0), Sign_Extended);
	
	RegFile : RegisterFile PORT MAP(WriteData, clk, reset, instr(25 downto 21) , RegData1, instr(20 downto 16), RegData2, WriteAddr, RegWrite);
	WriteAddr <= instr(20 downto 16) when RegDst = '0' else
					 instr(15 downto 11);
	
	
					 
	instruction <= instr;
	

end Structural;

