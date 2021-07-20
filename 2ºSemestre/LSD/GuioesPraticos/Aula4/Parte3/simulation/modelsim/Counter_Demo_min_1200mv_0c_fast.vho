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

-- DATE "03/11/2020 14:10:22"

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

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0)
	);
END Counter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CUD1|s_count~9_combout\ : std_logic;
SIGNAL \CUD1|s_count[1]~4_cout\ : std_logic;
SIGNAL \CUD1|s_count[1]~5_combout\ : std_logic;
SIGNAL \CUD1|s_count[1]~6\ : std_logic;
SIGNAL \CUD1|s_count[2]~7_combout\ : std_logic;
SIGNAL \CUD1|s_count[2]~8\ : std_logic;
SIGNAL \CUD1|s_count[3]~10_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \BSD1|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \CUD1|s_count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSD1|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CUD1|s_count\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CUD1|s_count\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CUD1|s_count\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CUD1|s_count\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y53_N12
\CUD1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CUD1|s_count~9_combout\ = (!\SW[1]~input_o\ & !\CUD1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \CUD1|s_count\(0),
	combout => \CUD1|s_count~9_combout\);

-- Location: FF_X114_Y53_N13
\CUD1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CUD1|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CUD1|s_count\(0));

-- Location: LCCOMB_X114_Y53_N22
\CUD1|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CUD1|s_count[1]~4_cout\ = CARRY(\CUD1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(0),
	datad => VCC,
	cout => \CUD1|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y53_N24
\CUD1|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CUD1|s_count[1]~5_combout\ = (\SW[0]~input_o\ & ((\CUD1|s_count\(1) & (!\CUD1|s_count[1]~4_cout\)) # (!\CUD1|s_count\(1) & ((\CUD1|s_count[1]~4_cout\) # (GND))))) # (!\SW[0]~input_o\ & ((\CUD1|s_count\(1) & (\CUD1|s_count[1]~4_cout\ & VCC)) # 
-- (!\CUD1|s_count\(1) & (!\CUD1|s_count[1]~4_cout\))))
-- \CUD1|s_count[1]~6\ = CARRY((\SW[0]~input_o\ & ((!\CUD1|s_count[1]~4_cout\) # (!\CUD1|s_count\(1)))) # (!\SW[0]~input_o\ & (!\CUD1|s_count\(1) & !\CUD1|s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CUD1|s_count\(1),
	datad => VCC,
	cin => \CUD1|s_count[1]~4_cout\,
	combout => \CUD1|s_count[1]~5_combout\,
	cout => \CUD1|s_count[1]~6\);

-- Location: FF_X114_Y53_N25
\CUD1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CUD1|s_count[1]~5_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CUD1|s_count\(1));

-- Location: LCCOMB_X114_Y53_N26
\CUD1|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CUD1|s_count[2]~7_combout\ = ((\CUD1|s_count\(2) $ (\SW[0]~input_o\ $ (\CUD1|s_count[1]~6\)))) # (GND)
-- \CUD1|s_count[2]~8\ = CARRY((\CUD1|s_count\(2) & ((!\CUD1|s_count[1]~6\) # (!\SW[0]~input_o\))) # (!\CUD1|s_count\(2) & (!\SW[0]~input_o\ & !\CUD1|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \CUD1|s_count[1]~6\,
	combout => \CUD1|s_count[2]~7_combout\,
	cout => \CUD1|s_count[2]~8\);

-- Location: FF_X114_Y53_N27
\CUD1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CUD1|s_count[2]~7_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CUD1|s_count\(2));

-- Location: LCCOMB_X114_Y53_N28
\CUD1|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CUD1|s_count[3]~10_combout\ = \SW[0]~input_o\ $ (\CUD1|s_count[2]~8\ $ (!\CUD1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \CUD1|s_count\(3),
	cin => \CUD1|s_count[2]~8\,
	combout => \CUD1|s_count[3]~10_combout\);

-- Location: FF_X114_Y53_N29
\CUD1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CUD1|s_count[3]~10_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CUD1|s_count\(3));

-- Location: LCCOMB_X111_Y72_N16
\BSD1|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[6]~0_combout\ = (\CUD1|s_count\(0) & (!\CUD1|s_count\(3) & (\CUD1|s_count\(2) $ (!\CUD1|s_count\(1))))) # (!\CUD1|s_count\(0) & (!\CUD1|s_count\(1) & (\CUD1|s_count\(2) $ (!\CUD1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(2),
	datab => \CUD1|s_count\(1),
	datac => \CUD1|s_count\(3),
	datad => \CUD1|s_count\(0),
	combout => \BSD1|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X111_Y72_N30
\BSD1|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[5]~1_combout\ = (\CUD1|s_count\(2) & (\CUD1|s_count\(0) & (\CUD1|s_count\(1) $ (\CUD1|s_count\(3))))) # (!\CUD1|s_count\(2) & (!\CUD1|s_count\(3) & ((\CUD1|s_count\(1)) # (\CUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(2),
	datab => \CUD1|s_count\(1),
	datac => \CUD1|s_count\(3),
	datad => \CUD1|s_count\(0),
	combout => \BSD1|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y53_N10
\BSD1|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[4]~2_combout\ = (\CUD1|s_count\(1) & (\CUD1|s_count\(0) & ((!\CUD1|s_count\(3))))) # (!\CUD1|s_count\(1) & ((\CUD1|s_count\(2) & ((!\CUD1|s_count\(3)))) # (!\CUD1|s_count\(2) & (\CUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(0),
	datab => \CUD1|s_count\(2),
	datac => \CUD1|s_count\(1),
	datad => \CUD1|s_count\(3),
	combout => \BSD1|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y53_N4
\BSD1|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[3]~3_combout\ = (\CUD1|s_count\(1) & ((\CUD1|s_count\(0) & (\CUD1|s_count\(2))) # (!\CUD1|s_count\(0) & (!\CUD1|s_count\(2) & \CUD1|s_count\(3))))) # (!\CUD1|s_count\(1) & (!\CUD1|s_count\(3) & (\CUD1|s_count\(0) $ (\CUD1|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(0),
	datab => \CUD1|s_count\(2),
	datac => \CUD1|s_count\(1),
	datad => \CUD1|s_count\(3),
	combout => \BSD1|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X111_Y72_N8
\BSD1|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[2]~4_combout\ = (\CUD1|s_count\(2) & (\CUD1|s_count\(3) & ((\CUD1|s_count\(1)) # (!\CUD1|s_count\(0))))) # (!\CUD1|s_count\(2) & (\CUD1|s_count\(1) & (!\CUD1|s_count\(3) & !\CUD1|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(2),
	datab => \CUD1|s_count\(1),
	datac => \CUD1|s_count\(3),
	datad => \CUD1|s_count\(0),
	combout => \BSD1|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X111_Y72_N2
\BSD1|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[1]~5_combout\ = (\CUD1|s_count\(1) & ((\CUD1|s_count\(0) & ((\CUD1|s_count\(3)))) # (!\CUD1|s_count\(0) & (\CUD1|s_count\(2))))) # (!\CUD1|s_count\(1) & (\CUD1|s_count\(2) & (\CUD1|s_count\(3) $ (\CUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(2),
	datab => \CUD1|s_count\(1),
	datac => \CUD1|s_count\(3),
	datad => \CUD1|s_count\(0),
	combout => \BSD1|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X111_Y72_N12
\BSD1|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BSD1|decOut_n[0]~6_combout\ = (\CUD1|s_count\(2) & (!\CUD1|s_count\(1) & (\CUD1|s_count\(3) $ (!\CUD1|s_count\(0))))) # (!\CUD1|s_count\(2) & (\CUD1|s_count\(0) & (\CUD1|s_count\(1) $ (!\CUD1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUD1|s_count\(2),
	datab => \CUD1|s_count\(1),
	datac => \CUD1|s_count\(3),
	datad => \CUD1|s_count\(0),
	combout => \BSD1|decOut_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


