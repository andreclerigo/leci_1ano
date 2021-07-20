-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/30/2020 03:01:53"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Project_Fase1 IS
    PORT (
	CLK : IN std_logic;
	Reset : IN std_logic;
	EnPC : IN std_logic;
	RI : IN std_logic;
	RegDst : IN std_logic;
	RegWr : IN std_logic;
	ALUSrc : IN std_logic;
	MemWr : IN std_logic;
	MemToReg : IN std_logic;
	ALUOp : IN std_logic_vector(3 DOWNTO 0);
	Opcode : OUT std_logic_vector(2 DOWNTO 0);
	func : OUT std_logic_vector(3 DOWNTO 0)
	);
END Project_Fase1;

-- Design Ports Information
-- RegDst	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWr	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWr	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemToReg	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[3]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnPC	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Project_Fase1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_EnPC : std_logic;
SIGNAL ww_RI : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_RegWr : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_MemWr : std_logic;
SIGNAL ww_MemToReg : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_func : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegDst~input_o\ : std_logic;
SIGNAL \RegWr~input_o\ : std_logic;
SIGNAL \ALUSrc~input_o\ : std_logic;
SIGNAL \MemWr~input_o\ : std_logic;
SIGNAL \MemToReg~input_o\ : std_logic;
SIGNAL \ALUOp[0]~input_o\ : std_logic;
SIGNAL \ALUOp[1]~input_o\ : std_logic;
SIGNAL \ALUOp[2]~input_o\ : std_logic;
SIGNAL \ALUOp[3]~input_o\ : std_logic;
SIGNAL \Opcode[0]~output_o\ : std_logic;
SIGNAL \Opcode[1]~output_o\ : std_logic;
SIGNAL \Opcode[2]~output_o\ : std_logic;
SIGNAL \func[0]~output_o\ : std_logic;
SIGNAL \func[1]~output_o\ : std_logic;
SIGNAL \func[2]~output_o\ : std_logic;
SIGNAL \func[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \programcounter_12|s_count[0]~3_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \EnPC~input_o\ : std_logic;
SIGNAL \programcounter_12|s_count[1]~0_combout\ : std_logic;
SIGNAL \programcounter_12|s_count~2_combout\ : std_logic;
SIGNAL \programcounter_12|s_count~1_combout\ : std_logic;
SIGNAL \imemory|Mux2~0_combout\ : std_logic;
SIGNAL \RI~input_o\ : std_logic;
SIGNAL \imemory|Mux1~0_combout\ : std_logic;
SIGNAL \imemory|Mux0~0_combout\ : std_logic;
SIGNAL \imemory|Mux11~0_combout\ : std_logic;
SIGNAL \imemory|Mux10~0_combout\ : std_logic;
SIGNAL \imemory|Mux5~0_combout\ : std_logic;
SIGNAL \imemory|readData\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \programcounter_12|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_Reset <= Reset;
ww_EnPC <= EnPC;
ww_RI <= RI;
ww_RegDst <= RegDst;
ww_RegWr <= RegWr;
ww_ALUSrc <= ALUSrc;
ww_MemWr <= MemWr;
ww_MemToReg <= MemToReg;
ww_ALUOp <= ALUOp;
Opcode <= ww_Opcode;
func <= ww_func;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y34_N23
\Opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemory|readData\(13),
	devoe => ww_devoe,
	o => \Opcode[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemory|readData\(14),
	devoe => ww_devoe,
	o => \Opcode[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Opcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemory|readData\(15),
	devoe => ww_devoe,
	o => \Opcode[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\func[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemory|readData\(0),
	devoe => ww_devoe,
	o => \func[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\func[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemory|readData\(1),
	devoe => ww_devoe,
	o => \func[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\func[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemory|readData\(2),
	devoe => ww_devoe,
	o => \func[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\func[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \func[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y33_N8
\programcounter_12|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \programcounter_12|s_count[0]~3_combout\ = !\programcounter_12|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \programcounter_12|s_count\(0),
	combout => \programcounter_12|s_count[0]~3_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y33_N15
\EnPC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnPC,
	o => \EnPC~input_o\);

-- Location: FF_X1_Y33_N9
\programcounter_12|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \programcounter_12|s_count[0]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \EnPC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \programcounter_12|s_count\(0));

-- Location: LCCOMB_X2_Y33_N24
\programcounter_12|s_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \programcounter_12|s_count[1]~0_combout\ = \programcounter_12|s_count\(1) $ (((\EnPC~input_o\ & \programcounter_12|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnPC~input_o\,
	datac => \programcounter_12|s_count\(1),
	datad => \programcounter_12|s_count\(0),
	combout => \programcounter_12|s_count[1]~0_combout\);

-- Location: FF_X2_Y33_N25
\programcounter_12|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \programcounter_12|s_count[1]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \programcounter_12|s_count\(1));

-- Location: LCCOMB_X1_Y33_N24
\programcounter_12|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \programcounter_12|s_count~2_combout\ = (\programcounter_12|s_count\(0) & ((\programcounter_12|s_count\(3) & ((!\programcounter_12|s_count\(1)))) # (!\programcounter_12|s_count\(3) & (\programcounter_12|s_count\(2) & \programcounter_12|s_count\(1))))) # 
-- (!\programcounter_12|s_count\(0) & (((\programcounter_12|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(0),
	datac => \programcounter_12|s_count\(3),
	datad => \programcounter_12|s_count\(1),
	combout => \programcounter_12|s_count~2_combout\);

-- Location: FF_X1_Y33_N25
\programcounter_12|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \programcounter_12|s_count~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \EnPC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \programcounter_12|s_count\(3));

-- Location: LCCOMB_X1_Y33_N10
\programcounter_12|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \programcounter_12|s_count~1_combout\ = (\programcounter_12|s_count\(0) & ((\programcounter_12|s_count\(2) & ((!\programcounter_12|s_count\(1)))) # (!\programcounter_12|s_count\(2) & (!\programcounter_12|s_count\(3) & \programcounter_12|s_count\(1))))) # 
-- (!\programcounter_12|s_count\(0) & (((\programcounter_12|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(3),
	datab => \programcounter_12|s_count\(0),
	datac => \programcounter_12|s_count\(2),
	datad => \programcounter_12|s_count\(1),
	combout => \programcounter_12|s_count~1_combout\);

-- Location: FF_X1_Y33_N11
\programcounter_12|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \programcounter_12|s_count~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \EnPC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \programcounter_12|s_count\(2));

-- Location: LCCOMB_X1_Y33_N12
\imemory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imemory|Mux2~0_combout\ = (\programcounter_12|s_count\(1) & (!\programcounter_12|s_count\(3) & ((!\programcounter_12|s_count\(0)) # (!\programcounter_12|s_count\(2))))) # (!\programcounter_12|s_count\(1) & (\programcounter_12|s_count\(2) $ 
-- (((\programcounter_12|s_count\(3)) # (!\programcounter_12|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(3),
	datac => \programcounter_12|s_count\(0),
	datad => \programcounter_12|s_count\(1),
	combout => \imemory|Mux2~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
\RI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RI,
	o => \RI~input_o\);

-- Location: FF_X1_Y33_N13
\imemory|readData[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \imemory|Mux2~0_combout\,
	ena => \RI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imemory|readData\(13));

-- Location: LCCOMB_X1_Y33_N22
\imemory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imemory|Mux1~0_combout\ = (!\programcounter_12|s_count\(2) & ((\programcounter_12|s_count\(3) & ((\programcounter_12|s_count\(1)))) # (!\programcounter_12|s_count\(3) & (!\programcounter_12|s_count\(0) & !\programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(3),
	datac => \programcounter_12|s_count\(0),
	datad => \programcounter_12|s_count\(1),
	combout => \imemory|Mux1~0_combout\);

-- Location: FF_X1_Y33_N23
\imemory|readData[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \imemory|Mux1~0_combout\,
	ena => \RI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imemory|readData\(14));

-- Location: LCCOMB_X1_Y33_N20
\imemory|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imemory|Mux0~0_combout\ = (\programcounter_12|s_count\(2) & (!\programcounter_12|s_count\(3) & (\programcounter_12|s_count\(0) $ (!\programcounter_12|s_count\(1))))) # (!\programcounter_12|s_count\(2) & (\programcounter_12|s_count\(3) $ 
-- (((!\programcounter_12|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(3),
	datac => \programcounter_12|s_count\(0),
	datad => \programcounter_12|s_count\(1),
	combout => \imemory|Mux0~0_combout\);

-- Location: FF_X1_Y33_N21
\imemory|readData[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \imemory|Mux0~0_combout\,
	ena => \RI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imemory|readData\(15));

-- Location: LCCOMB_X1_Y33_N26
\imemory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imemory|Mux11~0_combout\ = (\programcounter_12|s_count\(2) & (!\programcounter_12|s_count\(3) & (\programcounter_12|s_count\(0) $ (!\programcounter_12|s_count\(1))))) # (!\programcounter_12|s_count\(2) & (\programcounter_12|s_count\(0) & 
-- (\programcounter_12|s_count\(3) $ (!\programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(3),
	datac => \programcounter_12|s_count\(0),
	datad => \programcounter_12|s_count\(1),
	combout => \imemory|Mux11~0_combout\);

-- Location: FF_X1_Y33_N27
\imemory|readData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \imemory|Mux11~0_combout\,
	ena => \RI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imemory|readData\(0));

-- Location: LCCOMB_X1_Y33_N28
\imemory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imemory|Mux10~0_combout\ = (\programcounter_12|s_count\(2) & (!\programcounter_12|s_count\(3) & (\programcounter_12|s_count\(0) & !\programcounter_12|s_count\(1)))) # (!\programcounter_12|s_count\(2) & ((\programcounter_12|s_count\(3) & 
-- ((\programcounter_12|s_count\(1)) # (!\programcounter_12|s_count\(0)))) # (!\programcounter_12|s_count\(3) & (!\programcounter_12|s_count\(0) & \programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(3),
	datac => \programcounter_12|s_count\(0),
	datad => \programcounter_12|s_count\(1),
	combout => \imemory|Mux10~0_combout\);

-- Location: FF_X1_Y33_N29
\imemory|readData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \imemory|Mux10~0_combout\,
	ena => \RI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imemory|readData\(1));

-- Location: LCCOMB_X1_Y33_N30
\imemory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imemory|Mux5~0_combout\ = (\programcounter_12|s_count\(2) & (!\programcounter_12|s_count\(3) & (\programcounter_12|s_count\(0) & !\programcounter_12|s_count\(1)))) # (!\programcounter_12|s_count\(2) & (!\programcounter_12|s_count\(0) & 
-- (\programcounter_12|s_count\(3) $ (\programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \programcounter_12|s_count\(2),
	datab => \programcounter_12|s_count\(3),
	datac => \programcounter_12|s_count\(0),
	datad => \programcounter_12|s_count\(1),
	combout => \imemory|Mux5~0_combout\);

-- Location: FF_X1_Y33_N31
\imemory|readData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \imemory|Mux5~0_combout\,
	ena => \RI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imemory|readData\(2));

-- Location: IOIBUF_X91_Y0_N15
\RegDst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegDst,
	o => \RegDst~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\RegWr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegWr,
	o => \RegWr~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\ALUSrc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUSrc,
	o => \ALUSrc~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\MemWr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemWr,
	o => \MemWr~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\MemToReg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemToReg,
	o => \MemToReg~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\ALUOp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(0),
	o => \ALUOp[0]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\ALUOp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(1),
	o => \ALUOp[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\ALUOp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(2),
	o => \ALUOp[2]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\ALUOp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(3),
	o => \ALUOp[3]~input_o\);

ww_Opcode(0) <= \Opcode[0]~output_o\;

ww_Opcode(1) <= \Opcode[1]~output_o\;

ww_Opcode(2) <= \Opcode[2]~output_o\;

ww_func(0) <= \func[0]~output_o\;

ww_func(1) <= \func[1]~output_o\;

ww_func(2) <= \func[2]~output_o\;

ww_func(3) <= \func[3]~output_o\;
END structure;


