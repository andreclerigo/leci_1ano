library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SignExtend_7b_to_8b_Tb is
end SignExtend_7b_to_8b_Tb;

architecture Stimulus of SignExtend_7b_to_8b_Tb is
	signal s_input  : std_logic_vector(6 downto 0);
	signal s_output : std_logic_vector(7 downto 0);
begin
	--Ligar os inputs do SignExtend_7b_to_8b aos pins da TestBench
	uut : entity work.SignExtend_7b_to_8b(Behavioral)  
	port map(input => s_input,
				output => s_output);
				
	stim_proc: process  --Testar varios inputs e verificar se o output é correto
	begin
		s_input <= "0000000";
		wait for 50 ns;
		
		s_input <= "1000000";
		wait for 50 ns;
		
		s_input <= "0000001";
		wait for 50 ns;
		
		s_input <= "1111111";
		wait for 50 ns;
		
		s_input <= "0001111";
		wait for 50 ns;
		
		s_input <= "1111000";
		wait for 50 ns;
		
		s_input <= "0110101";
		wait for 50 ns;
		
		s_input <= "1000100";
		wait for 50 ns;
	end process;
end Stimulus;