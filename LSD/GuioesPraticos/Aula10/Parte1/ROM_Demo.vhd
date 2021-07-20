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
-- CREATED		"Wed May 13 13:19:53 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ROM_Demo IS 
	PORT
	(
		RESET :  IN  STD_LOGIC;
		CLOCK :  IN  STD_LOGIC;
		DataOut :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ROM_Demo;

ARCHITECTURE bdf_type OF ROM_Demo IS 

COMPONENT rom_16_8
GENERIC (addrBusSize : INTEGER;
			dataBusSize : INTEGER
			);
	PORT(adress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counterupdownn
GENERIC (N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 upDown : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_1 <= '1';



b2v_inst : rom_16_8
GENERIC MAP(addrBusSize => 4,
			dataBusSize => 8
			)
PORT MAP(adress => SYNTHESIZED_WIRE_0,
		 dataOut => DataOut);


b2v_inst2 : counterupdownn
GENERIC MAP(N => 4
			)
PORT MAP(clk => CLOCK,
		 upDown => SYNTHESIZED_WIRE_1,
		 reset => RESET,
		 count => SYNTHESIZED_WIRE_0);



END bdf_type;