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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/26/2020 12:09:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux2_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux2_1_vhd_vec_tst IS
END Mux2_1_vhd_vec_tst;
ARCHITECTURE Mux2_1_arch OF Mux2_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inputs : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL output : STD_LOGIC;
SIGNAL selector : STD_LOGIC;
COMPONENT Mux2_1
	PORT (
	inputs : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	output : OUT STD_LOGIC;
	selector : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux2_1
	PORT MAP (
-- list connections between master ports and signals
	inputs => inputs,
	output => output,
	selector => selector
	);
-- inputs[1]
t_prcs_inputs_1: PROCESS
BEGIN
	inputs(1) <= '0';
	WAIT FOR 160000 ps;
	inputs(1) <= '1';
	WAIT FOR 80000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 40000 ps;
	inputs(1) <= '0';
	WAIT FOR 160000 ps;
	inputs(1) <= '1';
	WAIT FOR 40000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 80000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 40000 ps;
	inputs(1) <= '0';
	WAIT FOR 80000 ps;
	inputs(1) <= '1';
	WAIT FOR 80000 ps;
	inputs(1) <= '0';
	WAIT FOR 80000 ps;
	inputs(1) <= '1';
WAIT;
END PROCESS t_prcs_inputs_1;
-- inputs[0]
t_prcs_inputs_0: PROCESS
BEGIN
	inputs(0) <= '1';
	WAIT FOR 120000 ps;
	inputs(0) <= '0';
	WAIT FOR 40000 ps;
	inputs(0) <= '1';
	WAIT FOR 40000 ps;
	inputs(0) <= '0';
	WAIT FOR 80000 ps;
	inputs(0) <= '1';
	WAIT FOR 240000 ps;
	inputs(0) <= '0';
	WAIT FOR 40000 ps;
	inputs(0) <= '1';
	WAIT FOR 200000 ps;
	inputs(0) <= '0';
	WAIT FOR 40000 ps;
	inputs(0) <= '1';
	WAIT FOR 80000 ps;
	inputs(0) <= '0';
	WAIT FOR 80000 ps;
	inputs(0) <= '1';
WAIT;
END PROCESS t_prcs_inputs_0;

-- selector
t_prcs_selector: PROCESS
BEGIN
	selector <= '0';
	WAIT FOR 40000 ps;
	selector <= '1';
	WAIT FOR 40000 ps;
	selector <= '0';
	WAIT FOR 40000 ps;
	selector <= '1';
	WAIT FOR 120000 ps;
	selector <= '0';
	WAIT FOR 40000 ps;
	selector <= '1';
	WAIT FOR 80000 ps;
	selector <= '0';
	WAIT FOR 40000 ps;
	selector <= '1';
	WAIT FOR 80000 ps;
	selector <= '0';
	WAIT FOR 40000 ps;
	selector <= '1';
	WAIT FOR 160000 ps;
	selector <= '0';
	WAIT FOR 160000 ps;
	selector <= '1';
	WAIT FOR 40000 ps;
	selector <= '0';
WAIT;
END PROCESS t_prcs_selector;
END Mux2_1_arch;
