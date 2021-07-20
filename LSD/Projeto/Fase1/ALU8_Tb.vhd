library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 
 
entity ALU8_Tb is
end ALU8_Tb; 
 
architecture Stimulus of ALU8_tB is
	signal s_op0, s_op1, s_res : std_logic_vector(7 downto 0);
	signal s_ALUOp             : std_logic_vector(3 downto 0);
begin 
	--Ligar os inputs da ALU9 aos pins da TestBench
	uut: entity work.ALU8(Behavioral)
		port map(op0   => s_op0,
					op1   => s_op1,
					res   => s_res,
					ALUOp => s_ALUOp);

	ALUOp_proc: process
	begin
		s_ALUOp <= "0000";  -- ADD
		wait for 200 ns;
		
		s_ALUOp <= "0001";  -- SUB
		wait for 200 ns;
		
		s_ALUOp <= "0010";  -- AND
		wait for 200 ns;
		
		s_ALUOp <= "0011";  -- OR
		wait for 200 ns;
		
		s_ALUOp <= "0100";  -- XOR
		wait for 200 ns;
		
		s_ALUOp <= "0101";  -- NOR
		wait for 200 ns;
		
		s_ALUOp <= "0110";  -- MUU
		wait for 200 ns;
		
		s_ALUOp <= "0111";  -- MUS
		wait for 200 ns;
		
		s_ALUOp <= "1000";  -- SLL
		wait for 200 ns;
		
		s_ALUOp <= "1001";  -- SRL
		wait for 200 ns;
		
		s_ALUOp <= "1010";  -- SRA
		wait for 200 ns;
		
		s_ALUOp <= "1011";  -- EQ
		wait for 200 ns;
		
		s_ALUOp <= "1100";  -- SLS
		wait for 200 ns;
		
		s_ALUOp <= "1101";  -- SLU
		wait for 200 ns;
		
		s_ALUOp <= "1110";  -- SGs
		wait for 200 ns;
		
		s_ALUOp <= "1111";  -- SGU
		wait for 200 ns;
	end process;
	
	stim_proc: process
	begin
		s_op0 <= "00000010";  -- Adicao 2+3
		s_op1 <= "00000011";
		wait for 100 ns;
		
		s_op0 <= "00000000";  -- Adicao 0+3
		s_op1 <= "00000011";
		wait for 100 ns;
		
		s_op0 <= "00000011";  -- Sub 3-1
		s_op1 <= "00000001";
		wait for 100 ns;
		
		s_op0 <= "00000000";  -- Sub 0-1
		s_op1 <= "00000001";
		wait for 100 ns;
		
		s_op0 <= "00000011";  -- AND
		s_op1 <= "11111111";
		wait for 100 ns;
		
		s_op0 <= "00000000";  -- AND
		s_op1 <= "11111111";
		wait for 100 ns;
		
		s_op0 <= "00000000";  -- OR
		s_op1 <= "11111111";
		wait for 100 ns;
		
		s_op0 <= "01000100";  -- OR
		s_op1 <= "11000001";
		wait for 100 ns;
		
		s_op0 <= "11111111";  -- XOR
		s_op1 <= "11111111";
		wait for 100 ns;
		
		s_op0 <= "11000001";  -- XOR
		s_op1 <= "10010011";
		wait for 100 ns;
		
		s_op0 <= "11000000";  -- NOR
		s_op1 <= "11110010";
		wait for 200 ns;
		
		s_op0 <= "00000000";  --MUU 0 x K
		s_op1 <= "11110010";
		wait for 50 ns;
		
		s_op0 <= "00010000";  --MUU 16 x 32
		s_op1 <= "00100000";
		wait for 50 ns;
		
		s_op0 <= "00000110";  --MUU 6 x 2
		s_op1 <= "00000010";
		wait for 100 ns;
		
		s_op0 <= "00000110";  --MUS -1 x 6
		s_op1 <= "11111111";
		wait for 200 ns;
		
		s_op0 <= "00000110";  --SLL por 2
		s_op1 <= "00000010";
		wait for 200 ns;
		
		s_op0 <= "00000110";  --SRL por 2
		s_op1 <= "00000010";
		wait for 200 ns;
		
		s_op0 <= "10000110";  --SRA por 2
		s_op1 <= "00000010";
		wait for 200 ns;
		
		s_op0 <= "10000110";  --EQ iguais
		s_op1 <= "10000110";
		wait for 100 ns;
		
		s_op0 <= "10000110";  --EQ diferentes
		s_op1 <= "10000111";
		wait for 100 ns;
		
		s_op0 <= "11111111";  --SLS -1 < -135
		s_op1 <= "10000111";
		wait for 100 ns;
		
		s_op0 <= "10000111";  --SLS -1 > -135
		s_op1 <= "11111111";
		wait for 100 ns;
		
		s_op0 <= "00000001";  --SLU 1 < 3
		s_op1 <= "00000011";
		wait for 100 ns;
		
		s_op0 <= "00000011";  --SLU 1 > 3
		s_op1 <= "00000001";
		wait for 100 ns;
		
		s_op0 <= "11111111";  --SGS -1 > -135
		s_op1 <= "10000111";
		wait for 100 ns;
		
		s_op0 <= "10000111";  --SGS -135 > -1
		s_op1 <= "11111111";
		wait for 100 ns;
		
		s_op0 <= "00000001";  --SGU 1 > 3
		s_op1 <= "00000011";
		wait for 100 ns;
		
		s_op0 <= "00000011";  --SGU 1 < 3
		s_op1 <= "00000001";
		wait for 100 ns;
	end process; 
end Stimulus;