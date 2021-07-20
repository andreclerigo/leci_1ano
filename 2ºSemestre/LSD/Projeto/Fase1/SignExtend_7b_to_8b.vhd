library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SignExtend_7b_to_8b is
	generic(inbits : integer := 7;
			  outbits: integer := 8);
	port(input  : in  std_logic_vector(inbits-1 downto 0);
		  output : out std_logic_vector(outbits-1 downto 0));
end SignExtend_7b_to_8b;

architecture Behavioral of SignExtend_7b_to_8b is
begin
	process(input)
	begin
		if(input(6) = '1') then
			output <= '1' & input; --Transforma um input de 7bits input num output de 8bits
		else
			output <= '0' & input; --Transforma um input de 7bits input num output de 8bits
		end if;
	end process;
end Behavioral;