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

-- DATE "05/31/2020 01:39:20"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MicroProcessor IS
    PORT (
	clk_geral : IN std_logic;
	RESET : IN std_logic;
	fnc : BUFFER std_logic_vector(3 DOWNTO 0);
	PS : BUFFER std_logic_vector(2 DOWNTO 0);
	opcode : BUFFER std_logic_vector(2 DOWNTO 0);
	cnt : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END MicroProcessor;

-- Design Ports Information
-- fnc[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnc[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnc[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnc[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_geral	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MicroProcessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_geral : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_fnc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PS : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ControlUnit|Selector10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_geral~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fnc[0]~output_o\ : std_logic;
SIGNAL \fnc[1]~output_o\ : std_logic;
SIGNAL \fnc[2]~output_o\ : std_logic;
SIGNAL \fnc[3]~output_o\ : std_logic;
SIGNAL \PS[0]~output_o\ : std_logic;
SIGNAL \PS[1]~output_o\ : std_logic;
SIGNAL \PS[2]~output_o\ : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \cnt[0]~output_o\ : std_logic;
SIGNAL \cnt[1]~output_o\ : std_logic;
SIGNAL \cnt[2]~output_o\ : std_logic;
SIGNAL \cnt[3]~output_o\ : std_logic;
SIGNAL \clk_geral~input_o\ : std_logic;
SIGNAL \clk_geral~inputclkctrl_outclk\ : std_logic;
SIGNAL \Datapath|programcounter_12|s_count[0]~3_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \ControlUnit|pState.ResetState~0_combout\ : std_logic;
SIGNAL \ControlUnit|pState.ResetState~q\ : std_logic;
SIGNAL \Datapath|programcounter_12|s_count[1]~0_combout\ : std_logic;
SIGNAL \Datapath|programcounter_12|s_count~1_combout\ : std_logic;
SIGNAL \Datapath|imemory|Mux2~0_combout\ : std_logic;
SIGNAL \Datapath|imemory|Mux1~0_combout\ : std_logic;
SIGNAL \Datapath|imemory|Mux0~0_combout\ : std_logic;
SIGNAL \ControlUnit|Selector10~0_combout\ : std_logic;
SIGNAL \ControlUnit|Selector10~0clkctrl_outclk\ : std_logic;
SIGNAL \ControlUnit|nState.Decode_241~combout\ : std_logic;
SIGNAL \ControlUnit|pState~8_combout\ : std_logic;
SIGNAL \ControlUnit|pState.Decode~q\ : std_logic;
SIGNAL \ControlUnit|nState.Execute_226~combout\ : std_logic;
SIGNAL \ControlUnit|pState~10_combout\ : std_logic;
SIGNAL \ControlUnit|pState.Execute~q\ : std_logic;
SIGNAL \ControlUnit|Selector9~0_combout\ : std_logic;
SIGNAL \ControlUnit|nState.WriteMem~0_combout\ : std_logic;
SIGNAL \ControlUnit|comb~0_combout\ : std_logic;
SIGNAL \ControlUnit|nState.WriteMem_199~combout\ : std_logic;
SIGNAL \ControlUnit|pState~9_combout\ : std_logic;
SIGNAL \ControlUnit|pState.WriteMem~q\ : std_logic;
SIGNAL \ControlUnit|comb~2_combout\ : std_logic;
SIGNAL \ControlUnit|comb~1_combout\ : std_logic;
SIGNAL \ControlUnit|nState.RegUpdate_211~combout\ : std_logic;
SIGNAL \ControlUnit|pState~11_combout\ : std_logic;
SIGNAL \ControlUnit|pState.RegUpdate~q\ : std_logic;
SIGNAL \ControlUnit|Selector9~1_combout\ : std_logic;
SIGNAL \ControlUnit|nState.Fetch_256~combout\ : std_logic;
SIGNAL \ControlUnit|pState~12_combout\ : std_logic;
SIGNAL \ControlUnit|pState.Fetch~q\ : std_logic;
SIGNAL \Datapath|programcounter_12|s_count~2_combout\ : std_logic;
SIGNAL \Datapath|imemory|Mux11~0_combout\ : std_logic;
SIGNAL \Datapath|imemory|Mux10~0_combout\ : std_logic;
SIGNAL \Datapath|imemory|Mux5~0_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr7~combout\ : std_logic;
SIGNAL \ControlUnit|WideOr6~combout\ : std_logic;
SIGNAL \ControlUnit|WideOr5~0_combout\ : std_logic;
SIGNAL \Datapath|imemory|readData\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Datapath|programcounter_12|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk_geral~inputclkctrl_outclk\ : std_logic;
SIGNAL \ControlUnit|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ControlUnit|ALT_INV_WideOr7~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_geral <= clk_geral;
ww_RESET <= RESET;
fnc <= ww_fnc;
PS <= ww_PS;
opcode <= ww_opcode;
cnt <= ww_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ControlUnit|Selector10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ControlUnit|Selector10~0_combout\);

\clk_geral~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_geral~input_o\);
\ALT_INV_clk_geral~inputclkctrl_outclk\ <= NOT \clk_geral~inputclkctrl_outclk\;
\ControlUnit|ALT_INV_WideOr5~0_combout\ <= NOT \ControlUnit|WideOr5~0_combout\;
\ControlUnit|ALT_INV_WideOr7~combout\ <= NOT \ControlUnit|WideOr7~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N16
\fnc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|imemory|readData\(0),
	devoe => ww_devoe,
	o => \fnc[0]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\fnc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|imemory|readData\(1),
	devoe => ww_devoe,
	o => \fnc[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\fnc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|imemory|readData\(2),
	devoe => ww_devoe,
	o => \fnc[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\fnc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fnc[3]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\PS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \PS[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\PS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|WideOr6~combout\,
	devoe => ww_devoe,
	o => \PS[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\PS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \PS[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|imemory|readData\(13),
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|imemory|readData\(14),
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\opcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|imemory|readData\(15),
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\cnt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|programcounter_12|s_count\(0),
	devoe => ww_devoe,
	o => \cnt[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\cnt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|programcounter_12|s_count\(1),
	devoe => ww_devoe,
	o => \cnt[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\cnt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|programcounter_12|s_count\(2),
	devoe => ww_devoe,
	o => \cnt[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\cnt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Datapath|programcounter_12|s_count\(3),
	devoe => ww_devoe,
	o => \cnt[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk_geral~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_geral,
	o => \clk_geral~input_o\);

-- Location: CLKCTRL_G2
\clk_geral~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_geral~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_geral~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N26
\Datapath|programcounter_12|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|programcounter_12|s_count[0]~3_combout\ = !\Datapath|programcounter_12|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Datapath|programcounter_12|s_count\(0),
	combout => \Datapath|programcounter_12|s_count[0]~3_combout\);

-- Location: IOIBUF_X0_Y31_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X1_Y36_N6
\ControlUnit|pState.ResetState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|pState.ResetState~0_combout\ = !\RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	combout => \ControlUnit|pState.ResetState~0_combout\);

-- Location: FF_X1_Y36_N7
\ControlUnit|pState.ResetState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_geral~inputclkctrl_outclk\,
	d => \ControlUnit|pState.ResetState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|pState.ResetState~q\);

-- Location: LCCOMB_X2_Y36_N28
\Datapath|programcounter_12|s_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|programcounter_12|s_count[1]~0_combout\ = \Datapath|programcounter_12|s_count\(1) $ (((\Datapath|programcounter_12|s_count\(0) & \ControlUnit|pState.Fetch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(0),
	datac => \Datapath|programcounter_12|s_count\(1),
	datad => \ControlUnit|pState.Fetch~q\,
	combout => \Datapath|programcounter_12|s_count[1]~0_combout\);

-- Location: FF_X2_Y36_N29
\Datapath|programcounter_12|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|programcounter_12|s_count[1]~0_combout\,
	clrn => \ControlUnit|pState.ResetState~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|programcounter_12|s_count\(1));

-- Location: LCCOMB_X2_Y36_N2
\Datapath|programcounter_12|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|programcounter_12|s_count~1_combout\ = (\Datapath|programcounter_12|s_count\(0) & ((\Datapath|programcounter_12|s_count\(2) & ((!\Datapath|programcounter_12|s_count\(1)))) # (!\Datapath|programcounter_12|s_count\(2) & 
-- (!\Datapath|programcounter_12|s_count\(3) & \Datapath|programcounter_12|s_count\(1))))) # (!\Datapath|programcounter_12|s_count\(0) & (((\Datapath|programcounter_12|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(0),
	datab => \Datapath|programcounter_12|s_count\(3),
	datac => \Datapath|programcounter_12|s_count\(2),
	datad => \Datapath|programcounter_12|s_count\(1),
	combout => \Datapath|programcounter_12|s_count~1_combout\);

-- Location: FF_X2_Y36_N3
\Datapath|programcounter_12|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|programcounter_12|s_count~1_combout\,
	clrn => \ControlUnit|pState.ResetState~q\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|programcounter_12|s_count\(2));

-- Location: LCCOMB_X1_Y36_N28
\Datapath|imemory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|imemory|Mux2~0_combout\ = (\Datapath|programcounter_12|s_count\(1) & (!\Datapath|programcounter_12|s_count\(3) & ((!\Datapath|programcounter_12|s_count\(0)) # (!\Datapath|programcounter_12|s_count\(2))))) # 
-- (!\Datapath|programcounter_12|s_count\(1) & (\Datapath|programcounter_12|s_count\(2) $ (((\Datapath|programcounter_12|s_count\(3)) # (!\Datapath|programcounter_12|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(2),
	datab => \Datapath|programcounter_12|s_count\(1),
	datac => \Datapath|programcounter_12|s_count\(3),
	datad => \Datapath|programcounter_12|s_count\(0),
	combout => \Datapath|imemory|Mux2~0_combout\);

-- Location: FF_X1_Y36_N29
\Datapath|imemory|readData[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~input_o\,
	d => \Datapath|imemory|Mux2~0_combout\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|imemory|readData\(13));

-- Location: LCCOMB_X1_Y36_N26
\Datapath|imemory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|imemory|Mux1~0_combout\ = (!\Datapath|programcounter_12|s_count\(2) & ((\Datapath|programcounter_12|s_count\(1) & (\Datapath|programcounter_12|s_count\(3))) # (!\Datapath|programcounter_12|s_count\(1) & (!\Datapath|programcounter_12|s_count\(3) 
-- & !\Datapath|programcounter_12|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(2),
	datab => \Datapath|programcounter_12|s_count\(1),
	datac => \Datapath|programcounter_12|s_count\(3),
	datad => \Datapath|programcounter_12|s_count\(0),
	combout => \Datapath|imemory|Mux1~0_combout\);

-- Location: FF_X1_Y36_N27
\Datapath|imemory|readData[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~input_o\,
	d => \Datapath|imemory|Mux1~0_combout\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|imemory|readData\(14));

-- Location: LCCOMB_X1_Y36_N2
\Datapath|imemory|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|imemory|Mux0~0_combout\ = (\Datapath|programcounter_12|s_count\(2) & (!\Datapath|programcounter_12|s_count\(3) & (\Datapath|programcounter_12|s_count\(1) $ (!\Datapath|programcounter_12|s_count\(0))))) # (!\Datapath|programcounter_12|s_count\(2) 
-- & (\Datapath|programcounter_12|s_count\(1) $ ((!\Datapath|programcounter_12|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(2),
	datab => \Datapath|programcounter_12|s_count\(1),
	datac => \Datapath|programcounter_12|s_count\(3),
	datad => \Datapath|programcounter_12|s_count\(0),
	combout => \Datapath|imemory|Mux0~0_combout\);

-- Location: FF_X1_Y36_N3
\Datapath|imemory|readData[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~input_o\,
	d => \Datapath|imemory|Mux0~0_combout\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|imemory|readData\(15));

-- Location: LCCOMB_X1_Y36_N30
\ControlUnit|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector10~0_combout\ = (\Datapath|imemory|readData\(15) $ (((\Datapath|imemory|readData\(13) & !\Datapath|imemory|readData\(14))))) # (!\ControlUnit|pState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.Execute~q\,
	datab => \Datapath|imemory|readData\(13),
	datac => \Datapath|imemory|readData\(14),
	datad => \Datapath|imemory|readData\(15),
	combout => \ControlUnit|Selector10~0_combout\);

-- Location: CLKCTRL_G4
\ControlUnit|Selector10~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ControlUnit|Selector10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ControlUnit|Selector10~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N10
\ControlUnit|nState.Decode_241\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|nState.Decode_241~combout\ = (GLOBAL(\ControlUnit|Selector10~0clkctrl_outclk\) & ((\ControlUnit|pState.Fetch~q\))) # (!GLOBAL(\ControlUnit|Selector10~0clkctrl_outclk\) & (\ControlUnit|nState.Decode_241~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|nState.Decode_241~combout\,
	datac => \ControlUnit|Selector10~0clkctrl_outclk\,
	datad => \ControlUnit|pState.Fetch~q\,
	combout => \ControlUnit|nState.Decode_241~combout\);

-- Location: LCCOMB_X1_Y36_N24
\ControlUnit|pState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|pState~8_combout\ = (!\RESET~input_o\ & \ControlUnit|nState.Decode_241~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \ControlUnit|nState.Decode_241~combout\,
	combout => \ControlUnit|pState~8_combout\);

-- Location: FF_X1_Y36_N25
\ControlUnit|pState.Decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_geral~inputclkctrl_outclk\,
	d => \ControlUnit|pState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|pState.Decode~q\);

-- Location: LCCOMB_X1_Y36_N8
\ControlUnit|nState.Execute_226\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|nState.Execute_226~combout\ = (GLOBAL(\ControlUnit|Selector10~0clkctrl_outclk\) & ((\ControlUnit|pState.Decode~q\))) # (!GLOBAL(\ControlUnit|Selector10~0clkctrl_outclk\) & (\ControlUnit|nState.Execute_226~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|nState.Execute_226~combout\,
	datac => \ControlUnit|Selector10~0clkctrl_outclk\,
	datad => \ControlUnit|pState.Decode~q\,
	combout => \ControlUnit|nState.Execute_226~combout\);

-- Location: LCCOMB_X1_Y36_N12
\ControlUnit|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|pState~10_combout\ = (!\RESET~input_o\ & \ControlUnit|nState.Execute_226~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \ControlUnit|nState.Execute_226~combout\,
	combout => \ControlUnit|pState~10_combout\);

-- Location: FF_X1_Y36_N13
\ControlUnit|pState.Execute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_geral~inputclkctrl_outclk\,
	d => \ControlUnit|pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|pState.Execute~q\);

-- Location: LCCOMB_X1_Y36_N22
\ControlUnit|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector9~0_combout\ = (\ControlUnit|pState.Execute~q\ & ((\Datapath|imemory|readData\(13) & ((\Datapath|imemory|readData\(14)) # (\Datapath|imemory|readData\(15)))) # (!\Datapath|imemory|readData\(13) & 
-- ((!\Datapath|imemory|readData\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.Execute~q\,
	datab => \Datapath|imemory|readData\(13),
	datac => \Datapath|imemory|readData\(14),
	datad => \Datapath|imemory|readData\(15),
	combout => \ControlUnit|Selector9~0_combout\);

-- Location: LCCOMB_X2_Y36_N12
\ControlUnit|nState.WriteMem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|nState.WriteMem~0_combout\ = (\ControlUnit|pState.Execute~q\ & (\Datapath|imemory|readData\(14) & (!\Datapath|imemory|readData\(13) & \Datapath|imemory|readData\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.Execute~q\,
	datab => \Datapath|imemory|readData\(14),
	datac => \Datapath|imemory|readData\(13),
	datad => \Datapath|imemory|readData\(15),
	combout => \ControlUnit|nState.WriteMem~0_combout\);

-- Location: LCCOMB_X2_Y36_N22
\ControlUnit|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|comb~0_combout\ = (\ControlUnit|pState.Execute~q\ & ((\Datapath|imemory|readData\(14) & ((!\Datapath|imemory|readData\(15)) # (!\Datapath|imemory|readData\(13)))) # (!\Datapath|imemory|readData\(14) & (\Datapath|imemory|readData\(13) $ 
-- (!\Datapath|imemory|readData\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.Execute~q\,
	datab => \Datapath|imemory|readData\(14),
	datac => \Datapath|imemory|readData\(13),
	datad => \Datapath|imemory|readData\(15),
	combout => \ControlUnit|comb~0_combout\);

-- Location: LCCOMB_X2_Y36_N6
\ControlUnit|nState.WriteMem_199\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|nState.WriteMem_199~combout\ = (\ControlUnit|comb~0_combout\ & ((\ControlUnit|nState.WriteMem~0_combout\) # (\ControlUnit|nState.WriteMem_199~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|nState.WriteMem~0_combout\,
	datac => \ControlUnit|comb~0_combout\,
	datad => \ControlUnit|nState.WriteMem_199~combout\,
	combout => \ControlUnit|nState.WriteMem_199~combout\);

-- Location: LCCOMB_X2_Y36_N30
\ControlUnit|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|pState~9_combout\ = (\ControlUnit|nState.WriteMem_199~combout\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|nState.WriteMem_199~combout\,
	datad => \RESET~input_o\,
	combout => \ControlUnit|pState~9_combout\);

-- Location: FF_X1_Y36_N5
\ControlUnit|pState.WriteMem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_geral~inputclkctrl_outclk\,
	asdata => \ControlUnit|pState~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|pState.WriteMem~q\);

-- Location: LCCOMB_X2_Y36_N16
\ControlUnit|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|comb~2_combout\ = ((\Datapath|imemory|readData\(14)) # (\Datapath|imemory|readData\(13) $ (!\Datapath|imemory|readData\(15)))) # (!\ControlUnit|pState.Execute~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.Execute~q\,
	datab => \Datapath|imemory|readData\(14),
	datac => \Datapath|imemory|readData\(13),
	datad => \Datapath|imemory|readData\(15),
	combout => \ControlUnit|comb~2_combout\);

-- Location: LCCOMB_X2_Y36_N14
\ControlUnit|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|comb~1_combout\ = (\ControlUnit|pState.Execute~q\ & ((!\Datapath|imemory|readData\(15)) # (!\Datapath|imemory|readData\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Datapath|imemory|readData\(14),
	datac => \ControlUnit|pState.Execute~q\,
	datad => \Datapath|imemory|readData\(15),
	combout => \ControlUnit|comb~1_combout\);

-- Location: LCCOMB_X2_Y36_N24
\ControlUnit|nState.RegUpdate_211\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|nState.RegUpdate_211~combout\ = (\ControlUnit|comb~1_combout\ & ((\ControlUnit|nState.RegUpdate_211~combout\) # (!\ControlUnit|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|comb~2_combout\,
	datac => \ControlUnit|comb~1_combout\,
	datad => \ControlUnit|nState.RegUpdate_211~combout\,
	combout => \ControlUnit|nState.RegUpdate_211~combout\);

-- Location: LCCOMB_X2_Y36_N0
\ControlUnit|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|pState~11_combout\ = (\ControlUnit|nState.RegUpdate_211~combout\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|nState.RegUpdate_211~combout\,
	datad => \RESET~input_o\,
	combout => \ControlUnit|pState~11_combout\);

-- Location: FF_X1_Y36_N1
\ControlUnit|pState.RegUpdate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_geral~inputclkctrl_outclk\,
	asdata => \ControlUnit|pState~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|pState.RegUpdate~q\);

-- Location: LCCOMB_X1_Y36_N16
\ControlUnit|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector9~1_combout\ = ((\ControlUnit|Selector9~0_combout\) # ((\ControlUnit|pState.WriteMem~q\) # (\ControlUnit|pState.RegUpdate~q\))) # (!\ControlUnit|pState.ResetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.ResetState~q\,
	datab => \ControlUnit|Selector9~0_combout\,
	datac => \ControlUnit|pState.WriteMem~q\,
	datad => \ControlUnit|pState.RegUpdate~q\,
	combout => \ControlUnit|Selector9~1_combout\);

-- Location: LCCOMB_X1_Y36_N14
\ControlUnit|nState.Fetch_256\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|nState.Fetch_256~combout\ = (GLOBAL(\ControlUnit|Selector10~0clkctrl_outclk\) & ((\ControlUnit|Selector9~1_combout\))) # (!GLOBAL(\ControlUnit|Selector10~0clkctrl_outclk\) & (\ControlUnit|nState.Fetch_256~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|nState.Fetch_256~combout\,
	datac => \ControlUnit|Selector9~1_combout\,
	datad => \ControlUnit|Selector10~0clkctrl_outclk\,
	combout => \ControlUnit|nState.Fetch_256~combout\);

-- Location: LCCOMB_X1_Y36_N18
\ControlUnit|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|pState~12_combout\ = (!\RESET~input_o\ & \ControlUnit|nState.Fetch_256~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \ControlUnit|nState.Fetch_256~combout\,
	combout => \ControlUnit|pState~12_combout\);

-- Location: FF_X1_Y36_N19
\ControlUnit|pState.Fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_geral~inputclkctrl_outclk\,
	d => \ControlUnit|pState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|pState.Fetch~q\);

-- Location: FF_X2_Y36_N27
\Datapath|programcounter_12|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|programcounter_12|s_count[0]~3_combout\,
	clrn => \ControlUnit|pState.ResetState~q\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|programcounter_12|s_count\(0));

-- Location: LCCOMB_X2_Y36_N20
\Datapath|programcounter_12|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|programcounter_12|s_count~2_combout\ = (\Datapath|programcounter_12|s_count\(0) & ((\Datapath|programcounter_12|s_count\(3) & ((!\Datapath|programcounter_12|s_count\(1)))) # (!\Datapath|programcounter_12|s_count\(3) & 
-- (\Datapath|programcounter_12|s_count\(2) & \Datapath|programcounter_12|s_count\(1))))) # (!\Datapath|programcounter_12|s_count\(0) & (((\Datapath|programcounter_12|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(0),
	datab => \Datapath|programcounter_12|s_count\(2),
	datac => \Datapath|programcounter_12|s_count\(3),
	datad => \Datapath|programcounter_12|s_count\(1),
	combout => \Datapath|programcounter_12|s_count~2_combout\);

-- Location: FF_X2_Y36_N21
\Datapath|programcounter_12|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|programcounter_12|s_count~2_combout\,
	clrn => \ControlUnit|pState.ResetState~q\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|programcounter_12|s_count\(3));

-- Location: LCCOMB_X2_Y36_N4
\Datapath|imemory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|imemory|Mux11~0_combout\ = (\Datapath|programcounter_12|s_count\(2) & (!\Datapath|programcounter_12|s_count\(3) & (\Datapath|programcounter_12|s_count\(0) $ (!\Datapath|programcounter_12|s_count\(1))))) # 
-- (!\Datapath|programcounter_12|s_count\(2) & (\Datapath|programcounter_12|s_count\(0) & (\Datapath|programcounter_12|s_count\(3) $ (!\Datapath|programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(3),
	datab => \Datapath|programcounter_12|s_count\(2),
	datac => \Datapath|programcounter_12|s_count\(0),
	datad => \Datapath|programcounter_12|s_count\(1),
	combout => \Datapath|imemory|Mux11~0_combout\);

-- Location: FF_X2_Y36_N5
\Datapath|imemory|readData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|imemory|Mux11~0_combout\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|imemory|readData\(0));

-- Location: LCCOMB_X2_Y36_N18
\Datapath|imemory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|imemory|Mux10~0_combout\ = (\Datapath|programcounter_12|s_count\(3) & (!\Datapath|programcounter_12|s_count\(2) & ((\Datapath|programcounter_12|s_count\(1)) # (!\Datapath|programcounter_12|s_count\(0))))) # 
-- (!\Datapath|programcounter_12|s_count\(3) & ((\Datapath|programcounter_12|s_count\(2) & (\Datapath|programcounter_12|s_count\(0) & !\Datapath|programcounter_12|s_count\(1))) # (!\Datapath|programcounter_12|s_count\(2) & 
-- (!\Datapath|programcounter_12|s_count\(0) & \Datapath|programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(3),
	datab => \Datapath|programcounter_12|s_count\(2),
	datac => \Datapath|programcounter_12|s_count\(0),
	datad => \Datapath|programcounter_12|s_count\(1),
	combout => \Datapath|imemory|Mux10~0_combout\);

-- Location: FF_X2_Y36_N19
\Datapath|imemory|readData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|imemory|Mux10~0_combout\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|imemory|readData\(1));

-- Location: LCCOMB_X2_Y36_N8
\Datapath|imemory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Datapath|imemory|Mux5~0_combout\ = (\Datapath|programcounter_12|s_count\(2) & (!\Datapath|programcounter_12|s_count\(3) & (\Datapath|programcounter_12|s_count\(0) & !\Datapath|programcounter_12|s_count\(1)))) # (!\Datapath|programcounter_12|s_count\(2) & 
-- (!\Datapath|programcounter_12|s_count\(0) & (\Datapath|programcounter_12|s_count\(3) $ (\Datapath|programcounter_12|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath|programcounter_12|s_count\(3),
	datab => \Datapath|programcounter_12|s_count\(2),
	datac => \Datapath|programcounter_12|s_count\(0),
	datad => \Datapath|programcounter_12|s_count\(1),
	combout => \Datapath|imemory|Mux5~0_combout\);

-- Location: FF_X2_Y36_N9
\Datapath|imemory|readData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_geral~inputclkctrl_outclk\,
	d => \Datapath|imemory|Mux5~0_combout\,
	ena => \ControlUnit|pState.Fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Datapath|imemory|readData\(2));

-- Location: LCCOMB_X1_Y36_N0
\ControlUnit|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr7~combout\ = ((\ControlUnit|pState.Decode~q\) # (\ControlUnit|pState.WriteMem~q\)) # (!\ControlUnit|pState.ResetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.ResetState~q\,
	datab => \ControlUnit|pState.Decode~q\,
	datad => \ControlUnit|pState.WriteMem~q\,
	combout => \ControlUnit|WideOr7~combout\);

-- Location: LCCOMB_X1_Y36_N20
\ControlUnit|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr6~combout\ = (\ControlUnit|pState.Execute~q\) # (\ControlUnit|pState.Decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.Execute~q\,
	datad => \ControlUnit|pState.Decode~q\,
	combout => \ControlUnit|WideOr6~combout\);

-- Location: LCCOMB_X1_Y36_N4
\ControlUnit|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr5~0_combout\ = (!\ControlUnit|pState.RegUpdate~q\ & !\ControlUnit|pState.WriteMem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|pState.RegUpdate~q\,
	datac => \ControlUnit|pState.WriteMem~q\,
	combout => \ControlUnit|WideOr5~0_combout\);

ww_fnc(0) <= \fnc[0]~output_o\;

ww_fnc(1) <= \fnc[1]~output_o\;

ww_fnc(2) <= \fnc[2]~output_o\;

ww_fnc(3) <= \fnc[3]~output_o\;

ww_PS(0) <= \PS[0]~output_o\;

ww_PS(1) <= \PS[1]~output_o\;

ww_PS(2) <= \PS[2]~output_o\;

ww_opcode(0) <= \opcode[0]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_cnt(0) <= \cnt[0]~output_o\;

ww_cnt(1) <= \cnt[1]~output_o\;

ww_cnt(2) <= \cnt[2]~output_o\;

ww_cnt(3) <= \cnt[3]~output_o\;
END structure;


