library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	generic(addrBusSize : integer := 4;
			  dataBusSize : integer := 8);
	port(adress : in  std_logic_vector(addrBusSize-1 downto 0);
		  dataOut: out std_logic_vector(dataBusSize-1 downto 0));
end ROM_16_8;

architecture Behavioral of ROM_16_8 is
	subtype TDataWord is std_logic_vector(dataBusSize-1 downto 0);
	type TROM is array (0 to (2**addrBusSize)-1) of TDataWord;
	constant c_memory: TROM := ("00000000", "00000001", "00000010", "00000100",
"00001000", "00001111", "00001010", "00000101", "00000001", "00010010", "00010011", "00010100", "00010101", "00010111", "00011000", "00011001");
	
	begin
		dataOut <= c_memory(to_integer(unsigned(adress)));					
end Behavioral;