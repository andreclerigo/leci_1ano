library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Freq_Divider is
	generic(K : positive := 8);
	port(	clkIn		: in std_logic;
			clkOut	: out std_logic);
end Freq_Divider;

architecture Behavioral of Freq_Divider is

	signal s_counter : natural;
	
begin
	process(clkIn)
	begin
		if( rising_edge(clkIn) ) then
			if (s_counter=K-1) then
				clkOut <= '0';
				s_counter <= 0;
			else
				if (s_counter=k/2-1) then
					clkOut <= '1';
				end if;
				s_counter <= s_counter+1;
			end if;
		end if;
	end process;
end Behavioral;