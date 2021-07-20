library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterLoadN is
	generic(size : positive := 4);
	port(sin 	 : in  std_logic;
		  clk     : in  std_logic;
		  reset	 : in  std_logic;
		  load	 : in  std_logic;
		  enable  : in  std_logic;
		  dataIn  : in  std_logic_vector(size-1 downto 0);
		  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterLoadN;

architecture Behavioral of ShiftRegisterLoadN is
	signal data_out : std_logic_vector(size-1 downto 0);
begin	
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				data_out <= (others => '0');
			else
				if(enable = '1') then
					if(load = '1') then
						data_out <= dataIn;
					else
						data_out(size-1 downto 1) <= data_out(size-2 downto 0);
						data_out(0) <= sin;
					end if;
				end if;
			end if;
		end if;
	end process;
	dataOut <= data_out;
end Behavioral;