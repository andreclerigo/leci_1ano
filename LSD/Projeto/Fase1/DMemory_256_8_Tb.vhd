library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DMemory_256_8_Tb is
end DMemory_256_8_Tb;

architecture Stimulus of DMemory_256_8_Tb is
	signal s_clk 			: std_logic;
	signal s_writeEnable : std_logic;
	signal s_writeData   : std_logic_vector(7 downto 0);
	signal s_adress 		: std_logic_vector(7 downto 0);
	signal s_readData 	: std_logic_vector(7 downto 0);
begin
	--Ligar os inputs do DMemory_256_8 aos pins da TestBench
	rom: entity work.DMemory_256_8(Behavioral)
		port map(clk         => s_clk,
					writeEnable => s_writeEnable,
					writeData   => s_writeData,
					adress      => s_adress,
					readData    => s_readData);
					
	--Variacao de um relogio
	clk_proc: process
	begin
		s_clk <= '0';
		wait for 50 ns;
		s_clk <= '1';
		wait for 50 ns;
	end process;
	
	--Verificar se as adress estão bem inicializadas e se o write funciona
	stim_proc: process
	begin
		s_adress <= "00000000";  --Posicao 0 deve dar 05 em Hexadecimal
		wait for 100 ns;
		
		s_adress <= "00000001";  --Posicao 1 deve dar 03 em Hexadecimal
		wait for 100 ns;
		
		s_adress <= "00000010";  --Posicao 2 deve dar 00 em Hexadecimal
		wait for 100 ns;

		s_writeEnable <= '1'; 
		s_writeData <= X"55"; 
		s_adress<= "00000000"; 
		wait for 100 ns; 
		
		s_adress <= "00000001"; 
		wait for 100 ns; 
		
		s_writeData <= X"AA"; 
		s_adress<= "00000100"; 
		wait for 100 ns; 
		
		s_adress <= "00000111"; 
		wait for 100 ns; 
		
		s_writeEnable <= '0'; 
		s_adress <= "00000000"; 
		wait for 100 ns; 
		
		s_adress <= "00000001"; 
		wait for 100 ns;
		
		s_adress <= "00000011"; 
		wait for 100 ns; 
		
		s_adress <= "00000100"; 
		wait for 100 ns;
		
		s_adress <= "00000111";
		wait for 100 ns;
	end process;
end Stimulus;