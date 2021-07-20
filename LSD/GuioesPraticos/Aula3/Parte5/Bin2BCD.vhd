library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity Bin2BCD is
	port(binInput : in  std_logic_vector(3 downto 0);
		  decOut_l : out std_logic_vector(3 downto 0);
		  decOut_h : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is
	signal s_out_l, s_out_h, s_dez, s_in: unsigned(3 downto 0);
begin

	s_in <= unsigned(binInput);
	s_dez <= to_unsigned(10, 4);
	s_out_l <= s_in rem s_dez;
	s_out_h <= s_in/s_dez;
	
	decOut_l <= std_logic_vector(s_out_l);
	decOut_h <= std_logic_vector(s_out_h);
end Behavioral;