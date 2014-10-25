-- Vhdl test bench created from schematic C:\Users\raivis\Desktop\task1\task1\RegisterFile.sch - Sat Feb 23 20:16:59 2013
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY RegisterFile_RegisterFile_sch_tb IS
END RegisterFile_RegisterFile_sch_tb;
ARCHITECTURE behavioral OF RegisterFile_RegisterFile_sch_tb IS 

   COMPONENT RegisterFile
   PORT( RDData	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          RS	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          RS_OUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          RT	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          RT_OUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Rd	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          RegWrite	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL RDData	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL RS	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL RS_OUT	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL RT	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL RT_OUT	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Rd	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL RegWrite	:	STD_LOGIC;

BEGIN

   UUT: RegisterFile PORT MAP(
		RDData => RDData, 
		CLK => CLK, 
		Reset => Reset, 
		RS => RS, 
		RS_OUT => RS_OUT, 
		RT => RT, 
		RT_OUT => RT_OUT, 
		Rd => Rd, 
		RegWrite => RegWrite
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		Reset <= '1';
		
		CLK <= '0';
		Wait for 100ns;
		CLK <= '1';
		Wait for 100ns;
		
		Reset <= '0';
		RegWrite <= '1';
		Rd <= "00001";
		RDData <= X"12345678";
		
		CLK <= '0';
		Wait for 100ns;
		CLK <= '1';
		Wait for 100ns;
		
		RegWrite <= '1';
		Rd <= "10000";
		RDData <= X"19921992";
		
		CLK <= '0';
		Wait for 100ns;
		CLK <= '1';
		Wait for 100ns;
		
		RegWrite <= '0';
		RDData <= X"01010101";
		RS <= "00001";
		RT <= "10000";
		CLK <= '0';
		Wait for 100ns;
		CLK <= '1';
		Wait for 100ns;
		
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
