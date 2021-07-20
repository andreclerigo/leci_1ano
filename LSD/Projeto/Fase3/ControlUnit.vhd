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
			ALUOp    : out std_logic_vector(3 downto 0);
			StateOut : out std_logic_vector(2 downto 0);
			funcao   : out std_logic_vector(3 downto 0);
			operacao : out std_logic_vector(2 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is
	type TState is (ResetState, Fetch, Decode, Execute, RegUpdate, WriteMem);
	signal pState, nState: TState;
begin
	sync_proc: process(clk)
	begin
		if (falling_edge(clk)) then
			if (ResetIn = '1') then
				pState <= ResetState;
			else
				pState <= nState;
			end if;
		end if;
	end process;
	
	comb_proc: process(pState, func, Opcode)
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
				RI 	 <= '1';
				EnPC   <= '1';
				nState <= Decode;
							when Decode =>
				EnPC 	<='0';
				RI 	<='0';
				nState<=Execute;

			when Execute =>
				if(Opcode="001") then 
					ALUSrc 	<='0';
					ALUOp 	<= Func;
					nState 	<= RegUpdate;
				elsif(Opcode="100") then 
					ALUSrc <='1';
					ALUOp <= "0000";
					nState <= RegUpdate;
				elsif(Opcode="110") then 
					ALUSrc 	<='1';
					ALUOp 	<= "0000";
					nState	<= WriteMem;
				elsif(opcode="111") then 
					ALUSrc 	<='1';
					ALUOp 	<= "0000";
					nState 	<= RegUpdate;
				end if;
				
			when RegUpdate =>
				if(Opcode="001") then      --Instrucao do tipo 1
					ALUSrc 	<='0';
					ALUOp 	<= Func;
					MemToReg	<='0';
					RegDst 	<='0';
					RegWr 	<='1';
				elsif(Opcode="100") then   --ADDI
					ALUSrc 	<='1';
					ALUOp 	<= "0000";
					MemtoReg	<='0';
					RegDst 	<='1';
					RegWr 	<='1';
				elsif (Opcode="111") then  --LW ou SW
					ALUSrc 	<='1';
					ALUOp 	<= "0000";
					MemToReg	<='1';
					RegDst 	<='1';
					RegWr 	<='1';
				end if;
					nState <= Fetch;
				
			when WriteMem 	=>
				ALUSrc   <= '1';
				ResetOut <= '0';
				MemWr  	<= '1';
				ALUOp    <= "0000";
				nState 	<= Fetch;
				
			when others =>
				nState <= Fetch;
		end case;
	end process;
		with pState select
			StateOut <= "000" when ResetState,
			"001" when Fetch,
			"010" when Decode,
			"011" when Execute,
			"101" when RegUpdate,
			"100" when WriteMem,
			"111" when others;
		funcao <= Func;
		operacao <= Opcode;
end Behavioral;