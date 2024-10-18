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

-- DATE "09/19/2024 18:47:15"

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

ENTITY 	bitshift IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start_nappi : IN std_logic;
	kytkin : IN std_logic_vector(7 DOWNTO 0);
	led_out : OUT std_logic
	);
END bitshift;

-- Design Ports Information
-- led_out	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_nappi	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kytkin[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bitshift IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_start_nappi : std_logic;
SIGNAL ww_kytkin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \kytkin[6]~input_o\ : std_logic;
SIGNAL \start_nappi~input_o\ : std_logic;
SIGNAL \kytkin[5]~input_o\ : std_logic;
SIGNAL \clock_div~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_div~2_combout\ : std_logic;
SIGNAL \clock_div~0_combout\ : std_logic;
SIGNAL \clock_div~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \shift_reg[7]~1_combout\ : std_logic;
SIGNAL \counter[0]~2_combout\ : std_logic;
SIGNAL \counter[1]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter[2]~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \counter[3]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \led_out~3_combout\ : std_logic;
SIGNAL \load~q\ : std_logic;
SIGNAL \shift_reg~8_combout\ : std_logic;
SIGNAL \kytkin[0]~input_o\ : std_logic;
SIGNAL \kytkin[1]~input_o\ : std_logic;
SIGNAL \shift_reg~7_combout\ : std_logic;
SIGNAL \kytkin[2]~input_o\ : std_logic;
SIGNAL \shift_reg~6_combout\ : std_logic;
SIGNAL \kytkin[3]~input_o\ : std_logic;
SIGNAL \shift_reg~5_combout\ : std_logic;
SIGNAL \kytkin[4]~input_o\ : std_logic;
SIGNAL \shift_reg~4_combout\ : std_logic;
SIGNAL \shift_reg~3_combout\ : std_logic;
SIGNAL \shift_reg~2_combout\ : std_logic;
SIGNAL \kytkin[7]~input_o\ : std_logic;
SIGNAL \shift_reg~0_combout\ : std_logic;
SIGNAL \led_out~0_combout\ : std_logic;
SIGNAL \led_out~1_combout\ : std_logic;
SIGNAL \led_out~2_combout\ : std_logic;
SIGNAL \led_out~reg0_q\ : std_logic;
SIGNAL shift_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL counter : std_logic_vector(3 DOWNTO 0);
SIGNAL clock_div : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_start_nappi~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start_nappi <= start_nappi;
ww_kytkin <= kytkin;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_start_nappi~input_o\ <= NOT \start_nappi~input_o\;
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

-- Location: IOOBUF_X46_Y54_N2
\led_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out~reg0_q\,
	devoe => ww_devoe,
	o => \led_out~output_o\);

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

-- Location: IOIBUF_X54_Y54_N15
\kytkin[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(6),
	o => \kytkin[6]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\start_nappi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_nappi,
	o => \start_nappi~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\kytkin[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(5),
	o => \kytkin[5]~input_o\);

-- Location: LCCOMB_X50_Y51_N0
\clock_div~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div~3_combout\ = (!clock_div(0) & (((!clock_div(2) & !clock_div(1))) # (!clock_div(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div(3),
	datab => clock_div(2),
	datac => clock_div(0),
	datad => clock_div(1),
	combout => \clock_div~3_combout\);

-- Location: IOIBUF_X49_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X50_Y51_N1
\clock_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div(0));

-- Location: LCCOMB_X50_Y51_N4
\clock_div~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div~2_combout\ = (clock_div(3) & (!clock_div(2) & (!clock_div(1) & clock_div(0)))) # (!clock_div(3) & ((clock_div(1) $ (clock_div(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div(3),
	datab => clock_div(2),
	datac => clock_div(1),
	datad => clock_div(0),
	combout => \clock_div~2_combout\);

-- Location: FF_X50_Y51_N5
\clock_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div(1));

-- Location: LCCOMB_X50_Y51_N24
\clock_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div~0_combout\ = (clock_div(2) & (clock_div(1) & (!clock_div(3) & clock_div(0)))) # (!clock_div(2) & (!clock_div(1) & (clock_div(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div(2),
	datab => clock_div(1),
	datac => clock_div(3),
	datad => clock_div(0),
	combout => \clock_div~0_combout\);

-- Location: FF_X50_Y51_N25
\clock_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div(3));

-- Location: LCCOMB_X50_Y51_N26
\clock_div~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div~1_combout\ = (!clock_div(3) & (clock_div(2) $ (((clock_div(1) & clock_div(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div(3),
	datab => clock_div(1),
	datac => clock_div(2),
	datad => clock_div(0),
	combout => \clock_div~1_combout\);

-- Location: FF_X50_Y51_N27
\clock_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div(2));

-- Location: LCCOMB_X50_Y51_N6
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (clock_div(3) & ((clock_div(2)) # (clock_div(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div(2),
	datac => clock_div(1),
	datad => clock_div(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y51_N4
\shift_reg[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg[7]~1_combout\ = (\LessThan0~0_combout\ & (((\load~q\ & \Equal0~0_combout\)) # (!\start_nappi~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_nappi~input_o\,
	datab => \load~q\,
	datac => \LessThan0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \shift_reg[7]~1_combout\);

-- Location: LCCOMB_X50_Y51_N30
\counter[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~2_combout\ = (counter(0) & ((!\shift_reg[7]~1_combout\))) # (!counter(0) & (\start_nappi~input_o\ & \shift_reg[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_nappi~input_o\,
	datac => counter(0),
	datad => \shift_reg[7]~1_combout\,
	combout => \counter[0]~2_combout\);

-- Location: FF_X50_Y51_N31
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X50_Y51_N8
\counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~1_combout\ = (\shift_reg[7]~1_combout\ & (\start_nappi~input_o\ & (counter(0) $ (counter(1))))) # (!\shift_reg[7]~1_combout\ & (((counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_nappi~input_o\,
	datab => counter(0),
	datac => counter(1),
	datad => \shift_reg[7]~1_combout\,
	combout => \counter[1]~1_combout\);

-- Location: FF_X50_Y51_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X50_Y51_N20
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(2) $ (((counter(0) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datad => counter(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X50_Y51_N22
\counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~0_combout\ = (\shift_reg[7]~1_combout\ & (\start_nappi~input_o\ & (\Add0~0_combout\))) # (!\shift_reg[7]~1_combout\ & (((counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_nappi~input_o\,
	datab => \Add0~0_combout\,
	datac => counter(2),
	datad => \shift_reg[7]~1_combout\,
	combout => \counter[2]~0_combout\);

-- Location: FF_X50_Y51_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X50_Y51_N18
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = counter(3) $ (((counter(1) & (counter(0) & counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X50_Y51_N16
\counter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~3_combout\ = (\shift_reg[7]~1_combout\ & (\start_nappi~input_o\ & (\Add0~1_combout\))) # (!\shift_reg[7]~1_combout\ & (((counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_nappi~input_o\,
	datab => \Add0~1_combout\,
	datac => counter(3),
	datad => \shift_reg[7]~1_combout\,
	combout => \counter[3]~3_combout\);

-- Location: FF_X50_Y51_N17
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X50_Y51_N14
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(2)) # ((counter(1)) # ((counter(0)) # (!counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(0),
	datad => counter(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y51_N24
\led_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out~3_combout\ = (\load~q\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \load~q\,
	datad => \Equal0~0_combout\,
	combout => \led_out~3_combout\);

-- Location: FF_X51_Y51_N25
load : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_out~3_combout\,
	asdata => VCC,
	clrn => \reset~input_o\,
	sload => \ALT_INV_start_nappi~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load~q\);

-- Location: LCCOMB_X51_Y51_N14
\shift_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~8_combout\ = (shift_reg(0) & ((!\Equal0~0_combout\) # (!\load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~q\,
	datac => shift_reg(0),
	datad => \Equal0~0_combout\,
	combout => \shift_reg~8_combout\);

-- Location: IOIBUF_X51_Y54_N29
\kytkin[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(0),
	o => \kytkin[0]~input_o\);

-- Location: FF_X51_Y51_N15
\shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~8_combout\,
	asdata => \kytkin[0]~input_o\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_start_nappi~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(0));

-- Location: IOIBUF_X51_Y54_N22
\kytkin[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(1),
	o => \kytkin[1]~input_o\);

-- Location: LCCOMB_X51_Y51_N22
\shift_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~7_combout\ = (\start_nappi~input_o\ & (shift_reg(0))) # (!\start_nappi~input_o\ & ((\kytkin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_reg(0),
	datac => \start_nappi~input_o\,
	datad => \kytkin[1]~input_o\,
	combout => \shift_reg~7_combout\);

-- Location: FF_X51_Y51_N23
\shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~7_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(1));

-- Location: IOIBUF_X51_Y54_N1
\kytkin[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(2),
	o => \kytkin[2]~input_o\);

-- Location: LCCOMB_X51_Y51_N20
\shift_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~6_combout\ = (\start_nappi~input_o\ & (shift_reg(1))) # (!\start_nappi~input_o\ & ((\kytkin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_reg(1),
	datac => \start_nappi~input_o\,
	datad => \kytkin[2]~input_o\,
	combout => \shift_reg~6_combout\);

-- Location: FF_X51_Y51_N21
\shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~6_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(2));

-- Location: IOIBUF_X54_Y54_N29
\kytkin[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(3),
	o => \kytkin[3]~input_o\);

-- Location: LCCOMB_X51_Y51_N26
\shift_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~5_combout\ = (\start_nappi~input_o\ & (shift_reg(2))) # (!\start_nappi~input_o\ & ((\kytkin[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_reg(2),
	datac => \start_nappi~input_o\,
	datad => \kytkin[3]~input_o\,
	combout => \shift_reg~5_combout\);

-- Location: FF_X51_Y51_N27
\shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~5_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(3));

-- Location: IOIBUF_X54_Y54_N22
\kytkin[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(4),
	o => \kytkin[4]~input_o\);

-- Location: LCCOMB_X51_Y51_N28
\shift_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~4_combout\ = (\start_nappi~input_o\ & (shift_reg(3))) # (!\start_nappi~input_o\ & ((\kytkin[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_reg(3),
	datac => \start_nappi~input_o\,
	datad => \kytkin[4]~input_o\,
	combout => \shift_reg~4_combout\);

-- Location: FF_X51_Y51_N29
\shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~4_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(4));

-- Location: LCCOMB_X51_Y51_N18
\shift_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~3_combout\ = (\start_nappi~input_o\ & ((shift_reg(4)))) # (!\start_nappi~input_o\ & (\kytkin[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kytkin[5]~input_o\,
	datac => \start_nappi~input_o\,
	datad => shift_reg(4),
	combout => \shift_reg~3_combout\);

-- Location: FF_X51_Y51_N19
\shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~3_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(5));

-- Location: LCCOMB_X51_Y51_N30
\shift_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~2_combout\ = (\start_nappi~input_o\ & ((shift_reg(5)))) # (!\start_nappi~input_o\ & (\kytkin[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kytkin[6]~input_o\,
	datac => \start_nappi~input_o\,
	datad => shift_reg(5),
	combout => \shift_reg~2_combout\);

-- Location: FF_X51_Y51_N31
\shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~2_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(6));

-- Location: IOIBUF_X58_Y54_N29
\kytkin[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kytkin(7),
	o => \kytkin[7]~input_o\);

-- Location: LCCOMB_X51_Y51_N16
\shift_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_reg~0_combout\ = (\start_nappi~input_o\ & (shift_reg(6))) # (!\start_nappi~input_o\ & ((\kytkin[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_reg(6),
	datac => \start_nappi~input_o\,
	datad => \kytkin[7]~input_o\,
	combout => \shift_reg~0_combout\);

-- Location: FF_X51_Y51_N17
\shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg~0_combout\,
	clrn => \reset~input_o\,
	ena => \shift_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(7));

-- Location: LCCOMB_X50_Y51_N10
\led_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out~0_combout\ = (\reset~input_o\ & (clock_div(3) & ((clock_div(2)) # (clock_div(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div(2),
	datab => \reset~input_o\,
	datac => clock_div(3),
	datad => clock_div(1),
	combout => \led_out~0_combout\);

-- Location: LCCOMB_X50_Y51_N28
\led_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out~1_combout\ = (\start_nappi~input_o\ & (\load~q\ & (\Equal0~0_combout\ & \led_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_nappi~input_o\,
	datab => \load~q\,
	datac => \Equal0~0_combout\,
	datad => \led_out~0_combout\,
	combout => \led_out~1_combout\);

-- Location: LCCOMB_X50_Y51_N12
\led_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out~2_combout\ = (\led_out~1_combout\ & (shift_reg(7))) # (!\led_out~1_combout\ & ((\led_out~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_reg(7),
	datac => \led_out~reg0_q\,
	datad => \led_out~1_combout\,
	combout => \led_out~2_combout\);

-- Location: FF_X50_Y51_N13
\led_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_out~reg0_q\);

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

ww_led_out <= \led_out~output_o\;
END structure;


