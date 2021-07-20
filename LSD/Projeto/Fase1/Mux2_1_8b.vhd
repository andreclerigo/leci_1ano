library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1_8b is
	generic(bits: integer := 8);
	port(input0 : in  std_logic_vector(bits-1 downto 0);
		  input1 : in  std_logic_vector(bits-1 downto 0);
		  sel    : in  std_logic;
		  output : out std_logic_vector(bits-1 downto 0));
end Mux2_1_8b;

architecture Behavioral of Mux2_1_8b is
begin
	process(sel, input0, input1) --Lista de sensibilidade
	begin
		if(sel = '0') then        --Se o sel='0' sai a entrada 0 (primeira entrada)
			output <= input0;
		else                      --Se o sel!='0' sai a entrada 1 (segunda entrada) para evitar uma latch fiz else e nao elsif
			output <= input1;
		end if;
	end process;
end Behavioral;