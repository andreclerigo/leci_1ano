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

-- DATE "04/15/2020 12:10:11"

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

ENTITY 	ClkDividerN IS
    PORT (
	clkIn : IN std_logic;
	clkOut : BUFFER std_logic
	);
END ClkDividerN;

-- Design Ports Information
-- clkOut	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkIn	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clkIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkOut~output_o\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \clkIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_divCounter~1_combout\ : std_logic;
SIGNAL \s_divCounter~2_combout\ : std_logic;
SIGNAL \s_divCounter~0_combout\ : std_logic;
SIGNAL \s_divCounter~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clkOut~0_combout\ : std_logic;
SIGNAL \clkOut~reg0_q\ : std_logic;
SIGNAL s_divCounter : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkIn <= clkIn;
clkOut <= ww_clkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkIn~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOIBUF_X0_Y36_N8
\clkIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

-- Location: CLKCTRL_G2
\clkIn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkIn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkIn~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y42_N20
\s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~1_combout\ = (!s_divCounter(3) & (s_divCounter(1) $ (s_divCounter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(3),
	datac => s_divCounter(1),
	datad => s_divCounter(0),
	combout => \s_divCounter~1_combout\);

-- Location: FF_X1_Y42_N21
\s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(1));

-- Location: LCCOMB_X1_Y42_N16
\s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~2_combout\ = (!s_divCounter(3) & (s_divCounter(2) $ (((s_divCounter(0) & s_divCounter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(3),
	datab => s_divCounter(0),
	datac => s_divCounter(2),
	datad => s_divCounter(1),
	combout => \s_divCounter~2_combout\);

-- Location: FF_X1_Y42_N17
\s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(2));

-- Location: LCCOMB_X1_Y42_N22
\s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~0_combout\ = (!s_divCounter(0) & (((!s_divCounter(2) & !s_divCounter(1))) # (!s_divCounter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(3),
	datab => s_divCounter(2),
	datac => s_divCounter(0),
	datad => s_divCounter(1),
	combout => \s_divCounter~0_combout\);

-- Location: FF_X1_Y42_N23
\s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(0));

-- Location: LCCOMB_X1_Y42_N30
\s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divCounter~3_combout\ = (s_divCounter(0) & (s_divCounter(2) & (!s_divCounter(3) & s_divCounter(1)))) # (!s_divCounter(0) & (!s_divCounter(2) & (s_divCounter(3) & !s_divCounter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(0),
	datab => s_divCounter(2),
	datac => s_divCounter(3),
	datad => s_divCounter(1),
	combout => \s_divCounter~3_combout\);

-- Location: FF_X1_Y42_N31
\s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divCounter(3));

-- Location: LCCOMB_X1_Y42_N18
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

-- Location: LCCOMB_X1_Y42_N28
\clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~0_combout\ = (\LessThan0~0_combout\ & ((s_divCounter(2) & (!s_divCounter(3))) # (!s_divCounter(2) & ((\clkOut~reg0_q\))))) # (!\LessThan0~0_combout\ & (!s_divCounter(3) & ((\clkOut~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divCounter(3),
	datab => s_divCounter(2),
	datac => \clkOut~reg0_q\,
	datad => \LessThan0~0_combout\,
	combout => \clkOut~0_combout\);

-- Location: FF_X1_Y42_N29
\clkOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkOut~reg0_q\);

ww_clkOut <= \clkOut~output_o\;
END structure;


