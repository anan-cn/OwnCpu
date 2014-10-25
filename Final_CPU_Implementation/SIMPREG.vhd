----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:03 02/23/2013 
-- Design Name: 
-- Module Name:    SIMPREG - Behavioral 
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

entity SIMPREG is
port (RdData : in std_logic_vector(31 downto 0); -- system inputs
DOUT : out std_logic_vector(31 downto 0); -- system outputs
ENABLE : in std_logic; -- enable
CLK,RESET : in std_logic); -- clock and reset
end SIMPREG;

-- purpose: Main architecture details for SIMPREG
architecture SIMPLE of SIMPREG is
begin -- SIMPLE
	process(CLK,RESET)
		begin -- process
				-- activities triggered by asynchronous reset (active high)
				if RESET = '1' then
						DOUT <= X"00000000";			
				-- activities triggered by rising edge of clock
				elsif CLK'event and CLK = '1' then
						if ENABLE='1' then
								DOUT <= RdData;
						else
								null;
						end if;
				end if;
	end process;
end SIMPLE;

