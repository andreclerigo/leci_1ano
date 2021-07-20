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

-- DATE "03/09/2020 17:03:23"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo;

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
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
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
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_cout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~4\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \inst1|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|Mux0~5_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst1|Add0~11_combout\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst3|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst3|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst3|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst3|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst3|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst3|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~26_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~31_combout\ : std_logic;
SIGNAL \inst4|decOut_n[5]~12_combout\ : std_logic;
SIGNAL \inst4|decOut_n[5]~35_combout\ : std_logic;
SIGNAL \inst4|decOut_n[4]~27_combout\ : std_logic;
SIGNAL \inst4|decOut_n[4]~32_combout\ : std_logic;
SIGNAL \inst4|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \inst4|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \inst4|decOut_n[2]~21_combout\ : std_logic;
SIGNAL \inst4|decOut_n[2]~36_combout\ : std_logic;
SIGNAL \inst4|decOut_n[1]~29_combout\ : std_logic;
SIGNAL \inst4|decOut_n[1]~34_combout\ : std_logic;
SIGNAL \inst1|m[1]~11_combout\ : std_logic;
SIGNAL \inst1|m[3]~10_combout\ : std_logic;
SIGNAL \inst1|m[2]~9_combout\ : std_logic;
SIGNAL \inst1|m[0]~8_combout\ : std_logic;
SIGNAL \inst4|decOut_n[0]~30_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALT_INV_m[0]~8_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_m[0]~8_combout\ <= NOT \inst1|m[0]~8_combout\;
\inst3|ALT_INV_decOut_n[4]~2_combout\ <= NOT \inst3|decOut_n[4]~2_combout\;
\inst3|ALT_INV_decOut_n[6]~0_combout\ <= NOT \inst3|decOut_n[6]~0_combout\;
\inst1|ALT_INV_Mux0~3_combout\ <= NOT \inst1|Mux0~3_combout\;
\inst1|ALT_INV_Mux3~4_combout\ <= NOT \inst1|Mux3~4_combout\;
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
	i => \inst3|ALT_INV_decOut_n[6]~0_combout\,
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
	i => \inst3|decOut_n[5]~1_combout\,
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
	i => \inst3|ALT_INV_decOut_n[4]~2_combout\,
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
	i => \inst3|decOut_n[3]~3_combout\,
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
	i => \inst3|decOut_n[2]~4_combout\,
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
	i => \inst3|decOut_n[1]~5_combout\,
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
	i => \inst3|decOut_n[0]~6_combout\,
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
	i => \inst4|decOut_n[6]~31_combout\,
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
	i => \inst4|decOut_n[5]~35_combout\,
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
	i => \inst4|decOut_n[4]~32_combout\,
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
	i => \inst4|decOut_n[3]~33_combout\,
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
	i => \inst4|decOut_n[2]~36_combout\,
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
	i => \inst4|decOut_n[1]~34_combout\,
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
	i => \inst4|decOut_n[0]~30_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|m[3]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|m[2]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|m[1]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_m[0]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~1_combout\,
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
	i => \inst1|ALT_INV_Mux3~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X112_Y15_N24
\inst1|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst1|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X110_Y14_N14
\inst1|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~0_combout\ = (\SW[1]~input_o\ & (\inst1|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\inst1|Mult0|auto_generated|le3a\(0) & VCC))
-- \inst1|Mult0|auto_generated|op_3~1\ = CARRY((\SW[1]~input_o\ & \inst1|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \inst1|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~1\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X109_Y15_N24
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (!\SW[10]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \inst1|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X109_Y13_N6
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

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

-- Location: LCCOMB_X113_Y14_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

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

-- Location: LCCOMB_X113_Y14_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X113_Y14_N12
\inst1|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((!\SW[7]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X113_Y14_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[6]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datab => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

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

-- Location: LCCOMB_X113_Y14_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y14_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y14_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y14_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y14_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X113_Y14_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\SW[3]~input_o\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X113_Y14_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\SW[3]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[3]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[5]~input_o\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X109_Y13_N8
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X109_Y13_N10
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X109_Y13_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X109_Y13_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X109_Y13_N0
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\SW[4]~input_o\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[8]~input_o\ & ((\SW[4]~input_o\))) # 
-- (!\SW[8]~input_o\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y13_N26
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\)) # (!\SW[9]~input_o\ & (\inst1|Mux3~0_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|Mux3~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y13_N28
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\ & ((!\SW[4]~input_o\) # (!\inst1|Mux3~1_combout\))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\))))) # (!\SW[9]~input_o\ & (\inst1|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~1_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X109_Y14_N0
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\SW[10]~input_o\) # ((\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y15_N26
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X109_Y15_N10
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst1|Add0~2_cout\);

-- Location: LCCOMB_X109_Y15_N12
\inst1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = (\inst1|Add0~0_combout\ & ((\SW[4]~input_o\ & (\inst1|Add0~2_cout\ & VCC)) # (!\SW[4]~input_o\ & (!\inst1|Add0~2_cout\)))) # (!\inst1|Add0~0_combout\ & ((\SW[4]~input_o\ & (!\inst1|Add0~2_cout\)) # (!\SW[4]~input_o\ & 
-- ((\inst1|Add0~2_cout\) # (GND)))))
-- \inst1|Add0~4\ = CARRY((\inst1|Add0~0_combout\ & (!\SW[4]~input_o\ & !\inst1|Add0~2_cout\)) # (!\inst1|Add0~0_combout\ & ((!\inst1|Add0~2_cout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst1|Add0~2_cout\,
	combout => \inst1|Add0~3_combout\,
	cout => \inst1|Add0~4\);

-- Location: LCCOMB_X109_Y15_N4
\inst1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|Mux0~1_combout\ & (((\inst1|Mux0~0_combout\)) # (!\inst1|Mux3~2_combout\))) # (!\inst1|Mux0~1_combout\ & (((!\inst1|Add0~3_combout\ & !\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~2_combout\,
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|Add0~3_combout\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X112_Y15_N12
\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X112_Y15_N14
\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X112_Y15_N16
\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X112_Y15_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X112_Y15_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\SW[3]~input_o\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X112_Y15_N28
\inst1|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\SW[3]~input_o\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X112_Y15_N30
\inst1|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X112_Y15_N2
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X112_Y15_N4
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\SW[1]~input_o\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\SW[1]~input_o\) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X112_Y15_N6
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\SW[2]~input_o\ & (\inst1|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\SW[2]~input_o\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X112_Y15_N8
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\SW[3]~input_o\ & ((!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\inst1|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\))) 
-- # (!\SW[3]~input_o\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X112_Y15_N10
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X109_Y15_N22
\inst1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst1|Mux0~0_combout\ & ((\inst1|Mux3~3_combout\ & ((\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\inst1|Mux3~3_combout\ & (!\inst1|Mult0|auto_generated|op_3~0_combout\)))) # 
-- (!\inst1|Mux0~0_combout\ & (((\inst1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~0_combout\,
	datab => \inst1|Mux0~0_combout\,
	datac => \inst1|Mux3~3_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst1|Mux3~4_combout\);

-- Location: LCCOMB_X109_Y15_N28
\inst1|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|selnose\(10) = (\SW[3]~input_o\) # (\inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X109_Y14_N2
\inst1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = \SW[8]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Add0~5_combout\);

-- Location: LCCOMB_X109_Y15_N14
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = ((\inst1|Add0~5_combout\ $ (\SW[5]~input_o\ $ (!\inst1|Add0~4\)))) # (GND)
-- \inst1|Add0~7\ = CARRY((\inst1|Add0~5_combout\ & ((\SW[5]~input_o\) # (!\inst1|Add0~4\))) # (!\inst1|Add0~5_combout\ & (\SW[5]~input_o\ & !\inst1|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~5_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst1|Add0~4\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X109_Y14_N28
\inst1|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X110_Y14_N16
\inst1|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~2_combout\ = (\inst1|Mult0|auto_generated|le3a\(1) & (!\inst1|Mult0|auto_generated|op_3~1\)) # (!\inst1|Mult0|auto_generated|le3a\(1) & ((\inst1|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst1|Mult0|auto_generated|op_3~3\ = CARRY((!\inst1|Mult0|auto_generated|op_3~1\) # (!\inst1|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_3~1\,
	combout => \inst1|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X109_Y15_N0
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst1|Mux0~1_combout\ & (\inst1|Mux0~0_combout\)) # (!\inst1|Mux0~1_combout\ & ((\inst1|Mux0~0_combout\ & ((\inst1|Mult0|auto_generated|op_3~2_combout\))) # (!\inst1|Mux0~0_combout\ & (\inst1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux0~0_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~2_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y13_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\);

-- Location: LCCOMB_X109_Y13_N4
\inst1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X109_Y13_N22
\inst1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst1|Mux2~2_combout\ & ((\SW[8]~input_o\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\,
	datac => \inst1|Mux2~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X109_Y15_N6
\inst1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst1|Mux2~0_combout\ & (((!\inst1|Mux0~1_combout\)) # (!\inst1|Div0|auto_generated|divider|divider|selnose\(10)))) # (!\inst1|Mux2~0_combout\ & (((\inst1|Mux2~3_combout\ & \inst1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|selnose\(10),
	datab => \inst1|Mux2~0_combout\,
	datac => \inst1|Mux2~3_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X109_Y13_N16
\inst1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\SW[2]~input_o\ & ((\SW[9]~input_o\ $ (\SW[6]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[9]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X109_Y13_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\);

-- Location: LCCOMB_X109_Y13_N2
\inst1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (\inst1|Mux1~2_combout\ & ((\SW[8]~input_o\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|Mux1~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X109_Y14_N20
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst1|Add0~8_combout\);

-- Location: LCCOMB_X109_Y15_N16
\inst1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_combout\ = (\SW[6]~input_o\ & ((\inst1|Add0~8_combout\ & (\inst1|Add0~7\ & VCC)) # (!\inst1|Add0~8_combout\ & (!\inst1|Add0~7\)))) # (!\SW[6]~input_o\ & ((\inst1|Add0~8_combout\ & (!\inst1|Add0~7\)) # (!\inst1|Add0~8_combout\ & 
-- ((\inst1|Add0~7\) # (GND)))))
-- \inst1|Add0~10\ = CARRY((\SW[6]~input_o\ & (!\inst1|Add0~8_combout\ & !\inst1|Add0~7\)) # (!\SW[6]~input_o\ & ((!\inst1|Add0~7\) # (!\inst1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst1|Add0~8_combout\,
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~9_combout\,
	cout => \inst1|Add0~10\);

-- Location: LCCOMB_X109_Y15_N8
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|Mux0~1_combout\ & ((\inst1|Mux1~3_combout\) # ((\inst1|Mux0~0_combout\)))) # (!\inst1|Mux0~1_combout\ & (((\inst1|Add0~9_combout\ & !\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~3_combout\,
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|Add0~9_combout\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y14_N2
\inst1|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[4]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\))) # (!\SW[4]~input_o\ & (\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X113_Y14_N28
\inst1|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & (\SW[6]~input_o\ $ (((\SW[1]~input_o\))))) # (!\SW[0]~input_o\ & (((!\SW[5]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X111_Y14_N24
\inst1|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X111_Y14_N12
\inst1|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_1~0_combout\ = (\inst1|Mult0|auto_generated|le3a\(2) & (\inst1|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst1|Mult0|auto_generated|le3a\(2) & (\inst1|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst1|Mult0|auto_generated|op_1~1\ = CARRY((\inst1|Mult0|auto_generated|le3a\(2) & \inst1|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le3a\(2),
	datab => \inst1|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst1|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst1|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X110_Y14_N18
\inst1|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~4_combout\ = ((\inst1|Mult0|auto_generated|le4a\(0) $ (\inst1|Mult0|auto_generated|op_1~0_combout\ $ (!\inst1|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst1|Mult0|auto_generated|op_3~5\ = CARRY((\inst1|Mult0|auto_generated|le4a\(0) & ((\inst1|Mult0|auto_generated|op_1~0_combout\) # (!\inst1|Mult0|auto_generated|op_3~3\))) # (!\inst1|Mult0|auto_generated|le4a\(0) & 
-- (\inst1|Mult0|auto_generated|op_1~0_combout\ & !\inst1|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le4a\(0),
	datab => \inst1|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_3~3\,
	combout => \inst1|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X113_Y14_N14
\inst1|Mod0|auto_generated|divider|divider|selnose[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((\SW[0]~input_o\ & !\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datab => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X109_Y14_N14
\inst1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst1|Mux1~0_combout\ & (((!\inst1|Mux0~0_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\)))) # (!\inst1|Mux1~0_combout\ & (\inst1|Mult0|auto_generated|op_3~4_combout\ & 
-- ((\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~0_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y14_N8
\inst1|Mod0|auto_generated|divider|divider|selnose[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\);

-- Location: LCCOMB_X113_Y14_N2
\inst1|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|selnose\(0) = (\SW[1]~input_o\) # (((!\SW[7]~input_o\ & \SW[0]~input_o\)) # (!\inst1|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X109_Y13_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X109_Y14_N30
\inst1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~4_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|Mux0~4_combout\);

-- Location: LCCOMB_X109_Y13_N30
\inst1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~5_combout\ = (\inst1|Mux0~4_combout\ & ((\SW[8]~input_o\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datac => \inst1|Mux0~4_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst1|Mux0~5_combout\);

-- Location: LCCOMB_X112_Y14_N0
\inst1|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X111_Y14_N6
\inst1|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le4a\(1) = (\inst1|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[5]~input_o\ $ (((\inst1|Mult0|auto_generated|le4a\(5)))))) # (!\inst1|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\SW[4]~input_o\ & 
-- \inst1|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst1|Mult0|auto_generated|le4a\(5),
	combout => \inst1|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X111_Y14_N4
\inst1|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X111_Y14_N14
\inst1|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_1~2_combout\ = (\inst1|Mult0|auto_generated|le3a\(3) & (!\inst1|Mult0|auto_generated|op_1~1\)) # (!\inst1|Mult0|auto_generated|le3a\(3) & ((\inst1|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst1|Mult0|auto_generated|op_1~3\ = CARRY((!\inst1|Mult0|auto_generated|op_1~1\) # (!\inst1|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_1~1\,
	combout => \inst1|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst1|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X110_Y14_N20
\inst1|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~6_combout\ = (\inst1|Mult0|auto_generated|le4a\(1) & ((\inst1|Mult0|auto_generated|op_1~2_combout\ & (\inst1|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst1|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst1|Mult0|auto_generated|op_3~5\)))) # (!\inst1|Mult0|auto_generated|le4a\(1) & ((\inst1|Mult0|auto_generated|op_1~2_combout\ & (!\inst1|Mult0|auto_generated|op_3~5\)) # (!\inst1|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\inst1|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \inst1|Mult0|auto_generated|op_3~7\ = CARRY((\inst1|Mult0|auto_generated|le4a\(1) & (!\inst1|Mult0|auto_generated|op_1~2_combout\ & !\inst1|Mult0|auto_generated|op_3~5\)) # (!\inst1|Mult0|auto_generated|le4a\(1) & ((!\inst1|Mult0|auto_generated|op_3~5\) # 
-- (!\inst1|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le4a\(1),
	datab => \inst1|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_3~5\,
	combout => \inst1|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X109_Y15_N2
\inst1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~11_combout\ = \SW[3]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst1|Add0~11_combout\);

-- Location: LCCOMB_X109_Y15_N18
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = \inst1|Add0~11_combout\ $ (\inst1|Add0~10\ $ (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~11_combout\,
	datad => \SW[7]~input_o\,
	cin => \inst1|Add0~10\,
	combout => \inst1|Add0~12_combout\);

-- Location: LCCOMB_X109_Y15_N20
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|Mux0~1_combout\ & (((\inst1|Mux0~0_combout\)))) # (!\inst1|Mux0~1_combout\ & ((\inst1|Mux0~0_combout\ & (!\inst1|Mult0|auto_generated|op_3~6_combout\)) # (!\inst1|Mux0~0_combout\ & ((!\inst1|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~6_combout\,
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y15_N30
\inst1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~3_combout\ = (\inst1|Mux0~1_combout\ & ((\inst1|Mux0~2_combout\ & (\inst1|Mod0|auto_generated|divider|divider|selnose\(0))) # (!\inst1|Mux0~2_combout\ & ((!\inst1|Mux0~5_combout\))))) # (!\inst1|Mux0~1_combout\ & (((\inst1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|selnose\(0),
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|Mux0~5_combout\,
	datad => \inst1|Mux0~2_combout\,
	combout => \inst1|Mux0~3_combout\);

-- Location: LCCOMB_X109_Y69_N16
\inst3|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[6]~0_combout\ = (\inst1|Mux3~4_combout\ & ((\inst1|Mux2~1_combout\) # (\inst1|Mux1~1_combout\ $ (!\inst1|Mux0~3_combout\)))) # (!\inst1|Mux3~4_combout\ & ((\inst1|Mux2~1_combout\ $ (\inst1|Mux1~1_combout\)) # (!\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X109_Y69_N26
\inst3|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[5]~1_combout\ = (\inst1|Mux3~4_combout\ & (\inst1|Mux2~1_combout\ & (!\inst1|Mux1~1_combout\ & \inst1|Mux0~3_combout\))) # (!\inst1|Mux3~4_combout\ & (\inst1|Mux0~3_combout\ $ (((!\inst1|Mux2~1_combout\ & \inst1|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X109_Y69_N20
\inst3|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[4]~2_combout\ = (\inst1|Mux2~1_combout\ & ((\inst1|Mux3~4_combout\) # ((!\inst1|Mux0~3_combout\)))) # (!\inst1|Mux2~1_combout\ & ((\inst1|Mux1~1_combout\ & ((!\inst1|Mux0~3_combout\))) # (!\inst1|Mux1~1_combout\ & 
-- (\inst1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X109_Y69_N14
\inst3|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[3]~3_combout\ = (\inst1|Mux2~1_combout\ & ((\inst1|Mux3~4_combout\ & (!\inst1|Mux1~1_combout\ & !\inst1|Mux0~3_combout\)) # (!\inst1|Mux3~4_combout\ & (\inst1|Mux1~1_combout\)))) # (!\inst1|Mux2~1_combout\ & (\inst1|Mux0~3_combout\ & 
-- (\inst1|Mux3~4_combout\ $ (!\inst1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X109_Y69_N24
\inst3|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[2]~4_combout\ = (\inst1|Mux1~1_combout\ & (!\inst1|Mux0~3_combout\ & ((\inst1|Mux3~4_combout\) # (\inst1|Mux2~1_combout\)))) # (!\inst1|Mux1~1_combout\ & (\inst1|Mux3~4_combout\ & (\inst1|Mux2~1_combout\ & \inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X109_Y69_N2
\inst3|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[1]~5_combout\ = (\inst1|Mux2~1_combout\ & ((\inst1|Mux3~4_combout\ & (\inst1|Mux1~1_combout\)) # (!\inst1|Mux3~4_combout\ & ((!\inst1|Mux0~3_combout\))))) # (!\inst1|Mux2~1_combout\ & (\inst1|Mux1~1_combout\ & (\inst1|Mux3~4_combout\ $ 
-- (\inst1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X109_Y69_N12
\inst3|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[0]~6_combout\ = (\inst1|Mux1~1_combout\ & (!\inst1|Mux2~1_combout\ & (\inst1|Mux3~4_combout\ $ (!\inst1|Mux0~3_combout\)))) # (!\inst1|Mux1~1_combout\ & (!\inst1|Mux3~4_combout\ & (\inst1|Mux2~1_combout\ $ (\inst1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst3|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X109_Y14_N6
\inst1|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X111_Y14_N30
\inst1|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le4a\(2) = (\inst1|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\SW[6]~input_o\ $ (\inst1|Mult0|auto_generated|le4a\(5))))) # (!\inst1|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[5]~input_o\ & 
-- ((\inst1|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \inst1|Mult0|auto_generated|le4a\(5),
	combout => \inst1|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X111_Y14_N28
\inst1|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X111_Y14_N16
\inst1|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_1~4_combout\ = ((\inst1|Mult0|auto_generated|le4a\(2) $ (\inst1|Mult0|auto_generated|le3a\(4) $ (!\inst1|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst1|Mult0|auto_generated|op_1~5\ = CARRY((\inst1|Mult0|auto_generated|le4a\(2) & ((\inst1|Mult0|auto_generated|le3a\(4)) # (!\inst1|Mult0|auto_generated|op_1~3\))) # (!\inst1|Mult0|auto_generated|le4a\(2) & (\inst1|Mult0|auto_generated|le3a\(4) & 
-- !\inst1|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le4a\(2),
	datab => \inst1|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_1~3\,
	combout => \inst1|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst1|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X110_Y14_N22
\inst1|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~8_combout\ = ((\inst1|Mult0|auto_generated|le5a\(0) $ (\inst1|Mult0|auto_generated|op_1~4_combout\ $ (!\inst1|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst1|Mult0|auto_generated|op_3~9\ = CARRY((\inst1|Mult0|auto_generated|le5a\(0) & ((\inst1|Mult0|auto_generated|op_1~4_combout\) # (!\inst1|Mult0|auto_generated|op_3~7\))) # (!\inst1|Mult0|auto_generated|le5a\(0) & 
-- (\inst1|Mult0|auto_generated|op_1~4_combout\ & !\inst1|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le5a\(0),
	datab => \inst1|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_3~7\,
	combout => \inst1|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X111_Y14_N26
\inst1|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X111_Y14_N8
\inst1|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le4a\(3) = (\inst1|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[7]~input_o\ $ (((\inst1|Mult0|auto_generated|le4a\(5)))))) # (!\inst1|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\SW[6]~input_o\ & 
-- \inst1|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst1|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \inst1|Mult0|auto_generated|le4a\(5),
	combout => \inst1|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X111_Y14_N18
\inst1|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_1~6_combout\ = (\inst1|Mult0|auto_generated|le5a\(1) & ((\inst1|Mult0|auto_generated|le4a\(3) & (\inst1|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst1|Mult0|auto_generated|le4a\(3) & 
-- (!\inst1|Mult0|auto_generated|op_1~5\)))) # (!\inst1|Mult0|auto_generated|le5a\(1) & ((\inst1|Mult0|auto_generated|le4a\(3) & (!\inst1|Mult0|auto_generated|op_1~5\)) # (!\inst1|Mult0|auto_generated|le4a\(3) & ((\inst1|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \inst1|Mult0|auto_generated|op_1~7\ = CARRY((\inst1|Mult0|auto_generated|le5a\(1) & (!\inst1|Mult0|auto_generated|le4a\(3) & !\inst1|Mult0|auto_generated|op_1~5\)) # (!\inst1|Mult0|auto_generated|le5a\(1) & ((!\inst1|Mult0|auto_generated|op_1~5\) # 
-- (!\inst1|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le5a\(1),
	datab => \inst1|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_1~5\,
	combout => \inst1|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst1|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X110_Y14_N24
\inst1|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~10_combout\ = (\SW[1]~input_o\ & ((\inst1|Mult0|auto_generated|op_1~6_combout\ & (\inst1|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst1|Mult0|auto_generated|op_1~6_combout\ & (!\inst1|Mult0|auto_generated|op_3~9\)))) # 
-- (!\SW[1]~input_o\ & ((\inst1|Mult0|auto_generated|op_1~6_combout\ & (!\inst1|Mult0|auto_generated|op_3~9\)) # (!\inst1|Mult0|auto_generated|op_1~6_combout\ & ((\inst1|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst1|Mult0|auto_generated|op_3~11\ = CARRY((\SW[1]~input_o\ & (!\inst1|Mult0|auto_generated|op_1~6_combout\ & !\inst1|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((!\inst1|Mult0|auto_generated|op_3~9\) # 
-- (!\inst1|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_3~9\,
	combout => \inst1|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X111_Y14_N10
\inst1|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X111_Y14_N0
\inst1|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X111_Y14_N20
\inst1|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_1~8_combout\ = ((\inst1|Mult0|auto_generated|le5a\(2) $ (\inst1|Mult0|auto_generated|le4a\(4) $ (!\inst1|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst1|Mult0|auto_generated|op_1~9\ = CARRY((\inst1|Mult0|auto_generated|le5a\(2) & ((\inst1|Mult0|auto_generated|le4a\(4)) # (!\inst1|Mult0|auto_generated|op_1~7\))) # (!\inst1|Mult0|auto_generated|le5a\(2) & (\inst1|Mult0|auto_generated|le4a\(4) & 
-- !\inst1|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|le5a\(2),
	datab => \inst1|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_1~7\,
	combout => \inst1|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst1|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X110_Y14_N26
\inst1|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~12_combout\ = ((\SW[1]~input_o\ $ (\inst1|Mult0|auto_generated|op_1~8_combout\ $ (!\inst1|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst1|Mult0|auto_generated|op_3~13\ = CARRY((\SW[1]~input_o\ & ((\inst1|Mult0|auto_generated|op_1~8_combout\) # (!\inst1|Mult0|auto_generated|op_3~11\))) # (!\SW[1]~input_o\ & (\inst1|Mult0|auto_generated|op_1~8_combout\ & 
-- !\inst1|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst1|Mult0|auto_generated|op_3~11\,
	combout => \inst1|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst1|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X112_Y14_N18
\inst1|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst1|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X111_Y14_N22
\inst1|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_1~10_combout\ = \inst1|Mult0|auto_generated|le4a\(5) $ (\inst1|Mult0|auto_generated|op_1~9\ $ (!\inst1|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mult0|auto_generated|le4a\(5),
	datad => \inst1|Mult0|auto_generated|le5a\(3),
	cin => \inst1|Mult0|auto_generated|op_1~9\,
	combout => \inst1|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X110_Y14_N28
\inst1|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mult0|auto_generated|op_3~14_combout\ = \SW[1]~input_o\ $ (\inst1|Mult0|auto_generated|op_1~10_combout\ $ (!\inst1|Mult0|auto_generated|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|Mult0|auto_generated|op_1~10_combout\,
	cin => \inst1|Mult0|auto_generated|op_3~13\,
	combout => \inst1|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X110_Y14_N8
\inst4|decOut_n[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~26_combout\ = (\inst1|Mult0|auto_generated|op_3~8_combout\ & (!\inst1|Mult0|auto_generated|op_3~14_combout\ & (\inst1|Mult0|auto_generated|op_3~10_combout\ $ (!\inst1|Mult0|auto_generated|op_3~12_combout\)))) # 
-- (!\inst1|Mult0|auto_generated|op_3~8_combout\ & (!\inst1|Mult0|auto_generated|op_3~10_combout\ & (\inst1|Mult0|auto_generated|op_3~12_combout\ $ (!\inst1|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst4|decOut_n[6]~26_combout\);

-- Location: LCCOMB_X110_Y14_N30
\inst4|decOut_n[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~31_combout\ = (\SW[10]~input_o\) # ((\inst4|decOut_n[6]~26_combout\) # ((\SW[8]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst4|decOut_n[6]~26_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst4|decOut_n[6]~31_combout\);

-- Location: LCCOMB_X110_Y14_N12
\inst4|decOut_n[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[5]~12_combout\ = (\inst1|Mult0|auto_generated|op_3~8_combout\ & (\inst1|Mult0|auto_generated|op_3~14_combout\ $ (((\inst1|Mult0|auto_generated|op_3~10_combout\) # (!\inst1|Mult0|auto_generated|op_3~12_combout\))))) # 
-- (!\inst1|Mult0|auto_generated|op_3~8_combout\ & (\inst1|Mult0|auto_generated|op_3~10_combout\ & (!\inst1|Mult0|auto_generated|op_3~12_combout\ & !\inst1|Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst4|decOut_n[5]~12_combout\);

-- Location: LCCOMB_X110_Y14_N6
\inst4|decOut_n[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[5]~35_combout\ = (!\SW[10]~input_o\ & (\inst4|decOut_n[5]~12_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst4|decOut_n[5]~12_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst4|decOut_n[5]~35_combout\);

-- Location: LCCOMB_X110_Y14_N2
\inst4|decOut_n[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[4]~27_combout\ = (\inst1|Mult0|auto_generated|op_3~10_combout\ & (\inst1|Mult0|auto_generated|op_3~8_combout\ & ((!\inst1|Mult0|auto_generated|op_3~14_combout\)))) # (!\inst1|Mult0|auto_generated|op_3~10_combout\ & 
-- ((\inst1|Mult0|auto_generated|op_3~12_combout\ & ((!\inst1|Mult0|auto_generated|op_3~14_combout\))) # (!\inst1|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst4|decOut_n[4]~27_combout\);

-- Location: LCCOMB_X110_Y14_N0
\inst4|decOut_n[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[4]~32_combout\ = (!\SW[10]~input_o\ & (\inst4|decOut_n[4]~27_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst4|decOut_n[4]~27_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst4|decOut_n[4]~32_combout\);

-- Location: LCCOMB_X110_Y14_N4
\inst4|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[3]~28_combout\ = (\inst1|Mult0|auto_generated|op_3~10_combout\ & ((\inst1|Mult0|auto_generated|op_3~8_combout\ & (\inst1|Mult0|auto_generated|op_3~12_combout\)) # (!\inst1|Mult0|auto_generated|op_3~8_combout\ & 
-- (!\inst1|Mult0|auto_generated|op_3~12_combout\ & \inst1|Mult0|auto_generated|op_3~14_combout\)))) # (!\inst1|Mult0|auto_generated|op_3~10_combout\ & (!\inst1|Mult0|auto_generated|op_3~14_combout\ & (\inst1|Mult0|auto_generated|op_3~8_combout\ $ 
-- (\inst1|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst4|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X110_Y14_N10
\inst4|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[3]~33_combout\ = (!\SW[10]~input_o\ & (\inst4|decOut_n[3]~28_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst4|decOut_n[3]~28_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst4|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X109_Y14_N18
\inst4|decOut_n[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[2]~21_combout\ = (\inst1|Mult0|auto_generated|op_3~14_combout\ & (\inst1|Mult0|auto_generated|op_3~12_combout\ & ((\inst1|Mult0|auto_generated|op_3~10_combout\) # (!\inst1|Mult0|auto_generated|op_3~8_combout\)))) # 
-- (!\inst1|Mult0|auto_generated|op_3~14_combout\ & (!\inst1|Mult0|auto_generated|op_3~8_combout\ & (!\inst1|Mult0|auto_generated|op_3~12_combout\ & \inst1|Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst4|decOut_n[2]~21_combout\);

-- Location: LCCOMB_X109_Y14_N12
\inst4|decOut_n[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[2]~36_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \inst4|decOut_n[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst4|decOut_n[2]~21_combout\,
	combout => \inst4|decOut_n[2]~36_combout\);

-- Location: LCCOMB_X109_Y14_N24
\inst4|decOut_n[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[1]~29_combout\ = (\inst1|Mult0|auto_generated|op_3~14_combout\ & ((\inst1|Mult0|auto_generated|op_3~8_combout\ & ((\inst1|Mult0|auto_generated|op_3~10_combout\))) # (!\inst1|Mult0|auto_generated|op_3~8_combout\ & 
-- (\inst1|Mult0|auto_generated|op_3~12_combout\)))) # (!\inst1|Mult0|auto_generated|op_3~14_combout\ & (\inst1|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Mult0|auto_generated|op_3~8_combout\ $ (\inst1|Mult0|auto_generated|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst1|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst4|decOut_n[1]~29_combout\);

-- Location: LCCOMB_X109_Y14_N8
\inst4|decOut_n[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[1]~34_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \inst4|decOut_n[1]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst4|decOut_n[1]~29_combout\,
	combout => \inst4|decOut_n[1]~34_combout\);

-- Location: LCCOMB_X109_Y14_N22
\inst1|m[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|m[1]~11_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \inst1|Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst1|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst1|m[1]~11_combout\);

-- Location: LCCOMB_X109_Y14_N4
\inst1|m[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|m[3]~10_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \inst1|Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst1|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst1|m[3]~10_combout\);

-- Location: LCCOMB_X109_Y14_N26
\inst1|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|m[2]~9_combout\ = (\inst1|Mult0|auto_generated|op_3~12_combout\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~12_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|m[2]~9_combout\);

-- Location: LCCOMB_X109_Y14_N16
\inst1|m[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|m[0]~8_combout\ = ((\SW[8]~input_o\) # ((\SW[10]~input_o\) # (!\SW[9]~input_o\))) # (!\inst1|Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|op_3~8_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|m[0]~8_combout\);

-- Location: LCCOMB_X109_Y14_N10
\inst4|decOut_n[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[0]~30_combout\ = (\inst1|m[3]~10_combout\ & (!\inst1|m[0]~8_combout\ & (\inst1|m[1]~11_combout\ $ (\inst1|m[2]~9_combout\)))) # (!\inst1|m[3]~10_combout\ & (!\inst1|m[1]~11_combout\ & (\inst1|m[2]~9_combout\ $ (!\inst1|m[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|m[1]~11_combout\,
	datab => \inst1|m[3]~10_combout\,
	datac => \inst1|m[2]~9_combout\,
	datad => \inst1|m[0]~8_combout\,
	combout => \inst4|decOut_n[0]~30_combout\);

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

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


