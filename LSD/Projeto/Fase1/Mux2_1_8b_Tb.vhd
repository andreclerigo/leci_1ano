library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1_8b_Tb is
end Mux2_1_8b_Tb;

architecture Stimulus of Mux2_1_8b_Tb is
	signal s_sel    : std_logic;
	signal s_input0 : std_logic_vector(7 downto 0);
	signal s_input1 : std_logic_vector(7 downto 0);
	signal s_output : std_logic_vector(7 downto 0);
begin
	--Ligar os inputs do Mux2_1_8b aos pins da TestBench
	mux: entity work.Mux2_1_8b(Behavioral)
		port map(input0 => s_input0,
					input1 => s_input1,
					sel    => s_sel,
					output => s_output);
					
	clock_proc: process  --Uma especie de clk para o select
	begin
		s_sel <= '1';
		wait for 100 ns;
		s_sel <= '0';
		wait for 100 ns;
	end process;
	
	stim_proc : process  --Variacao de dados inseridos nos inputs e verificar se o multiplexer está correto  
	begin
		s_input0 <= "00010010";
		s_input1 <= "11010100";
		wait for 200 ns;
		
		s_input0 <= "00000011";
		s_input1 <= "00000111";
		wait for 200 ns;
		
		s_input0 <= "01100011";
		s_input1 <= "11111111";
		wait for 200 ns;
		
		s_input0 <= "11111111";
		s_input1 <= "11111111";
		wait for 200 ns;
	end process;
end Stimulus;