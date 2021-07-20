library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterN is
	generic(size : positive := 4);
	port(sin 	 : in  std_logic;
		  clk     : in  std_logic;
		  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterN;

architecture Behavioral of ShiftRegisterN is
	signal data_out : std_logic_vector(size-1 downto 0);
begin	
	process(clk)
	begin
		if(rising_edge(clk)) then
			data_out(size-1 downto 1) <= data_out(size-2 downto 0);
			data_out(0) <= sin;
		end if;
	end process;
	dataOut <= data_out;
end Behavioral;