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

-- DATE "09/15/2024 23:06:56"

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

ENTITY 	teht2 IS
    PORT (
	start_stop_button : IN std_logic;
	resetti_button : IN std_logic;
	clk : IN std_logic;
	segmentit_sekunnit : OUT std_logic_vector(6 DOWNTO 0);
	segmentit_kymmenet : OUT std_logic_vector(6 DOWNTO 0)
	);
END teht2;

-- Design Ports Information
-- segmentit_sekunnit[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_sekunnit[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_sekunnit[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_sekunnit[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_sekunnit[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_sekunnit[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_sekunnit[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentit_kymmenet[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetti_button	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop_button	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF teht2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start_stop_button : std_logic;
SIGNAL ww_resetti_button : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_segmentit_sekunnit : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentit_kymmenet : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \segmentit_sekunnit[0]~output_o\ : std_logic;
SIGNAL \segmentit_sekunnit[1]~output_o\ : std_logic;
SIGNAL \segmentit_sekunnit[2]~output_o\ : std_logic;
SIGNAL \segmentit_sekunnit[3]~output_o\ : std_logic;
SIGNAL \segmentit_sekunnit[4]~output_o\ : std_logic;
SIGNAL \segmentit_sekunnit[5]~output_o\ : std_logic;
SIGNAL \segmentit_sekunnit[6]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[0]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[1]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[2]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[3]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[4]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[5]~output_o\ : std_logic;
SIGNAL \segmentit_kymmenet[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetti_button~input_o\ : std_logic;
SIGNAL \last_button_state2~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \kymmenys_counter~4_combout\ : std_logic;
SIGNAL \start_stop_button~input_o\ : std_logic;
SIGNAL \last_button_state~0_combout\ : std_logic;
SIGNAL \last_button_state~q\ : std_logic;
SIGNAL \running~0_combout\ : std_logic;
SIGNAL \running~q\ : std_logic;
SIGNAL \clk_counter[0]~24_combout\ : std_logic;
SIGNAL \clk_counter[23]~68_combout\ : std_logic;
SIGNAL \clk_counter[0]~25\ : std_logic;
SIGNAL \clk_counter[1]~26_combout\ : std_logic;
SIGNAL \clk_counter[1]~27\ : std_logic;
SIGNAL \clk_counter[2]~28_combout\ : std_logic;
SIGNAL \clk_counter[2]~29\ : std_logic;
SIGNAL \clk_counter[3]~30_combout\ : std_logic;
SIGNAL \clk_counter[3]~31\ : std_logic;
SIGNAL \clk_counter[4]~32_combout\ : std_logic;
SIGNAL \clk_counter[4]~33\ : std_logic;
SIGNAL \clk_counter[5]~34_combout\ : std_logic;
SIGNAL \clk_counter[5]~35\ : std_logic;
SIGNAL \clk_counter[6]~36_combout\ : std_logic;
SIGNAL \clk_counter[6]~37\ : std_logic;
SIGNAL \clk_counter[7]~38_combout\ : std_logic;
SIGNAL \clk_counter[7]~39\ : std_logic;
SIGNAL \clk_counter[8]~40_combout\ : std_logic;
SIGNAL \clk_counter[8]~41\ : std_logic;
SIGNAL \clk_counter[9]~42_combout\ : std_logic;
SIGNAL \clk_counter[9]~43\ : std_logic;
SIGNAL \clk_counter[10]~44_combout\ : std_logic;
SIGNAL \clk_counter[10]~45\ : std_logic;
SIGNAL \clk_counter[11]~46_combout\ : std_logic;
SIGNAL \clk_counter[11]~47\ : std_logic;
SIGNAL \clk_counter[12]~48_combout\ : std_logic;
SIGNAL \clk_counter[12]~49\ : std_logic;
SIGNAL \clk_counter[13]~50_combout\ : std_logic;
SIGNAL \clk_counter[13]~51\ : std_logic;
SIGNAL \clk_counter[14]~52_combout\ : std_logic;
SIGNAL \clk_counter[14]~53\ : std_logic;
SIGNAL \clk_counter[15]~54_combout\ : std_logic;
SIGNAL \clk_counter[15]~55\ : std_logic;
SIGNAL \clk_counter[16]~56_combout\ : std_logic;
SIGNAL \clk_counter[16]~57\ : std_logic;
SIGNAL \clk_counter[17]~58_combout\ : std_logic;
SIGNAL \clk_counter[17]~59\ : std_logic;
SIGNAL \clk_counter[18]~60_combout\ : std_logic;
SIGNAL \clk_counter[18]~61\ : std_logic;
SIGNAL \clk_counter[19]~62_combout\ : std_logic;
SIGNAL \clk_counter[19]~63\ : std_logic;
SIGNAL \clk_counter[20]~64_combout\ : std_logic;
SIGNAL \clk_counter[20]~65\ : std_logic;
SIGNAL \clk_counter[21]~66_combout\ : std_logic;
SIGNAL \clk_counter[21]~67\ : std_logic;
SIGNAL \clk_counter[22]~69_combout\ : std_logic;
SIGNAL \clk_counter[22]~70\ : std_logic;
SIGNAL \clk_counter[23]~71_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \kymmenys_counter[0]~1_combout\ : std_logic;
SIGNAL \kymmenys_counter~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \kymmenys_counter~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \kymmenys_counter~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \resetting~q\ : std_logic;
SIGNAL \sekunti_counter~0_combout\ : std_logic;
SIGNAL \sekunti_counter[0]~1_combout\ : std_logic;
SIGNAL \sekunti_counter~3_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \sekunti_counter~5_combout\ : std_logic;
SIGNAL \sekunti_counter[0]~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \sekunti_counter~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL clk_counter : std_logic_vector(23 DOWNTO 0);
SIGNAL sekunti_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL kymmenys_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_start_stop_button <= start_stop_button;
ww_resetti_button <= resetti_button;
ww_clk <= clk;
segmentit_sekunnit <= ww_segmentit_sekunnit;
segmentit_kymmenet <= ww_segmentit_kymmenet;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X74_Y54_N23
\segmentit_sekunnit[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\segmentit_sekunnit[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\segmentit_sekunnit[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\segmentit_sekunnit[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\segmentit_sekunnit[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\segmentit_sekunnit[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\segmentit_sekunnit[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_sekunnit[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\segmentit_kymmenet[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\segmentit_kymmenet[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[1]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\segmentit_kymmenet[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\segmentit_kymmenet[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\segmentit_kymmenet[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\segmentit_kymmenet[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\segmentit_kymmenet[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \segmentit_kymmenet[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N22
\resetti_button~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetti_button,
	o => \resetti_button~input_o\);

-- Location: FF_X74_Y52_N17
last_button_state2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \resetti_button~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_button_state2~q\);

-- Location: LCCOMB_X74_Y52_N24
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\last_button_state2~q\) # (!\resetti_button~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetti_button~input_o\,
	datad => \last_button_state2~q\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X75_Y52_N22
\kymmenys_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kymmenys_counter~4_combout\ = (!\Equal1~0_combout\ & (!kymmenys_counter(0) & \resetting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => kymmenys_counter(0),
	datad => \resetting~q\,
	combout => \kymmenys_counter~4_combout\);

-- Location: IOIBUF_X51_Y54_N29
\start_stop_button~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop_button,
	o => \start_stop_button~input_o\);

-- Location: LCCOMB_X74_Y52_N28
\last_button_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \last_button_state~0_combout\ = (\resetting~q\ & (\start_stop_button~input_o\)) # (!\resetting~q\ & ((\last_button_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop_button~input_o\,
	datac => \last_button_state~q\,
	datad => \resetting~q\,
	combout => \last_button_state~0_combout\);

-- Location: FF_X74_Y52_N29
last_button_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \last_button_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_button_state~q\);

-- Location: LCCOMB_X74_Y52_N6
\running~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \running~0_combout\ = (\resetting~q\ & (\running~q\ $ (((\start_stop_button~input_o\ & !\last_button_state~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop_button~input_o\,
	datab => \last_button_state~q\,
	datac => \running~q\,
	datad => \resetting~q\,
	combout => \running~0_combout\);

-- Location: FF_X74_Y52_N7
running : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \running~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \running~q\);

-- Location: LCCOMB_X76_Y52_N8
\clk_counter[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[0]~24_combout\ = clk_counter(0) $ (VCC)
-- \clk_counter[0]~25\ = CARRY(clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(0),
	datad => VCC,
	combout => \clk_counter[0]~24_combout\,
	cout => \clk_counter[0]~25\);

-- Location: LCCOMB_X74_Y52_N30
\clk_counter[23]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[23]~68_combout\ = (\running~q\ & \resetting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \running~q\,
	datad => \resetting~q\,
	combout => \clk_counter[23]~68_combout\);

-- Location: FF_X76_Y52_N9
\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[0]~24_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

-- Location: LCCOMB_X76_Y52_N10
\clk_counter[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[1]~26_combout\ = (clk_counter(1) & (!\clk_counter[0]~25\)) # (!clk_counter(1) & ((\clk_counter[0]~25\) # (GND)))
-- \clk_counter[1]~27\ = CARRY((!\clk_counter[0]~25\) # (!clk_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datad => VCC,
	cin => \clk_counter[0]~25\,
	combout => \clk_counter[1]~26_combout\,
	cout => \clk_counter[1]~27\);

-- Location: FF_X76_Y52_N11
\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[1]~26_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

-- Location: LCCOMB_X76_Y52_N12
\clk_counter[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[2]~28_combout\ = (clk_counter(2) & (\clk_counter[1]~27\ $ (GND))) # (!clk_counter(2) & (!\clk_counter[1]~27\ & VCC))
-- \clk_counter[2]~29\ = CARRY((clk_counter(2) & !\clk_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(2),
	datad => VCC,
	cin => \clk_counter[1]~27\,
	combout => \clk_counter[2]~28_combout\,
	cout => \clk_counter[2]~29\);

-- Location: FF_X76_Y52_N13
\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[2]~28_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

-- Location: LCCOMB_X76_Y52_N14
\clk_counter[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[3]~30_combout\ = (clk_counter(3) & (!\clk_counter[2]~29\)) # (!clk_counter(3) & ((\clk_counter[2]~29\) # (GND)))
-- \clk_counter[3]~31\ = CARRY((!\clk_counter[2]~29\) # (!clk_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datad => VCC,
	cin => \clk_counter[2]~29\,
	combout => \clk_counter[3]~30_combout\,
	cout => \clk_counter[3]~31\);

-- Location: FF_X76_Y52_N15
\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[3]~30_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

-- Location: LCCOMB_X76_Y52_N16
\clk_counter[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[4]~32_combout\ = (clk_counter(4) & (\clk_counter[3]~31\ $ (GND))) # (!clk_counter(4) & (!\clk_counter[3]~31\ & VCC))
-- \clk_counter[4]~33\ = CARRY((clk_counter(4) & !\clk_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(4),
	datad => VCC,
	cin => \clk_counter[3]~31\,
	combout => \clk_counter[4]~32_combout\,
	cout => \clk_counter[4]~33\);

-- Location: FF_X76_Y52_N17
\clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[4]~32_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(4));

-- Location: LCCOMB_X76_Y52_N18
\clk_counter[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[5]~34_combout\ = (clk_counter(5) & (!\clk_counter[4]~33\)) # (!clk_counter(5) & ((\clk_counter[4]~33\) # (GND)))
-- \clk_counter[5]~35\ = CARRY((!\clk_counter[4]~33\) # (!clk_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(5),
	datad => VCC,
	cin => \clk_counter[4]~33\,
	combout => \clk_counter[5]~34_combout\,
	cout => \clk_counter[5]~35\);

-- Location: FF_X76_Y52_N19
\clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[5]~34_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(5));

-- Location: LCCOMB_X76_Y52_N20
\clk_counter[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[6]~36_combout\ = (clk_counter(6) & (\clk_counter[5]~35\ $ (GND))) # (!clk_counter(6) & (!\clk_counter[5]~35\ & VCC))
-- \clk_counter[6]~37\ = CARRY((clk_counter(6) & !\clk_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(6),
	datad => VCC,
	cin => \clk_counter[5]~35\,
	combout => \clk_counter[6]~36_combout\,
	cout => \clk_counter[6]~37\);

-- Location: FF_X76_Y52_N21
\clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[6]~36_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(6));

-- Location: LCCOMB_X76_Y52_N22
\clk_counter[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[7]~38_combout\ = (clk_counter(7) & (!\clk_counter[6]~37\)) # (!clk_counter(7) & ((\clk_counter[6]~37\) # (GND)))
-- \clk_counter[7]~39\ = CARRY((!\clk_counter[6]~37\) # (!clk_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(7),
	datad => VCC,
	cin => \clk_counter[6]~37\,
	combout => \clk_counter[7]~38_combout\,
	cout => \clk_counter[7]~39\);

-- Location: FF_X76_Y52_N23
\clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[7]~38_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(7));

-- Location: LCCOMB_X76_Y52_N24
\clk_counter[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[8]~40_combout\ = (clk_counter(8) & (\clk_counter[7]~39\ $ (GND))) # (!clk_counter(8) & (!\clk_counter[7]~39\ & VCC))
-- \clk_counter[8]~41\ = CARRY((clk_counter(8) & !\clk_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(8),
	datad => VCC,
	cin => \clk_counter[7]~39\,
	combout => \clk_counter[8]~40_combout\,
	cout => \clk_counter[8]~41\);

-- Location: FF_X76_Y52_N25
\clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[8]~40_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(8));

-- Location: LCCOMB_X76_Y52_N26
\clk_counter[9]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[9]~42_combout\ = (clk_counter(9) & (!\clk_counter[8]~41\)) # (!clk_counter(9) & ((\clk_counter[8]~41\) # (GND)))
-- \clk_counter[9]~43\ = CARRY((!\clk_counter[8]~41\) # (!clk_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(9),
	datad => VCC,
	cin => \clk_counter[8]~41\,
	combout => \clk_counter[9]~42_combout\,
	cout => \clk_counter[9]~43\);

-- Location: FF_X76_Y52_N27
\clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[9]~42_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(9));

-- Location: LCCOMB_X76_Y52_N28
\clk_counter[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[10]~44_combout\ = (clk_counter(10) & (\clk_counter[9]~43\ $ (GND))) # (!clk_counter(10) & (!\clk_counter[9]~43\ & VCC))
-- \clk_counter[10]~45\ = CARRY((clk_counter(10) & !\clk_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(10),
	datad => VCC,
	cin => \clk_counter[9]~43\,
	combout => \clk_counter[10]~44_combout\,
	cout => \clk_counter[10]~45\);

-- Location: FF_X76_Y52_N29
\clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[10]~44_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(10));

-- Location: LCCOMB_X76_Y52_N30
\clk_counter[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[11]~46_combout\ = (clk_counter(11) & (!\clk_counter[10]~45\)) # (!clk_counter(11) & ((\clk_counter[10]~45\) # (GND)))
-- \clk_counter[11]~47\ = CARRY((!\clk_counter[10]~45\) # (!clk_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(11),
	datad => VCC,
	cin => \clk_counter[10]~45\,
	combout => \clk_counter[11]~46_combout\,
	cout => \clk_counter[11]~47\);

-- Location: FF_X76_Y52_N31
\clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[11]~46_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(11));

-- Location: LCCOMB_X76_Y51_N0
\clk_counter[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[12]~48_combout\ = (clk_counter(12) & (\clk_counter[11]~47\ $ (GND))) # (!clk_counter(12) & (!\clk_counter[11]~47\ & VCC))
-- \clk_counter[12]~49\ = CARRY((clk_counter(12) & !\clk_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(12),
	datad => VCC,
	cin => \clk_counter[11]~47\,
	combout => \clk_counter[12]~48_combout\,
	cout => \clk_counter[12]~49\);

-- Location: FF_X76_Y51_N1
\clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[12]~48_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(12));

-- Location: LCCOMB_X76_Y51_N2
\clk_counter[13]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[13]~50_combout\ = (clk_counter(13) & (!\clk_counter[12]~49\)) # (!clk_counter(13) & ((\clk_counter[12]~49\) # (GND)))
-- \clk_counter[13]~51\ = CARRY((!\clk_counter[12]~49\) # (!clk_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(13),
	datad => VCC,
	cin => \clk_counter[12]~49\,
	combout => \clk_counter[13]~50_combout\,
	cout => \clk_counter[13]~51\);

-- Location: FF_X76_Y51_N3
\clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[13]~50_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(13));

-- Location: LCCOMB_X76_Y51_N4
\clk_counter[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[14]~52_combout\ = (clk_counter(14) & (\clk_counter[13]~51\ $ (GND))) # (!clk_counter(14) & (!\clk_counter[13]~51\ & VCC))
-- \clk_counter[14]~53\ = CARRY((clk_counter(14) & !\clk_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(14),
	datad => VCC,
	cin => \clk_counter[13]~51\,
	combout => \clk_counter[14]~52_combout\,
	cout => \clk_counter[14]~53\);

-- Location: FF_X76_Y51_N5
\clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[14]~52_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(14));

-- Location: LCCOMB_X76_Y51_N6
\clk_counter[15]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[15]~54_combout\ = (clk_counter(15) & (!\clk_counter[14]~53\)) # (!clk_counter(15) & ((\clk_counter[14]~53\) # (GND)))
-- \clk_counter[15]~55\ = CARRY((!\clk_counter[14]~53\) # (!clk_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(15),
	datad => VCC,
	cin => \clk_counter[14]~53\,
	combout => \clk_counter[15]~54_combout\,
	cout => \clk_counter[15]~55\);

-- Location: FF_X76_Y51_N7
\clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[15]~54_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(15));

-- Location: LCCOMB_X76_Y51_N8
\clk_counter[16]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[16]~56_combout\ = (clk_counter(16) & (\clk_counter[15]~55\ $ (GND))) # (!clk_counter(16) & (!\clk_counter[15]~55\ & VCC))
-- \clk_counter[16]~57\ = CARRY((clk_counter(16) & !\clk_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(16),
	datad => VCC,
	cin => \clk_counter[15]~55\,
	combout => \clk_counter[16]~56_combout\,
	cout => \clk_counter[16]~57\);

-- Location: FF_X76_Y51_N9
\clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[16]~56_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(16));

-- Location: LCCOMB_X76_Y51_N10
\clk_counter[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[17]~58_combout\ = (clk_counter(17) & (!\clk_counter[16]~57\)) # (!clk_counter(17) & ((\clk_counter[16]~57\) # (GND)))
-- \clk_counter[17]~59\ = CARRY((!\clk_counter[16]~57\) # (!clk_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(17),
	datad => VCC,
	cin => \clk_counter[16]~57\,
	combout => \clk_counter[17]~58_combout\,
	cout => \clk_counter[17]~59\);

-- Location: FF_X76_Y51_N11
\clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[17]~58_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(17));

-- Location: LCCOMB_X76_Y51_N12
\clk_counter[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[18]~60_combout\ = (clk_counter(18) & (\clk_counter[17]~59\ $ (GND))) # (!clk_counter(18) & (!\clk_counter[17]~59\ & VCC))
-- \clk_counter[18]~61\ = CARRY((clk_counter(18) & !\clk_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(18),
	datad => VCC,
	cin => \clk_counter[17]~59\,
	combout => \clk_counter[18]~60_combout\,
	cout => \clk_counter[18]~61\);

-- Location: FF_X76_Y51_N13
\clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[18]~60_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(18));

-- Location: LCCOMB_X76_Y51_N14
\clk_counter[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[19]~62_combout\ = (clk_counter(19) & (!\clk_counter[18]~61\)) # (!clk_counter(19) & ((\clk_counter[18]~61\) # (GND)))
-- \clk_counter[19]~63\ = CARRY((!\clk_counter[18]~61\) # (!clk_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(19),
	datad => VCC,
	cin => \clk_counter[18]~61\,
	combout => \clk_counter[19]~62_combout\,
	cout => \clk_counter[19]~63\);

-- Location: FF_X76_Y51_N15
\clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[19]~62_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(19));

-- Location: LCCOMB_X76_Y51_N16
\clk_counter[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[20]~64_combout\ = (clk_counter(20) & (\clk_counter[19]~63\ $ (GND))) # (!clk_counter(20) & (!\clk_counter[19]~63\ & VCC))
-- \clk_counter[20]~65\ = CARRY((clk_counter(20) & !\clk_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(20),
	datad => VCC,
	cin => \clk_counter[19]~63\,
	combout => \clk_counter[20]~64_combout\,
	cout => \clk_counter[20]~65\);

-- Location: FF_X76_Y51_N17
\clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[20]~64_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(20));

-- Location: LCCOMB_X76_Y51_N18
\clk_counter[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[21]~66_combout\ = (clk_counter(21) & (!\clk_counter[20]~65\)) # (!clk_counter(21) & ((\clk_counter[20]~65\) # (GND)))
-- \clk_counter[21]~67\ = CARRY((!\clk_counter[20]~65\) # (!clk_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(21),
	datad => VCC,
	cin => \clk_counter[20]~65\,
	combout => \clk_counter[21]~66_combout\,
	cout => \clk_counter[21]~67\);

-- Location: FF_X76_Y51_N19
\clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[21]~66_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(21));

-- Location: LCCOMB_X76_Y51_N20
\clk_counter[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[22]~69_combout\ = (clk_counter(22) & (\clk_counter[21]~67\ $ (GND))) # (!clk_counter(22) & (!\clk_counter[21]~67\ & VCC))
-- \clk_counter[22]~70\ = CARRY((clk_counter(22) & !\clk_counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(22),
	datad => VCC,
	cin => \clk_counter[21]~67\,
	combout => \clk_counter[22]~69_combout\,
	cout => \clk_counter[22]~70\);

-- Location: FF_X76_Y51_N21
\clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[22]~69_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(22));

-- Location: LCCOMB_X76_Y51_N22
\clk_counter[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[23]~71_combout\ = clk_counter(23) $ (\clk_counter[22]~70\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(23),
	cin => \clk_counter[22]~70\,
	combout => \clk_counter[23]~71_combout\);

-- Location: FF_X76_Y51_N23
\clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter[23]~71_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \clk_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(23));

-- Location: LCCOMB_X76_Y51_N24
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!clk_counter(22) & (!clk_counter(21) & ((!clk_counter(20)) # (!clk_counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(22),
	datab => clk_counter(21),
	datac => clk_counter(19),
	datad => clk_counter(20),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X76_Y52_N4
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!clk_counter(7) & !clk_counter(8))) # (!clk_counter(10))) # (!clk_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(7),
	datab => clk_counter(8),
	datac => clk_counter(9),
	datad => clk_counter(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y52_N2
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clk_counter(11) & (!clk_counter(13) & (\LessThan0~1_combout\ & !clk_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(11),
	datab => clk_counter(13),
	datac => \LessThan0~1_combout\,
	datad => clk_counter(14),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y51_N28
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_counter(17) & (!clk_counter(22) & (!clk_counter(16) & !clk_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(17),
	datab => clk_counter(22),
	datac => clk_counter(16),
	datad => clk_counter(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y51_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!clk_counter(13) & (!clk_counter(14) & !clk_counter(12)))) # (!clk_counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(15),
	datab => clk_counter(13),
	datac => clk_counter(14),
	datad => clk_counter(12),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X76_Y52_N0
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!clk_counter(18) & (\LessThan0~0_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(18),
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X76_Y52_N6
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (clk_counter(23) & (!\LessThan0~5_combout\ & !\LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(23),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y52_N8
\kymmenys_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kymmenys_counter[0]~1_combout\ = ((\sekunti_counter[0]~2_combout\ & (\running~q\ & \LessThan0~6_combout\))) # (!\resetting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sekunti_counter[0]~2_combout\,
	datab => \resetting~q\,
	datac => \running~q\,
	datad => \LessThan0~6_combout\,
	combout => \kymmenys_counter[0]~1_combout\);

-- Location: FF_X75_Y52_N23
\kymmenys_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kymmenys_counter~4_combout\,
	ena => \kymmenys_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kymmenys_counter(0));

-- Location: LCCOMB_X75_Y52_N10
\kymmenys_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kymmenys_counter~2_combout\ = (!\Equal1~0_combout\ & (\resetting~q\ & (kymmenys_counter(0) $ (kymmenys_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => kymmenys_counter(0),
	datac => kymmenys_counter(1),
	datad => \resetting~q\,
	combout => \kymmenys_counter~2_combout\);

-- Location: FF_X75_Y52_N11
\kymmenys_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kymmenys_counter~2_combout\,
	ena => \kymmenys_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kymmenys_counter(1));

-- Location: LCCOMB_X75_Y52_N2
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = kymmenys_counter(2) $ (((kymmenys_counter(1) & kymmenys_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(2),
	datac => kymmenys_counter(1),
	datad => kymmenys_counter(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X75_Y52_N20
\kymmenys_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kymmenys_counter~3_combout\ = (\resetting~q\ & (!\Equal1~0_combout\ & \Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetting~q\,
	datac => \Equal1~0_combout\,
	datad => \Add1~1_combout\,
	combout => \kymmenys_counter~3_combout\);

-- Location: FF_X75_Y52_N21
\kymmenys_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kymmenys_counter~3_combout\,
	ena => \kymmenys_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kymmenys_counter(2));

-- Location: LCCOMB_X75_Y52_N12
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = kymmenys_counter(3) $ (((kymmenys_counter(1) & (kymmenys_counter(2) & kymmenys_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(3),
	datab => kymmenys_counter(1),
	datac => kymmenys_counter(2),
	datad => kymmenys_counter(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X75_Y52_N4
\kymmenys_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kymmenys_counter~0_combout\ = (\resetting~q\ & (!\Equal1~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetting~q\,
	datac => \Equal1~0_combout\,
	datad => \Add1~0_combout\,
	combout => \kymmenys_counter~0_combout\);

-- Location: FF_X75_Y52_N5
\kymmenys_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kymmenys_counter~0_combout\,
	ena => \kymmenys_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => kymmenys_counter(3));

-- Location: LCCOMB_X75_Y52_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!kymmenys_counter(0) & (kymmenys_counter(2) & (!kymmenys_counter(3) & kymmenys_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(0),
	datab => kymmenys_counter(2),
	datac => kymmenys_counter(3),
	datad => kymmenys_counter(1),
	combout => \Equal1~0_combout\);

-- Location: FF_X74_Y52_N25
resetting : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_1~0_combout\,
	clrn => \ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetting~q\);

-- Location: LCCOMB_X75_Y52_N0
\sekunti_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sekunti_counter~0_combout\ = (!sekunti_counter(0) & \resetting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sekunti_counter(0),
	datad => \resetting~q\,
	combout => \sekunti_counter~0_combout\);

-- Location: LCCOMB_X75_Y52_N24
\sekunti_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sekunti_counter[0]~1_combout\ = ((\running~q\ & \LessThan0~6_combout\)) # (!\resetting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetting~q\,
	datac => \running~q\,
	datad => \LessThan0~6_combout\,
	combout => \sekunti_counter[0]~1_combout\);

-- Location: FF_X75_Y52_N1
\sekunti_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sekunti_counter~0_combout\,
	ena => \sekunti_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekunti_counter(0));

-- Location: LCCOMB_X75_Y52_N30
\sekunti_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sekunti_counter~3_combout\ = (!\sekunti_counter[0]~2_combout\ & (\resetting~q\ & (sekunti_counter(1) $ (sekunti_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sekunti_counter[0]~2_combout\,
	datab => \resetting~q\,
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \sekunti_counter~3_combout\);

-- Location: FF_X75_Y52_N31
\sekunti_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sekunti_counter~3_combout\,
	ena => \sekunti_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekunti_counter(1));

-- Location: LCCOMB_X75_Y52_N14
\Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = sekunti_counter(3) $ (((sekunti_counter(0) & (sekunti_counter(1) & sekunti_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(0),
	datab => sekunti_counter(3),
	datac => sekunti_counter(1),
	datad => sekunti_counter(2),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X75_Y52_N18
\sekunti_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sekunti_counter~5_combout\ = (!\sekunti_counter[0]~2_combout\ & (\resetting~q\ & \Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sekunti_counter[0]~2_combout\,
	datab => \resetting~q\,
	datac => \Add2~1_combout\,
	combout => \sekunti_counter~5_combout\);

-- Location: FF_X75_Y52_N19
\sekunti_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sekunti_counter~5_combout\,
	ena => \sekunti_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekunti_counter(3));

-- Location: LCCOMB_X75_Y52_N6
\sekunti_counter[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sekunti_counter[0]~2_combout\ = (sekunti_counter(0) & (sekunti_counter(3) & (!sekunti_counter(1) & !sekunti_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(0),
	datab => sekunti_counter(3),
	datac => sekunti_counter(1),
	datad => sekunti_counter(2),
	combout => \sekunti_counter[0]~2_combout\);

-- Location: LCCOMB_X75_Y52_N16
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = sekunti_counter(2) $ (((sekunti_counter(1) & sekunti_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sekunti_counter(2),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X75_Y52_N28
\sekunti_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sekunti_counter~4_combout\ = (!\sekunti_counter[0]~2_combout\ & (\resetting~q\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sekunti_counter[0]~2_combout\,
	datab => \resetting~q\,
	datad => \Add2~0_combout\,
	combout => \sekunti_counter~4_combout\);

-- Location: FF_X75_Y52_N29
\sekunti_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sekunti_counter~4_combout\,
	ena => \sekunti_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekunti_counter(2));

-- Location: LCCOMB_X75_Y53_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (sekunti_counter(3)) # ((sekunti_counter(2) & ((!sekunti_counter(0)) # (!sekunti_counter(1)))) # (!sekunti_counter(2) & (sekunti_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datab => sekunti_counter(3),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X75_Y53_N2
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!sekunti_counter(3) & ((sekunti_counter(2) & (sekunti_counter(1) & sekunti_counter(0))) # (!sekunti_counter(2) & ((sekunti_counter(1)) # (sekunti_counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datab => sekunti_counter(3),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X75_Y53_N16
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (sekunti_counter(0)) # ((sekunti_counter(2) & !sekunti_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X75_Y53_N6
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!sekunti_counter(3) & ((sekunti_counter(2) & (sekunti_counter(1) $ (!sekunti_counter(0)))) # (!sekunti_counter(2) & (!sekunti_counter(1) & sekunti_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datab => sekunti_counter(3),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X75_Y53_N24
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!sekunti_counter(2) & (sekunti_counter(1) & !sekunti_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X75_Y53_N10
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (sekunti_counter(2) & (sekunti_counter(1) $ (sekunti_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X75_Y53_N8
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!sekunti_counter(3) & (!sekunti_counter(1) & (sekunti_counter(2) $ (sekunti_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sekunti_counter(2),
	datab => sekunti_counter(3),
	datac => sekunti_counter(1),
	datad => sekunti_counter(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X71_Y52_N12
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (kymmenys_counter(3)) # (kymmenys_counter(2) $ (!kymmenys_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => kymmenys_counter(2),
	datac => kymmenys_counter(1),
	datad => kymmenys_counter(3),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X71_Y52_N2
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (kymmenys_counter(3)) # ((kymmenys_counter(1)) # ((kymmenys_counter(0) & !kymmenys_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(3),
	datab => kymmenys_counter(1),
	datac => kymmenys_counter(0),
	datad => kymmenys_counter(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X71_Y52_N4
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!kymmenys_counter(3) & (!kymmenys_counter(2) & !kymmenys_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(3),
	datac => kymmenys_counter(2),
	datad => kymmenys_counter(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X71_Y52_N22
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (kymmenys_counter(3)) # (kymmenys_counter(2) $ (((!kymmenys_counter(1) & kymmenys_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(3),
	datab => kymmenys_counter(1),
	datac => kymmenys_counter(0),
	datad => kymmenys_counter(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X71_Y52_N8
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (kymmenys_counter(3)) # ((kymmenys_counter(1) & ((kymmenys_counter(2)) # (!kymmenys_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(3),
	datab => kymmenys_counter(1),
	datac => kymmenys_counter(0),
	datad => kymmenys_counter(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X71_Y52_N6
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (kymmenys_counter(3)) # ((kymmenys_counter(2) & ((kymmenys_counter(1)) # (kymmenys_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kymmenys_counter(3),
	datab => kymmenys_counter(1),
	datac => kymmenys_counter(0),
	datad => kymmenys_counter(2),
	combout => \Mux8~0_combout\);

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

ww_segmentit_sekunnit(0) <= \segmentit_sekunnit[0]~output_o\;

ww_segmentit_sekunnit(1) <= \segmentit_sekunnit[1]~output_o\;

ww_segmentit_sekunnit(2) <= \segmentit_sekunnit[2]~output_o\;

ww_segmentit_sekunnit(3) <= \segmentit_sekunnit[3]~output_o\;

ww_segmentit_sekunnit(4) <= \segmentit_sekunnit[4]~output_o\;

ww_segmentit_sekunnit(5) <= \segmentit_sekunnit[5]~output_o\;

ww_segmentit_sekunnit(6) <= \segmentit_sekunnit[6]~output_o\;

ww_segmentit_kymmenet(0) <= \segmentit_kymmenet[0]~output_o\;

ww_segmentit_kymmenet(1) <= \segmentit_kymmenet[1]~output_o\;

ww_segmentit_kymmenet(2) <= \segmentit_kymmenet[2]~output_o\;

ww_segmentit_kymmenet(3) <= \segmentit_kymmenet[3]~output_o\;

ww_segmentit_kymmenet(4) <= \segmentit_kymmenet[4]~output_o\;

ww_segmentit_kymmenet(5) <= \segmentit_kymmenet[5]~output_o\;

ww_segmentit_kymmenet(6) <= \segmentit_kymmenet[6]~output_o\;
END structure;


