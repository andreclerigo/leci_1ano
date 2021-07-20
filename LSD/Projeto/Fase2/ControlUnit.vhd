library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ControlUnit is
	port (CLK   	: in  std_logic;
			Opcode   : in  std_logic_vector(2 downto 0);
			Func		: in  std_logic_vector(3 downto 0);
			ResetIn  : in  std_Logic;
			ResetOut : out std_Logic;
			EnPC  	: out std_logic;
			RI    	: out std_logic;
			RegDst	: out std_logic;
			RegWr 	: out std_logic;
			ALUSrc	: out std_logic;
			MemWr 	: out std_logic;
			MemToReg : out std_logic;
			ALUOp    : out std_logic_vector(3 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is
	type TState is (ResetState, Fetch, Decode, Execute, RegUpdate, WriteMem);
	signal pState, nState: TState;
begin
	sync_proc: process(clk)
	begin
		if (rising_edge(clk)) then
			if (ResetIn = '1') then
				pState <= ResetState;
			else
				pState <= nState;
			end if;
		end if;
	end process;
	
	comb_proc: process(nState, pState, func, Opcode)
	begin
		--Incializar tudo a 0 para não haver inferencia de latches
		EnPC 		<= '0';
		ResetOut <= '0';
		RI 		<= '0';
		RegDst  	<= '0';
		RegWr 	<= '0';
		ALUSrc	<= '0';
		MemWr		<= '0';
		MemtoReg	<= '0';
		ALUOp		<= "0000";
		
		case(pState) is
			when ResetState =>
				ResetOut <= '1';
				nState   <= Fetch;
				
			when Fetch =>
				ResetOut <= '0';
				RI 	 <= '1';
				EnPC   <= '1';
				nState <= Decode;
							when Decode =>
				ResetOut <= '0';
				if (Opcode = "000") then     --Caso 000 NOP (Nao fazer nada)
					nState 	<= Fetch;
				elsif (Opcode = "001") then
					RegDst   <= '0';
				else
					RegDst   <= '1';
					nState 	<= Execute;
				end if;

			when Execute =>
				ResetOut <= '0';
				if(OpCode = "001") then       --Tipo 1
					ALUSrc 	<= '0';
					ALUOp		<= Func;
					nState   <= RegUpdate;
				elsif(OpCode = "110") then    --SW
					ALUSrc 	<= '1';
					ALUOp    <= "0000";
					nState   <= WriteMem;
				else                          --LW ou ADDI
					ALUSrc 	<= '1';
					ALUOp    <= "0000";
					nState   <= RegUpdate;   
				end if;
				
				
			when RegUpdate =>
				ResetOut <= '0';
				RegWr  <= '1';
				MemToReg <= '0';
				nState <= Fetch;
				
			when WriteMem 	=>
				ResetOut <= '0';
				MemWr  	<= '1';
				MemToReg <= '1';
				nState 	<= Fetch;
		end case;
	end process;
end Behavioral;