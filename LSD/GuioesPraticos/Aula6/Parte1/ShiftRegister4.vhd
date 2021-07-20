library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister4 is
	port(sin 	 : in  std_logic;
		  clk     : in  std_logic;
		  dataOut : out std_logic_vector(3 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
	signal data_out : std_logic_vector(3 downto 0);
begin	
	process(clk)
	begin
		if(rising_edge(clk)) then
			data_out(0) <= sin;
			data_out(1) <= data_out(0);
			data_out(2) <= data_out(1);
			data_out(3) <= data_out(2);
		end if;
	end process;
	dataOut <= data_out;
end Behavioral;