library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
	generic(N : positive := 8);
	port(En       : in std_logic;
		  reset    : in std_logic;
		  clk      : in std_logic;
		  dataIn   : in  std_logic_vector(N-1 downto 0);         
		  dataOut  : out std_logic_vector(N-1 downto 0)); 
end AccN; 
 
architecture Behavioral of AccN is

	signal s_adderOut, s_regOut: std_logic_vector(N-1 downto 0);

begin
	registo: entity work.RegN(Behavioral)
				generic map (N => N)
				port map(En     => En,
							clk    => clk,
							reset  => reset,
							dataIn => s_adderOut,
							dataOut=> s_regOut);
							
	contador:entity work.AdderN(Behavioral)
				generic map (N => N)
				port map(input0 => dataIn,
							input1 => s_regOut,
							output => s_adderOut);
end Behavioral; 