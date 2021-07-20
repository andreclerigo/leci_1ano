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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
-- CREATED		"Sat May 30 12:11:26 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MicroProcessor_Visual IS 
	PORT
	(
		RESET :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC
	);
END MicroProcessor_Visual;

ARCHITECTURE bdf_type OF MicroProcessor_Visual IS 

COMPONENT project_fase1
	PORT(CLK : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 EnPC : IN STD_LOGIC;
		 RI : IN STD_LOGIC;
		 RegDst : IN STD_LOGIC;
		 RegWr : IN STD_LOGIC;
		 ALUSrc : IN STD_LOGIC;
		 MemWr : IN STD_LOGIC;
		 MemToReg : IN STD_LOGIC;
		 ALUOp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 func : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Opcode : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT controlunit
	PORT(CLK : IN STD_LOGIC;
		 ResetIn : IN STD_LOGIC;
		 Func : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 ResetOut : OUT STD_LOGIC;
		 EnPC : OUT STD_LOGIC;
		 RI : OUT STD_LOGIC;
		 RegDst : OUT STD_LOGIC;
		 RegWr : OUT STD_LOGIC;
		 ALUSrc : OUT STD_LOGIC;
		 MemWr : OUT STD_LOGIC;
		 MemToReg : OUT STD_LOGIC;
		 ALUOp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(2 DOWNTO 0);


BEGIN 



b2v_inst : project_fase1
PORT MAP(CLK => CLK,
		 Reset => SYNTHESIZED_WIRE_0,
		 EnPC => SYNTHESIZED_WIRE_1,
		 RI => SYNTHESIZED_WIRE_2,
		 RegDst => SYNTHESIZED_WIRE_3,
		 RegWr => SYNTHESIZED_WIRE_4,
		 ALUSrc => SYNTHESIZED_WIRE_5,
		 MemWr => SYNTHESIZED_WIRE_6,
		 MemToReg => SYNTHESIZED_WIRE_7,
		 ALUOp => SYNTHESIZED_WIRE_8,
		 func => SYNTHESIZED_WIRE_9,
		 Opcode => SYNTHESIZED_WIRE_10);


b2v_inst2 : controlunit
PORT MAP(CLK => CLK,
		 ResetIn => RESET,
		 Func => SYNTHESIZED_WIRE_9,
		 Opcode => SYNTHESIZED_WIRE_10,
		 ResetOut => SYNTHESIZED_WIRE_0,
		 EnPC => SYNTHESIZED_WIRE_1,
		 RI => SYNTHESIZED_WIRE_2,
		 RegDst => SYNTHESIZED_WIRE_3,
		 RegWr => SYNTHESIZED_WIRE_4,
		 ALUSrc => SYNTHESIZED_WIRE_5,
		 MemWr => SYNTHESIZED_WIRE_6,
		 MemToReg => SYNTHESIZED_WIRE_7,
		 ALUOp => SYNTHESIZED_WIRE_8);


END bdf_type;