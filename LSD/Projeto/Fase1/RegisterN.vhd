library IEEE;
use IEEE.STD_LOGIC_1164.all; 
 
entity RegisterN is
	generic(N        : integer := 8);
	port(clk         : in std_logic;
		  writeEnable : in std_logic;
		  dataIn      : in  std_logic_vector(N-1 downto 0);         
		  dataOut     : out std_logic_vector(N-1 downto 0)); 
end RegisterN;
 
architecture Behavioral of RegisterN is
	signal s_data : std_logic_vector(N-1 downto 0);
begin    
	process(clk)    
	begin
		if (rising_edge(clk)) then 
			if (writeEnable = '1') then
				s_data <= dataIn;
			end if;
		end if;    
	end process; 
	dataOut <= s_data;
end Behavioral;