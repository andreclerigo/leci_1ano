library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MicroProcessor is
	port(clk_geral : in std_logic;
		  RESET 		: in std_logic;
		  fnc       : out std_logic_vector(3 downto 0);
		  PS        : out std_logic_vector(2 downto 0);
		  opcode    : out std_logic_vector(2 downto 0);
		  cnt       : out std_logic_vector(3 downto 0));
end MicroProcessor;

architecture Structural of MicroProcessor is
	signal	s_reset		:  std_logic;
	signal	s_enpc  		:  std_logic;
	signal	s_ri  		:  std_logic;
	signal	s_regdst  	:  std_logic;
	signal	s_regwr  	:  std_logic;
	signal	s_alusrc  	:  std_logic;
	signal	s_memwr  	:  std_logic;
	signal	s_memtoreg  :  std_logic;
	signal	s_aluop  	:  std_logic_vector(3 downto 0);
	signal	s_opcode  	:  std_logic_vector(2 downto 0);
	signal	s_func 		:  std_logic_vector(3 downto 0);
	
begin
	Datapath: entity work.Project_Fase1(Structural)
		port map(CLK 		=> clk_geral,
					Reset 	=> s_reset,
					EnPC  	=> s_enpc,  
					RI   		=> s_ri,  
					RegDst	=> s_regdst,  
					RegWr 	=> s_regwr,  
					ALUSrc   => s_alusrc,
					MemWr    => s_memwr,
					MemToReg => s_memtoreg,
					ALUOp    => s_aluop,
					Opcode   => s_opcode,
					func     => s_func,
					counter  => cnt);
		
	ControlUnit : entity work.ControlUnit(Behavioral)
		port map(CLK 		=> clk_geral,
					Opcode   => s_opcode,
					Func     => s_func,
					ResetIn  => RESET,
					EnPC		=> s_enpc,
					RI       => s_ri,
					RegDst   => s_regdst,
					RegWr    => s_regwr,
					ALUSrc   => s_alusrc,
					MemWr		=> s_memwr,
					MemToReg => s_memtoreg,
					ALUOp		=> s_aluop,
					ResetOut => s_reset,
					funcao => fnc,
					operacao => opcode,
					StateOut => PS);
end Structural;