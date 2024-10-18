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

-- DATE "09/08/2024 13:57:48"

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

ENTITY 	kellojakaja IS
    PORT (
	clk : IN std_logic;
	led : BUFFER std_logic
	);
END kellojakaja;

-- Design Ports Information
-- led	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kellojakaja IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~26_combout\ : std_logic;
SIGNAL \counter[0]~27\ : std_logic;
SIGNAL \counter[1]~28_combout\ : std_logic;
SIGNAL \counter[1]~29\ : std_logic;
SIGNAL \counter[2]~30_combout\ : std_logic;
SIGNAL \counter[2]~31\ : std_logic;
SIGNAL \counter[3]~32_combout\ : std_logic;
SIGNAL \counter[3]~33\ : std_logic;
SIGNAL \counter[4]~34_combout\ : std_logic;
SIGNAL \counter[4]~35\ : std_logic;
SIGNAL \counter[5]~36_combout\ : std_logic;
SIGNAL \counter[5]~37\ : std_logic;
SIGNAL \counter[6]~38_combout\ : std_logic;
SIGNAL \counter[6]~39\ : std_logic;
SIGNAL \counter[7]~40_combout\ : std_logic;
SIGNAL \counter[7]~41\ : std_logic;
SIGNAL \counter[8]~42_combout\ : std_logic;
SIGNAL \counter[8]~43\ : std_logic;
SIGNAL \counter[9]~44_combout\ : std_logic;
SIGNAL \counter[9]~45\ : std_logic;
SIGNAL \counter[10]~46_combout\ : std_logic;
SIGNAL \counter[10]~47\ : std_logic;
SIGNAL \counter[11]~48_combout\ : std_logic;
SIGNAL \counter[11]~49\ : std_logic;
SIGNAL \counter[12]~50_combout\ : std_logic;
SIGNAL \counter[12]~51\ : std_logic;
SIGNAL \counter[13]~52_combout\ : std_logic;
SIGNAL \counter[13]~53\ : std_logic;
SIGNAL \counter[14]~54_combout\ : std_logic;
SIGNAL \counter[14]~55\ : std_logic;
SIGNAL \counter[15]~56_combout\ : std_logic;
SIGNAL \counter[15]~57\ : std_logic;
SIGNAL \counter[16]~58_combout\ : std_logic;
SIGNAL \counter[16]~59\ : std_logic;
SIGNAL \counter[17]~60_combout\ : std_logic;
SIGNAL \counter[17]~61\ : std_logic;
SIGNAL \counter[18]~62_combout\ : std_logic;
SIGNAL \counter[18]~63\ : std_logic;
SIGNAL \counter[19]~64_combout\ : std_logic;
SIGNAL \counter[19]~65\ : std_logic;
SIGNAL \counter[20]~66_combout\ : std_logic;
SIGNAL \counter[20]~67\ : std_logic;
SIGNAL \counter[21]~68_combout\ : std_logic;
SIGNAL \counter[21]~69\ : std_logic;
SIGNAL \counter[22]~70_combout\ : std_logic;
SIGNAL \counter[22]~71\ : std_logic;
SIGNAL \counter[23]~72_combout\ : std_logic;
SIGNAL \counter[23]~73\ : std_logic;
SIGNAL \counter[24]~74_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \counter[24]~75\ : std_logic;
SIGNAL \counter[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \blinker~0_combout\ : std_logic;
SIGNAL \blinker~q\ : std_logic;
SIGNAL counter : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X46_Y54_N23
\led~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blinker~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X65_Y53_N6
\counter[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~26_combout\ = counter(0) $ (VCC)
-- \counter[0]~27\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~26_combout\,
	cout => \counter[0]~27\);

-- Location: FF_X65_Y53_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~26_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X65_Y53_N8
\counter[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~28_combout\ = (counter(1) & (!\counter[0]~27\)) # (!counter(1) & ((\counter[0]~27\) # (GND)))
-- \counter[1]~29\ = CARRY((!\counter[0]~27\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~27\,
	combout => \counter[1]~28_combout\,
	cout => \counter[1]~29\);

-- Location: FF_X65_Y53_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~28_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X65_Y53_N10
\counter[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~30_combout\ = (counter(2) & (\counter[1]~29\ $ (GND))) # (!counter(2) & (!\counter[1]~29\ & VCC))
-- \counter[2]~31\ = CARRY((counter(2) & !\counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~29\,
	combout => \counter[2]~30_combout\,
	cout => \counter[2]~31\);

-- Location: FF_X65_Y53_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~30_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X65_Y53_N12
\counter[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~32_combout\ = (counter(3) & (!\counter[2]~31\)) # (!counter(3) & ((\counter[2]~31\) # (GND)))
-- \counter[3]~33\ = CARRY((!\counter[2]~31\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~31\,
	combout => \counter[3]~32_combout\,
	cout => \counter[3]~33\);

-- Location: FF_X65_Y53_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~32_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X65_Y53_N14
\counter[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~34_combout\ = (counter(4) & (\counter[3]~33\ $ (GND))) # (!counter(4) & (!\counter[3]~33\ & VCC))
-- \counter[4]~35\ = CARRY((counter(4) & !\counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~33\,
	combout => \counter[4]~34_combout\,
	cout => \counter[4]~35\);

-- Location: FF_X65_Y53_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~34_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X65_Y53_N16
\counter[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~36_combout\ = (counter(5) & (!\counter[4]~35\)) # (!counter(5) & ((\counter[4]~35\) # (GND)))
-- \counter[5]~37\ = CARRY((!\counter[4]~35\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~35\,
	combout => \counter[5]~36_combout\,
	cout => \counter[5]~37\);

-- Location: FF_X65_Y53_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~36_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X65_Y53_N18
\counter[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~38_combout\ = (counter(6) & (\counter[5]~37\ $ (GND))) # (!counter(6) & (!\counter[5]~37\ & VCC))
-- \counter[6]~39\ = CARRY((counter(6) & !\counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~37\,
	combout => \counter[6]~38_combout\,
	cout => \counter[6]~39\);

-- Location: FF_X65_Y53_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~38_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X65_Y53_N20
\counter[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~40_combout\ = (counter(7) & (!\counter[6]~39\)) # (!counter(7) & ((\counter[6]~39\) # (GND)))
-- \counter[7]~41\ = CARRY((!\counter[6]~39\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~39\,
	combout => \counter[7]~40_combout\,
	cout => \counter[7]~41\);

-- Location: FF_X65_Y53_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~40_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X65_Y53_N22
\counter[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~42_combout\ = (counter(8) & (\counter[7]~41\ $ (GND))) # (!counter(8) & (!\counter[7]~41\ & VCC))
-- \counter[8]~43\ = CARRY((counter(8) & !\counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~41\,
	combout => \counter[8]~42_combout\,
	cout => \counter[8]~43\);

-- Location: FF_X65_Y53_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~42_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X65_Y53_N24
\counter[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~44_combout\ = (counter(9) & (!\counter[8]~43\)) # (!counter(9) & ((\counter[8]~43\) # (GND)))
-- \counter[9]~45\ = CARRY((!\counter[8]~43\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~43\,
	combout => \counter[9]~44_combout\,
	cout => \counter[9]~45\);

-- Location: FF_X65_Y53_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~44_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X65_Y53_N26
\counter[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~46_combout\ = (counter(10) & (\counter[9]~45\ $ (GND))) # (!counter(10) & (!\counter[9]~45\ & VCC))
-- \counter[10]~47\ = CARRY((counter(10) & !\counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~45\,
	combout => \counter[10]~46_combout\,
	cout => \counter[10]~47\);

-- Location: FF_X65_Y53_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~46_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X65_Y53_N28
\counter[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[11]~48_combout\ = (counter(11) & (!\counter[10]~47\)) # (!counter(11) & ((\counter[10]~47\) # (GND)))
-- \counter[11]~49\ = CARRY((!\counter[10]~47\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~47\,
	combout => \counter[11]~48_combout\,
	cout => \counter[11]~49\);

-- Location: FF_X65_Y53_N29
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~48_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X65_Y53_N30
\counter[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[12]~50_combout\ = (counter(12) & (\counter[11]~49\ $ (GND))) # (!counter(12) & (!\counter[11]~49\ & VCC))
-- \counter[12]~51\ = CARRY((counter(12) & !\counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \counter[11]~49\,
	combout => \counter[12]~50_combout\,
	cout => \counter[12]~51\);

-- Location: FF_X65_Y53_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~50_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X65_Y52_N0
\counter[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[13]~52_combout\ = (counter(13) & (!\counter[12]~51\)) # (!counter(13) & ((\counter[12]~51\) # (GND)))
-- \counter[13]~53\ = CARRY((!\counter[12]~51\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~51\,
	combout => \counter[13]~52_combout\,
	cout => \counter[13]~53\);

-- Location: FF_X66_Y53_N31
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[13]~52_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X65_Y52_N2
\counter[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[14]~54_combout\ = (counter(14) & (\counter[13]~53\ $ (GND))) # (!counter(14) & (!\counter[13]~53\ & VCC))
-- \counter[14]~55\ = CARRY((counter(14) & !\counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~53\,
	combout => \counter[14]~54_combout\,
	cout => \counter[14]~55\);

-- Location: FF_X66_Y53_N9
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[14]~54_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X65_Y52_N4
\counter[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[15]~56_combout\ = (counter(15) & (!\counter[14]~55\)) # (!counter(15) & ((\counter[14]~55\) # (GND)))
-- \counter[15]~57\ = CARRY((!\counter[14]~55\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~55\,
	combout => \counter[15]~56_combout\,
	cout => \counter[15]~57\);

-- Location: FF_X66_Y53_N19
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[15]~56_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X65_Y52_N6
\counter[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[16]~58_combout\ = (counter(16) & (\counter[15]~57\ $ (GND))) # (!counter(16) & (!\counter[15]~57\ & VCC))
-- \counter[16]~59\ = CARRY((counter(16) & !\counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~57\,
	combout => \counter[16]~58_combout\,
	cout => \counter[16]~59\);

-- Location: FF_X66_Y53_N29
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[16]~58_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X65_Y52_N8
\counter[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[17]~60_combout\ = (counter(17) & (!\counter[16]~59\)) # (!counter(17) & ((\counter[16]~59\) # (GND)))
-- \counter[17]~61\ = CARRY((!\counter[16]~59\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~59\,
	combout => \counter[17]~60_combout\,
	cout => \counter[17]~61\);

-- Location: FF_X65_Y52_N9
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~60_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X65_Y52_N10
\counter[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[18]~62_combout\ = (counter(18) & (\counter[17]~61\ $ (GND))) # (!counter(18) & (!\counter[17]~61\ & VCC))
-- \counter[18]~63\ = CARRY((counter(18) & !\counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~61\,
	combout => \counter[18]~62_combout\,
	cout => \counter[18]~63\);

-- Location: FF_X65_Y52_N11
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~62_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X65_Y52_N12
\counter[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[19]~64_combout\ = (counter(19) & (!\counter[18]~63\)) # (!counter(19) & ((\counter[18]~63\) # (GND)))
-- \counter[19]~65\ = CARRY((!\counter[18]~63\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~63\,
	combout => \counter[19]~64_combout\,
	cout => \counter[19]~65\);

-- Location: FF_X65_Y52_N13
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~64_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X65_Y52_N14
\counter[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[20]~66_combout\ = (counter(20) & (\counter[19]~65\ $ (GND))) # (!counter(20) & (!\counter[19]~65\ & VCC))
-- \counter[20]~67\ = CARRY((counter(20) & !\counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~65\,
	combout => \counter[20]~66_combout\,
	cout => \counter[20]~67\);

-- Location: FF_X65_Y52_N15
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~66_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X65_Y52_N16
\counter[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~68_combout\ = (counter(21) & (!\counter[20]~67\)) # (!counter(21) & ((\counter[20]~67\) # (GND)))
-- \counter[21]~69\ = CARRY((!\counter[20]~67\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~67\,
	combout => \counter[21]~68_combout\,
	cout => \counter[21]~69\);

-- Location: FF_X65_Y52_N17
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~68_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X65_Y52_N18
\counter[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[22]~70_combout\ = (counter(22) & (\counter[21]~69\ $ (GND))) # (!counter(22) & (!\counter[21]~69\ & VCC))
-- \counter[22]~71\ = CARRY((counter(22) & !\counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~69\,
	combout => \counter[22]~70_combout\,
	cout => \counter[22]~71\);

-- Location: FF_X65_Y52_N19
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~70_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X65_Y52_N20
\counter[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[23]~72_combout\ = (counter(23) & (!\counter[22]~71\)) # (!counter(23) & ((\counter[22]~71\) # (GND)))
-- \counter[23]~73\ = CARRY((!\counter[22]~71\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~71\,
	combout => \counter[23]~72_combout\,
	cout => \counter[23]~73\);

-- Location: FF_X65_Y52_N21
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~72_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X65_Y52_N22
\counter[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[24]~74_combout\ = (counter(24) & (\counter[23]~73\ $ (GND))) # (!counter(24) & (!\counter[23]~73\ & VCC))
-- \counter[24]~75\ = CARRY((counter(24) & !\counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \counter[23]~73\,
	combout => \counter[24]~74_combout\,
	cout => \counter[24]~75\);

-- Location: FF_X65_Y52_N23
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~74_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X65_Y52_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!counter(21)) # (!counter(23))) # (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datac => counter(23),
	datad => counter(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y52_N24
\counter[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[25]~76_combout\ = \counter[24]~75\ $ (counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(25),
	cin => \counter[24]~75\,
	combout => \counter[25]~76_combout\);

-- Location: FF_X65_Y52_N25
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~76_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X65_Y52_N28
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(18) & !counter(17))) # (!counter(19))) # (!counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(17),
	datac => counter(20),
	datad => counter(19),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X66_Y53_N22
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!counter(12)) # (!counter(14))) # (!counter(15))) # (!counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(15),
	datac => counter(14),
	datad => counter(12),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y53_N4
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(8) & (!counter(9) & (!counter(10) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(10),
	datad => counter(11),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y53_N0
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!counter(3)) # (!counter(4))) # (!counter(1))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(4),
	datad => counter(3),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y53_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # (!counter(5))) # (!counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datac => counter(5),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X66_Y53_N16
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\) # ((!counter(7) & (\LessThan0~4_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => counter(7),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X66_Y53_N10
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~1_combout\) # ((!counter(18) & (!counter(16) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(16),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X66_Y53_N20
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (counter(25) & ((counter(24)) # ((!\LessThan0~0_combout\ & !\LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => \LessThan0~0_combout\,
	datac => counter(25),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X66_Y53_N24
\blinker~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinker~0_combout\ = \blinker~q\ $ (\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blinker~q\,
	datad => \LessThan0~8_combout\,
	combout => \blinker~0_combout\);

-- Location: FF_X66_Y53_N25
blinker : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \blinker~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker~q\);

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

ww_led <= \led~output_o\;
END structure;


