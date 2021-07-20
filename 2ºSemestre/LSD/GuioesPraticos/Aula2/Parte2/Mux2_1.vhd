library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port( input0 :  in  std_logic;
			input1 :  in  std_logic;
			selector: in  std_logic;
			output :  out std_logic);
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin 
	process (selector, input0, input1)
	begin
		if (selector = '0') then
			 output <= input0;
--		else                        
--			if (selector = '1') then         Adiciona uma latch automaticamente
--				 output <= inputs(1);
--			end if;
		else output <= input1;
		end if;
	end process;
end Behavioral;