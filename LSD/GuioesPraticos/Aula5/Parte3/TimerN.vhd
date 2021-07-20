library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerN is
	generic(N : positive := 6);
	port(start    : in  std_logic;
		  reset    : in  std_logic;
		  enable   : in  std_logic;
		  clk      : in  std_logic;
		  timerOut : out std_logic);
end TimerN;

architecture Behavioral of TimerN is

	signal s_count: integer; 
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				timerOut <= '0';
				s_count<= 0;
			elsif (enable = '1') then
				if (s_count = 0) then
					if (start = '1') then
						s_count <= s_count + 1;
					end if;
					timerOut <= '0';
				else
					if (s_count = (N -1)) then
						timerOut <= '1';
						s_count  <= 0;
					else
						timerOut <= '0';
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;