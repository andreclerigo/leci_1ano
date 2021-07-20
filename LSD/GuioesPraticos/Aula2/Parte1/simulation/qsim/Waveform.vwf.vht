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
-- Generated on "02/26/2020 11:02:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Dec2_4En
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Dec2_4En_vhd_vec_tst IS
END Dec2_4En_vhd_vec_tst;
ARCHITECTURE Dec2_4En_arch OF Dec2_4En_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL enable : STD_LOGIC;
SIGNAL inputs : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL outputs : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Dec2_4En
	PORT (
	enable : IN STD_LOGIC;
	inputs : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	outputs : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Dec2_4En
	PORT MAP (
-- list connections between master ports and signals
	enable => enable,
	inputs => inputs,
	outputs => outputs
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 140000 ps;
	enable <= '0';
	WAIT FOR 90000 ps;
	enable <= '1';
	WAIT FOR 130000 ps;
	enable <= '0';
	WAIT FOR 110000 ps;
	enable <= '1';
	WAIT FOR 150000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
-- inputs[1]
t_prcs_inputs_1: PROCESS
BEGIN
	inputs(1) <= '1';
	WAIT FOR 40000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 40000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 240000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 80000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
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
	WAIT FOR 120000 ps;
	inputs(1) <= '1';
WAIT;
END PROCESS t_prcs_inputs_1;
-- inputs[0]
t_prcs_inputs_0: PROCESS
BEGIN
	inputs(0) <= '0';
	WAIT FOR 120000 ps;
	inputs(0) <= '1';
	WAIT FOR 120000 ps;
	inputs(0) <= '0';
	WAIT FOR 120000 ps;
	inputs(0) <= '1';
	WAIT FOR 160000 ps;
	inputs(0) <= '0';
	WAIT FOR 80000 ps;
	inputs(0) <= '1';
	WAIT FOR 40000 ps;
	inputs(0) <= '0';
	WAIT FOR 40000 ps;
	inputs(0) <= '1';
	WAIT FOR 40000 ps;
	inputs(0) <= '0';
	WAIT FOR 40000 ps;
	inputs(0) <= '1';
	WAIT FOR 80000 ps;
	inputs(0) <= '0';
	WAIT FOR 120000 ps;
	inputs(0) <= '1';
WAIT;
END PROCESS t_prcs_inputs_0;
END Dec2_4En_arch;
