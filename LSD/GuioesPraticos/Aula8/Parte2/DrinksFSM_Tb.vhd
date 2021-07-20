library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM_Tb is
end DrinksFSM_Tb;

architecture Stimulus of DrinksFSM_Tb is
	signal s_coin20  : std_logic;
	signal s_coin50  : std_logic;
	signal s_reset	  : std_logic;
	signal s_clk	  : std_logic;
	signal s_drinkOut: std_logic;
begin
	
	uut: entity work.DrinksFSM(Behavioral)         
		port map(coin20  => s_coin20,                  
					coin50  => s_coin50, 
					reset   => s_reset,
					clk     => s_clk,
					drinkOut=> s_drinkOut); 
	
	clock_proc: process
	begin
		s_clk <= '0'; 
		wait for 100 ns;
		s_clk <= '1'; 
		wait for 100 ns;
	end process;
	
	stim_proc : process    
	begin
		s_reset  <= '0';
		s_coin20 <= '0';
		s_coin50 <= '1';
		wait for 50 ns;
			
		s_reset  <= '0';
		s_coin50 <= '1';
		s_coin20 <= '0';
		wait for 70 ns;
		
		s_reset <= '1';
		s_coin50 <= '0';
		s_coin20 <= '0';
		wait for 20 ns;
		
		s_reset <= '0';
		s_coin50 <= '0';
		s_coin20 <= '1';
		wait for 50 ns;
		
		s_reset  <= '0';
		s_coin50 <= '0';
		s_coin20 <= '0';
		wait for 80 ns;
		
		s_reset <= '0';
		s_coin50 <= '0';
		s_coin20 <= '1';
		wait for 60 ns;
		
		s_reset  <= '0';
		s_coin50 <= '1';
		s_coin20 <= '0';
		wait for 110 ns;
		
		s_reset  <= '0';
		s_coin50 <= '1';
		s_coin20 <= '0';
		wait for 70 ns;
	 end process;
end Stimulus;
