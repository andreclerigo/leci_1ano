library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is
	generic(size : positive  := 8);
	port(CLOCK_50: in  std_logic;
		  sin     : in  std_logic;
		  LEDR    : out std_logic_vector(size downto 0));
end ShiftRegister_Demo;

architecture Behavioral of ShiftRegister_Demo is
	signal s_clock : std_logic;
	signal s_data  : std_logic_vector(size-1 downto 0);
begin
	divisor: entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000)
		port map(clkin  => CLOCK_50,
					clkout => s_clock);
					
	LEDR(0) <= s_clock;
					
	regist: entity work.ShiftRegisterN(Behavioral)
		generic map(size => size)
		port map(clk => s_clock,
					sin => sin,
					dataOut => s_data);
					
	LEDR(size downto 1) <= s_data;
end Behavioral;