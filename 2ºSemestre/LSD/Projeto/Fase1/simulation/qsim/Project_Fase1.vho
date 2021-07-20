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

-- DATE "05/26/2020 13:41:12"

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

ENTITY 	ALU8 IS
    PORT (
	op0 : IN std_logic_vector(7 DOWNTO 0);
	op1 : IN std_logic_vector(7 DOWNTO 0);
	ALUOp : IN std_logic_vector(3 DOWNTO 0);
	res : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ALU8;

-- Design Ports Information
-- res[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op0[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALUOp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_res : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \res[0]~output_o\ : std_logic;
SIGNAL \res[1]~output_o\ : std_logic;
SIGNAL \res[2]~output_o\ : std_logic;
SIGNAL \res[3]~output_o\ : std_logic;
SIGNAL \res[4]~output_o\ : std_logic;
SIGNAL \res[5]~output_o\ : std_logic;
SIGNAL \res[6]~output_o\ : std_logic;
SIGNAL \res[7]~output_o\ : std_logic;
SIGNAL \ALUOp[0]~input_o\ : std_logic;
SIGNAL \ALUOp[1]~input_o\ : std_logic;
SIGNAL \op1[3]~input_o\ : std_logic;
SIGNAL \op1[2]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \op1[1]~input_o\ : std_logic;
SIGNAL \op0[0]~input_o\ : std_logic;
SIGNAL \op1[0]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \op0[6]~input_o\ : std_logic;
SIGNAL \op0[7]~input_o\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \op0[4]~input_o\ : std_logic;
SIGNAL \op0[5]~input_o\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \op0[1]~input_o\ : std_logic;
SIGNAL \op0[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \op0[2]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \op1[4]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \op1[5]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \op1[7]~input_o\ : std_logic;
SIGNAL \op1[6]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \ALUOp[3]~input_o\ : std_logic;
SIGNAL \ALUOp[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \res~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~20_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux4~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Mux4~22_combout\ : std_logic;
SIGNAL \Mux4~23_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux4~19_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \res~1_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~17_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_op0 <= op0;
ww_op1 <= op1;
ww_ALUOp <= ALUOp;
res <= ww_res;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\op0[7]~input_o\ & \op0[6]~input_o\ & \op0[5]~input_o\ & \op0[4]~input_o\ & \op0[3]~input_o\ & \op0[2]~input_o\ & \op0[1]~input_o\ & \op0[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\op1[7]~input_o\ & \op1[6]~input_o\ & \op1[5]~input_o\ & \op1[4]~input_o\ & \op1[3]~input_o\ & \op1[2]~input_o\ & \op1[1]~input_o\ & \op1[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\op0[7]~input_o\ & \op0[6]~input_o\ & \op0[5]~input_o\ & \op0[4]~input_o\ & \op0[3]~input_o\ & \op0[2]~input_o\ & \op0[1]~input_o\ & \op0[0]~input_o\ & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\op1[7]~input_o\ & \op1[6]~input_o\ & \op1[5]~input_o\ & \op1[4]~input_o\ & \op1[3]~input_o\ & \op1[2]~input_o\ & \op1[1]~input_o\ & \op1[0]~input_o\ & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y73_N16
\res[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~8_combout\,
	devoe => ww_devoe,
	o => \res[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\res[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~15_combout\,
	devoe => ww_devoe,
	o => \res[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\res[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~10_combout\,
	devoe => ww_devoe,
	o => \res[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\res[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~18_combout\,
	devoe => ww_devoe,
	o => \res[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\res[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~11_combout\,
	devoe => ww_devoe,
	o => \res[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\res[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~15_combout\,
	devoe => ww_devoe,
	o => \res[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\res[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~10_combout\,
	devoe => ww_devoe,
	o => \res[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\res[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~7_combout\,
	devoe => ww_devoe,
	o => \res[7]~output_o\);

-- Location: IOIBUF_X65_Y73_N15
\ALUOp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(0),
	o => \ALUOp[0]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\ALUOp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(1),
	o => \ALUOp[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\op1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(3),
	o => \op1[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\op1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(2),
	o => \op1[2]~input_o\);

-- Location: LCCOMB_X66_Y71_N0
\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (!\op1[3]~input_o\ & !\op1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datac => \op1[2]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\op1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(1),
	o => \op1[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\op0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(0),
	o => \op0[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\op1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(0),
	o => \op1[0]~input_o\);

-- Location: LCCOMB_X70_Y71_N26
\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\ShiftLeft0~0_combout\ & (!\op1[1]~input_o\ & (\op0[0]~input_o\ & !\op1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \op1[1]~input_o\,
	datac => \op0[0]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: IOIBUF_X67_Y73_N22
\op0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(6),
	o => \op0[6]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\op0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(7),
	o => \op0[7]~input_o\);

-- Location: LCCOMB_X66_Y72_N24
\ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\op1[0]~input_o\ & ((\op0[7]~input_o\))) # (!\op1[0]~input_o\ & (\op0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[6]~input_o\,
	datab => \op0[7]~input_o\,
	datac => \op1[0]~input_o\,
	combout => \ShiftRight1~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
\op0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(4),
	o => \op0[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\op0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(5),
	o => \op0[5]~input_o\);

-- Location: LCCOMB_X66_Y72_N22
\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (!\op1[1]~input_o\ & ((\op1[0]~input_o\ & ((\op0[5]~input_o\))) # (!\op1[0]~input_o\ & (\op0[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op0[4]~input_o\,
	datac => \op1[0]~input_o\,
	datad => \op0[5]~input_o\,
	combout => \ShiftRight0~2_combout\);

-- Location: LCCOMB_X66_Y72_N10
\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\ShiftRight0~2_combout\) # ((\ShiftRight1~0_combout\ & \op1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~0_combout\,
	datac => \ShiftRight0~2_combout\,
	datad => \op1[1]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: IOIBUF_X69_Y73_N22
\op0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(1),
	o => \op0[1]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\op0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(3),
	o => \op0[3]~input_o\);

-- Location: LCCOMB_X66_Y72_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\op1[1]~input_o\ & ((\op0[3]~input_o\))) # (!\op1[1]~input_o\ & (\op0[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[1]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op0[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\op0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op0(2),
	o => \op0[2]~input_o\);

-- Location: LCCOMB_X66_Y72_N0
\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (!\op1[0]~input_o\ & ((\op1[1]~input_o\ & (\op0[2]~input_o\)) # (!\op1[1]~input_o\ & ((\op0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[2]~input_o\,
	datab => \op0[0]~input_o\,
	datac => \op1[0]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X66_Y72_N4
\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\ShiftLeft0~0_combout\ & ((\ShiftRight0~0_combout\) # ((\Mux6~0_combout\ & \op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \op1[0]~input_o\,
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: LCCOMB_X66_Y72_N28
\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\ShiftRight0~1_combout\) # ((\ShiftRight0~3_combout\ & (\op1[2]~input_o\ & !\op1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datab => \ShiftRight0~1_combout\,
	datac => \op1[2]~input_o\,
	datad => \op1[3]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X70_Y71_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ALUOp[0]~input_o\ & ((\ALUOp[1]~input_o\) # ((\ShiftRight0~4_combout\)))) # (!\ALUOp[0]~input_o\ & (!\ALUOp[1]~input_o\ & (\ShiftLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \ShiftLeft0~1_combout\,
	datad => \ShiftRight0~4_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X70_Y71_N24
\ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (\ShiftRight0~4_combout\) # ((\op1[3]~input_o\ & \op0[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datac => \op0[7]~input_o\,
	datad => \ShiftRight0~4_combout\,
	combout => \ShiftRight1~1_combout\);

-- Location: IOIBUF_X60_Y73_N15
\op1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(4),
	o => \op1[4]~input_o\);

-- Location: LCCOMB_X69_Y72_N2
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = \op0[4]~input_o\ $ (\op1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[4]~input_o\,
	datac => \op1[4]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X70_Y72_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\op1[1]~input_o\ & (\op0[1]~input_o\ & (\op0[0]~input_o\ $ (!\op1[0]~input_o\)))) # (!\op1[1]~input_o\ & (!\op0[1]~input_o\ & (\op0[0]~input_o\ $ (!\op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op0[0]~input_o\,
	datac => \op0[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X67_Y72_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = \op0[3]~input_o\ $ (\op1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op0[3]~input_o\,
	datac => \op1[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X70_Y72_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (!\Equal0~1_combout\ & (\op1[2]~input_o\ $ (!\op0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[2]~input_o\,
	datab => \op0[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X74_Y73_N22
\op1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(5),
	o => \op1[5]~input_o\);

-- Location: LCCOMB_X72_Y72_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = \op0[5]~input_o\ $ (\op1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[5]~input_o\,
	datac => \op1[5]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X81_Y73_N1
\op1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(7),
	o => \op1[7]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\op1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(6),
	o => \op1[6]~input_o\);

-- Location: LCCOMB_X69_Y72_N8
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\op0[6]~input_o\ & (\op1[6]~input_o\ & (\op1[7]~input_o\ $ (!\op0[7]~input_o\)))) # (!\op0[6]~input_o\ & (!\op1[6]~input_o\ & (\op1[7]~input_o\ $ (!\op0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[6]~input_o\,
	datab => \op1[7]~input_o\,
	datac => \op0[7]~input_o\,
	datad => \op1[6]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X70_Y72_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Equal0~4_combout\ & (\Equal0~2_combout\ & (!\Equal0~5_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X70_Y71_N6
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\Equal0~6_combout\) # (!\ALUOp[1]~input_o\)))) # (!\Mux7~0_combout\ & (\ShiftRight1~1_combout\ & (\ALUOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \ShiftRight1~1_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \Equal0~6_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X69_Y71_N16
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\op1[0]~input_o\ & !\op0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[0]~input_o\,
	datab => \op0[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X69_Y71_N18
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\op1[1]~input_o\ & (\op0[1]~input_o\ & !\LessThan0~1_cout\)) # (!\op1[1]~input_o\ & ((\op0[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op0[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X69_Y71_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\op0[2]~input_o\ & (\op1[2]~input_o\ & !\LessThan0~3_cout\)) # (!\op0[2]~input_o\ & ((\op1[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[2]~input_o\,
	datab => \op1[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X69_Y71_N22
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\op0[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\op1[3]~input_o\))) # (!\op0[3]~input_o\ & (!\op1[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[3]~input_o\,
	datab => \op1[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X69_Y71_N24
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\op0[4]~input_o\ & (\op1[4]~input_o\ & !\LessThan0~7_cout\)) # (!\op0[4]~input_o\ & ((\op1[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[4]~input_o\,
	datab => \op1[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X69_Y71_N26
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\op1[5]~input_o\ & (\op0[5]~input_o\ & !\LessThan0~9_cout\)) # (!\op1[5]~input_o\ & ((\op0[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[5]~input_o\,
	datab => \op0[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X69_Y71_N28
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\op1[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\op0[6]~input_o\))) # (!\op1[6]~input_o\ & (!\op0[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[6]~input_o\,
	datab => \op0[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X69_Y71_N30
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\op0[7]~input_o\ & (\LessThan0~13_cout\ & \op1[7]~input_o\)) # (!\op0[7]~input_o\ & ((\LessThan0~13_cout\) # (\op1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op0[7]~input_o\,
	datad => \op1[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X69_Y71_N0
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\op1[0]~input_o\ & \op0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[0]~input_o\,
	datab => \op0[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X69_Y71_N2
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\op1[1]~input_o\ & ((!\LessThan1~1_cout\) # (!\op0[1]~input_o\))) # (!\op1[1]~input_o\ & (!\op0[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op0[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X69_Y71_N4
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\op0[2]~input_o\ & ((!\LessThan1~3_cout\) # (!\op1[2]~input_o\))) # (!\op0[2]~input_o\ & (!\op1[2]~input_o\ & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[2]~input_o\,
	datab => \op1[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X69_Y71_N6
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\op0[3]~input_o\ & (\op1[3]~input_o\ & !\LessThan1~5_cout\)) # (!\op0[3]~input_o\ & ((\op1[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[3]~input_o\,
	datab => \op1[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X69_Y71_N8
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\op0[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\op1[4]~input_o\))) # (!\op0[4]~input_o\ & (!\op1[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[4]~input_o\,
	datab => \op1[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X69_Y71_N10
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\op1[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\op0[5]~input_o\))) # (!\op1[5]~input_o\ & (!\op0[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[5]~input_o\,
	datab => \op0[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X69_Y71_N12
\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\op1[6]~input_o\ & (\op0[6]~input_o\ & !\LessThan1~11_cout\)) # (!\op1[6]~input_o\ & ((\op0[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[6]~input_o\,
	datab => \op0[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X69_Y71_N14
\LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\op0[7]~input_o\ & ((\LessThan1~13_cout\) # (!\op1[7]~input_o\))) # (!\op0[7]~input_o\ & (\LessThan1~13_cout\ & !\op1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op0[7]~input_o\,
	datad => \op1[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X70_Y71_N18
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\ALUOp[1]~input_o\ & ((\LessThan1~14_combout\))) # (!\ALUOp[1]~input_o\ & (\LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~14_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \LessThan1~14_combout\,
	combout => \Mux7~7_combout\);

-- Location: IOIBUF_X62_Y73_N22
\ALUOp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(3),
	o => \ALUOp[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\ALUOp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(2),
	o => \ALUOp[2]~input_o\);

-- Location: LCCOMB_X67_Y71_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \ALUOp[0]~input_o\ $ (\op1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datac => \op1[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X67_Y71_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X67_Y71_N14
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\op0[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\op0[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\op0[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\op0[0]~input_o\ & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X70_Y71_N12
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & ((\op0[0]~input_o\) # (\op1[0]~input_o\))) # (!\ALUOp[0]~input_o\ & (\op0[0]~input_o\ & \op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \op0[0]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X70_Y71_N14
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\) # ((!\ALUOp[1]~input_o\ & \Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[1]~input_o\,
	datac => \Add0~3_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: DSPMULT_X71_Y72_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y72_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X71_Y71_N0
\Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y71_N2
\Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y71_N8
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\ALUOp[0]~input_o\ & ((\ALUOp[1]~input_o\) # ((!\op0[0]~input_o\ & !\op1[0]~input_o\)))) # (!\ALUOp[0]~input_o\ & (!\ALUOp[1]~input_o\ & (\op0[0]~input_o\ $ (\op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \op0[0]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X70_Y71_N10
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\ALUOp[1]~input_o\ & ((\Mux7~2_combout\ & ((\Mult1|auto_generated|mac_out2~dataout\))) # (!\Mux7~2_combout\ & (\Mult0|auto_generated|mac_out2~dataout\)))) # (!\ALUOp[1]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult1|auto_generated|mac_out2~dataout\,
	datac => \ALUOp[1]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X70_Y71_N16
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\ALUOp[3]~input_o\ & (\ALUOp[2]~input_o\)) # (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & ((\Mux7~3_combout\))) # (!\ALUOp[2]~input_o\ & (\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \ALUOp[2]~input_o\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X70_Y71_N4
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\ALUOp[3]~input_o\ & ((\Mux7~6_combout\ & ((\Mux7~7_combout\))) # (!\Mux7~6_combout\ & (\Mux7~1_combout\)))) # (!\ALUOp[3]~input_o\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~7_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X67_Y72_N22
\Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\)) # (!\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & (!\op0[1]~input_o\ & !\op1[1]~input_o\)) # (!\ALUOp[0]~input_o\ & (\op0[1]~input_o\ $ (\op1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \op0[1]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X67_Y72_N0
\Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (\ALUOp[1]~input_o\ & ((\Mux6~13_combout\ & (\Mult1|auto_generated|mac_out2~DATAOUT1\)) # (!\Mux6~13_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\))))) # (!\ALUOp[1]~input_o\ & (((\Mux6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mux6~13_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X66_Y71_N10
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\ALUOp[3]~input_o\ & ((\op1[1]~input_o\ & ((\ALUOp[0]~input_o\) # (\op0[1]~input_o\))) # (!\op1[1]~input_o\ & (\ALUOp[0]~input_o\ & \op0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[3]~input_o\,
	datad => \op0[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X66_Y71_N30
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\op0[7]~input_o\ & ((\op1[3]~input_o\) # ((\op1[2]~input_o\ & \op1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \op1[2]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op0[7]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X66_Y71_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\ALUOp[0]~input_o\ & \ALUOp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X66_Y71_N24
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\ALUOp[1]~input_o\ & ((\Mux6~1_combout\) # ((\Mux6~2_combout\ & \Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \ALUOp[1]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X66_Y71_N2
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \op1[1]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X67_Y71_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\op0[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\op0[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\op0[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \op0[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X66_Y71_N20
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\) # ((!\ALUOp[1]~input_o\ & (!\ALUOp[3]~input_o\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X69_Y72_N4
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\op1[0]~input_o\ & ((\op0[6]~input_o\))) # (!\op1[0]~input_o\ & (\op0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[5]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \op0[6]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X66_Y72_N6
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\op1[1]~input_o\ & ((\op0[4]~input_o\))) # (!\op1[1]~input_o\ & (\op0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[2]~input_o\,
	datab => \op0[4]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X66_Y72_N8
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (!\op1[2]~input_o\ & ((\op1[0]~input_o\ & (\Mux6~5_combout\)) # (!\op1[0]~input_o\ & ((\Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \op1[2]~input_o\,
	datac => \op1[0]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X68_Y72_N0
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\) # ((\Mux2~4_combout\ & (\op1[2]~input_o\ & !\op1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \op1[2]~input_o\,
	datac => \Mux6~6_combout\,
	datad => \op1[1]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X70_Y72_N6
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\op1[1]~input_o\ & (\op0[7]~input_o\ & !\op1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datac => \op0[7]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X70_Y72_N0
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (!\op1[1]~input_o\ & ((\op1[0]~input_o\ & (\op0[0]~input_o\)) # (!\op1[0]~input_o\ & ((\op0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op0[0]~input_o\,
	datac => \op0[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X70_Y72_N10
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\ALUOp[0]~input_o\ & (\Mux6~8_combout\ & (\op1[2]~input_o\))) # (!\ALUOp[0]~input_o\ & (((!\op1[2]~input_o\ & \Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \op1[2]~input_o\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X67_Y72_N18
\Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\ALUOp[1]~input_o\ & (\Mux6~7_combout\ & ((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\Mux6~10_combout\) # ((\Mux6~7_combout\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux6~7_combout\,
	datac => \Mux6~10_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X67_Y72_N28
\Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (\Mux6~4_combout\) # ((\ALUOp[3]~input_o\ & (!\op1[3]~input_o\ & \Mux6~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \op1[3]~input_o\,
	datac => \Mux6~4_combout\,
	datad => \Mux6~11_combout\,
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X67_Y72_N2
\Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (\ALUOp[2]~input_o\ & (!\ALUOp[3]~input_o\ & (\Mux6~14_combout\))) # (!\ALUOp[2]~input_o\ & (((\Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \Mux6~14_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \Mux6~12_combout\,
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X66_Y72_N18
\ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\op1[1]~input_o\ & ((\op0[5]~input_o\))) # (!\op1[1]~input_o\ & (\op0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[3]~input_o\,
	datab => \op0[5]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \ShiftRight1~2_combout\);

-- Location: LCCOMB_X66_Y72_N20
\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (!\op1[2]~input_o\ & ((\op1[0]~input_o\ & ((\ShiftRight1~2_combout\))) # (!\op1[0]~input_o\ & (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \op1[2]~input_o\,
	datac => \op1[0]~input_o\,
	datad => \ShiftRight1~2_combout\,
	combout => \ShiftRight0~5_combout\);

-- Location: LCCOMB_X68_Y72_N10
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (!\op1[1]~input_o\ & (!\op1[0]~input_o\ & \op1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op1[0]~input_o\,
	datad => \op1[2]~input_o\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X68_Y72_N4
\ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = (!\op1[3]~input_o\ & ((\ShiftRight0~5_combout\) # ((\op0[6]~input_o\ & \Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \op0[6]~input_o\,
	datac => \op1[3]~input_o\,
	datad => \Mux4~10_combout\,
	combout => \ShiftRight1~3_combout\);

-- Location: LCCOMB_X66_Y71_N14
\ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\op1[3]~input_o\) # ((\op1[2]~input_o\ & ((\op1[1]~input_o\) # (\op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \op1[2]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \ShiftRight1~4_combout\);

-- Location: LCCOMB_X68_Y71_N12
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\ALUOp[3]~input_o\ & (\ALUOp[1]~input_o\ & (!\ALUOp[2]~input_o\ & !\ALUOp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X68_Y71_N30
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~5_combout\ & ((\ShiftRight1~3_combout\) # ((\op0[7]~input_o\ & \ShiftRight1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \ShiftRight1~3_combout\,
	datac => \ShiftRight1~4_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X68_Y71_N26
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\op0[2]~input_o\ & (\ALUOp[2]~input_o\ $ (((\op1[2]~input_o\) # (\ALUOp[0]~input_o\))))) # (!\op0[2]~input_o\ & ((\ALUOp[2]~input_o\ & (\op1[2]~input_o\ $ (\ALUOp[0]~input_o\))) # (!\ALUOp[2]~input_o\ & (\op1[2]~input_o\ & 
-- \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[2]~input_o\,
	datab => \ALUOp[2]~input_o\,
	datac => \op1[2]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X68_Y71_N8
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\ALUOp[0]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT2\)) # (!\ALUOp[0]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \ALUOp[0]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X68_Y71_N28
\Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[2]~input_o\ & ((\Mux5~7_combout\))) # (!\ALUOp[2]~input_o\ & (\Mux5~8_combout\)))) # (!\ALUOp[1]~input_o\ & (\Mux5~8_combout\ & ((\ALUOp[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \ALUOp[1]~input_o\,
	datac => \Mux5~7_combout\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X67_Y71_N2
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \ALUOp[0]~input_o\ $ (\op1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datac => \op1[2]~input_o\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X67_Y71_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\op0[2]~input_o\ & ((\Add0~9_combout\ & (\Add0~7\ & VCC)) # (!\Add0~9_combout\ & (!\Add0~7\)))) # (!\op0[2]~input_o\ & ((\Add0~9_combout\ & (!\Add0~7\)) # (!\Add0~9_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~11\ = CARRY((\op0[2]~input_o\ & (!\Add0~9_combout\ & !\Add0~7\)) # (!\op0[2]~input_o\ & ((!\Add0~7\) # (!\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[2]~input_o\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X65_Y71_N0
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (!\ALUOp[1]~input_o\ & !\ALUOp[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \ALUOp[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X66_Y72_N30
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\ShiftRight0~5_combout\) # ((!\op1[1]~input_o\ & (\ShiftRight1~0_combout\ & \op1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \ShiftRight1~0_combout\,
	datac => \op1[2]~input_o\,
	datad => \ShiftRight0~5_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X70_Y72_N12
\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (!\op1[0]~input_o\ & ((\op1[1]~input_o\ & (\op0[0]~input_o\)) # (!\op1[1]~input_o\ & ((\op0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op0[0]~input_o\,
	datac => \op0[2]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X70_Y72_N22
\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\ShiftLeft0~2_combout\) # ((!\op1[1]~input_o\ & (\op1[0]~input_o\ & \op0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \op0[1]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X69_Y72_N28
\Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (!\op1[2]~input_o\ & (!\op1[3]~input_o\ & (!\ALUOp[0]~input_o\ & \ShiftLeft0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[2]~input_o\,
	datab => \op1[3]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \ShiftLeft0~3_combout\,
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X68_Y71_N0
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~12_combout\) # ((\Mux5~2_combout\ & (\ALUOp[0]~input_o\ & !\op1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \op1[3]~input_o\,
	datad => \Mux5~12_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X68_Y71_N10
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Add0~8_combout\ & ((\ALUOp[3]~input_o\ & ((\Mux5~3_combout\))) # (!\ALUOp[3]~input_o\ & (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~8_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X68_Y71_N22
\Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\Mux5~6_combout\) # ((\Mux5~4_combout\) # ((\Mux5~9_combout\ & !\ALUOp[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Mux5~9_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X66_Y71_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \ALUOp[0]~input_o\ $ (\op1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \op1[3]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X67_Y71_N20
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\Add0~12_combout\ $ (\op0[3]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~14\ = CARRY((\Add0~12_combout\ & ((\op0[3]~input_o\) # (!\Add0~11\))) # (!\Add0~12_combout\ & (\op0[3]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \op0[3]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X67_Y72_N10
\Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (\ALUOp[1]~input_o\ & ((\op1[3]~input_o\ & ((\op0[3]~input_o\) # (\ALUOp[0]~input_o\))) # (!\op1[3]~input_o\ & (\op0[3]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \op1[3]~input_o\,
	datac => \op0[3]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X67_Y72_N12
\Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (\Mux4~13_combout\) # ((\Add0~13_combout\ & !\ALUOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \ALUOp[1]~input_o\,
	datad => \Mux4~13_combout\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X67_Y72_N6
\Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\ALUOp[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT3\) # (\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & (\Equal0~1_combout\ & ((!\ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X67_Y72_N20
\res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \res~0_combout\ = (\op0[3]~input_o\) # (\op1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op0[3]~input_o\,
	datac => \op1[3]~input_o\,
	combout => \res~0_combout\);

-- Location: LCCOMB_X67_Y72_N16
\Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (\Mux4~11_combout\ & (((\Mult1|auto_generated|mac_out2~DATAOUT3\) # (!\ALUOp[0]~input_o\)))) # (!\Mux4~11_combout\ & (!\res~0_combout\ & ((\ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => \res~0_combout\,
	datac => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X67_Y72_N14
\Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & ((\Mux4~12_combout\))) # (!\ALUOp[2]~input_o\ & (\Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~14_combout\,
	datab => \ALUOp[3]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \Mux4~12_combout\,
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X66_Y72_N16
\ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (\op1[0]~input_o\ & ((\op1[1]~input_o\ & (\op0[6]~input_o\)) # (!\op1[1]~input_o\ & ((\op0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[6]~input_o\,
	datab => \op0[4]~input_o\,
	datac => \op1[0]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \ShiftRight1~5_combout\);

-- Location: LCCOMB_X66_Y72_N26
\ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\ShiftRight1~5_combout\) # ((!\op1[0]~input_o\ & \ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~5_combout\,
	datac => \op1[0]~input_o\,
	datad => \ShiftRight1~2_combout\,
	combout => \ShiftRight1~6_combout\);

-- Location: LCCOMB_X68_Y72_N24
\Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (\Mux4~10_combout\ & ((\op0[7]~input_o\) # ((\ShiftRight1~6_combout\ & !\op1[2]~input_o\)))) # (!\Mux4~10_combout\ & (\ShiftRight1~6_combout\ & ((!\op1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~10_combout\,
	datab => \ShiftRight1~6_combout\,
	datac => \op0[7]~input_o\,
	datad => \op1[2]~input_o\,
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X68_Y72_N20
\Mux4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~20_combout\ = (!\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & (!\op1[3]~input_o\ & \Mux4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \op1[3]~input_o\,
	datad => \Mux4~16_combout\,
	combout => \Mux4~20_combout\);

-- Location: LCCOMB_X68_Y72_N6
\Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\ALUOp[1]~input_o\ & !\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X68_Y72_N30
\Mux4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~21_combout\ = (\Mux5~11_combout\ & (\ShiftRight1~6_combout\ & (!\op1[3]~input_o\ & !\op1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~11_combout\,
	datab => \ShiftRight1~6_combout\,
	datac => \op1[3]~input_o\,
	datad => \op1[2]~input_o\,
	combout => \Mux4~21_combout\);

-- Location: LCCOMB_X70_Y72_N18
\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\op1[0]~input_o\ & (\op0[2]~input_o\)) # (!\op1[0]~input_o\ & ((\op0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op1[0]~input_o\,
	datac => \op0[2]~input_o\,
	datad => \op0[3]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X70_Y72_N24
\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\op1[0]~input_o\ & (\op0[0]~input_o\)) # (!\op1[0]~input_o\ & ((\op0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op0[0]~input_o\,
	datac => \op0[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X70_Y72_N4
\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\op1[1]~input_o\ & ((\ShiftLeft0~4_combout\))) # (!\op1[1]~input_o\ & (\ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X69_Y72_N22
\Mux4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~22_combout\ = (\ALUOp[1]~input_o\ & (\op0[7]~input_o\ & (!\ShiftLeft0~0_combout\))) # (!\ALUOp[1]~input_o\ & (((\ShiftLeft0~0_combout\ & \ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \ShiftLeft0~0_combout\,
	datad => \ShiftLeft0~6_combout\,
	combout => \Mux4~22_combout\);

-- Location: LCCOMB_X68_Y72_N28
\Mux4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~23_combout\ = (\Mux4~20_combout\) # ((\Mux4~21_combout\) # ((!\ALUOp[0]~input_o\ & \Mux4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \Mux4~20_combout\,
	datac => \Mux4~21_combout\,
	datad => \Mux4~22_combout\,
	combout => \Mux4~23_combout\);

-- Location: LCCOMB_X67_Y72_N8
\Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = (\Mux4~15_combout\) # ((!\ALUOp[2]~input_o\ & (\ALUOp[3]~input_o\ & \Mux4~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \ALUOp[3]~input_o\,
	datac => \Mux4~15_combout\,
	datad => \Mux4~23_combout\,
	combout => \Mux4~18_combout\);

-- Location: LCCOMB_X65_Y71_N18
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\ALUOp[1]~input_o\ & (((\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\op0[4]~input_o\ & (!\op1[4]~input_o\ & !\ALUOp[0]~input_o\)) # (!\op0[4]~input_o\ & (\op1[4]~input_o\ $ (\ALUOp[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \op0[4]~input_o\,
	datac => \op1[4]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X65_Y71_N12
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~9_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT4\) # ((!\ALUOp[1]~input_o\)))) # (!\Mux3~9_combout\ & (((\ALUOp[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mux3~9_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X65_Y71_N16
\Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~19_combout\ = (\ALUOp[2]~input_o\ & !\ALUOp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux4~19_combout\);

-- Location: LCCOMB_X66_Y72_N12
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\ShiftLeft0~0_combout\ & ((\ShiftRight0~2_combout\) # ((\op1[1]~input_o\ & \ShiftRight1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \ShiftLeft0~0_combout\,
	datac => \ShiftRight0~2_combout\,
	datad => \ShiftRight1~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X70_Y72_N30
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\op1[1]~input_o\ & (((\op0[1]~input_o\)) # (!\op1[0]~input_o\))) # (!\op1[1]~input_o\ & (\op1[0]~input_o\ & ((\op0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \op0[1]~input_o\,
	datad => \op0[3]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X70_Y72_N16
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\op1[2]~input_o\)))) # (!\Mux3~4_combout\ & ((\op1[2]~input_o\ & ((\op0[0]~input_o\))) # (!\op1[2]~input_o\ & (\op0[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \op0[4]~input_o\,
	datac => \op1[2]~input_o\,
	datad => \op0[0]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X70_Y72_N26
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~4_combout\ & (!\Mux3~5_combout\ & ((\op0[2]~input_o\) # (\op1[0]~input_o\)))) # (!\Mux3~4_combout\ & (\Mux3~5_combout\ & ((!\op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux3~5_combout\,
	datac => \op0[2]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X66_Y71_N12
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\ALUOp[0]~input_o\ & (((\Mux3~1_combout\)))) # (!\ALUOp[0]~input_o\ & (!\op1[3]~input_o\ & ((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X66_Y71_N6
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \ALUOp[0]~input_o\ $ (\op1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[0]~input_o\,
	datac => \op1[4]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X67_Y71_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\op0[4]~input_o\ & ((\Add0~15_combout\ & (\Add0~14\ & VCC)) # (!\Add0~15_combout\ & (!\Add0~14\)))) # (!\op0[4]~input_o\ & ((\Add0~15_combout\ & (!\Add0~14\)) # (!\Add0~15_combout\ & ((\Add0~14\) # (GND)))))
-- \Add0~17\ = CARRY((\op0[4]~input_o\ & (!\Add0~15_combout\ & !\Add0~14\)) # (!\op0[4]~input_o\ & ((!\Add0~14\) # (!\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op0[4]~input_o\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X65_Y71_N30
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Add0~8_combout\ & ((\ALUOp[3]~input_o\ & (\Mux3~7_combout\)) # (!\ALUOp[3]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ALUOp[3]~input_o\,
	datac => \Mux3~7_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X66_Y71_N26
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux1~0_combout\ & ((\Mux3~1_combout\) # ((!\ShiftLeft0~0_combout\ & \op0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \op0[7]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X65_Y71_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\ALUOp[3]~input_o\ & ((\op0[4]~input_o\ & ((\op1[4]~input_o\) # (\ALUOp[0]~input_o\))) # (!\op0[4]~input_o\ & (\op1[4]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \op0[4]~input_o\,
	datac => \op1[4]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X65_Y71_N20
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\ALUOp[1]~input_o\ & (!\ALUOp[2]~input_o\ & ((\Mux3~2_combout\) # (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X65_Y71_N22
\Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Mux3~8_combout\) # ((\Mux3~3_combout\) # ((\Mux3~10_combout\ & \Mux4~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~10_combout\,
	datab => \Mux4~19_combout\,
	datac => \Mux3~8_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X67_Y71_N4
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & ((\op0[5]~input_o\) # (\op1[5]~input_o\))) # (!\ALUOp[0]~input_o\ & (\op0[5]~input_o\ & \op1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \op0[5]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \op1[5]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X67_Y71_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \ALUOp[0]~input_o\ $ (\op1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datad => \op1[5]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X67_Y71_N24
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\Add0~18_combout\ $ (\op0[5]~input_o\ $ (!\Add0~17\)))) # (GND)
-- \Add0~20\ = CARRY((\Add0~18_combout\ & ((\op0[5]~input_o\) # (!\Add0~17\))) # (!\Add0~18_combout\ & (\op0[5]~input_o\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \op0[5]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X67_Y71_N0
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\ALUOp[2]~input_o\ & ((\Mux2~5_combout\) # ((!\ALUOp[1]~input_o\ & \Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \Mux2~5_combout\,
	datad => \Add0~19_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X72_Y72_N26
\res~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \res~1_combout\ = (\op0[5]~input_o\) # (\op1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[5]~input_o\,
	datac => \op1[5]~input_o\,
	combout => \res~1_combout\);

-- Location: LCCOMB_X70_Y72_N20
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\) # ((\Mult0|auto_generated|mac_out2~DATAOUT5\)))) # (!\ALUOp[1]~input_o\ & (!\ALUOp[0]~input_o\ & (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \Equal0~5_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X70_Y72_N14
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\ALUOp[0]~input_o\ & ((\Mux2~7_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT5\))) # (!\Mux2~7_combout\ & (!\res~1_combout\)))) # (!\ALUOp[0]~input_o\ & (((\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~1_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X67_Y72_N26
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!\ALUOp[3]~input_o\ & ((\Mux2~6_combout\) # ((\ALUOp[2]~input_o\ & \Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \ALUOp[3]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X68_Y72_N14
\Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\ShiftLeft0~0_combout\ & ((\op1[1]~input_o\ & ((\op0[7]~input_o\))) # (!\op1[1]~input_o\ & (\Mux2~4_combout\)))) # (!\ShiftLeft0~0_combout\ & (((\op0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \op0[7]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X69_Y72_N30
\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\op1[0]~input_o\ & ((\op0[4]~input_o\))) # (!\op1[0]~input_o\ & (\op0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[5]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \op0[4]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X69_Y72_N24
\Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (!\op1[1]~input_o\ & ((\op1[2]~input_o\ & ((\ShiftLeft0~4_combout\))) # (!\op1[2]~input_o\ & (\ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \op1[2]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X69_Y72_N18
\Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\Mux2~11_combout\) # ((\op1[1]~input_o\ & (!\op1[2]~input_o\ & \ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \Mux2~11_combout\,
	datac => \op1[2]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X68_Y72_N26
\Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~17_combout\ = (\ALUOp[1]~input_o\ & (\Mux2~13_combout\)) # (!\ALUOp[1]~input_o\ & (((!\op1[3]~input_o\ & \Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux2~13_combout\,
	datac => \op1[3]~input_o\,
	datad => \Mux2~12_combout\,
	combout => \Mux2~17_combout\);

-- Location: LCCOMB_X68_Y72_N8
\Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = (\op1[1]~input_o\ & (((!\op1[0]~input_o\ & \op0[7]~input_o\)))) # (!\op1[1]~input_o\ & (\Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \op1[0]~input_o\,
	datac => \op0[7]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \Mux2~16_combout\);

-- Location: LCCOMB_X68_Y72_N12
\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (!\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & (!\op1[3]~input_o\ & !\op1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \op1[3]~input_o\,
	datad => \op1[2]~input_o\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X68_Y72_N16
\Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Mux2~17_combout\ & (((\Mux2~16_combout\ & \Mux2~10_combout\)) # (!\ALUOp[0]~input_o\))) # (!\Mux2~17_combout\ & (((\Mux2~16_combout\ & \Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~17_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \Mux2~16_combout\,
	datad => \Mux2~10_combout\,
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X67_Y72_N4
\Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\Mux2~9_combout\) # ((\ALUOp[3]~input_o\ & (!\ALUOp[2]~input_o\ & \Mux2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \ALUOp[3]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \Mux2~14_combout\,
	combout => \Mux2~15_combout\);

-- Location: LCCOMB_X65_Y71_N6
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (!\ALUOp[1]~input_o\ & (\ALUOp[3]~input_o\ & (!\ALUOp[2]~input_o\ & !\op1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[3]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \op1[3]~input_o\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X65_Y71_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (!\ALUOp[1]~input_o\ & (!\ALUOp[2]~input_o\ & !\ALUOp[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X67_Y71_N6
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\ALUOp[0]~input_o\ & ((\ALUOp[1]~input_o\) # ((!\op0[6]~input_o\ & !\op1[6]~input_o\)))) # (!\ALUOp[0]~input_o\ & (!\ALUOp[1]~input_o\ & (\op0[6]~input_o\ $ (\op1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \op0[6]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \op1[6]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X70_Y71_N22
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & (((\Mult1|auto_generated|mac_out2~DATAOUT6\) # (!\ALUOp[1]~input_o\)))) # (!\Mux1~4_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\ALUOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \Mux1~4_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X67_Y71_N10
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \ALUOp[0]~input_o\ $ (\op1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datad => \op1[6]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X67_Y71_N26
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~21_combout\ & ((\op0[6]~input_o\ & (\Add0~20\ & VCC)) # (!\op0[6]~input_o\ & (!\Add0~20\)))) # (!\Add0~21_combout\ & ((\op0[6]~input_o\ & (!\Add0~20\)) # (!\op0[6]~input_o\ & ((\Add0~20\) # (GND)))))
-- \Add0~23\ = CARRY((\Add0~21_combout\ & (!\op0[6]~input_o\ & !\Add0~20\)) # (!\Add0~21_combout\ & ((!\Add0~20\) # (!\op0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \op0[6]~input_o\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X65_Y71_N28
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Add0~24_combout\ & ((\Add0~22_combout\) # ((\Mux4~19_combout\ & \Mux1~5_combout\)))) # (!\Add0~24_combout\ & (\Mux4~19_combout\ & (\Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Mux4~19_combout\,
	datac => \Mux1~5_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X66_Y71_N8
\ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (!\op1[3]~input_o\ & (!\op1[2]~input_o\ & (!\op1[1]~input_o\ & !\op1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \op1[2]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X66_Y71_N18
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\ShiftLeft0~8_combout\ & (\op0[6]~input_o\)) # (!\ShiftLeft0~8_combout\ & ((\op0[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \Mux1~0_combout\,
	datac => \op0[6]~input_o\,
	datad => \op0[7]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X66_Y71_N4
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\ALUOp[3]~input_o\ & ((\op0[6]~input_o\ & ((\ALUOp[0]~input_o\) # (\op1[6]~input_o\))) # (!\op0[6]~input_o\ & (\ALUOp[0]~input_o\ & \op1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[6]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[3]~input_o\,
	datad => \op1[6]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X65_Y71_N8
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\ALUOp[1]~input_o\ & (!\ALUOp[2]~input_o\ & ((\Mux1~1_combout\) # (\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X69_Y72_N12
\ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\op1[0]~input_o\ & ((\op1[1]~input_o\ & ((\op0[3]~input_o\))) # (!\op1[1]~input_o\ & (\op0[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \op0[5]~input_o\,
	datad => \op0[3]~input_o\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X69_Y72_N14
\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (!\op1[0]~input_o\ & ((\op1[1]~input_o\ & ((\op0[4]~input_o\))) # (!\op1[1]~input_o\ & (\op0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[6]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \op0[4]~input_o\,
	datad => \op1[1]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X69_Y72_N16
\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\op1[2]~input_o\ & (((\ShiftLeft0~3_combout\)))) # (!\op1[2]~input_o\ & ((\ShiftLeft0~9_combout\) # ((\ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \op1[2]~input_o\,
	datad => \ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X69_Y72_N10
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (!\op1[1]~input_o\ & ((\op1[0]~input_o\ & (\op0[7]~input_o\)) # (!\op1[0]~input_o\ & ((\op0[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \op1[1]~input_o\,
	datac => \op0[6]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X69_Y72_N20
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\ALUOp[0]~input_o\ & (!\op1[2]~input_o\ & ((\Mux1~7_combout\)))) # (!\ALUOp[0]~input_o\ & (((\ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[2]~input_o\,
	datab => \ShiftLeft0~11_combout\,
	datac => \ALUOp[0]~input_o\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X65_Y71_N24
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\Mux1~6_combout\) # ((\Mux1~3_combout\) # ((\Mux1~9_combout\ & \Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Mux1~6_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X68_Y71_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op0[7]~input_o\ & ((\ALUOp[0]~input_o\) # ((!\ALUOp[2]~input_o\ & \op1[7]~input_o\)))) # (!\op0[7]~input_o\ & (\ALUOp[0]~input_o\ & ((\ALUOp[2]~input_o\) # (\op1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X67_Y72_N30
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (!\ALUOp[1]~input_o\ & (!\ALUOp[3]~input_o\ & (!\ALUOp[2]~input_o\ & \op0[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[3]~input_o\,
	datac => \ALUOp[2]~input_o\,
	datad => \op0[7]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X68_Y71_N18
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = \ALUOp[0]~input_o\ $ (\op1[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[0]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X67_Y71_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \Add0~26_combout\ $ (\Add0~23\ $ (!\Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => \Add0~27_combout\,
	cin => \Add0~23\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X68_Y71_N6
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\ALUOp[2]~input_o\ & (((\Mux0~0_combout\)))) # (!\ALUOp[2]~input_o\ & ((\ALUOp[1]~input_o\ & (\Mux0~0_combout\)) # (!\ALUOp[1]~input_o\ & ((\Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \Add0~28_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X68_Y71_N16
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\ALUOp[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT7\)))) # (!\ALUOp[1]~input_o\ & (\op0[7]~input_o\ $ (((\op1[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \op1[7]~input_o\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X68_Y71_N24
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\ALUOp[1]~input_o\ & (((\Mult1|auto_generated|mac_out2~DATAOUT7\)))) # (!\ALUOp[1]~input_o\ & (!\op0[7]~input_o\ & ((!\op1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	datac => \ALUOp[1]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X68_Y71_N2
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((\Add0~30_combout\) # (!\ALUOp[2]~input_o\)))) # (!\Mux0~1_combout\ & (\Add0~25_combout\ & (\ALUOp[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Add0~25_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \Add0~30_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X68_Y72_N18
\Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (!\ALUOp[1]~input_o\ & !\op1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \op1[3]~input_o\,
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X69_Y72_N6
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\op1[0]~input_o\ & (((!\ALUOp[0]~input_o\ & \op0[6]~input_o\)))) # (!\op1[0]~input_o\ & (\op0[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op0[7]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \op0[6]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X69_Y72_N0
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\op1[1]~input_o\ & (((!\ALUOp[0]~input_o\ & \ShiftLeft0~7_combout\)))) # (!\op1[1]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	datad => \op1[1]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X69_Y72_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\op1[2]~input_o\ & (((!\ALUOp[0]~input_o\ & \ShiftLeft0~6_combout\)))) # (!\op1[2]~input_o\ & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[2]~input_o\,
	datab => \Mux0~4_combout\,
	datac => \ALUOp[0]~input_o\,
	datad => \ShiftLeft0~6_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X68_Y72_N2
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux5~11_combout\ & ((\op0[7]~input_o\) # ((\Mux4~17_combout\ & \Mux0~5_combout\)))) # (!\Mux5~11_combout\ & (\Mux4~17_combout\ & ((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~11_combout\,
	datab => \Mux4~17_combout\,
	datac => \op0[7]~input_o\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X68_Y71_N20
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\ALUOp[3]~input_o\ & (((\Mux0~6_combout\ & !\ALUOp[2]~input_o\)))) # (!\ALUOp[3]~input_o\ & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~6_combout\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux0~7_combout\);

ww_res(0) <= \res[0]~output_o\;

ww_res(1) <= \res[1]~output_o\;

ww_res(2) <= \res[2]~output_o\;

ww_res(3) <= \res[3]~output_o\;

ww_res(4) <= \res[4]~output_o\;

ww_res(5) <= \res[5]~output_o\;

ww_res(6) <= \res[6]~output_o\;

ww_res(7) <= \res[7]~output_o\;
END structure;


