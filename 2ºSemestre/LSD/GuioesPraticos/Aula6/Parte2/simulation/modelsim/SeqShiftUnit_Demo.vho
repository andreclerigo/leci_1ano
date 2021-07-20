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

-- DATE "04/15/2020 12:45:19"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	SeqShiftUnit IS
    PORT (
	clk : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	siLeft : IN std_logic;
	siRight : IN std_logic;
	loadEn : IN std_logic;
	rotate : IN std_logic;
	dirLeft : IN std_logic;
	shArith : IN std_logic;
	dataOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END SeqShiftUnit;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rotate	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siLeft	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shArith	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirLeft	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadEn	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siRight	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_siLeft : std_logic;
SIGNAL ww_siRight : std_logic;
SIGNAL ww_loadEn : std_logic;
SIGNAL ww_rotate : std_logic;
SIGNAL ww_dirLeft : std_logic;
SIGNAL ww_shArith : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dirLeft~input_o\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \shArith~input_o\ : std_logic;
SIGNAL \siRight~input_o\ : std_logic;
SIGNAL \s_shiftReg[7]~9_combout\ : std_logic;
SIGNAL \s_shiftReg[7]~10_combout\ : std_logic;
SIGNAL \s_shiftReg[7]~7_combout\ : std_logic;
SIGNAL \s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \loadEn~input_o\ : std_logic;
SIGNAL \s_shiftReg[6]~6_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \s_shiftReg[5]~5_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \s_shiftReg[4]~4_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \s_shiftReg[3]~3_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \s_shiftReg[2]~2_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \s_shiftReg[1]~1_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \siLeft~input_o\ : std_logic;
SIGNAL \s_shiftReg~8_combout\ : std_logic;
SIGNAL \s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL s_shiftReg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_dataIn <= dataIn;
ww_siLeft <= siLeft;
ww_siRight <= siRight;
ww_loadEn <= loadEn;
ww_rotate <= rotate;
ww_dirLeft <= dirLeft;
ww_shArith <= shArith;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N2
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(4),
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(5),
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(6),
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(7),
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X67_Y73_N1
\dirLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirLeft,
	o => \dirLeft~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\shArith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shArith,
	o => \shArith~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\siRight~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_siRight,
	o => \siRight~input_o\);

-- Location: LCCOMB_X59_Y72_N8
\s_shiftReg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~9_combout\ = (\rotate~input_o\) # ((\shArith~input_o\ & ((s_shiftReg(7)))) # (!\shArith~input_o\ & (\siRight~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shArith~input_o\,
	datac => \siRight~input_o\,
	datad => s_shiftReg(7),
	combout => \s_shiftReg[7]~9_combout\);

-- Location: LCCOMB_X59_Y72_N2
\s_shiftReg[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~10_combout\ = (s_shiftReg(0)) # (!\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rotate~input_o\,
	datad => s_shiftReg(0),
	combout => \s_shiftReg[7]~10_combout\);

-- Location: LCCOMB_X59_Y72_N28
\s_shiftReg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~7_combout\ = (\dirLeft~input_o\ & (s_shiftReg(6))) # (!\dirLeft~input_o\ & (((\s_shiftReg[7]~9_combout\ & \s_shiftReg[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => s_shiftReg(6),
	datac => \s_shiftReg[7]~9_combout\,
	datad => \s_shiftReg[7]~10_combout\,
	combout => \s_shiftReg[7]~7_combout\);

-- Location: LCCOMB_X59_Y72_N6
\s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~feeder_combout\ = \s_shiftReg[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_shiftReg[7]~7_combout\,
	combout => \s_shiftReg[7]~feeder_combout\);

-- Location: IOIBUF_X62_Y73_N22
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\loadEn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loadEn,
	o => \loadEn~input_o\);

-- Location: FF_X59_Y72_N7
\s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[7]~feeder_combout\,
	asdata => \dataIn[7]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(7));

-- Location: LCCOMB_X59_Y72_N4
\s_shiftReg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[6]~6_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(5)))) # (!\dirLeft~input_o\ & (s_shiftReg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(7),
	datab => \dirLeft~input_o\,
	datad => s_shiftReg(5),
	combout => \s_shiftReg[6]~6_combout\);

-- Location: IOIBUF_X58_Y73_N15
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: FF_X59_Y72_N5
\s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[6]~6_combout\,
	asdata => \dataIn[6]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(6));

-- Location: LCCOMB_X59_Y72_N10
\s_shiftReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[5]~5_combout\ = (\dirLeft~input_o\ & (s_shiftReg(4))) # (!\dirLeft~input_o\ & ((s_shiftReg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(4),
	datab => s_shiftReg(6),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[5]~5_combout\);

-- Location: IOIBUF_X60_Y73_N1
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: FF_X59_Y72_N11
\s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[5]~5_combout\,
	asdata => \dataIn[5]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(5));

-- Location: LCCOMB_X59_Y72_N12
\s_shiftReg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[4]~4_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(3)))) # (!\dirLeft~input_o\ & (s_shiftReg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(5),
	datab => s_shiftReg(3),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[4]~4_combout\);

-- Location: IOIBUF_X62_Y73_N15
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: FF_X59_Y72_N13
\s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[4]~4_combout\,
	asdata => \dataIn[4]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(4));

-- Location: LCCOMB_X59_Y72_N14
\s_shiftReg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[3]~3_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(2)))) # (!\dirLeft~input_o\ & (s_shiftReg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(4),
	datab => s_shiftReg(2),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[3]~3_combout\);

-- Location: IOIBUF_X60_Y73_N8
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: FF_X59_Y72_N15
\s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[3]~3_combout\,
	asdata => \dataIn[3]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(3));

-- Location: LCCOMB_X59_Y72_N20
\s_shiftReg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[2]~2_combout\ = (\dirLeft~input_o\ & (s_shiftReg(1))) # (!\dirLeft~input_o\ & ((s_shiftReg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(1),
	datab => s_shiftReg(3),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[2]~2_combout\);

-- Location: IOIBUF_X58_Y73_N22
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: FF_X59_Y72_N21
\s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[2]~2_combout\,
	asdata => \dataIn[2]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(2));

-- Location: LCCOMB_X59_Y72_N30
\s_shiftReg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[1]~1_combout\ = (\dirLeft~input_o\ & (s_shiftReg(0))) # (!\dirLeft~input_o\ & ((s_shiftReg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(0),
	datab => \dirLeft~input_o\,
	datad => s_shiftReg(2),
	combout => \s_shiftReg[1]~1_combout\);

-- Location: IOIBUF_X65_Y73_N8
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: FF_X59_Y72_N31
\s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[1]~1_combout\,
	asdata => \dataIn[1]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(1));

-- Location: IOIBUF_X65_Y73_N22
\siLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_siLeft,
	o => \siLeft~input_o\);

-- Location: LCCOMB_X59_Y72_N18
\s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~8_combout\ = (\rotate~input_o\ & (((s_shiftReg(7))))) # (!\rotate~input_o\ & (!\shArith~input_o\ & (\siLeft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shArith~input_o\,
	datac => \siLeft~input_o\,
	datad => s_shiftReg(7),
	combout => \s_shiftReg~8_combout\);

-- Location: LCCOMB_X59_Y72_N0
\s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[0]~0_combout\ = (\dirLeft~input_o\ & ((\s_shiftReg~8_combout\))) # (!\dirLeft~input_o\ & (s_shiftReg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(1),
	datab => \s_shiftReg~8_combout\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[0]~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: FF_X59_Y72_N1
\s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_shiftReg[0]~0_combout\,
	asdata => \dataIn[0]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(0));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


