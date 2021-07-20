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

-- DATE "04/15/2020 11:12:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ClkDividerN IS
    PORT (
	clkIn : IN std_logic;
	clkOut : OUT std_logic
	);
END ClkDividerN;

ARCHITECTURE structure OF ClkDividerN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_clkOut : std_logic;
SIGNAL \clkOut~output_o\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \s_divCounter~1_combout\ : std_logic;
SIGNAL \s_divCounter~2_combout\ : std_logic;
SIGNAL \s_divCounter~3_combout\ : std_logic;
SIGNAL \s_divCounter~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clkOut~0_combout\ : std_logic;
SIGNAL \clkOut~reg0_q\ : std_logic;
SIGNAL s_divCounter : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clkIn <= clkIn;
clkOut <= ww_clkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkOut~reg0_q\,
	devoe => ww_devoe,
	o => \clkOut~output_o\);

\clkIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

\s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~1_combout\ = (!s_divCounter(3) & (s_divCounter(0) $ (s_divCounter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_divCounter(0),
	datac => s_divCounter(1),
	datad => s_divCounter(3),
	combout => \s_divCounter~1_combout\);

\s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(1));

\s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~2_combout\ = (!s_divCounter(3) & (s_divCounter(2) $ (((s_divCounter(0) & s_divCounter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(2),
	datab => s_divCounter(0),
	datac => s_divCounter(1),
	datad => s_divCounter(3),
	combout => \s_divCounter~2_combout\);

\s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(2));

\s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~3_combout\ = (s_divCounter(3) & (!s_divCounter(2) & (!s_divCounter(0) & !s_divCounter(1)))) # (!s_divCounter(3) & (s_divCounter(2) & (s_divCounter(0) & s_divCounter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(3),
	datab => s_divCounter(2),
	datac => s_divCounter(0),
	datad => s_divCounter(1),
	combout => \s_divCounter~3_combout\);

\s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(3));

\s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~0_combout\ = (!s_divCounter(0) & (((!s_divCounter(2) & !s_divCounter(1))) # (!s_divCounter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(0),
	datab => s_divCounter(3),
	datac => s_divCounter(2),
	datad => s_divCounter(1),
	combout => \s_divCounter~0_combout\);

\s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(0));

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!s_divCounter(0) & !s_divCounter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_divCounter(0),
	datad => s_divCounter(1),
	combout => \LessThan0~0_combout\);

\clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~0_combout\ = (\LessThan0~0_combout\ & ((s_divCounter(2) & ((!s_divCounter(3)))) # (!s_divCounter(2) & (\clkOut~reg0_q\)))) # (!\LessThan0~0_combout\ & (\clkOut~reg0_q\ & ((!s_divCounter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkOut~reg0_q\,
	datab => \LessThan0~0_combout\,
	datac => s_divCounter(2),
	datad => s_divCounter(3),
	combout => \clkOut~0_combout\);

\clkOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkOut~reg0_q\);

ww_clkOut <= \clkOut~output_o\;
END structure;


