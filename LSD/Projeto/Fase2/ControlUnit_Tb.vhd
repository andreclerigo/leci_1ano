library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ControlUnit_Tb is
end ControlUnit_Tb;

architecture Stimulus of ControlUnit_Tb is
	signal s_CLK 	 	 : std_logic;
	signal s_Opcode 	 : std_logic_vector(2 downto 0);
	signal s_Func 	 	 : std_logic_vector(3 downto 0);
	signal s_ResetIn   : std_logic;
	signal s_ResetOut  : std_logic;
	signal s_EnPC 	 	 : std_logic;
	signal s_RI 		 : std_logic;
	signal s_RegDst 	 : std_logic;
	signal s_RegWr 	 : std_logic;
	signal s_ALUSrc 	 : std_logic;
	signal s_MemWr     : std_logic;
	signal s_MemToReg  : std_logic;
	signal s_ALUOp     : std_logic_vector(3 downto 0);
begin
	control_unit: entity work.ControlUnit(Behavioral)
		port map(CLK 	   => s_CLK,
					Opcode   => s_Opcode,
					Func 		=> s_Func,
					ResetIn 	=> s_ResetIn,
					ResetOut => s_ResetOut,
					EnPC 		=> s_EnPC,
					RI 		=> S_RI,
					RegDst 	=> s_RegDst,
					RegWr 	=> s_RegWr,
					ALUSrc 	=> s_ALUSrc,
					MemToReg => s_MemToReg,
					ALUOp 	=> s_ALUOp);
		
	clk_proc: process
	begin
		s_clk <= '0';
		wait for 40 ns;
		s_clk <= '1';
		wait for 40 ns;
	end process;
	
	stim_proc: process
	begin
		wait for 0 ns;
		s_ResetIn <= '0';
		wait for 80 ns;
		
		s_ResetIn <= '0';
		s_Opcode <= "111";
		wait for 80 ns;
		
		s_Opcode <= "100";
		wait for 80 ns;
		
		s_Opcode <= "001";
		s_Func   <= "0110";
		wait for 80 ns;
		
		s_Opcode <= "001";
		s_Func   <= "0000";
		wait for 80 ns;
		
		s_Opcode <= "100";
		wait for 80 ns;
		
		s_Opcode <= "001";
		s_Func   <= "0110";
		wait for 80 ns;
		
		s_Opcode <= "001";
		s_Func   <= "0000";
		wait for 80 ns;
				s_Opcode <= "010";
		wait for 80 ns;
		
		s_Opcode <= "001";
		s_Func   <= "0110";
		wait for 80 ns;
		
		s_Opcode <= "001";
		s_Func   <= "0000";
		wait for 80 ns;
		
		s_Opcode <= "110";
		wait for 80 ns;
		
		s_Opcode <= "110";
		wait for 80 ns;
	end process;
end Stimulus;