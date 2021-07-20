library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
	port(CLOCK_50: in  std_logic;
		  LEDR    : out std_logic_vector(0 downto 0));
end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is
begin
	divisor: entity work.FreqDivider(Behavioral)
		port map(clkin  => CLOCK_50,
					clkout => LEDR(0),
					-- k => x"017D7840");
					k => x"0000000A");
end Behavioral;