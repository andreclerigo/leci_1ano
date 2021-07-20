library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Dois contadores BCD em cascata
entity Cnt2BCD is
generic(	cap_dez : integer range 0 to 9 := 9;  -- capacidade do parque - dezenas
			cap_uni : integer range 0 to 9 := 9); -- capacidade do parque - unidades
port (clk				: in	std_logic;
		reset, UpDown	: in	std_logic;
		enable			: in	std_logic;
		BCDuni			: out	std_logic_vector(3 downto 0);
		BCDdez			: out	std_logic_vector(3 downto 0));
end Cnt2BCD;

architecture Structural of Cnt2BCD is

signal s_enable_dez, s_carry_uni : std_logic;

begin

unidades : entity work.CounterBCDUpDown4(Behavioral)
generic map ( val_reset	=> cap_uni)
	port map (	clk		=> clk,
					reset		=> reset,
					UpDown 	=> UpDown,
					enable 	=> enable,
					count		=> BCDuni,
					carry		=> s_carry_uni);
					
	s_enable_dez <= enable and s_carry_uni; -- enable das dezenas

dezenas : entity work.CounterBCDUpDown4(Behavioral)
generic map ( val_reset	=> cap_dez)
	port map (	clk		=> clk,
					reset		=> reset,
					UpDown	=> UpDown,
					enable	=> s_enable_dez,
					count		=> BCDdez,
					carry		=> open);	
end Structural;