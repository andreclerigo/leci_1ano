library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FF_D is
	port(	clk		: in	std_logic;
			D			: in	std_logic;
			enable	: in	std_logic;
			reset		: in	std_logic;
			Q			: out std_logic);
end FF_D;

architecture Behavioral of FF_D is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				Q <= '0';
			elsif (enable ='1') then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;
