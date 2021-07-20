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

-- DATE "04/01/2020 12:58:06"

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

ENTITY 	TimerN IS
    PORT (
	start : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	clk : IN std_logic;
	timerOut : OUT std_logic
	);
END TimerN;

ARCHITECTURE structure OF TimerN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_timerOut : std_logic;
SIGNAL \timerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_count[0]~1_combout\ : std_logic;
SIGNAL \s_count[0]~0_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~68\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~80\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \timerOut~0_combout\ : std_logic;
SIGNAL \timerOut~1_combout\ : std_logic;
SIGNAL \timerOut~2_combout\ : std_logic;
SIGNAL \timerOut~reg0_q\ : std_logic;
SIGNAL s_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_start <= start;
ww_reset <= reset;
ww_enable <= enable;
ww_clk <= clk;
timerOut <= ww_timerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerOut~reg0_q\,
	devoe => ww_devoe,
	o => \timerOut~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_count(0) $ (GND)
-- \Add0~1\ = CARRY(!s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_count(1) & (!\Add0~1\)) # (!s_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (s_count(2) & (\Add0~3\ $ (GND))) # (!s_count(2) & (!\Add0~3\ & VCC))
-- \Add0~6\ = CARRY((s_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\s_count[0]~0_combout\ & (\Add0~5_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~5_combout\,
	datad => \reset~input_o\,
	combout => \Add0~95_combout\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~1_combout\ = (\enable~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \reset~input_o\,
	combout => \s_count[0]~1_combout\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~95_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~0_combout\ = ((s_count(0) & ((\start~input_o\) # (s_count(2)))) # (!s_count(0) & ((!s_count(2))))) # (!\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => \start~input_o\,
	datac => s_count(2),
	datad => \Equal0~9_combout\,
	combout => \s_count[0]~0_combout\);

\Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = ((\reset~input_o\) # (!\s_count[0]~0_combout\)) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \s_count[0]~0_combout\,
	datad => \reset~input_o\,
	combout => \Add0~94_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~94_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~2_combout\ & (\s_count[0]~0_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \s_count[0]~0_combout\,
	datad => \reset~input_o\,
	combout => \Add0~4_combout\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~4_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (s_count(3) & (!\Add0~6\)) # (!s_count(3) & ((\Add0~6\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~6\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\s_count[0]~0_combout\ & (\Add0~7_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~7_combout\,
	datad => \reset~input_o\,
	combout => \Add0~9_combout\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_count(4) & (\Add0~8\ $ (GND))) # (!s_count(4) & (!\Add0~8\ & VCC))
-- \Add0~11\ = CARRY((s_count(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\s_count[0]~0_combout\ & (\Add0~10_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~10_combout\,
	datad => \reset~input_o\,
	combout => \Add0~12_combout\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~12_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (s_count(5) & (!\Add0~11\)) # (!s_count(5) & ((\Add0~11\) # (GND)))
-- \Add0~14\ = CARRY((!\Add0~11\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\s_count[0]~0_combout\ & (\Add0~13_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~13_combout\,
	datad => \reset~input_o\,
	combout => \Add0~15_combout\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~15_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count(1) & (!s_count(3) & (!s_count(4) & !s_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(3),
	datac => s_count(4),
	datad => s_count(5),
	combout => \Equal0~0_combout\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_count(6) & (\Add0~14\ $ (GND))) # (!s_count(6) & (!\Add0~14\ & VCC))
-- \Add0~17\ = CARRY((s_count(6) & !\Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\s_count[0]~0_combout\ & (\Add0~16_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~16_combout\,
	datad => \reset~input_o\,
	combout => \Add0~18_combout\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~18_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (s_count(7) & (!\Add0~17\)) # (!s_count(7) & ((\Add0~17\) # (GND)))
-- \Add0~20\ = CARRY((!\Add0~17\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\s_count[0]~0_combout\ & (\Add0~19_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~19_combout\,
	datad => \reset~input_o\,
	combout => \Add0~21_combout\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_count(8) & (\Add0~20\ $ (GND))) # (!s_count(8) & (!\Add0~20\ & VCC))
-- \Add0~23\ = CARRY((s_count(8) & !\Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\s_count[0]~0_combout\ & (\Add0~22_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~22_combout\,
	datad => \reset~input_o\,
	combout => \Add0~24_combout\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~24_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (s_count(9) & (!\Add0~23\)) # (!s_count(9) & ((\Add0~23\) # (GND)))
-- \Add0~26\ = CARRY((!\Add0~23\) # (!s_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\s_count[0]~0_combout\ & (\Add0~25_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~25_combout\,
	datad => \reset~input_o\,
	combout => \Add0~27_combout\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~27_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_count(6) & (!s_count(7) & (!s_count(8) & !s_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datab => s_count(7),
	datac => s_count(8),
	datad => s_count(9),
	combout => \Equal0~1_combout\);

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (s_count(10) & (\Add0~26\ $ (GND))) # (!s_count(10) & (!\Add0~26\ & VCC))
-- \Add0~29\ = CARRY((s_count(10) & !\Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\s_count[0]~0_combout\ & (\Add0~28_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~28_combout\,
	datad => \reset~input_o\,
	combout => \Add0~30_combout\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~30_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (s_count(11) & (!\Add0~29\)) # (!s_count(11) & ((\Add0~29\) # (GND)))
-- \Add0~32\ = CARRY((!\Add0~29\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\s_count[0]~0_combout\ & (\Add0~31_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~31_combout\,
	datad => \reset~input_o\,
	combout => \Add0~33_combout\);

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~33_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (s_count(12) & (\Add0~32\ $ (GND))) # (!s_count(12) & (!\Add0~32\ & VCC))
-- \Add0~35\ = CARRY((s_count(12) & !\Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\s_count[0]~0_combout\ & (\Add0~34_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~34_combout\,
	datad => \reset~input_o\,
	combout => \Add0~36_combout\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~36_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (s_count(13) & (!\Add0~35\)) # (!s_count(13) & ((\Add0~35\) # (GND)))
-- \Add0~38\ = CARRY((!\Add0~35\) # (!s_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\s_count[0]~0_combout\ & (\Add0~37_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~37_combout\,
	datad => \reset~input_o\,
	combout => \Add0~39_combout\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~39_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_count(10) & (!s_count(11) & (!s_count(12) & !s_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datab => s_count(11),
	datac => s_count(12),
	datad => s_count(13),
	combout => \Equal0~2_combout\);

\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (s_count(14) & (\Add0~38\ $ (GND))) # (!s_count(14) & (!\Add0~38\ & VCC))
-- \Add0~41\ = CARRY((s_count(14) & !\Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\s_count[0]~0_combout\ & (\Add0~40_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~40_combout\,
	datad => \reset~input_o\,
	combout => \Add0~42_combout\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~42_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (s_count(15) & (!\Add0~41\)) # (!s_count(15) & ((\Add0~41\) # (GND)))
-- \Add0~44\ = CARRY((!\Add0~41\) # (!s_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\s_count[0]~0_combout\ & (\Add0~43_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~43_combout\,
	datad => \reset~input_o\,
	combout => \Add0~45_combout\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~45_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (s_count(16) & (\Add0~44\ $ (GND))) # (!s_count(16) & (!\Add0~44\ & VCC))
-- \Add0~47\ = CARRY((s_count(16) & !\Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(16),
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\s_count[0]~0_combout\ & (\Add0~46_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~46_combout\,
	datad => \reset~input_o\,
	combout => \Add0~48_combout\);

\s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~48_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(16));

\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (s_count(17) & (!\Add0~47\)) # (!s_count(17) & ((\Add0~47\) # (GND)))
-- \Add0~50\ = CARRY((!\Add0~47\) # (!s_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(17),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\s_count[0]~0_combout\ & (\Add0~49_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~49_combout\,
	datad => \reset~input_o\,
	combout => \Add0~51_combout\);

\s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~51_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(17));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!s_count(14) & (!s_count(15) & (!s_count(16) & !s_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datab => s_count(15),
	datac => s_count(16),
	datad => s_count(17),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (s_count(18) & (\Add0~50\ $ (GND))) # (!s_count(18) & (!\Add0~50\ & VCC))
-- \Add0~53\ = CARRY((s_count(18) & !\Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\s_count[0]~0_combout\ & (\Add0~52_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~52_combout\,
	datad => \reset~input_o\,
	combout => \Add0~54_combout\);

\s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~54_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(18));

\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (s_count(19) & (!\Add0~53\)) # (!s_count(19) & ((\Add0~53\) # (GND)))
-- \Add0~56\ = CARRY((!\Add0~53\) # (!s_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\s_count[0]~0_combout\ & (\Add0~55_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~55_combout\,
	datad => \reset~input_o\,
	combout => \Add0~57_combout\);

\s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~57_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(19));

\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (s_count(20) & (\Add0~56\ $ (GND))) # (!s_count(20) & (!\Add0~56\ & VCC))
-- \Add0~59\ = CARRY((s_count(20) & !\Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\s_count[0]~0_combout\ & (\Add0~58_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~58_combout\,
	datad => \reset~input_o\,
	combout => \Add0~60_combout\);

\s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~60_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(20));

\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (s_count(21) & (!\Add0~59\)) # (!s_count(21) & ((\Add0~59\) # (GND)))
-- \Add0~62\ = CARRY((!\Add0~59\) # (!s_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(21),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\s_count[0]~0_combout\ & (\Add0~61_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~61_combout\,
	datad => \reset~input_o\,
	combout => \Add0~63_combout\);

\s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~63_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(21));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!s_count(18) & (!s_count(19) & (!s_count(20) & !s_count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datab => s_count(19),
	datac => s_count(20),
	datad => s_count(21),
	combout => \Equal0~5_combout\);

\Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (s_count(22) & (\Add0~62\ $ (GND))) # (!s_count(22) & (!\Add0~62\ & VCC))
-- \Add0~65\ = CARRY((s_count(22) & !\Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\s_count[0]~0_combout\ & (\Add0~64_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~64_combout\,
	datad => \reset~input_o\,
	combout => \Add0~66_combout\);

\s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~66_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(22));

\Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (s_count(23) & (!\Add0~65\)) # (!s_count(23) & ((\Add0~65\) # (GND)))
-- \Add0~68\ = CARRY((!\Add0~65\) # (!s_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~67_combout\,
	cout => \Add0~68\);

\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\s_count[0]~0_combout\ & (\Add0~67_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~67_combout\,
	datad => \reset~input_o\,
	combout => \Add0~69_combout\);

\s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~69_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(23));

\Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (s_count(24) & (\Add0~68\ $ (GND))) # (!s_count(24) & (!\Add0~68\ & VCC))
-- \Add0~71\ = CARRY((s_count(24) & !\Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(24),
	datad => VCC,
	cin => \Add0~68\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\s_count[0]~0_combout\ & (\Add0~70_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~70_combout\,
	datad => \reset~input_o\,
	combout => \Add0~72_combout\);

\s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~72_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(24));

\Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (s_count(25) & (!\Add0~71\)) # (!s_count(25) & ((\Add0~71\) # (GND)))
-- \Add0~74\ = CARRY((!\Add0~71\) # (!s_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(25),
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~73_combout\,
	cout => \Add0~74\);

\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\s_count[0]~0_combout\ & (\Add0~73_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~73_combout\,
	datad => \reset~input_o\,
	combout => \Add0~75_combout\);

\s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~75_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(25));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!s_count(22) & (!s_count(23) & (!s_count(24) & !s_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datab => s_count(23),
	datac => s_count(24),
	datad => s_count(25),
	combout => \Equal0~6_combout\);

\Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (s_count(26) & (\Add0~74\ $ (GND))) # (!s_count(26) & (!\Add0~74\ & VCC))
-- \Add0~77\ = CARRY((s_count(26) & !\Add0~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datad => VCC,
	cin => \Add0~74\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\s_count[0]~0_combout\ & (\Add0~76_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~76_combout\,
	datad => \reset~input_o\,
	combout => \Add0~78_combout\);

\s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~78_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(26));

\Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (s_count(27) & (!\Add0~77\)) # (!s_count(27) & ((\Add0~77\) # (GND)))
-- \Add0~80\ = CARRY((!\Add0~77\) # (!s_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~79_combout\,
	cout => \Add0~80\);

\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\s_count[0]~0_combout\ & (\Add0~79_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~79_combout\,
	datad => \reset~input_o\,
	combout => \Add0~81_combout\);

\s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~81_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(27));

\Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (s_count(28) & (\Add0~80\ $ (GND))) # (!s_count(28) & (!\Add0~80\ & VCC))
-- \Add0~83\ = CARRY((s_count(28) & !\Add0~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(28),
	datad => VCC,
	cin => \Add0~80\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\s_count[0]~0_combout\ & (\Add0~82_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~82_combout\,
	datad => \reset~input_o\,
	combout => \Add0~84_combout\);

\s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~84_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(28));

\Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (s_count(29) & (!\Add0~83\)) # (!s_count(29) & ((\Add0~83\) # (GND)))
-- \Add0~86\ = CARRY((!\Add0~83\) # (!s_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~85_combout\,
	cout => \Add0~86\);

\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\s_count[0]~0_combout\ & (\Add0~85_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~85_combout\,
	datad => \reset~input_o\,
	combout => \Add0~87_combout\);

\s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~87_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(29));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!s_count(26) & (!s_count(27) & (!s_count(28) & !s_count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datab => s_count(27),
	datac => s_count(28),
	datad => s_count(29),
	combout => \Equal0~7_combout\);

\Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (s_count(30) & (\Add0~86\ $ (GND))) # (!s_count(30) & (!\Add0~86\ & VCC))
-- \Add0~89\ = CARRY((s_count(30) & !\Add0~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(30),
	datad => VCC,
	cin => \Add0~86\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\s_count[0]~0_combout\ & (\Add0~88_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~88_combout\,
	datad => \reset~input_o\,
	combout => \Add0~93_combout\);

\s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~93_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(30));

\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = s_count(31) $ (!\Add0~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(31),
	cin => \Add0~89\,
	combout => \Add0~90_combout\);

\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = ((\reset~input_o\) # (!\Add0~90_combout\)) # (!\s_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~0_combout\,
	datab => \Add0~90_combout\,
	datad => \reset~input_o\,
	combout => \Add0~92_combout\);

\s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~92_combout\,
	ena => \s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(31));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (s_count(31) & !s_count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => s_count(31),
	datad => s_count(30),
	combout => \Equal0~8_combout\);

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

\timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~0_combout\ = (\timerOut~reg0_q\ & ((\start~input_o\) # (!\enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \timerOut~reg0_q\,
	datac => \start~input_o\,
	combout => \timerOut~0_combout\);

\timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~1_combout\ = (\enable~input_o\ & ((s_count(0) & (!s_count(2) & !\timerOut~0_combout\)) # (!s_count(0) & (s_count(2))))) # (!\enable~input_o\ & (((\timerOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(2),
	datac => \enable~input_o\,
	datad => \timerOut~0_combout\,
	combout => \timerOut~1_combout\);

\timerOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~2_combout\ = (!\reset~input_o\ & ((\enable~input_o\ & ((!\timerOut~1_combout\) # (!\Equal0~9_combout\))) # (!\enable~input_o\ & ((\timerOut~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~9_combout\,
	datac => \enable~input_o\,
	datad => \timerOut~1_combout\,
	combout => \timerOut~2_combout\);

\timerOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timerOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOut~reg0_q\);

ww_timerOut <= \timerOut~output_o\;
END structure;


