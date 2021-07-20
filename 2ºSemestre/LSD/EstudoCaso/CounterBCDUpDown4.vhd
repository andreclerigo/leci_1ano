library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterBCDUpDown4 is
generic(	val_reset : integer range 0 to 9 := 9); -- valor inicial (após reset)
port (clk				: in	std_logic;
		reset				: in	std_logic;
		UpDown			: in	std_logic;
		enable			: in	std_logic;
		count				: out	std_logic_vector(3 downto 0);
		carry				: out std_logic);
end CounterBCDUpDown4;


architecture Behavioral of CounterBCDUpDown4 is

signal s_inicial	: unsigned(3 downto 0) := to_unsigned (val_reset, 4);
signal s_count		: unsigned(3 downto 0) := to_unsigned (val_reset, 4);

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset ='1' then -- reset síncrono
				s_count <= s_inicial;
			elsif enable ='1' then
				if UpDown ='1' then -- crescente
					if (s_count<9) then
						s_count<=s_count+1; -- Up
					else
						s_count<=(others =>'0'); -- retorna a 0
					end if;
				else -- decrescente
					if (s_count>0) then
						s_count<=s_count-1; -- Down
					else
						s_count <= "1001"; -- 9
					end if;
				end if;
			end if;
		end if;
	end process;
	
	count<=std_logic_vector(s_count);
	carry <= '1' when ((s_count=9 and UpDown='1') or (s_count=0 and UpDown='0')) else
				'0';
	
end Behavioral;