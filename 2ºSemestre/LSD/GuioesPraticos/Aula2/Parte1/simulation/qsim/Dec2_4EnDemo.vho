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

-- DATE "02/26/2020 11:02:17"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Dec2_4En IS
    PORT (
	enable : IN std_logic;
	inputs : IN std_logic_vector(1 DOWNTO 0);
	outputs : OUT std_logic_vector(3 DOWNTO 0)
	);
END Dec2_4En;

-- Design Ports Information
-- outputs[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Dec2_4En IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_inputs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_outputs : std_logic_vector(3 DOWNTO 0);
SIGNAL \outputs[0]~output_o\ : std_logic;
SIGNAL \outputs[1]~output_o\ : std_logic;
SIGNAL \outputs[2]~output_o\ : std_logic;
SIGNAL \outputs[3]~output_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \outputs~0_combout\ : std_logic;
SIGNAL \outputs~1_combout\ : std_logic;
SIGNAL \outputs~2_combout\ : std_logic;
SIGNAL \outputs~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enable <= enable;
ww_inputs <= inputs;
outputs <= ww_outputs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y35_N16
\outputs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~0_combout\,
	devoe => ww_devoe,
	o => \outputs[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\outputs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~1_combout\,
	devoe => ww_devoe,
	o => \outputs[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\outputs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~2_combout\,
	devoe => ww_devoe,
	o => \outputs[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\outputs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~3_combout\,
	devoe => ww_devoe,
	o => \outputs[3]~output_o\);

-- Location: IOIBUF_X0_Y33_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\inputs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\inputs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

-- Location: LCCOMB_X1_Y34_N0
\outputs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~0_combout\ = (\enable~input_o\ & (!\inputs[1]~input_o\ & !\inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs~0_combout\);

-- Location: LCCOMB_X1_Y34_N18
\outputs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~1_combout\ = (\enable~input_o\ & (!\inputs[1]~input_o\ & \inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs~1_combout\);

-- Location: LCCOMB_X1_Y34_N4
\outputs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~2_combout\ = (\enable~input_o\ & (\inputs[1]~input_o\ & !\inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs~2_combout\);

-- Location: LCCOMB_X1_Y34_N14
\outputs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~3_combout\ = (\enable~input_o\ & (\inputs[1]~input_o\ & \inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs~3_combout\);

ww_outputs(0) <= \outputs[0]~output_o\;

ww_outputs(1) <= \outputs[1]~output_o\;

ww_outputs(2) <= \outputs[2]~output_o\;

ww_outputs(3) <= \outputs[3]~output_o\;
END structure;


