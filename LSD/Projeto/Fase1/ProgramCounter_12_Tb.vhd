library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ProgramCounter_12_Tb is
end ProgramCounter_12_Tb;

architecture Stimulus of ProgramCounter_12_Tb is
	signal s_clk    : std_logic;
	signal s_reset  : std_logic;
	signal s_enable : std_logic;
	signal s_count  : std_logic_vector(3 downto 0);
begin
	-- Ligar os inputs do ProgramCounter_12 aos pins da TestBench
	counter: entity work.ProgramCounter_12(Behavioral)
		port map(clk    => s_clk,
				   Reset  => s_reset,
					Enable => s_enable,
					Cnt    => s_count);
	
	-- Processo que repete o ciclo do clock
	clk_proc: process
	begin
		s_clk <= '1';
		wait for 50 ns;
		s_clk <= '0';
		wait for 50 ns;
	end process;
	
	-- Inicializar para ver se o contador funciona bem 
	stim_proc: process
	begin
		s_reset <= '1';
		wait for 20 ns;
		
		s_enable <= '1';
		s_reset <= '0';
		wait for 2000 ns;
		
		s_enable <= '0';
		s_reset <= '0';
		wait for 2000 ns;
	end process;
end Stimulus;