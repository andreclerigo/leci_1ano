library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity IMemory_16_16_Tb is
end IMemory_16_16_Tb;

architecture Stimulus of IMemory_16_16_Tb is
	signal s_enable       : std_logic;
	signal s_clk          : std_logic;
	signal s_registAdress : std_logic_vector(3 downto 0);
	signal s_readData     : std_logic_vector(15 downto 0);
begin
	--Ligar os inputs do IMemory_16_16 aos pins da TestBench
	ROM:entity work.IMemory_16_16(Behavioral)
		port map(clk          => s_clk,
					Enable       => s_enable,
					RegistAdress => s_registAdress,
					ReadData 	 => s_readData);
					
	--Variacao de um relogio
	clk_proc : process
	begin
		s_clk <= '1';
		wait for 50 ns;
		s_clk <= '0';
		wait for 50 ns;
	end process;
	
	--Verificar todas as adresses da RoM e ver se corresponde à tabela descodifcada das instrucoes presente no relatorio
	stim_proc: process
	begin
		wait for 50 ns;
		s_enable <= '1';
		s_registAdress <= "0000";
		wait for 100 ns;
		
		s_registAdress <= "0001";
		wait for 100 ns;
		
		s_registAdress <= "0010";
		wait for 100 ns;
		
		s_registAdress <= "0011";
		wait for 100 ns;
		
		s_registAdress <= "0100";
		wait for 100 ns;
		
		s_registAdress <= "0101";
		wait for 100 ns;
		
		s_registAdress <= "0110";
		wait for 100 ns;
		
		s_registAdress <= "1000";
		wait for 100 ns;
		
		s_registAdress <= "1001";
		wait for 100 ns;
		
		s_registAdress <= "1010";
		wait for 100 ns;
		
		s_registAdress <= "1011";
		wait for 100 ns;
		
		s_registAdress <= "1100";
		wait for 100 ns;
		
		s_registAdress <= "1101";
		wait for 100 ns;
		
		s_registAdress <= "1110";
		wait for 100 ns;
		
		s_registAdress <= "1111";
		wait for 100 ns;
	end process;
end Stimulus;