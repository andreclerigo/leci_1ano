library IEEE;
use IEEE.STD_LOGIC_1164.all; 

entity Project_Fase1 is
	port(CLK      :  in  std_logic;
		  Reset    :  in  std_logic;
		  EnPC     :  in  std_logic;
		  RI       :  in  std_logic;
		  RegDst   :  in  std_logic;
		  RegWr    :  in  std_logic;
		  ALUSrc   :  in  std_logic;
		  MemWr    :  in  std_logic;
		  MemToReg :  in  std_logic;
		  ALUOp    :  in  std_logic_vector(3 downto 0);
		  Opcode   :  out std_logic_vector(2 downto 0); --Output criado para simular a entrada Opcode da ControlUnit
		  func     :  out std_logic_vector(3 downto 0)); --Output criado para simular a entrada func da ControlUnit
end Project_Fase1;

architecture Structural of Project_Fase1 is
	--Fios criados para fazer a estrutura do Datapath igual à figura 1 do projeto
	signal	A                  :  std_logic_vector(15 downto 0);
	signal	SYNTHESIZED_WIRE_0 :  std_logic_vector(3  downto 0);
	signal	SYNTHESIZED_WIRE_1 :  std_logic_vector(2  downto 0);
	signal	SYNTHESIZED_WIRE_2 :  std_logic_vector(7  downto 0);
	signal	SYNTHESIZED_WIRE_3 :  std_logic_vector(7  downto 0);
	signal	SYNTHESIZED_WIRE_4 :  std_logic_vector(7  downto 0);
	signal	SYNTHESIZED_WIRE_5 :  std_logic_vector(7  downto 0);
	signal	SYNTHESIZED_WIRE_6 :  std_logic_vector(7  downto 0);
	signal	SYNTHESIZED_WIRE_9 :  std_logic_vector(7  downto 0);
	signal	SYNTHESIZED_WIRE_10:  std_logic_vector(7  downto 0);
begin
	programcounter_12 : entity work.ProgramCounter_12(Behavioral)
	generic map(N   => 4)
	port map(clk 	 => CLK,
				Reset  => Reset,
				Enable => EnPC,
				Cnt    => SYNTHESIZED_WIRE_0);
	imemory : entity work.IMemory_16_16(Behavioral)
		generic map(adressLength => 4,
						N            => 16)
		port map(clk             => CLK,
					Enable       	 => RI,
					registAdress 	 => SYNTHESIZED_WIRE_0,
					readData     	 => A);
					
	mux2_1_8b_1 : entity work.Mux2_1_8b(Behavioral)
	generic map(bits => 8)
	port map(sel     => ALUSrc,
			   input0  => SYNTHESIZED_WIRE_3,
				input1  => SYNTHESIZED_WIRE_4,
				output  => SYNTHESIZED_WIRE_10);
				
	registers8 : entity work.Registers8(Behavioral)
		generic map(adress => 3,
						nData => 8)
		port map(clk 			=> CLK,
					writeEnable => RegWr,
					Reset 		=> Reset,
					ReadAdress1 => A(12 downto 10),
					ReadAdress2 => A(9  downto 7),
					WriteAdress => SYNTHESIZED_WIRE_1,
					WriteData 	=> SYNTHESIZED_WIRE_2,
					ReadData1 	=> SYNTHESIZED_WIRE_9,
					ReadData2 	=> SYNTHESIZED_WIRE_3);

	signextend_7b_to_8b : entity work.SignExtend_7b_to_8b(Behavioral)
	generic map(inbits  => 7,
					outbits => 8)
	port map(input      => A(6 downto 0),
				output     => SYNTHESIZED_WIRE_4);

	mux2_1_8b_2: entity work.Mux2_1_8b(Behavioral)
	generic map(bits => 3)
	port map(sel 	  => RegDst,
				input0  => A(6 downto 4),
				input1  => A(9 downto 7),
				output  => SYNTHESIZED_WIRE_1);


	mux2_1_8b_3 : entity work.Mux2_1_8b(Behavioral)
	generic map(bits => 8)
	port map(sel     => MemToReg,
				input0  => SYNTHESIZED_WIRE_5,
				input1  => SYNTHESIZED_WIRE_6,
				output  => SYNTHESIZED_WIRE_2);


	dmemory_256_8 : entity work.DMemory_256_8(Behavioral)
	generic map(nBits => 8)
	port map(clk 			=> CLK,
				writeEnable => MemWr,
				adress 		=> SYNTHESIZED_WIRE_5,
				writeData 	=> SYNTHESIZED_WIRE_3,
				readData 	=> SYNTHESIZED_WIRE_6);


	alu8 : entity work.ALU8(Behavioral)
	generic map(N 	=> 8)
	port map(ALUOp => ALUOp,
				op0 	=> SYNTHESIZED_WIRE_9,
				op1 	=> SYNTHESIZED_WIRE_10,
				res 	=> SYNTHESIZED_WIRE_5);

	Opcode(2 downto 0) <= A(15 downto 13);
	
	func(3 downto 0) <= A(3 downto 0);
end Structural;