library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MicroProcessor_Tb is
end MicroProcessor_Tb;

architecture Stimulus of MicroProcessor_Tb is
	signal s_clock, s_res 	: std_logic;
	signal s_func				: std_logic_vector(3 downto 0);
	signal s_opcd, s_ps		: std_logic_vector(2 downto 0);
begin
	proc : entity work.MicroProcessor(Structural)
		port map(RESET 	 => s_res,
					clk_geral => s_clock,
					fnc  		 => s_func,
					opcode 	 => s_opcd,
					PS			 => s_ps);
									
	clk_proc : process
		begin
			s_clock <= '1'; wait for 10 ns;
			s_clock <= '0'; wait for 10 ns;
		end process;
end Stimulus;