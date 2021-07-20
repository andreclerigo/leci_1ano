--Temporizador versátil
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerUnit is 
generic(	kHzClkFreq	: positive := 50000; -- por omissão: CLOCK_50 (50 MHz)
			mSecLength	: positive := 1000;  -- por omissão: temporização de 1s 
			outPolarity : std_logic := '1'); 
	port(	clk		: in std_logic;
			reset		: in std_logic;	
			start		: in std_logic; 
			enable	: in std_logic;
			decorre	: out std_logic; 	-- atraso à desoperação
			expirou	: out std_logic); -- atraso à operação (pulso)
end TimerUnit;

architecture Behavioral of TimerUnit is 

constant TICK_COUNT : positive := mSecLength * kHzClkFreq; -- tempo convertido em ciclos de relógio 
subtype TCounter is natural range 0 to TICK_COUNT;
signal s_count : TCounter := 0; 
signal s_decorre: std_logic := '0'; -- activos altos
signal s_expirou, exp_mesmo : std_logic; -- activos altos

begin
  process(clk) 
  begin
	 if(rising_edge(clk)) then
		if(reset = '1') then 
		  s_decorre <= '0';	-- desactiva saída
		  s_count <= 0; 		-- 'zera' o contador
		elsif(enable = '1') then
		  if(s_count /= 0) then -- está a decorrer temporização:
			 if(s_count = TICK_COUNT) then	-- se foi atingido limiar,
				s_decorre <= '0'; 				-- desactiva saída
				s_count <= 0;						-- 'zera' o contador
			 else					  	  -- se ainda não foi atingido limiar,
				s_decorre <= '1';					-- mantém saída activa
				s_count <= s_count + 1;			-- continua a incrementar contador
			 end if;
		  else				  -- não está a decorrer temporização:
			 if(start = '1') then				-- se há ordem de iniciar,
			   s_decorre <= '1'; 				-- activa saída
				s_count <= s_count + 1; 		-- incrementa contador
			 else								  -- se não há ordem de iniciar,
				s_decorre <= '0';					-- mantém saída desactiva
			 end if; 
		  end if; -- s_count/=0
		end if; -- reset
	 end if; -- rising edge
  end process; 
	
decorre		<=	s_decorre when (outPolarity = '1') else 
					not s_decorre;
-- para lidar bem com possível suspensão (enable='0') no último ciclo
exp_mesmo	<= '1' when ((s_count = TICK_COUNT) and (enable='1')) else
					'0';
expirou		<=	exp_mesmo when (outPolarity = '1') else 
					not exp_mesmo;
end Behavioral;

--architecture Behavioral_old of TimerUnit is 
--
--constant TICK_COUNT : positive := mSecLength * kHzClkFreq; -- tempo convertido em ciclos de relógio 
--subtype TCounter is natural range 0 to TICK_COUNT;
--
--signal s_count : TCounter := 0; 
--signal s_decorre, s_expirou, exp_mesmo : std_logic; -- activos altos
--
--begin
--  process(clk) 
--  begin
--	 if(rising_edge(clk)) then
--		if(reset = '1') then 
--		  s_decorre <= '0'; s_expirou <= '0'; -- (re)inicializa
--		  s_count <= 0; -- (re)inicializa
--		elsif(enable = '1') then
--		  if(s_count /= 0) then -- está a decorrer temporização
--			 if(s_count = TICK_COUNT) then	-- se foi atingido limiar,
--				s_decorre <= '0'; s_expirou <= '0'; -- desactiva saída
--				s_count <= 0;		-- e 'zera' o contador
--			 else					  -- se ainda não foi atingido limiar,
--				s_decorre <= '1'; s_expirou <= '0';	-- decorre o tempo:
--				s_count <= s_count + 1; 				-- incrementa contador
--				if(s_count = TICK_COUNT-1) then	-- no último ciclo (o próximo),
--				  s_expirou <= '1';	-- assinala o fim da temporização.
--				end if;
--			 end if; -- s_count=TICK_COUNT
--		  else					-- não está a decorrer temporização 
--			 s_expirou <= '0';
--			 if(start = '1') then	-- se há ordem de iniciar,
--			   s_decorre <= '1'; -- inicia!
--				s_count <= s_count + 1; -- e incrementa contador
--			 else
--				s_decorre <= '0';
--			 end if; 
--		  end if; -- s_count/=0
--		end if; -- reset
--	 end if; -- rising edge
--  end process; 
--	
--	decorre <=	s_decorre		when (outPolarity = '1') else 
--					not s_decorre;
--	exp_mesmo <= s_expirou and enable;
--	expirou <=	exp_mesmo		when (outPolarity = '1') else 
--					not exp_mesmo;
--
--end Behavioral_old;