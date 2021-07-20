library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DMemory_256_8 is
	generic(nBits    : integer := 8);
	port(clk         : in  std_logic;
		  writeEnable : in  std_logic;
		  writeData   : in  std_logic_vector(nBits-1 downto 0);
		  adress 	  : in  std_logic_vector(nBits-1 downto 0);
		  readData    : out std_logic_vector(nBits-1 downto 0));
end DMemory_256_8;

architecture Behavioral of DMemory_256_8 is
	constant NUM_WORDS : integer := 256;
	subtype TDataWord is std_logic_vector(nBits-1 downto 0);         --Tamanho da adress 
	type TMemory is array (0 to NUM_WORDS-1) of TDataWord;           --Array de adress de tamanho 256
	signal s_memory   : TMemory := (X"05", X"03", others => X"00");                                     --Sinal usado para escrever e ler da memoria
	--constant c_memory : TMemory   --Constantes dadas no enunciado do projeto 1 e 2 posicao como retratadas em Hexadecimal e o resto a 0
	
begin
	process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (writeEnable = '1') then                                --Enable para ativar escrita na RAM
				s_memory(to_integer(unsigned(adress))) <= writeData;
			end if;
		end if;
	end process;
	readData <= s_memory(to_integer(unsigned(adress)));
end Behavioral;