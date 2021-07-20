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

-- DATE "03/25/2020 10:37:06"

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

ENTITY 	CounterLoadUpDown4_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR7 : OUT std_logic;
	LEDR6 : OUT std_logic;
	LEDR5 : OUT std_logic;
	LEDR4 : OUT std_logic;
	LEDR3 : OUT std_logic;
	LEDR2 : OUT std_logic;
	LEDR1 : OUT std_logic;
	LEDR0 : OUT std_logic;
	LEDR12 : OUT std_logic;
	LEDR11 : OUT std_logic;
	LEDR10 : OUT std_logic;
	LEDR9 : OUT std_logic
	);
END CounterLoadUpDown4_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR7	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR6	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR5	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR2	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR1	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR12	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR11	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR10	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR9	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterLoadUpDown4_Demo IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR7 : std_logic;
SIGNAL ww_LEDR6 : std_logic;
SIGNAL ww_LEDR5 : std_logic;
SIGNAL ww_LEDR4 : std_logic;
SIGNAL ww_LEDR3 : std_logic;
SIGNAL ww_LEDR2 : std_logic;
SIGNAL ww_LEDR1 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDR12 : std_logic;
SIGNAL ww_LEDR11 : std_logic;
SIGNAL ww_LEDR10 : std_logic;
SIGNAL ww_LEDR9 : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDR7~output_o\ : std_logic;
SIGNAL \LEDR6~output_o\ : std_logic;
SIGNAL \LEDR5~output_o\ : std_logic;
SIGNAL \LEDR4~output_o\ : std_logic;
SIGNAL \LEDR3~output_o\ : std_logic;
SIGNAL \LEDR2~output_o\ : std_logic;
SIGNAL \LEDR1~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDR12~output_o\ : std_logic;
SIGNAL \LEDR11~output_o\ : std_logic;
SIGNAL \LEDR10~output_o\ : std_logic;
SIGNAL \LEDR9~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CLUD1|s_count[0]~10_combout\ : std_logic;
SIGNAL \CLUD1|s_count[0]~11_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CLUD1|s_count[1]~4_cout\ : std_logic;
SIGNAL \CLUD1|s_count[1]~5_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLUD1|s_count[3]~9_combout\ : std_logic;
SIGNAL \CLUD1|s_count[1]~6\ : std_logic;
SIGNAL \CLUD1|s_count[2]~7_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CLUD1|s_count[2]~8\ : std_logic;
SIGNAL \CLUD1|s_count[3]~12_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst2|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst2|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst2|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst2|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst2|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst2|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \CLUD1|s_count\ : std_logic_vector(3 DOWNTO 0);

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
HEX1 <= ww_HEX1;
LEDR7 <= ww_LEDR7;
LEDR6 <= ww_LEDR6;
LEDR5 <= ww_LEDR5;
LEDR4 <= ww_LEDR4;
LEDR3 <= ww_LEDR3;
LEDR2 <= ww_LEDR2;
LEDR1 <= ww_LEDR1;
LEDR0 <= ww_LEDR0;
LEDR12 <= ww_LEDR12;
LEDR11 <= ww_LEDR11;
LEDR10 <= ww_LEDR10;
LEDR9 <= ww_LEDR9;
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
	i => \inst2|decOut_n[6]~0_combout\,
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
	i => \inst2|decOut_n[5]~1_combout\,
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
	i => \inst2|decOut_n[4]~2_combout\,
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
	i => \inst2|decOut_n[3]~3_combout\,
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
	i => \inst2|decOut_n[2]~4_combout\,
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
	i => \inst2|decOut_n[1]~5_combout\,
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
	i => \inst2|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\LEDR7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR7~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\LEDR6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR6~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\LEDR5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR5~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\LEDR4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR4~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\LEDR3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR3~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\LEDR2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR2~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\LEDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR1~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\LEDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR0~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\LEDR12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR12~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\LEDR11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR11~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\LEDR10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR10~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\LEDR9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR9~output_o\);

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

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

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

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y40_N6
\CLUD1|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[0]~10_combout\ = (!\SW[5]~input_o\ & ((\SW[4]~input_o\ & (\SW[0]~input_o\)) # (!\SW[4]~input_o\ & ((!\CLUD1|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \CLUD1|s_count\(0),
	datad => \SW[4]~input_o\,
	combout => \CLUD1|s_count[0]~10_combout\);

-- Location: LCCOMB_X113_Y40_N16
\CLUD1|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[0]~11_combout\ = (\SW[7]~input_o\ & (((\CLUD1|s_count[0]~10_combout\)))) # (!\SW[7]~input_o\ & ((\SW[5]~input_o\ & ((\CLUD1|s_count[0]~10_combout\))) # (!\SW[5]~input_o\ & (\CLUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \CLUD1|s_count\(0),
	datad => \CLUD1|s_count[0]~10_combout\,
	combout => \CLUD1|s_count[0]~11_combout\);

-- Location: FF_X113_Y40_N17
\CLUD1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CLUD1|s_count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLUD1|s_count\(0));

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X114_Y40_N22
\CLUD1|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[1]~4_cout\ = CARRY(\CLUD1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(0),
	datad => VCC,
	cout => \CLUD1|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y40_N24
\CLUD1|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[1]~5_combout\ = (\SW[6]~input_o\ & ((\CLUD1|s_count\(1) & (!\CLUD1|s_count[1]~4_cout\)) # (!\CLUD1|s_count\(1) & ((\CLUD1|s_count[1]~4_cout\) # (GND))))) # (!\SW[6]~input_o\ & ((\CLUD1|s_count\(1) & (\CLUD1|s_count[1]~4_cout\ & VCC)) # 
-- (!\CLUD1|s_count\(1) & (!\CLUD1|s_count[1]~4_cout\))))
-- \CLUD1|s_count[1]~6\ = CARRY((\SW[6]~input_o\ & ((!\CLUD1|s_count[1]~4_cout\) # (!\CLUD1|s_count\(1)))) # (!\SW[6]~input_o\ & (!\CLUD1|s_count\(1) & !\CLUD1|s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \CLUD1|s_count\(1),
	datad => VCC,
	cin => \CLUD1|s_count[1]~4_cout\,
	combout => \CLUD1|s_count[1]~5_combout\,
	cout => \CLUD1|s_count[1]~6\);

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

-- Location: LCCOMB_X113_Y40_N4
\CLUD1|s_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[3]~9_combout\ = (\SW[5]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \CLUD1|s_count[3]~9_combout\);

-- Location: FF_X114_Y40_N25
\CLUD1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CLUD1|s_count[1]~5_combout\,
	asdata => \SW[1]~input_o\,
	sclr => \SW[5]~input_o\,
	sload => \SW[4]~input_o\,
	ena => \CLUD1|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLUD1|s_count\(1));

-- Location: LCCOMB_X114_Y40_N26
\CLUD1|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[2]~7_combout\ = ((\CLUD1|s_count\(2) $ (\SW[6]~input_o\ $ (\CLUD1|s_count[1]~6\)))) # (GND)
-- \CLUD1|s_count[2]~8\ = CARRY((\CLUD1|s_count\(2) & ((!\CLUD1|s_count[1]~6\) # (!\SW[6]~input_o\))) # (!\CLUD1|s_count\(2) & (!\SW[6]~input_o\ & !\CLUD1|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(2),
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \CLUD1|s_count[1]~6\,
	combout => \CLUD1|s_count[2]~7_combout\,
	cout => \CLUD1|s_count[2]~8\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y40_N27
\CLUD1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CLUD1|s_count[2]~7_combout\,
	asdata => \SW[2]~input_o\,
	sclr => \SW[5]~input_o\,
	sload => \SW[4]~input_o\,
	ena => \CLUD1|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLUD1|s_count\(2));

-- Location: LCCOMB_X114_Y40_N28
\CLUD1|s_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLUD1|s_count[3]~12_combout\ = \CLUD1|s_count\(3) $ (\CLUD1|s_count[2]~8\ $ (!\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLUD1|s_count\(3),
	datad => \SW[6]~input_o\,
	cin => \CLUD1|s_count[2]~8\,
	combout => \CLUD1|s_count[3]~12_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y40_N29
\CLUD1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CLUD1|s_count[3]~12_combout\,
	asdata => \SW[3]~input_o\,
	sclr => \SW[5]~input_o\,
	sload => \SW[4]~input_o\,
	ena => \CLUD1|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLUD1|s_count\(3));

-- Location: LCCOMB_X114_Y40_N4
\inst2|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~0_combout\ = (\CLUD1|s_count\(0) & (!\CLUD1|s_count\(3) & (\CLUD1|s_count\(1) $ (!\CLUD1|s_count\(2))))) # (!\CLUD1|s_count\(0) & (!\CLUD1|s_count\(1) & (\CLUD1|s_count\(2) $ (!\CLUD1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(0),
	datab => \CLUD1|s_count\(1),
	datac => \CLUD1|s_count\(2),
	datad => \CLUD1|s_count\(3),
	combout => \inst2|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y40_N2
\inst2|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[5]~1_combout\ = (\CLUD1|s_count\(0) & (\CLUD1|s_count\(3) $ (((\CLUD1|s_count\(1)) # (!\CLUD1|s_count\(2)))))) # (!\CLUD1|s_count\(0) & (\CLUD1|s_count\(1) & (!\CLUD1|s_count\(2) & !\CLUD1|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(0),
	datab => \CLUD1|s_count\(1),
	datac => \CLUD1|s_count\(2),
	datad => \CLUD1|s_count\(3),
	combout => \inst2|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y40_N16
\inst2|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[4]~2_combout\ = (\CLUD1|s_count\(1) & (\CLUD1|s_count\(0) & ((!\CLUD1|s_count\(3))))) # (!\CLUD1|s_count\(1) & ((\CLUD1|s_count\(2) & ((!\CLUD1|s_count\(3)))) # (!\CLUD1|s_count\(2) & (\CLUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(0),
	datab => \CLUD1|s_count\(1),
	datac => \CLUD1|s_count\(2),
	datad => \CLUD1|s_count\(3),
	combout => \inst2|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y40_N18
\inst2|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~3_combout\ = (\CLUD1|s_count\(1) & ((\CLUD1|s_count\(0) & (\CLUD1|s_count\(2))) # (!\CLUD1|s_count\(0) & (!\CLUD1|s_count\(2) & \CLUD1|s_count\(3))))) # (!\CLUD1|s_count\(1) & (!\CLUD1|s_count\(3) & (\CLUD1|s_count\(0) $ 
-- (\CLUD1|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(0),
	datab => \CLUD1|s_count\(1),
	datac => \CLUD1|s_count\(2),
	datad => \CLUD1|s_count\(3),
	combout => \inst2|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X113_Y40_N2
\inst2|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[2]~4_combout\ = (\CLUD1|s_count\(3) & (\CLUD1|s_count\(2) & ((\CLUD1|s_count\(1)) # (!\CLUD1|s_count\(0))))) # (!\CLUD1|s_count\(3) & (!\CLUD1|s_count\(2) & (\CLUD1|s_count\(1) & !\CLUD1|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(3),
	datab => \CLUD1|s_count\(2),
	datac => \CLUD1|s_count\(1),
	datad => \CLUD1|s_count\(0),
	combout => \inst2|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X113_Y40_N12
\inst2|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[1]~5_combout\ = (\CLUD1|s_count\(3) & ((\CLUD1|s_count\(0) & ((\CLUD1|s_count\(1)))) # (!\CLUD1|s_count\(0) & (\CLUD1|s_count\(2))))) # (!\CLUD1|s_count\(3) & (\CLUD1|s_count\(2) & (\CLUD1|s_count\(1) $ (\CLUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(3),
	datab => \CLUD1|s_count\(2),
	datac => \CLUD1|s_count\(1),
	datad => \CLUD1|s_count\(0),
	combout => \inst2|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X113_Y40_N18
\inst2|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[0]~6_combout\ = (\CLUD1|s_count\(3) & (\CLUD1|s_count\(0) & (\CLUD1|s_count\(2) $ (\CLUD1|s_count\(1))))) # (!\CLUD1|s_count\(3) & (!\CLUD1|s_count\(1) & (\CLUD1|s_count\(2) $ (\CLUD1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLUD1|s_count\(3),
	datab => \CLUD1|s_count\(2),
	datac => \CLUD1|s_count\(1),
	datad => \CLUD1|s_count\(0),
	combout => \inst2|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X114_Y22_N4
\inst|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~0_combout\ = (\SW[0]~input_o\ & (!\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\inst|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~1_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[2]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y22_N28
\inst|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~2_combout\ = (\SW[1]~input_o\ & (((!\SW[3]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y22_N14
\inst|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~3_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y22_N12
\inst|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[2]~4_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X114_Y22_N2
\inst|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~5_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X114_Y40_N0
\inst|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~6_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDR7 <= \LEDR7~output_o\;

ww_LEDR6 <= \LEDR6~output_o\;

ww_LEDR5 <= \LEDR5~output_o\;

ww_LEDR4 <= \LEDR4~output_o\;

ww_LEDR3 <= \LEDR3~output_o\;

ww_LEDR2 <= \LEDR2~output_o\;

ww_LEDR1 <= \LEDR1~output_o\;

ww_LEDR0 <= \LEDR0~output_o\;

ww_LEDR12 <= \LEDR12~output_o\;

ww_LEDR11 <= \LEDR11~output_o\;

ww_LEDR10 <= \LEDR10~output_o\;

ww_LEDR9 <= \LEDR9~output_o\;
END structure;


