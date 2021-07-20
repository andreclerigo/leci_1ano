library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity IMemory_16_16 is
	generic(N           : integer := 16;
			  adressLength: integer := 4);  --12 instrucoes utilizadas, logo necessita de 4bits
	port(clk            : in  std_logic;
		  Enable         : in  std_logic;
		  registAdress   : in  std_logic_vector(adressLength-1 downto 0);
		  readData       : out std_logic_vector(N-1 downto 0));
end IMemory_16_16;

architecture Behavioral of IMemory_16_16 is
	constant NUM_WORDS : integer := 16;
	subtype TDataWord is std_logic_vector(N-1 downto 0);
	type TROM is array (0 to NUM_WORDS-1) of TDataWord;
	--Incializar a ROM com os valores das intrucoes dadas no Projeto para bytes
	constant c_memory: TROM := ("1110000010000000", "1000000100000001", "0010010100110110", "0010000111000000",
										 "1000100100000001", "0010010100110110", "0011000111000000", "1000100100000001", 
										 "0010010100110110", "0011000111000000", "1100000100000010", "1100001000000011", others => X"0000");
begin
	process(clk, Enable)
	begin
		if (rising_edge(clk)) then
			if (Enable = '1') then
				readData <= c_memory(to_integer(unsigned(registAdress)));   -- Retornar a data que esta na adress que queremos (indice dado por registAdress)
			end if;
		end if;
	end process;
end Behavioral;