library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 
entity SeqDetFSM_Tb is 
end SeqDetFSM_Tb; 

architecture Stimulus of SeqDetFSM_Tb is

	--Sinais de entrada
	signal s_clk, s_reset, s_xin : std_logic;
	--Sinais de saida
	signal s_yout : std_logic;
	
begin

	uut: entity work.SeqDetFSM(MealyArch)
		  port map(xin  => s_xin,
					  clk  => s_clk,
					  reset=> s_reset,
					  yout => s_yout);
					  
	clock_proc: process
		begin
			s_clk <= '0';
			wait for 100 ns;
			s_clk <= '1';
			wait for 100 ns;
		end process;
			
	stim_proc: process
		begin
			s_reset <= '0';
			s_xin <= '0';
			wait for 50 ns;
			
			s_reset <= '0';
			s_xin <= '1';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '1';
			wait for 100 ns;
			
			s_reset <= '1';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '1';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '1';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '0';
			wait for 100 ns;
			
			s_reset <= '0';
			s_xin <= '1';
			wait for 100 ns;
		end process;
end stimulus;
			
