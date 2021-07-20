library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AdderN is
	generic(N : positive := 5);
	port(input0     : in  std_logic_vector(N-1 downto 0);
		  input1     : in  std_logic_vector(N-1 downto 0);
		  output     : out std_logic_vector(N-1 downto 0));
end AdderN; 
 
architecture Behavioral of AdderN is

	signal s_a, s_b : unsigned(N-1 downto 0);
begin
	s_a <= unsigned(input0);
	s_b <= unsigned(input1);
	output <= std_logic_vector(s_a + s_b);
end Behavioral; 