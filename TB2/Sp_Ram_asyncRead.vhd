----------------------------------------------------------------------------------
-- code taken from FPGA Prototyping by VHDL Examples: Xilinx Spartan-3 Version
-- By Pong P. Chu. The (e-)book is available in the Univ. Library
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity  Sp_Ram_asyncRead is

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
end  Sp_Ram_asyncRead;

architecture beh_arch of  Sp_Ram_asyncRead is

type ram_type is array (255 downto 0 ) of std_logic_vector (DATA_WIDTH-1 downto 0 );
signal ram: ram_type := ((others=> (others=>'0')));
signal read_data : std_logic_vector(DATA_WIDTH-1 downto 0 ) := (others => '0');

begin

process (clk)
  begin
      if (clk'event and clk = '1') then
         if (MemWrite='1') then
			   ram(to_integer (unsigned(addr))) <= din;
          end if ;    
			if(MemRead='1') then
				read_data <= ram(to_integer(unsigned(addr)));
			end if;
       end if ;
end process ;

dout <= read_data;

end beh_arch ;


