-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "09/24/2024 12:11:44"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	readWrite IS
    PORT (
	addr : IN std_logic_vector(1 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : BUFFER std_logic_vector(7 DOWNTO 0);
	r_signal : IN std_logic;
	w_signal : IN std_logic;
	clock : IN std_logic
	);
END readWrite;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_signal	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_signal	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF readWrite IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_signal : std_logic;
SIGNAL ww_w_signal : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \memory~33feeder_combout\ : std_logic;
SIGNAL \w_signal~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \r_signal~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \memory~65_combout\ : std_logic;
SIGNAL \memory~33_q\ : std_logic;
SIGNAL \memory~68_combout\ : std_logic;
SIGNAL \memory~41_q\ : std_logic;
SIGNAL \memory~25feeder_combout\ : std_logic;
SIGNAL \memory~66_combout\ : std_logic;
SIGNAL \memory~25_q\ : std_logic;
SIGNAL \memory~67_combout\ : std_logic;
SIGNAL \memory~17_q\ : std_logic;
SIGNAL \memory~49_combout\ : std_logic;
SIGNAL \memory~50_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \memory~42_q\ : std_logic;
SIGNAL \memory~26feeder_combout\ : std_logic;
SIGNAL \memory~26_q\ : std_logic;
SIGNAL \memory~18_q\ : std_logic;
SIGNAL \memory~34feeder_combout\ : std_logic;
SIGNAL \memory~34_q\ : std_logic;
SIGNAL \memory~51_combout\ : std_logic;
SIGNAL \memory~52_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \memory~43feeder_combout\ : std_logic;
SIGNAL \memory~43_q\ : std_logic;
SIGNAL \memory~35feeder_combout\ : std_logic;
SIGNAL \memory~35_q\ : std_logic;
SIGNAL \memory~19_q\ : std_logic;
SIGNAL \memory~27feeder_combout\ : std_logic;
SIGNAL \memory~27_q\ : std_logic;
SIGNAL \memory~53_combout\ : std_logic;
SIGNAL \memory~54_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \memory~28feeder_combout\ : std_logic;
SIGNAL \memory~28_q\ : std_logic;
SIGNAL \memory~44feeder_combout\ : std_logic;
SIGNAL \memory~44_q\ : std_logic;
SIGNAL \memory~20_q\ : std_logic;
SIGNAL \memory~36feeder_combout\ : std_logic;
SIGNAL \memory~36_q\ : std_logic;
SIGNAL \memory~55_combout\ : std_logic;
SIGNAL \memory~56_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \memory~37feeder_combout\ : std_logic;
SIGNAL \memory~37_q\ : std_logic;
SIGNAL \memory~45_q\ : std_logic;
SIGNAL \memory~21_q\ : std_logic;
SIGNAL \memory~29feeder_combout\ : std_logic;
SIGNAL \memory~29_q\ : std_logic;
SIGNAL \memory~57_combout\ : std_logic;
SIGNAL \memory~58_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \memory~46_q\ : std_logic;
SIGNAL \memory~30_q\ : std_logic;
SIGNAL \memory~22_q\ : std_logic;
SIGNAL \memory~38_q\ : std_logic;
SIGNAL \memory~59_combout\ : std_logic;
SIGNAL \memory~60_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \memory~47_q\ : std_logic;
SIGNAL \memory~39feeder_combout\ : std_logic;
SIGNAL \memory~39_q\ : std_logic;
SIGNAL \memory~23_q\ : std_logic;
SIGNAL \memory~31feeder_combout\ : std_logic;
SIGNAL \memory~31_q\ : std_logic;
SIGNAL \memory~61_combout\ : std_logic;
SIGNAL \memory~62_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \memory~32feeder_combout\ : std_logic;
SIGNAL \memory~32_q\ : std_logic;
SIGNAL \memory~48feeder_combout\ : std_logic;
SIGNAL \memory~48_q\ : std_logic;
SIGNAL \memory~24_q\ : std_logic;
SIGNAL \memory~40feeder_combout\ : std_logic;
SIGNAL \memory~40_q\ : std_logic;
SIGNAL \memory~63_combout\ : std_logic;
SIGNAL \memory~64_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_r_signal~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_addr <= addr;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_r_signal <= r_signal;
ww_w_signal <= w_signal;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_r_signal~input_o\ <= NOT \r_signal~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\data_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X56_Y50_N20
\memory~33feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~33feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \memory~33feeder_combout\);

-- Location: IOIBUF_X46_Y54_N29
\w_signal~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_signal,
	o => \w_signal~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\r_signal~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_signal,
	o => \r_signal~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LCCOMB_X55_Y50_N28
\memory~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~65_combout\ = (!\w_signal~input_o\ & (!\addr[0]~input_o\ & (\r_signal~input_o\ & \addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_signal~input_o\,
	datab => \addr[0]~input_o\,
	datac => \r_signal~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~65_combout\);

-- Location: FF_X56_Y50_N21
\memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~33feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~33_q\);

-- Location: LCCOMB_X55_Y50_N22
\memory~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~68_combout\ = (!\w_signal~input_o\ & (\addr[0]~input_o\ & (\r_signal~input_o\ & \addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_signal~input_o\,
	datab => \addr[0]~input_o\,
	datac => \r_signal~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~68_combout\);

-- Location: FF_X54_Y50_N5
\memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~41_q\);

-- Location: LCCOMB_X56_Y50_N30
\memory~25feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~25feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \memory~25feeder_combout\);

-- Location: LCCOMB_X55_Y50_N6
\memory~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~66_combout\ = (!\w_signal~input_o\ & (\addr[0]~input_o\ & (\r_signal~input_o\ & !\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_signal~input_o\,
	datab => \addr[0]~input_o\,
	datac => \r_signal~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~66_combout\);

-- Location: FF_X56_Y50_N31
\memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~25feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~25_q\);

-- Location: LCCOMB_X55_Y50_N8
\memory~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~67_combout\ = (!\w_signal~input_o\ & (!\addr[0]~input_o\ & (\r_signal~input_o\ & !\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_signal~input_o\,
	datab => \addr[0]~input_o\,
	datac => \r_signal~input_o\,
	datad => \addr[1]~input_o\,
	combout => \memory~67_combout\);

-- Location: FF_X55_Y50_N17
\memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~17_q\);

-- Location: LCCOMB_X55_Y50_N16
\memory~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~49_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\memory~25_q\)) # (!\addr[0]~input_o\ & ((\memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~25_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~17_q\,
	datad => \addr[0]~input_o\,
	combout => \memory~49_combout\);

-- Location: LCCOMB_X55_Y50_N4
\memory~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~50_combout\ = (\addr[1]~input_o\ & ((\memory~49_combout\ & ((\memory~41_q\))) # (!\memory~49_combout\ & (\memory~33_q\)))) # (!\addr[1]~input_o\ & (((\memory~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~33_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~41_q\,
	datad => \memory~49_combout\,
	combout => \memory~50_combout\);

-- Location: FF_X55_Y50_N5
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~50_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: IOIBUF_X51_Y54_N22
\data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X54_Y50_N27
\memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~42_q\);

-- Location: LCCOMB_X56_Y50_N12
\memory~26feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~26feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \memory~26feeder_combout\);

-- Location: FF_X56_Y50_N13
\memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~26feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~26_q\);

-- Location: FF_X55_Y50_N19
\memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~18_q\);

-- Location: LCCOMB_X56_Y50_N6
\memory~34feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~34feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \memory~34feeder_combout\);

-- Location: FF_X56_Y50_N7
\memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~34feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~34_q\);

-- Location: LCCOMB_X55_Y50_N18
\memory~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~51_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~34_q\))) # (!\addr[1]~input_o\ & (\memory~18_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~18_q\,
	datad => \memory~34_q\,
	combout => \memory~51_combout\);

-- Location: LCCOMB_X55_Y50_N30
\memory~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~52_combout\ = (\addr[0]~input_o\ & ((\memory~51_combout\ & (\memory~42_q\)) # (!\memory~51_combout\ & ((\memory~26_q\))))) # (!\addr[0]~input_o\ & (((\memory~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~42_q\,
	datab => \addr[0]~input_o\,
	datac => \memory~26_q\,
	datad => \memory~51_combout\,
	combout => \memory~52_combout\);

-- Location: FF_X55_Y50_N31
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~52_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: IOIBUF_X51_Y54_N1
\data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X54_Y50_N12
\memory~43feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~43feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \memory~43feeder_combout\);

-- Location: FF_X54_Y50_N13
\memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~43feeder_combout\,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~43_q\);

-- Location: LCCOMB_X56_Y50_N0
\memory~35feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~35feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \memory~35feeder_combout\);

-- Location: FF_X56_Y50_N1
\memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~35feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~35_q\);

-- Location: FF_X55_Y50_N21
\memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~19_q\);

-- Location: LCCOMB_X56_Y50_N22
\memory~27feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~27feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \memory~27feeder_combout\);

-- Location: FF_X56_Y50_N23
\memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~27feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~27_q\);

-- Location: LCCOMB_X55_Y50_N20
\memory~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~53_combout\ = (\addr[0]~input_o\ & ((\addr[1]~input_o\) # ((\memory~27_q\)))) # (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\memory~19_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~19_q\,
	datad => \memory~27_q\,
	combout => \memory~53_combout\);

-- Location: LCCOMB_X55_Y50_N12
\memory~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~54_combout\ = (\addr[1]~input_o\ & ((\memory~53_combout\ & (\memory~43_q\)) # (!\memory~53_combout\ & ((\memory~35_q\))))) # (!\addr[1]~input_o\ & (((\memory~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~43_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~35_q\,
	datad => \memory~53_combout\,
	combout => \memory~54_combout\);

-- Location: FF_X55_Y50_N13
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~54_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: IOIBUF_X54_Y54_N29
\data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X56_Y50_N24
\memory~28feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~28feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \memory~28feeder_combout\);

-- Location: FF_X56_Y50_N25
\memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~28feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~28_q\);

-- Location: LCCOMB_X54_Y50_N6
\memory~44feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~44feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \memory~44feeder_combout\);

-- Location: FF_X54_Y50_N7
\memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~44feeder_combout\,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~44_q\);

-- Location: FF_X55_Y50_N3
\memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~20_q\);

-- Location: LCCOMB_X56_Y50_N18
\memory~36feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~36feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \memory~36feeder_combout\);

-- Location: FF_X56_Y50_N19
\memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~36feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~36_q\);

-- Location: LCCOMB_X55_Y50_N2
\memory~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~55_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~36_q\))) # (!\addr[1]~input_o\ & (\memory~20_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~20_q\,
	datad => \memory~36_q\,
	combout => \memory~55_combout\);

-- Location: LCCOMB_X55_Y50_N26
\memory~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~56_combout\ = (\addr[0]~input_o\ & ((\memory~55_combout\ & ((\memory~44_q\))) # (!\memory~55_combout\ & (\memory~28_q\)))) # (!\addr[0]~input_o\ & (((\memory~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~28_q\,
	datab => \addr[0]~input_o\,
	datac => \memory~44_q\,
	datad => \memory~55_combout\,
	combout => \memory~56_combout\);

-- Location: FF_X55_Y50_N27
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~56_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: IOIBUF_X54_Y54_N22
\data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X56_Y50_N4
\memory~37feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~37feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \memory~37feeder_combout\);

-- Location: FF_X56_Y50_N5
\memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~37feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~37_q\);

-- Location: FF_X54_Y50_N1
\memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~45_q\);

-- Location: FF_X55_Y50_N25
\memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~21_q\);

-- Location: LCCOMB_X56_Y50_N26
\memory~29feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~29feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \memory~29feeder_combout\);

-- Location: FF_X56_Y50_N27
\memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~29feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~29_q\);

-- Location: LCCOMB_X55_Y50_N24
\memory~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~57_combout\ = (\addr[0]~input_o\ & ((\addr[1]~input_o\) # ((\memory~29_q\)))) # (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\memory~21_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~21_q\,
	datad => \memory~29_q\,
	combout => \memory~57_combout\);

-- Location: LCCOMB_X55_Y50_N0
\memory~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~58_combout\ = (\addr[1]~input_o\ & ((\memory~57_combout\ & ((\memory~45_q\))) # (!\memory~57_combout\ & (\memory~37_q\)))) # (!\addr[1]~input_o\ & (((\memory~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~37_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~45_q\,
	datad => \memory~57_combout\,
	combout => \memory~58_combout\);

-- Location: FF_X55_Y50_N1
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~58_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: IOIBUF_X49_Y54_N1
\data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X54_Y50_N15
\memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~46_q\);

-- Location: FF_X56_Y50_N29
\memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~30_q\);

-- Location: FF_X55_Y50_N11
\memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~22_q\);

-- Location: FF_X56_Y50_N3
\memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~38_q\);

-- Location: LCCOMB_X55_Y50_N10
\memory~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~59_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~38_q\))) # (!\addr[1]~input_o\ & (\memory~22_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~22_q\,
	datad => \memory~38_q\,
	combout => \memory~59_combout\);

-- Location: LCCOMB_X55_Y50_N14
\memory~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~60_combout\ = (\addr[0]~input_o\ & ((\memory~59_combout\ & (\memory~46_q\)) # (!\memory~59_combout\ & ((\memory~30_q\))))) # (!\addr[0]~input_o\ & (((\memory~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~46_q\,
	datab => \memory~30_q\,
	datac => \addr[0]~input_o\,
	datad => \memory~59_combout\,
	combout => \memory~60_combout\);

-- Location: FF_X55_Y50_N15
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~60_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: IOIBUF_X54_Y54_N15
\data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X58_Y50_N21
\memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~47_q\);

-- Location: LCCOMB_X56_Y50_N16
\memory~39feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~39feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \memory~39feeder_combout\);

-- Location: FF_X56_Y50_N17
\memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~39feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~39_q\);

-- Location: FF_X57_Y50_N29
\memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~23_q\);

-- Location: LCCOMB_X56_Y50_N14
\memory~31feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~31feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \memory~31feeder_combout\);

-- Location: FF_X56_Y50_N15
\memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~31feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~31_q\);

-- Location: LCCOMB_X57_Y50_N28
\memory~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~61_combout\ = (\addr[0]~input_o\ & ((\addr[1]~input_o\) # ((\memory~31_q\)))) # (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\memory~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~23_q\,
	datad => \memory~31_q\,
	combout => \memory~61_combout\);

-- Location: LCCOMB_X57_Y50_N24
\memory~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~62_combout\ = (\addr[1]~input_o\ & ((\memory~61_combout\ & (\memory~47_q\)) # (!\memory~61_combout\ & ((\memory~39_q\))))) # (!\addr[1]~input_o\ & (((\memory~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~47_q\,
	datab => \addr[1]~input_o\,
	datac => \memory~39_q\,
	datad => \memory~61_combout\,
	combout => \memory~62_combout\);

-- Location: FF_X57_Y50_N25
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~62_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: IOIBUF_X58_Y54_N29
\data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X56_Y50_N8
\memory~32feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~32feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \memory~32feeder_combout\);

-- Location: FF_X56_Y50_N9
\memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~32feeder_combout\,
	ena => \memory~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~32_q\);

-- Location: LCCOMB_X58_Y50_N10
\memory~48feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~48feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \memory~48feeder_combout\);

-- Location: FF_X58_Y50_N11
\memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~48feeder_combout\,
	ena => \memory~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~48_q\);

-- Location: FF_X57_Y50_N19
\memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \memory~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~24_q\);

-- Location: LCCOMB_X56_Y50_N10
\memory~40feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~40feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \memory~40feeder_combout\);

-- Location: FF_X56_Y50_N11
\memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~40feeder_combout\,
	ena => \memory~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~40_q\);

-- Location: LCCOMB_X57_Y50_N18
\memory~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~63_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\)) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\memory~40_q\))) # (!\addr[1]~input_o\ & (\memory~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \memory~24_q\,
	datad => \memory~40_q\,
	combout => \memory~63_combout\);

-- Location: LCCOMB_X57_Y50_N26
\memory~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory~64_combout\ = (\addr[0]~input_o\ & ((\memory~63_combout\ & ((\memory~48_q\))) # (!\memory~63_combout\ & (\memory~32_q\)))) # (!\addr[0]~input_o\ & (((\memory~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~32_q\,
	datab => \memory~48_q\,
	datac => \addr[0]~input_o\,
	datad => \memory~63_combout\,
	combout => \memory~64_combout\);

-- Location: FF_X57_Y50_N27
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memory~64_combout\,
	ena => \ALT_INV_r_signal~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


