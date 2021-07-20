library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(xin   : in  std_logic;
		  reset : in  std_logic;
		  clk   : in  std_logic;
		  yout  : out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type TState is (INIT, S1, S10, S100);
	signal pState, nState: TState;

begin

	sync_proc :process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				pState <= INIT;
			else
				pState <= nState;
			end if;
		end if;
	end process;
	
	detect_proc :process(pState, xin)
	begin
		nState <= pState;
		
		case (pState) is
		when INIT =>
			yout <= '0';
			if (xin = '1') then
				nState <= S1;
			end if;
			
		when S1 =>
			yout <= '0';
			if (xin <= '0') then
				nState <= S10;
			end if;
			
		when S10 =>
			yout <= '0';
			if (xin <= '1') then
				nState <= S1;
			elsif (xin <= '0') then
				nState <= S100;
			end if;
		
		when S100 =>
			if (xin <= '1') then
				yout <= '1';
				nState <= S1;
			elsif (xin <= '0') then
				yout <= '0';
				nState <= INIT;
			end if;
		end case;
	end process;
end MealyArch;