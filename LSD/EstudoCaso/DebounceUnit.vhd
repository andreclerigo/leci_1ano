-- Debouncer fornecido na página de LSDig
-- Saída é um pulso com duração de um único ciclo de relógio
library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity DebounceUnit is 
	generic(	kHzClkFreq		: positive := 50000; -- deve ser 50000 para o CLOCK_50 (50 MHz)
				mSecMinInWidth : positive := 50; 
				inPolarity		: std_logic := '1'; 
				outPolarity		: std_logic := '1'); 
	port(	refClk		: in std_logic; 
			dirtyIn		: in std_logic; 
			pulsedOut	: out std_logic;
			levelOut		: out std_logic); 
end DebounceUnit;

architecture Behavioral of DebounceUnit is 

constant MIN_IN_WIDTH_CYCLES : positive := mSecMinInWidth * kHzClkFreq; 
subtype TCounter is natural range 0 to MIN_IN_WIDTH_CYCLES; 
signal s_debounceCnt : TCounter := 0; 
signal s_dirtyIn, s_previousIn, s_pulsedOut, s_levelOut : std_logic; 

begin

	-- recolhe duas últimas amostras da entrada
	in_sync_proc : process(refClk) 
	begin 
		if (rising_edge(refClk)) then 
			if (inPolarity = '1') then 
				s_dirtyIn <= dirtyIn; 
			else 
				s_dirtyIn <= not dirtyIn; 
			end if; 
			s_previousIn <= s_dirtyIn; 
		end if; 
	end process;
	
	count_proc : process(refClk) 
	begin 
		if (rising_edge(refClk)) then 
			if ((s_dirtyIn = '0') or (s_debounceCnt > MIN_IN_WIDTH_CYCLES)) then -- entrada não activada (a outra condição nunca ocorre...)
				s_debounceCnt <= 0; -- 'zera' o contador
				s_pulsedOut <= '0'; -- saída desacivada
				s_levelOut <= '0';
				
			elsif (s_dirtyIn = '1') then -- entrada activada
				if (s_previousIn = '0') then -- ...justamente agora (flanco)
					s_debounceCnt <= MIN_IN_WIDTH_CYCLES; -- inicializa contagem
					s_pulsedOut <= '0'; -- saída permanece desactiva
					s_levelOut <= '0';
				else 
					if (s_debounceCnt >= 1) then --... já há algum tempo
						s_debounceCnt <= s_debounceCnt - 1; -- decrementa contagem
					end if; 
					if (s_debounceCnt = 1) then -- no final da contagem (durante apenas um ciclo de relógio)...
						s_pulsedOut <= '1'; -- activa saída 
						s_levelOut <= '1';
					else 
						s_pulsedOut <= '0'; 
					end if; 
				end if; 
			end if; 
		end if; 
	end process;
	
	pulsedOut <=	s_pulsedOut			when (outPolarity = '1') else 
						not s_pulsedOut; 
	levelOut <=		s_levelOut			when (outPolarity = '1') else 
						not s_levelOut; 
end Behavioral;
