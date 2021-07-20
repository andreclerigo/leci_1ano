library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 
entity ROM_Tb is 
end ROM_Tb; 

architecture Stimulus of ROM_Tb is

	--Sinais de entrada
	signal s_clk, s_reset : std_logic;
	--Sinais de saida
	signal s_outputs : std_logic_vector(7 downto 0);
	
begin
	rom: entity work.ROM_Demo(bdf_type)
		  port map(CLOCK   => s_clk,
					  RESET => s_reset,
					  DataOut=> s_outputs);
	
	clk_proc : process
		begin
			s_clk <= '0';
			wait for 50 ns;
			s_clk <= '1';
			wait for 50 ns;
		end process;
		
	stim_proc: process
		begin
			s_reset <= '1';
			wait for 100 ns;
			s_reset <= '0';
			wait for 1600 ns;
		end process;
end stimulus;