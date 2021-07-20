library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ProgramCounter_12 is
	generic(N    : integer := 4);
	port(clk     : in  std_logic;
		  Reset   : in  std_logic;
		  Enable  : in  std_logic;
		  Cnt     : out std_logic_vector(N-1 downto 0)); -- 4bits para contar até 16 mas apenas precisamos de contar 12 instrucoes
end ProgramCounter_12;

architecture Behavioral of ProgramCounter_12 is
	signal s_count : unsigned(N-1 downto 0) ;
begin
	process(clk, Reset, Enable)
	begin
		if (Reset = '1') then                  -- Reset assincrono
			s_count <= (others => '0');
		elsif (rising_edge(clk)) then
			if (Enable = '1') then
				if (s_count = "01011") then      -- Quando chega a 11 volta a 0
					s_count <= (others => '0');
				else
					s_count <= s_count + 1;
				end if;
			end if;
		end if;
	end process;
	Cnt <= std_logic_vector(s_count);
end Behavioral;