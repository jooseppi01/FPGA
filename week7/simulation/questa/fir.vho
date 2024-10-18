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

-- DATE "10/17/2024 11:09:56"

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

ENTITY 	fir IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x_in : IN std_logic_vector(31 DOWNTO 0);
	y_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END fir;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[11]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[12]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[13]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[16]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[18]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[19]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[20]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[21]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[22]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[23]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[24]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[25]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[26]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[27]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[28]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[29]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[31]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[14]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[15]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[16]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[17]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[18]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[19]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[20]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[21]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[23]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[24]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[25]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[26]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[27]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[28]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[29]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[30]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[31]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir IS
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
SIGNAL ww_x_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \y_out[0]~output_o\ : std_logic;
SIGNAL \y_out[1]~output_o\ : std_logic;
SIGNAL \y_out[2]~output_o\ : std_logic;
SIGNAL \y_out[3]~output_o\ : std_logic;
SIGNAL \y_out[4]~output_o\ : std_logic;
SIGNAL \y_out[5]~output_o\ : std_logic;
SIGNAL \y_out[6]~output_o\ : std_logic;
SIGNAL \y_out[7]~output_o\ : std_logic;
SIGNAL \y_out[8]~output_o\ : std_logic;
SIGNAL \y_out[9]~output_o\ : std_logic;
SIGNAL \y_out[10]~output_o\ : std_logic;
SIGNAL \y_out[11]~output_o\ : std_logic;
SIGNAL \y_out[12]~output_o\ : std_logic;
SIGNAL \y_out[13]~output_o\ : std_logic;
SIGNAL \y_out[14]~output_o\ : std_logic;
SIGNAL \y_out[15]~output_o\ : std_logic;
SIGNAL \y_out[16]~output_o\ : std_logic;
SIGNAL \y_out[17]~output_o\ : std_logic;
SIGNAL \y_out[18]~output_o\ : std_logic;
SIGNAL \y_out[19]~output_o\ : std_logic;
SIGNAL \y_out[20]~output_o\ : std_logic;
SIGNAL \y_out[21]~output_o\ : std_logic;
SIGNAL \y_out[22]~output_o\ : std_logic;
SIGNAL \y_out[23]~output_o\ : std_logic;
SIGNAL \y_out[24]~output_o\ : std_logic;
SIGNAL \y_out[25]~output_o\ : std_logic;
SIGNAL \y_out[26]~output_o\ : std_logic;
SIGNAL \y_out[27]~output_o\ : std_logic;
SIGNAL \y_out[28]~output_o\ : std_logic;
SIGNAL \y_out[29]~output_o\ : std_logic;
SIGNAL \y_out[30]~output_o\ : std_logic;
SIGNAL \y_out[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \delay_0~0_combout\ : std_logic;
SIGNAL \delay_1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \delay_2~0_combout\ : std_logic;
SIGNAL \delay_3~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \sum[0]~32_combout\ : std_logic;
SIGNAL \y_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[0]~reg0_q\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \delay_0~1_combout\ : std_logic;
SIGNAL \delay_0[1]~feeder_combout\ : std_logic;
SIGNAL \delay_1~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \delay_2~1_combout\ : std_logic;
SIGNAL \delay_3~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \sum[0]~33\ : std_logic;
SIGNAL \sum[1]~34_combout\ : std_logic;
SIGNAL \y_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[1]~reg0_q\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \delay_0~2_combout\ : std_logic;
SIGNAL \delay_1~2_combout\ : std_logic;
SIGNAL \delay_2~2_combout\ : std_logic;
SIGNAL \delay_3~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \sum[1]~35\ : std_logic;
SIGNAL \sum[2]~36_combout\ : std_logic;
SIGNAL \y_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[2]~reg0_q\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \delay_0~3_combout\ : std_logic;
SIGNAL \delay_1~3_combout\ : std_logic;
SIGNAL \extra_reg[3]~feeder_combout\ : std_logic;
SIGNAL \delay_2~3_combout\ : std_logic;
SIGNAL \delay_3~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sum[2]~37\ : std_logic;
SIGNAL \sum[3]~38_combout\ : std_logic;
SIGNAL \y_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[3]~reg0_q\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \delay_0~4_combout\ : std_logic;
SIGNAL \delay_0[4]~feeder_combout\ : std_logic;
SIGNAL \delay_1~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \extra_reg[4]~feeder_combout\ : std_logic;
SIGNAL \delay_2~4_combout\ : std_logic;
SIGNAL \delay_3~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \sum[3]~39\ : std_logic;
SIGNAL \sum[4]~40_combout\ : std_logic;
SIGNAL \y_out[4]~reg0_q\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \delay_0~5_combout\ : std_logic;
SIGNAL \delay_1~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \extra_reg[5]~feeder_combout\ : std_logic;
SIGNAL \delay_2~5_combout\ : std_logic;
SIGNAL \delay_3~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sum[4]~41\ : std_logic;
SIGNAL \sum[5]~42_combout\ : std_logic;
SIGNAL \y_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[5]~reg0_q\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \delay_0~6_combout\ : std_logic;
SIGNAL \delay_1~6_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \delay_2~6_combout\ : std_logic;
SIGNAL \delay_3~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \sum[5]~43\ : std_logic;
SIGNAL \sum[6]~44_combout\ : std_logic;
SIGNAL \y_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[6]~reg0_q\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \delay_0~7_combout\ : std_logic;
SIGNAL \delay_1~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \delay_2~7_combout\ : std_logic;
SIGNAL \delay_3~7_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sum[6]~45\ : std_logic;
SIGNAL \sum[7]~46_combout\ : std_logic;
SIGNAL \y_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[7]~reg0_q\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \delay_0~8_combout\ : std_logic;
SIGNAL \delay_1~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \extra_reg[8]~feeder_combout\ : std_logic;
SIGNAL \delay_2~8_combout\ : std_logic;
SIGNAL \delay_3~8_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \sum[7]~47\ : std_logic;
SIGNAL \sum[8]~48_combout\ : std_logic;
SIGNAL \y_out[8]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[8]~reg0_q\ : std_logic;
SIGNAL \x_in[9]~input_o\ : std_logic;
SIGNAL \delay_0~9_combout\ : std_logic;
SIGNAL \delay_1~9_combout\ : std_logic;
SIGNAL \delay_2~9_combout\ : std_logic;
SIGNAL \delay_3~9_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \sum[8]~49\ : std_logic;
SIGNAL \sum[9]~50_combout\ : std_logic;
SIGNAL \y_out[9]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[9]~reg0_q\ : std_logic;
SIGNAL \x_in[10]~input_o\ : std_logic;
SIGNAL \delay_0~10_combout\ : std_logic;
SIGNAL \delay_0[10]~feeder_combout\ : std_logic;
SIGNAL \delay_1~10_combout\ : std_logic;
SIGNAL \delay_2~10_combout\ : std_logic;
SIGNAL \delay_3~10_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sum[9]~51\ : std_logic;
SIGNAL \sum[10]~52_combout\ : std_logic;
SIGNAL \y_out[10]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[10]~reg0_q\ : std_logic;
SIGNAL \x_in[11]~input_o\ : std_logic;
SIGNAL \delay_0~11_combout\ : std_logic;
SIGNAL \delay_1~11_combout\ : std_logic;
SIGNAL \delay_2~11_combout\ : std_logic;
SIGNAL \delay_2[11]~feeder_combout\ : std_logic;
SIGNAL \delay_3~11_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \sum[10]~53\ : std_logic;
SIGNAL \sum[11]~54_combout\ : std_logic;
SIGNAL \y_out[11]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[11]~reg0_q\ : std_logic;
SIGNAL \x_in[12]~input_o\ : std_logic;
SIGNAL \delay_0~12_combout\ : std_logic;
SIGNAL \delay_1~12_combout\ : std_logic;
SIGNAL \extra_reg[12]~feeder_combout\ : std_logic;
SIGNAL \delay_2~12_combout\ : std_logic;
SIGNAL \delay_2[12]~feeder_combout\ : std_logic;
SIGNAL \delay_3~12_combout\ : std_logic;
SIGNAL \delay_3[12]~feeder_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \sum[11]~55\ : std_logic;
SIGNAL \sum[12]~56_combout\ : std_logic;
SIGNAL \y_out[12]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[12]~reg0_q\ : std_logic;
SIGNAL \x_in[13]~input_o\ : std_logic;
SIGNAL \delay_0~13_combout\ : std_logic;
SIGNAL \delay_1~13_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \extra_reg[13]~feeder_combout\ : std_logic;
SIGNAL \delay_2~13_combout\ : std_logic;
SIGNAL \delay_3~13_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \sum[12]~57\ : std_logic;
SIGNAL \sum[13]~58_combout\ : std_logic;
SIGNAL \y_out[13]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[13]~reg0_q\ : std_logic;
SIGNAL \x_in[14]~input_o\ : std_logic;
SIGNAL \delay_0~14_combout\ : std_logic;
SIGNAL \delay_0[14]~feeder_combout\ : std_logic;
SIGNAL \delay_1~14_combout\ : std_logic;
SIGNAL \delay_2~14_combout\ : std_logic;
SIGNAL \delay_3~14_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \sum[13]~59\ : std_logic;
SIGNAL \sum[14]~60_combout\ : std_logic;
SIGNAL \y_out[14]~reg0_q\ : std_logic;
SIGNAL \x_in[15]~input_o\ : std_logic;
SIGNAL \delay_0~15_combout\ : std_logic;
SIGNAL \delay_1~15_combout\ : std_logic;
SIGNAL \extra_reg[15]~feeder_combout\ : std_logic;
SIGNAL \delay_2~15_combout\ : std_logic;
SIGNAL \delay_3~15_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \sum[14]~61\ : std_logic;
SIGNAL \sum[15]~62_combout\ : std_logic;
SIGNAL \y_out[15]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[15]~reg0_q\ : std_logic;
SIGNAL \x_in[16]~input_o\ : std_logic;
SIGNAL \delay_0~16_combout\ : std_logic;
SIGNAL \delay_1~16_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \delay_2~16_combout\ : std_logic;
SIGNAL \delay_3~16_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \sum[15]~63\ : std_logic;
SIGNAL \sum[16]~64_combout\ : std_logic;
SIGNAL \y_out[16]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[16]~reg0_q\ : std_logic;
SIGNAL \x_in[17]~input_o\ : std_logic;
SIGNAL \delay_0~17_combout\ : std_logic;
SIGNAL \delay_1~17_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \delay_2~17_combout\ : std_logic;
SIGNAL \delay_3~17_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \sum[16]~65\ : std_logic;
SIGNAL \sum[17]~66_combout\ : std_logic;
SIGNAL \y_out[17]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[17]~reg0_q\ : std_logic;
SIGNAL \x_in[18]~input_o\ : std_logic;
SIGNAL \delay_0~18_combout\ : std_logic;
SIGNAL \delay_1~18_combout\ : std_logic;
SIGNAL \extra_reg[18]~feeder_combout\ : std_logic;
SIGNAL \delay_2~18_combout\ : std_logic;
SIGNAL \delay_3~18_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \sum[17]~67\ : std_logic;
SIGNAL \sum[18]~68_combout\ : std_logic;
SIGNAL \y_out[18]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[18]~reg0_q\ : std_logic;
SIGNAL \x_in[19]~input_o\ : std_logic;
SIGNAL \delay_0~19_combout\ : std_logic;
SIGNAL \delay_1~19_combout\ : std_logic;
SIGNAL \extra_reg[19]~feeder_combout\ : std_logic;
SIGNAL \delay_2~19_combout\ : std_logic;
SIGNAL \delay_3~19_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \sum[18]~69\ : std_logic;
SIGNAL \sum[19]~70_combout\ : std_logic;
SIGNAL \y_out[19]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[19]~reg0_q\ : std_logic;
SIGNAL \x_in[20]~input_o\ : std_logic;
SIGNAL \delay_0~20_combout\ : std_logic;
SIGNAL \delay_1~20_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \delay_2~20_combout\ : std_logic;
SIGNAL \delay_3~20_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \sum[19]~71\ : std_logic;
SIGNAL \sum[20]~72_combout\ : std_logic;
SIGNAL \y_out[20]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[20]~reg0_q\ : std_logic;
SIGNAL \x_in[21]~input_o\ : std_logic;
SIGNAL \delay_0~21_combout\ : std_logic;
SIGNAL \delay_1~21_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \delay_2~21_combout\ : std_logic;
SIGNAL \delay_3~21_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \sum[20]~73\ : std_logic;
SIGNAL \sum[21]~74_combout\ : std_logic;
SIGNAL \y_out[21]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[21]~reg0_q\ : std_logic;
SIGNAL \x_in[22]~input_o\ : std_logic;
SIGNAL \delay_0~22_combout\ : std_logic;
SIGNAL \delay_1~22_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \delay_2~22_combout\ : std_logic;
SIGNAL \delay_3~22_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \sum[21]~75\ : std_logic;
SIGNAL \sum[22]~76_combout\ : std_logic;
SIGNAL \y_out[22]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[22]~reg0_q\ : std_logic;
SIGNAL \x_in[23]~input_o\ : std_logic;
SIGNAL \delay_0~23_combout\ : std_logic;
SIGNAL \delay_1~23_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \delay_2~23_combout\ : std_logic;
SIGNAL \delay_3~23_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \sum[22]~77\ : std_logic;
SIGNAL \sum[23]~78_combout\ : std_logic;
SIGNAL \y_out[23]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[23]~reg0_q\ : std_logic;
SIGNAL \x_in[24]~input_o\ : std_logic;
SIGNAL \delay_0~24_combout\ : std_logic;
SIGNAL \delay_1~24_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \extra_reg[24]~feeder_combout\ : std_logic;
SIGNAL \delay_2~24_combout\ : std_logic;
SIGNAL \delay_3~24_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \sum[23]~79\ : std_logic;
SIGNAL \sum[24]~80_combout\ : std_logic;
SIGNAL \y_out[24]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[24]~reg0_q\ : std_logic;
SIGNAL \x_in[25]~input_o\ : std_logic;
SIGNAL \delay_0~25_combout\ : std_logic;
SIGNAL \delay_1~25_combout\ : std_logic;
SIGNAL \extra_reg[25]~feeder_combout\ : std_logic;
SIGNAL \delay_2~25_combout\ : std_logic;
SIGNAL \delay_3~25_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \sum[24]~81\ : std_logic;
SIGNAL \sum[25]~82_combout\ : std_logic;
SIGNAL \y_out[25]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[25]~reg0_q\ : std_logic;
SIGNAL \x_in[26]~input_o\ : std_logic;
SIGNAL \delay_0~26_combout\ : std_logic;
SIGNAL \delay_1~26_combout\ : std_logic;
SIGNAL \extra_reg[26]~feeder_combout\ : std_logic;
SIGNAL \delay_2~26_combout\ : std_logic;
SIGNAL \delay_3~26_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \sum[25]~83\ : std_logic;
SIGNAL \sum[26]~84_combout\ : std_logic;
SIGNAL \y_out[26]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[26]~reg0_q\ : std_logic;
SIGNAL \x_in[27]~input_o\ : std_logic;
SIGNAL \delay_0~27_combout\ : std_logic;
SIGNAL \delay_1~27_combout\ : std_logic;
SIGNAL \delay_2~27_combout\ : std_logic;
SIGNAL \delay_3~27_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \sum[26]~85\ : std_logic;
SIGNAL \sum[27]~86_combout\ : std_logic;
SIGNAL \y_out[27]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[27]~reg0_q\ : std_logic;
SIGNAL \x_in[28]~input_o\ : std_logic;
SIGNAL \delay_0~28_combout\ : std_logic;
SIGNAL \delay_0[28]~feeder_combout\ : std_logic;
SIGNAL \delay_1~28_combout\ : std_logic;
SIGNAL \extra_reg[28]~feeder_combout\ : std_logic;
SIGNAL \delay_2~28_combout\ : std_logic;
SIGNAL \delay_3~28_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \sum[27]~87\ : std_logic;
SIGNAL \sum[28]~88_combout\ : std_logic;
SIGNAL \y_out[28]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[28]~reg0_q\ : std_logic;
SIGNAL \x_in[29]~input_o\ : std_logic;
SIGNAL \delay_0~29_combout\ : std_logic;
SIGNAL \delay_1~29_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \extra_reg[29]~feeder_combout\ : std_logic;
SIGNAL \delay_2~29_combout\ : std_logic;
SIGNAL \delay_3~29_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \sum[28]~89\ : std_logic;
SIGNAL \sum[29]~90_combout\ : std_logic;
SIGNAL \y_out[29]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[29]~reg0_q\ : std_logic;
SIGNAL \x_in[30]~input_o\ : std_logic;
SIGNAL \delay_0~30_combout\ : std_logic;
SIGNAL \delay_1~30_combout\ : std_logic;
SIGNAL \extra_reg[30]~feeder_combout\ : std_logic;
SIGNAL \delay_2~30_combout\ : std_logic;
SIGNAL \delay_3~30_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \sum[29]~91\ : std_logic;
SIGNAL \sum[30]~92_combout\ : std_logic;
SIGNAL \y_out[30]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[30]~reg0_q\ : std_logic;
SIGNAL \x_in[31]~input_o\ : std_logic;
SIGNAL \delay_0~31_combout\ : std_logic;
SIGNAL \delay_1~31_combout\ : std_logic;
SIGNAL \delay_1[31]~feeder_combout\ : std_logic;
SIGNAL \extra_reg[31]~feeder_combout\ : std_logic;
SIGNAL \delay_2~31_combout\ : std_logic;
SIGNAL \delay_3~31_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \sum[30]~93\ : std_logic;
SIGNAL \sum[31]~94_combout\ : std_logic;
SIGNAL \y_out[31]~reg0feeder_combout\ : std_logic;
SIGNAL \y_out[31]~reg0_q\ : std_logic;
SIGNAL sum : std_logic_vector(31 DOWNTO 0);
SIGNAL delay_2 : std_logic_vector(31 DOWNTO 0);
SIGNAL delay_3 : std_logic_vector(31 DOWNTO 0);
SIGNAL delay_0 : std_logic_vector(31 DOWNTO 0);
SIGNAL delay_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL extra_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x_in <= x_in;
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X0_Y36_N16
\y_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\y_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\y_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\y_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\y_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\y_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\y_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\y_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\y_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[8]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\y_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[9]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\y_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\y_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\y_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[12]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\y_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[13]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\y_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\y_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[15]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[15]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\y_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[16]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[16]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\y_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[17]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[17]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\y_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[18]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[18]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\y_out[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[19]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[19]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\y_out[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[20]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[20]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\y_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[21]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[21]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\y_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[22]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[22]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\y_out[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[23]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[23]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\y_out[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[24]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[24]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\y_out[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[25]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\y_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[26]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[26]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\y_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[27]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[27]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\y_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[28]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[28]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\y_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[29]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[29]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\y_out[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[30]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[30]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\y_out[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_out[31]~reg0_q\,
	devoe => ww_devoe,
	o => \y_out[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X0_Y36_N8
\x_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
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

-- Location: LCCOMB_X21_Y35_N18
\delay_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~0_combout\ = (\x_in[0]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[0]~input_o\,
	datac => \reset~input_o\,
	combout => \delay_0~0_combout\);

-- Location: FF_X23_Y35_N29
\delay_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(0));

-- Location: LCCOMB_X23_Y35_N16
\delay_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~0_combout\ = (!\reset~input_o\ & delay_0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delay_0(0),
	combout => \delay_1~0_combout\);

-- Location: FF_X29_Y35_N25
\delay_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(0));

-- Location: LCCOMB_X24_Y35_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (delay_0(0) & (delay_1(0) $ (VCC))) # (!delay_0(0) & (delay_1(0) & VCC))
-- \Add0~1\ = CARRY((delay_0(0) & delay_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(0),
	datab => delay_1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X29_Y35_N11
\extra_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(0),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(0));

-- Location: LCCOMB_X29_Y35_N10
\delay_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~0_combout\ = (extra_reg(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(0),
	datad => \reset~input_o\,
	combout => \delay_2~0_combout\);

-- Location: FF_X27_Y35_N21
\delay_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(0));

-- Location: LCCOMB_X27_Y35_N22
\delay_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~0_combout\ = (delay_2(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(0),
	datad => \reset~input_o\,
	combout => \delay_3~0_combout\);

-- Location: FF_X26_Y35_N1
\delay_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(0));

-- Location: LCCOMB_X26_Y35_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (delay_2(0) & (delay_3(0) $ (VCC))) # (!delay_2(0) & (delay_3(0) & VCC))
-- \Add1~1\ = CARRY((delay_2(0) & delay_3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(0),
	datab => delay_3(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X25_Y35_N0
\sum[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[0]~32_combout\ = (\Add0~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add1~0_combout\ & VCC))
-- \sum[0]~33\ = CARRY((\Add0~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \sum[0]~32_combout\,
	cout => \sum[0]~33\);

-- Location: FF_X25_Y35_N1
\sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[0]~32_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(0));

-- Location: LCCOMB_X25_Y36_N20
\y_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[0]~reg0feeder_combout\ = sum(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(0),
	combout => \y_out[0]~reg0feeder_combout\);

-- Location: FF_X25_Y36_N21
\y_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[0]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[0]~reg0_q\);

-- Location: IOIBUF_X46_Y54_N1
\x_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: LCCOMB_X25_Y38_N6
\delay_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~1_combout\ = (\x_in[1]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[1]~input_o\,
	datac => \reset~input_o\,
	combout => \delay_0~1_combout\);

-- Location: LCCOMB_X23_Y35_N6
\delay_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0[1]~feeder_combout\ = \delay_0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_0~1_combout\,
	combout => \delay_0[1]~feeder_combout\);

-- Location: FF_X23_Y35_N7
\delay_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(1));

-- Location: LCCOMB_X29_Y35_N2
\delay_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~1_combout\ = (delay_0(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(1),
	datad => \reset~input_o\,
	combout => \delay_1~1_combout\);

-- Location: FF_X29_Y35_N3
\delay_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(1));

-- Location: LCCOMB_X24_Y35_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (delay_1(1) & ((delay_0(1) & (\Add0~1\ & VCC)) # (!delay_0(1) & (!\Add0~1\)))) # (!delay_1(1) & ((delay_0(1) & (!\Add0~1\)) # (!delay_0(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((delay_1(1) & (!delay_0(1) & !\Add0~1\)) # (!delay_1(1) & ((!\Add0~1\) # (!delay_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(1),
	datab => delay_0(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X30_Y35_N29
\extra_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(1),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(1));

-- Location: LCCOMB_X30_Y35_N28
\delay_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~1_combout\ = (extra_reg(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(1),
	datad => \reset~input_o\,
	combout => \delay_2~1_combout\);

-- Location: FF_X27_Y35_N3
\delay_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(1));

-- Location: LCCOMB_X29_Y35_N6
\delay_3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~1_combout\ = (delay_2(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(1),
	datad => \reset~input_o\,
	combout => \delay_3~1_combout\);

-- Location: FF_X26_Y35_N3
\delay_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(1));

-- Location: LCCOMB_X26_Y35_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (delay_2(1) & ((delay_3(1) & (\Add1~1\ & VCC)) # (!delay_3(1) & (!\Add1~1\)))) # (!delay_2(1) & ((delay_3(1) & (!\Add1~1\)) # (!delay_3(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((delay_2(1) & (!delay_3(1) & !\Add1~1\)) # (!delay_2(1) & ((!\Add1~1\) # (!delay_3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(1),
	datab => delay_3(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y35_N2
\sum[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[1]~34_combout\ = (\Add0~2_combout\ & ((\Add1~2_combout\ & (\sum[0]~33\ & VCC)) # (!\Add1~2_combout\ & (!\sum[0]~33\)))) # (!\Add0~2_combout\ & ((\Add1~2_combout\ & (!\sum[0]~33\)) # (!\Add1~2_combout\ & ((\sum[0]~33\) # (GND)))))
-- \sum[1]~35\ = CARRY((\Add0~2_combout\ & (!\Add1~2_combout\ & !\sum[0]~33\)) # (!\Add0~2_combout\ & ((!\sum[0]~33\) # (!\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \sum[0]~33\,
	combout => \sum[1]~34_combout\,
	cout => \sum[1]~35\);

-- Location: FF_X25_Y35_N3
\sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[1]~34_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(1));

-- Location: LCCOMB_X34_Y35_N4
\y_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[1]~reg0feeder_combout\ = sum(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(1),
	combout => \y_out[1]~reg0feeder_combout\);

-- Location: FF_X34_Y35_N5
\y_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[1]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[1]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N15
\x_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: LCCOMB_X29_Y35_N24
\delay_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~2_combout\ = (\x_in[2]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~2_combout\);

-- Location: FF_X23_Y35_N17
\delay_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(2));

-- Location: LCCOMB_X23_Y35_N0
\delay_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~2_combout\ = (!\reset~input_o\ & delay_0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delay_0(2),
	combout => \delay_1~2_combout\);

-- Location: FF_X29_Y35_N1
\delay_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(2));

-- Location: FF_X29_Y35_N19
\extra_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(2),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(2));

-- Location: LCCOMB_X29_Y35_N26
\delay_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~2_combout\ = (extra_reg(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(2),
	datad => \reset~input_o\,
	combout => \delay_2~2_combout\);

-- Location: FF_X29_Y35_N27
\delay_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(2));

-- Location: LCCOMB_X27_Y35_N30
\delay_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~2_combout\ = (delay_2(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(2),
	datad => \reset~input_o\,
	combout => \delay_3~2_combout\);

-- Location: FF_X26_Y35_N5
\delay_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(2));

-- Location: LCCOMB_X26_Y35_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((delay_2(2) $ (delay_3(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((delay_2(2) & ((delay_3(2)) # (!\Add1~3\))) # (!delay_2(2) & (delay_3(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(2),
	datab => delay_3(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y35_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((delay_0(2) $ (delay_1(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((delay_0(2) & ((delay_1(2)) # (!\Add0~3\))) # (!delay_0(2) & (delay_1(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(2),
	datab => delay_1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y35_N4
\sum[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[2]~36_combout\ = ((\Add1~4_combout\ $ (\Add0~4_combout\ $ (!\sum[1]~35\)))) # (GND)
-- \sum[2]~37\ = CARRY((\Add1~4_combout\ & ((\Add0~4_combout\) # (!\sum[1]~35\))) # (!\Add1~4_combout\ & (\Add0~4_combout\ & !\sum[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \sum[1]~35\,
	combout => \sum[2]~36_combout\,
	cout => \sum[2]~37\);

-- Location: FF_X25_Y35_N5
\sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[2]~36_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(2));

-- Location: LCCOMB_X24_Y36_N12
\y_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[2]~reg0feeder_combout\ = sum(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(2),
	combout => \y_out[2]~reg0feeder_combout\);

-- Location: FF_X24_Y36_N13
\y_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[2]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[2]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N1
\x_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: LCCOMB_X23_Y35_N10
\delay_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~3_combout\ = (\x_in[3]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[3]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~3_combout\);

-- Location: FF_X23_Y35_N11
\delay_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(3));

-- Location: LCCOMB_X27_Y35_N20
\delay_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~3_combout\ = (!\reset~input_o\ & delay_0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_0(3),
	combout => \delay_1~3_combout\);

-- Location: FF_X24_Y35_N3
\delay_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(3));

-- Location: LCCOMB_X22_Y35_N28
\extra_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[3]~feeder_combout\ = delay_1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_1(3),
	combout => \extra_reg[3]~feeder_combout\);

-- Location: FF_X22_Y35_N29
\extra_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[3]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(3));

-- Location: LCCOMB_X23_Y35_N28
\delay_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~3_combout\ = (!\reset~input_o\ & extra_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => extra_reg(3),
	combout => \delay_2~3_combout\);

-- Location: FF_X26_Y35_N27
\delay_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(3));

-- Location: LCCOMB_X29_Y35_N14
\delay_3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~3_combout\ = (delay_2(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(3),
	datad => \reset~input_o\,
	combout => \delay_3~3_combout\);

-- Location: FF_X26_Y35_N7
\delay_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(3));

-- Location: LCCOMB_X26_Y35_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (delay_3(3) & ((delay_2(3) & (\Add1~5\ & VCC)) # (!delay_2(3) & (!\Add1~5\)))) # (!delay_3(3) & ((delay_2(3) & (!\Add1~5\)) # (!delay_2(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((delay_3(3) & (!delay_2(3) & !\Add1~5\)) # (!delay_3(3) & ((!\Add1~5\) # (!delay_2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(3),
	datab => delay_2(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y35_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (delay_0(3) & ((delay_1(3) & (\Add0~5\ & VCC)) # (!delay_1(3) & (!\Add0~5\)))) # (!delay_0(3) & ((delay_1(3) & (!\Add0~5\)) # (!delay_1(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((delay_0(3) & (!delay_1(3) & !\Add0~5\)) # (!delay_0(3) & ((!\Add0~5\) # (!delay_1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(3),
	datab => delay_1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y35_N6
\sum[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[3]~38_combout\ = (\Add1~6_combout\ & ((\Add0~6_combout\ & (\sum[2]~37\ & VCC)) # (!\Add0~6_combout\ & (!\sum[2]~37\)))) # (!\Add1~6_combout\ & ((\Add0~6_combout\ & (!\sum[2]~37\)) # (!\Add0~6_combout\ & ((\sum[2]~37\) # (GND)))))
-- \sum[3]~39\ = CARRY((\Add1~6_combout\ & (!\Add0~6_combout\ & !\sum[2]~37\)) # (!\Add1~6_combout\ & ((!\sum[2]~37\) # (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \sum[2]~37\,
	combout => \sum[3]~38_combout\,
	cout => \sum[3]~39\);

-- Location: FF_X25_Y35_N7
\sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[3]~38_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(3));

-- Location: LCCOMB_X26_Y36_N4
\y_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[3]~reg0feeder_combout\ = sum(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(3),
	combout => \y_out[3]~reg0feeder_combout\);

-- Location: FF_X26_Y36_N5
\y_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[3]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[3]~reg0_q\);

-- Location: IOIBUF_X22_Y39_N29
\x_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: LCCOMB_X22_Y35_N24
\delay_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~4_combout\ = (!\reset~input_o\ & \x_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \x_in[4]~input_o\,
	combout => \delay_0~4_combout\);

-- Location: LCCOMB_X23_Y35_N4
\delay_0[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0[4]~feeder_combout\ = \delay_0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_0~4_combout\,
	combout => \delay_0[4]~feeder_combout\);

-- Location: FF_X23_Y35_N5
\delay_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(4));

-- Location: LCCOMB_X23_Y35_N26
\delay_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~4_combout\ = (delay_0(4) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(4),
	datad => \reset~input_o\,
	combout => \delay_1~4_combout\);

-- Location: FF_X23_Y35_N27
\delay_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(4));

-- Location: LCCOMB_X24_Y35_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((delay_1(4) $ (delay_0(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((delay_1(4) & ((delay_0(4)) # (!\Add0~7\))) # (!delay_1(4) & (delay_0(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(4),
	datab => delay_0(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X22_Y35_N26
\extra_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[4]~feeder_combout\ = delay_1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_1(4),
	combout => \extra_reg[4]~feeder_combout\);

-- Location: FF_X22_Y35_N27
\extra_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[4]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(4));

-- Location: LCCOMB_X22_Y35_N20
\delay_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~4_combout\ = (!\reset~input_o\ & extra_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => extra_reg(4),
	combout => \delay_2~4_combout\);

-- Location: FF_X22_Y35_N21
\delay_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(4));

-- Location: LCCOMB_X22_Y35_N22
\delay_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~4_combout\ = (!\reset~input_o\ & delay_2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_2(4),
	combout => \delay_3~4_combout\);

-- Location: FF_X26_Y35_N9
\delay_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(4));

-- Location: LCCOMB_X26_Y35_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((delay_2(4) $ (delay_3(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((delay_2(4) & ((delay_3(4)) # (!\Add1~7\))) # (!delay_2(4) & (delay_3(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(4),
	datab => delay_3(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X25_Y35_N8
\sum[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[4]~40_combout\ = ((\Add0~8_combout\ $ (\Add1~8_combout\ $ (!\sum[3]~39\)))) # (GND)
-- \sum[4]~41\ = CARRY((\Add0~8_combout\ & ((\Add1~8_combout\) # (!\sum[3]~39\))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & !\sum[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \sum[3]~39\,
	combout => \sum[4]~40_combout\,
	cout => \sum[4]~41\);

-- Location: FF_X25_Y35_N9
\sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[4]~40_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(4));

-- Location: FF_X29_Y35_N31
\y_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => sum(4),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[4]~reg0_q\);

-- Location: IOIBUF_X22_Y39_N15
\x_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: LCCOMB_X22_Y35_N18
\delay_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~5_combout\ = (!\reset~input_o\ & \x_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \x_in[5]~input_o\,
	combout => \delay_0~5_combout\);

-- Location: FF_X24_Y35_N11
\delay_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(5));

-- Location: LCCOMB_X23_Y35_N24
\delay_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~5_combout\ = (delay_0(5) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(5),
	datad => \reset~input_o\,
	combout => \delay_1~5_combout\);

-- Location: FF_X23_Y35_N25
\delay_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(5));

-- Location: LCCOMB_X24_Y35_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (delay_0(5) & ((delay_1(5) & (\Add0~9\ & VCC)) # (!delay_1(5) & (!\Add0~9\)))) # (!delay_0(5) & ((delay_1(5) & (!\Add0~9\)) # (!delay_1(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((delay_0(5) & (!delay_1(5) & !\Add0~9\)) # (!delay_0(5) & ((!\Add0~9\) # (!delay_1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(5),
	datab => delay_1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X21_Y35_N16
\extra_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[5]~feeder_combout\ = delay_1(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(5),
	combout => \extra_reg[5]~feeder_combout\);

-- Location: FF_X21_Y35_N17
\extra_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[5]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(5));

-- Location: LCCOMB_X27_Y35_N12
\delay_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~5_combout\ = (extra_reg(5) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(5),
	datad => \reset~input_o\,
	combout => \delay_2~5_combout\);

-- Location: FF_X27_Y35_N13
\delay_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(5));

-- Location: LCCOMB_X27_Y35_N2
\delay_3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~5_combout\ = (delay_2(5) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(5),
	datad => \reset~input_o\,
	combout => \delay_3~5_combout\);

-- Location: FF_X26_Y35_N11
\delay_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(5));

-- Location: LCCOMB_X26_Y35_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (delay_3(5) & ((delay_2(5) & (\Add1~9\ & VCC)) # (!delay_2(5) & (!\Add1~9\)))) # (!delay_3(5) & ((delay_2(5) & (!\Add1~9\)) # (!delay_2(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((delay_3(5) & (!delay_2(5) & !\Add1~9\)) # (!delay_3(5) & ((!\Add1~9\) # (!delay_2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(5),
	datab => delay_2(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y35_N10
\sum[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[5]~42_combout\ = (\Add0~10_combout\ & ((\Add1~10_combout\ & (\sum[4]~41\ & VCC)) # (!\Add1~10_combout\ & (!\sum[4]~41\)))) # (!\Add0~10_combout\ & ((\Add1~10_combout\ & (!\sum[4]~41\)) # (!\Add1~10_combout\ & ((\sum[4]~41\) # (GND)))))
-- \sum[5]~43\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\sum[4]~41\)) # (!\Add0~10_combout\ & ((!\sum[4]~41\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \sum[4]~41\,
	combout => \sum[5]~42_combout\,
	cout => \sum[5]~43\);

-- Location: FF_X25_Y35_N11
\sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[5]~42_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(5));

-- Location: LCCOMB_X32_Y35_N8
\y_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[5]~reg0feeder_combout\ = sum(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(5),
	combout => \y_out[5]~reg0feeder_combout\);

-- Location: FF_X32_Y35_N9
\y_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[5]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[5]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N1
\x_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: LCCOMB_X23_Y35_N18
\delay_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~6_combout\ = (\x_in[6]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[6]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~6_combout\);

-- Location: FF_X23_Y35_N19
\delay_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(6));

-- Location: LCCOMB_X27_Y35_N26
\delay_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~6_combout\ = (!\reset~input_o\ & delay_0(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_0(6),
	combout => \delay_1~6_combout\);

-- Location: FF_X24_Y35_N7
\delay_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(6));

-- Location: LCCOMB_X24_Y35_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((delay_1(6) $ (delay_0(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((delay_1(6) & ((delay_0(6)) # (!\Add0~11\))) # (!delay_1(6) & (delay_0(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(6),
	datab => delay_0(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X29_Y35_N5
\extra_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(6),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(6));

-- Location: LCCOMB_X29_Y35_N4
\delay_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~6_combout\ = (extra_reg(6) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(6),
	datad => \reset~input_o\,
	combout => \delay_2~6_combout\);

-- Location: FF_X27_Y35_N7
\delay_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(6));

-- Location: LCCOMB_X27_Y35_N16
\delay_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~6_combout\ = (delay_2(6) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(6),
	datad => \reset~input_o\,
	combout => \delay_3~6_combout\);

-- Location: FF_X27_Y35_N17
\delay_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(6));

-- Location: LCCOMB_X26_Y35_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((delay_2(6) $ (delay_3(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((delay_2(6) & ((delay_3(6)) # (!\Add1~11\))) # (!delay_2(6) & (delay_3(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(6),
	datab => delay_3(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X25_Y35_N12
\sum[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[6]~44_combout\ = ((\Add0~12_combout\ $ (\Add1~12_combout\ $ (!\sum[5]~43\)))) # (GND)
-- \sum[6]~45\ = CARRY((\Add0~12_combout\ & ((\Add1~12_combout\) # (!\sum[5]~43\))) # (!\Add0~12_combout\ & (\Add1~12_combout\ & !\sum[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \sum[5]~43\,
	combout => \sum[6]~44_combout\,
	cout => \sum[6]~45\);

-- Location: FF_X25_Y35_N13
\sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[6]~44_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(6));

-- Location: LCCOMB_X26_Y36_N2
\y_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[6]~reg0feeder_combout\ = sum(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(6),
	combout => \y_out[6]~reg0feeder_combout\);

-- Location: FF_X26_Y36_N3
\y_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[6]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[6]~reg0_q\);

-- Location: IOIBUF_X22_Y39_N22
\x_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: LCCOMB_X22_Y35_N14
\delay_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~7_combout\ = (!\reset~input_o\ & \x_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \x_in[7]~input_o\,
	combout => \delay_0~7_combout\);

-- Location: FF_X24_Y35_N19
\delay_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(7));

-- Location: LCCOMB_X22_Y35_N16
\delay_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~7_combout\ = (!\reset~input_o\ & delay_0(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_0(7),
	combout => \delay_1~7_combout\);

-- Location: FF_X23_Y35_N13
\delay_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(7));

-- Location: LCCOMB_X24_Y35_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (delay_1(7) & ((delay_0(7) & (\Add0~13\ & VCC)) # (!delay_0(7) & (!\Add0~13\)))) # (!delay_1(7) & ((delay_0(7) & (!\Add0~13\)) # (!delay_0(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((delay_1(7) & (!delay_0(7) & !\Add0~13\)) # (!delay_1(7) & ((!\Add0~13\) # (!delay_0(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(7),
	datab => delay_0(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X22_Y35_N1
\extra_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(7),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(7));

-- Location: LCCOMB_X22_Y35_N0
\delay_2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~7_combout\ = (extra_reg(7) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(7),
	datad => \reset~input_o\,
	combout => \delay_2~7_combout\);

-- Location: FF_X27_Y35_N31
\delay_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(7));

-- Location: LCCOMB_X29_Y35_N18
\delay_3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~7_combout\ = (delay_2(7) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(7),
	datad => \reset~input_o\,
	combout => \delay_3~7_combout\);

-- Location: FF_X26_Y35_N15
\delay_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(7));

-- Location: LCCOMB_X26_Y35_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (delay_2(7) & ((delay_3(7) & (\Add1~13\ & VCC)) # (!delay_3(7) & (!\Add1~13\)))) # (!delay_2(7) & ((delay_3(7) & (!\Add1~13\)) # (!delay_3(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((delay_2(7) & (!delay_3(7) & !\Add1~13\)) # (!delay_2(7) & ((!\Add1~13\) # (!delay_3(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(7),
	datab => delay_3(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X25_Y35_N14
\sum[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[7]~46_combout\ = (\Add0~14_combout\ & ((\Add1~14_combout\ & (\sum[6]~45\ & VCC)) # (!\Add1~14_combout\ & (!\sum[6]~45\)))) # (!\Add0~14_combout\ & ((\Add1~14_combout\ & (!\sum[6]~45\)) # (!\Add1~14_combout\ & ((\sum[6]~45\) # (GND)))))
-- \sum[7]~47\ = CARRY((\Add0~14_combout\ & (!\Add1~14_combout\ & !\sum[6]~45\)) # (!\Add0~14_combout\ & ((!\sum[6]~45\) # (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \sum[6]~45\,
	combout => \sum[7]~46_combout\,
	cout => \sum[7]~47\);

-- Location: FF_X25_Y35_N15
\sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[7]~46_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(7));

-- Location: LCCOMB_X26_Y36_N12
\y_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[7]~reg0feeder_combout\ = sum(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(7),
	combout => \y_out[7]~reg0feeder_combout\);

-- Location: FF_X26_Y36_N13
\y_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[7]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[7]~reg0_q\);

-- Location: IOIBUF_X0_Y36_N22
\x_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: LCCOMB_X22_Y35_N10
\delay_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~8_combout\ = (\x_in[8]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[8]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~8_combout\);

-- Location: FF_X24_Y35_N31
\delay_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(8));

-- Location: LCCOMB_X22_Y35_N12
\delay_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~8_combout\ = (!\reset~input_o\ & delay_0(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_0(8),
	combout => \delay_1~8_combout\);

-- Location: FF_X24_Y35_N25
\delay_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(8));

-- Location: LCCOMB_X24_Y35_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((delay_0(8) $ (delay_1(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((delay_0(8) & ((delay_1(8)) # (!\Add0~15\))) # (!delay_0(8) & (delay_1(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(8),
	datab => delay_1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X30_Y35_N22
\extra_reg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[8]~feeder_combout\ = delay_1(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(8),
	combout => \extra_reg[8]~feeder_combout\);

-- Location: FF_X30_Y35_N23
\extra_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[8]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(8));

-- Location: LCCOMB_X27_Y35_N28
\delay_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~8_combout\ = (extra_reg(8) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(8),
	datad => \reset~input_o\,
	combout => \delay_2~8_combout\);

-- Location: FF_X27_Y35_N29
\delay_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(8));

-- Location: LCCOMB_X27_Y35_N6
\delay_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~8_combout\ = (delay_2(8) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(8),
	datad => \reset~input_o\,
	combout => \delay_3~8_combout\);

-- Location: FF_X26_Y35_N25
\delay_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(8));

-- Location: LCCOMB_X26_Y35_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((delay_2(8) $ (delay_3(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((delay_2(8) & ((delay_3(8)) # (!\Add1~15\))) # (!delay_2(8) & (delay_3(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(8),
	datab => delay_3(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X25_Y35_N16
\sum[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[8]~48_combout\ = ((\Add0~16_combout\ $ (\Add1~16_combout\ $ (!\sum[7]~47\)))) # (GND)
-- \sum[8]~49\ = CARRY((\Add0~16_combout\ & ((\Add1~16_combout\) # (!\sum[7]~47\))) # (!\Add0~16_combout\ & (\Add1~16_combout\ & !\sum[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \sum[7]~47\,
	combout => \sum[8]~48_combout\,
	cout => \sum[8]~49\);

-- Location: FF_X25_Y35_N17
\sum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[8]~48_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(8));

-- Location: LCCOMB_X26_Y36_N14
\y_out[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[8]~reg0feeder_combout\ = sum(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(8),
	combout => \y_out[8]~reg0feeder_combout\);

-- Location: FF_X26_Y36_N15
\y_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[8]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[8]~reg0_q\);

-- Location: IOIBUF_X31_Y39_N15
\x_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(9),
	o => \x_in[9]~input_o\);

-- Location: LCCOMB_X31_Y35_N14
\delay_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~9_combout\ = (\x_in[9]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[9]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~9_combout\);

-- Location: FF_X24_Y35_N1
\delay_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(9));

-- Location: LCCOMB_X23_Y35_N12
\delay_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~9_combout\ = (delay_0(9) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(9),
	datad => \reset~input_o\,
	combout => \delay_1~9_combout\);

-- Location: FF_X24_Y35_N17
\delay_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(9));

-- Location: FF_X29_Y35_N9
\extra_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(9),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(9));

-- Location: LCCOMB_X29_Y35_N8
\delay_2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~9_combout\ = (extra_reg(9) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(9),
	datad => \reset~input_o\,
	combout => \delay_2~9_combout\);

-- Location: FF_X27_Y35_N23
\delay_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(9));

-- Location: LCCOMB_X27_Y35_N4
\delay_3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~9_combout\ = (delay_2(9) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(9),
	datad => \reset~input_o\,
	combout => \delay_3~9_combout\);

-- Location: FF_X27_Y35_N5
\delay_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(9));

-- Location: LCCOMB_X26_Y35_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (delay_3(9) & ((delay_2(9) & (\Add1~17\ & VCC)) # (!delay_2(9) & (!\Add1~17\)))) # (!delay_3(9) & ((delay_2(9) & (!\Add1~17\)) # (!delay_2(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((delay_3(9) & (!delay_2(9) & !\Add1~17\)) # (!delay_3(9) & ((!\Add1~17\) # (!delay_2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(9),
	datab => delay_2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X24_Y35_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (delay_1(9) & ((delay_0(9) & (\Add0~17\ & VCC)) # (!delay_0(9) & (!\Add0~17\)))) # (!delay_1(9) & ((delay_0(9) & (!\Add0~17\)) # (!delay_0(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((delay_1(9) & (!delay_0(9) & !\Add0~17\)) # (!delay_1(9) & ((!\Add0~17\) # (!delay_0(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(9),
	datab => delay_0(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X25_Y35_N18
\sum[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[9]~50_combout\ = (\Add1~18_combout\ & ((\Add0~18_combout\ & (\sum[8]~49\ & VCC)) # (!\Add0~18_combout\ & (!\sum[8]~49\)))) # (!\Add1~18_combout\ & ((\Add0~18_combout\ & (!\sum[8]~49\)) # (!\Add0~18_combout\ & ((\sum[8]~49\) # (GND)))))
-- \sum[9]~51\ = CARRY((\Add1~18_combout\ & (!\Add0~18_combout\ & !\sum[8]~49\)) # (!\Add1~18_combout\ & ((!\sum[8]~49\) # (!\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \sum[8]~49\,
	combout => \sum[9]~50_combout\,
	cout => \sum[9]~51\);

-- Location: FF_X25_Y35_N19
\sum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[9]~50_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(9));

-- Location: LCCOMB_X32_Y35_N2
\y_out[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[9]~reg0feeder_combout\ = sum(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(9),
	combout => \y_out[9]~reg0feeder_combout\);

-- Location: FF_X32_Y35_N3
\y_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[9]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[9]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N8
\x_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(10),
	o => \x_in[10]~input_o\);

-- Location: LCCOMB_X29_Y35_N0
\delay_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~10_combout\ = (\x_in[10]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[10]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~10_combout\);

-- Location: LCCOMB_X23_Y35_N22
\delay_0[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0[10]~feeder_combout\ = \delay_0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_0~10_combout\,
	combout => \delay_0[10]~feeder_combout\);

-- Location: FF_X23_Y35_N23
\delay_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(10));

-- Location: LCCOMB_X23_Y35_N8
\delay_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~10_combout\ = (delay_0(10) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(10),
	datad => \reset~input_o\,
	combout => \delay_1~10_combout\);

-- Location: FF_X23_Y35_N9
\delay_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(10));

-- Location: FF_X30_Y35_N13
\extra_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(10),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(10));

-- Location: LCCOMB_X30_Y35_N12
\delay_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~10_combout\ = (extra_reg(10) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(10),
	datad => \reset~input_o\,
	combout => \delay_2~10_combout\);

-- Location: FF_X27_Y35_N27
\delay_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(10));

-- Location: LCCOMB_X27_Y35_N24
\delay_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~10_combout\ = (delay_2(10) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(10),
	datad => \reset~input_o\,
	combout => \delay_3~10_combout\);

-- Location: FF_X27_Y35_N25
\delay_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(10));

-- Location: LCCOMB_X26_Y35_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((delay_3(10) $ (delay_2(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((delay_3(10) & ((delay_2(10)) # (!\Add1~19\))) # (!delay_3(10) & (delay_2(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(10),
	datab => delay_2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X24_Y35_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((delay_1(10) $ (delay_0(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((delay_1(10) & ((delay_0(10)) # (!\Add0~19\))) # (!delay_1(10) & (delay_0(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(10),
	datab => delay_0(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X25_Y35_N20
\sum[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[10]~52_combout\ = ((\Add1~20_combout\ $ (\Add0~20_combout\ $ (!\sum[9]~51\)))) # (GND)
-- \sum[10]~53\ = CARRY((\Add1~20_combout\ & ((\Add0~20_combout\) # (!\sum[9]~51\))) # (!\Add1~20_combout\ & (\Add0~20_combout\ & !\sum[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \sum[9]~51\,
	combout => \sum[10]~52_combout\,
	cout => \sum[10]~53\);

-- Location: FF_X25_Y35_N21
\sum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[10]~52_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(10));

-- Location: LCCOMB_X31_Y35_N0
\y_out[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[10]~reg0feeder_combout\ = sum(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(10),
	combout => \y_out[10]~reg0feeder_combout\);

-- Location: FF_X31_Y35_N1
\y_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[10]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[10]~reg0_q\);

-- Location: IOIBUF_X31_Y39_N1
\x_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(11),
	o => \x_in[11]~input_o\);

-- Location: LCCOMB_X25_Y36_N30
\delay_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~11_combout\ = (!\reset~input_o\ & \x_in[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \x_in[11]~input_o\,
	combout => \delay_0~11_combout\);

-- Location: FF_X24_Y35_N29
\delay_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(11));

-- Location: LCCOMB_X29_Y35_N28
\delay_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~11_combout\ = (delay_0(11) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(11),
	datad => \reset~input_o\,
	combout => \delay_1~11_combout\);

-- Location: FF_X29_Y35_N29
\delay_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(11));

-- Location: FF_X29_Y35_N21
\extra_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(11),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(11));

-- Location: LCCOMB_X29_Y35_N20
\delay_2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~11_combout\ = (extra_reg(11) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(11),
	datad => \reset~input_o\,
	combout => \delay_2~11_combout\);

-- Location: LCCOMB_X27_Y35_N14
\delay_2[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2[11]~feeder_combout\ = \delay_2~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_2~11_combout\,
	combout => \delay_2[11]~feeder_combout\);

-- Location: FF_X27_Y35_N15
\delay_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(11));

-- Location: LCCOMB_X27_Y35_N0
\delay_3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~11_combout\ = (delay_2(11) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(11),
	datad => \reset~input_o\,
	combout => \delay_3~11_combout\);

-- Location: FF_X27_Y35_N1
\delay_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(11));

-- Location: LCCOMB_X26_Y35_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (delay_2(11) & ((delay_3(11) & (\Add1~21\ & VCC)) # (!delay_3(11) & (!\Add1~21\)))) # (!delay_2(11) & ((delay_3(11) & (!\Add1~21\)) # (!delay_3(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((delay_2(11) & (!delay_3(11) & !\Add1~21\)) # (!delay_2(11) & ((!\Add1~21\) # (!delay_3(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(11),
	datab => delay_3(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X24_Y35_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (delay_1(11) & ((delay_0(11) & (\Add0~21\ & VCC)) # (!delay_0(11) & (!\Add0~21\)))) # (!delay_1(11) & ((delay_0(11) & (!\Add0~21\)) # (!delay_0(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((delay_1(11) & (!delay_0(11) & !\Add0~21\)) # (!delay_1(11) & ((!\Add0~21\) # (!delay_0(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(11),
	datab => delay_0(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X25_Y35_N22
\sum[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[11]~54_combout\ = (\Add1~22_combout\ & ((\Add0~22_combout\ & (\sum[10]~53\ & VCC)) # (!\Add0~22_combout\ & (!\sum[10]~53\)))) # (!\Add1~22_combout\ & ((\Add0~22_combout\ & (!\sum[10]~53\)) # (!\Add0~22_combout\ & ((\sum[10]~53\) # (GND)))))
-- \sum[11]~55\ = CARRY((\Add1~22_combout\ & (!\Add0~22_combout\ & !\sum[10]~53\)) # (!\Add1~22_combout\ & ((!\sum[10]~53\) # (!\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \sum[10]~53\,
	combout => \sum[11]~54_combout\,
	cout => \sum[11]~55\);

-- Location: FF_X25_Y35_N23
\sum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[11]~54_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(11));

-- Location: LCCOMB_X22_Y34_N0
\y_out[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[11]~reg0feeder_combout\ = sum(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(11),
	combout => \y_out[11]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N1
\y_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[11]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[11]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N22
\x_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(12),
	o => \x_in[12]~input_o\);

-- Location: LCCOMB_X23_Y35_N2
\delay_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~12_combout\ = (\x_in[12]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[12]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~12_combout\);

-- Location: FF_X23_Y35_N3
\delay_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(12));

-- Location: LCCOMB_X23_Y35_N20
\delay_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~12_combout\ = (delay_0(12) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(12),
	datad => \reset~input_o\,
	combout => \delay_1~12_combout\);

-- Location: FF_X23_Y35_N21
\delay_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(12));

-- Location: LCCOMB_X31_Y35_N24
\extra_reg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[12]~feeder_combout\ = delay_1(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_1(12),
	combout => \extra_reg[12]~feeder_combout\);

-- Location: FF_X31_Y35_N25
\extra_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[12]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(12));

-- Location: LCCOMB_X32_Y35_N22
\delay_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~12_combout\ = (extra_reg(12) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(12),
	datac => \reset~input_o\,
	combout => \delay_2~12_combout\);

-- Location: LCCOMB_X30_Y35_N4
\delay_2[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2[12]~feeder_combout\ = \delay_2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_2~12_combout\,
	combout => \delay_2[12]~feeder_combout\);

-- Location: FF_X30_Y35_N5
\delay_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(12));

-- Location: LCCOMB_X30_Y35_N26
\delay_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~12_combout\ = (delay_2(12) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(12),
	datad => \reset~input_o\,
	combout => \delay_3~12_combout\);

-- Location: LCCOMB_X27_Y35_N18
\delay_3[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3[12]~feeder_combout\ = \delay_3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_3~12_combout\,
	combout => \delay_3[12]~feeder_combout\);

-- Location: FF_X27_Y35_N19
\delay_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(12));

-- Location: LCCOMB_X26_Y35_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((delay_2(12) $ (delay_3(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((delay_2(12) & ((delay_3(12)) # (!\Add1~23\))) # (!delay_2(12) & (delay_3(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(12),
	datab => delay_3(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X24_Y35_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((delay_0(12) $ (delay_1(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((delay_0(12) & ((delay_1(12)) # (!\Add0~23\))) # (!delay_0(12) & (delay_1(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(12),
	datab => delay_1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y35_N24
\sum[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[12]~56_combout\ = ((\Add1~24_combout\ $ (\Add0~24_combout\ $ (!\sum[11]~55\)))) # (GND)
-- \sum[12]~57\ = CARRY((\Add1~24_combout\ & ((\Add0~24_combout\) # (!\sum[11]~55\))) # (!\Add1~24_combout\ & (\Add0~24_combout\ & !\sum[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \sum[11]~55\,
	combout => \sum[12]~56_combout\,
	cout => \sum[12]~57\);

-- Location: FF_X25_Y35_N25
\sum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[12]~56_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(12));

-- Location: LCCOMB_X22_Y34_N2
\y_out[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[12]~reg0feeder_combout\ = sum(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(12),
	combout => \y_out[12]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N3
\y_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[12]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[12]~reg0_q\);

-- Location: IOIBUF_X49_Y54_N1
\x_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(13),
	o => \x_in[13]~input_o\);

-- Location: LCCOMB_X29_Y35_N12
\delay_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~13_combout\ = (!\reset~input_o\ & \x_in[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \x_in[13]~input_o\,
	combout => \delay_0~13_combout\);

-- Location: FF_X29_Y35_N13
\delay_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(13));

-- Location: LCCOMB_X23_Y35_N30
\delay_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~13_combout\ = (delay_0(13) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(13),
	datad => \reset~input_o\,
	combout => \delay_1~13_combout\);

-- Location: FF_X23_Y35_N31
\delay_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(13));

-- Location: LCCOMB_X24_Y35_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (delay_0(13) & ((delay_1(13) & (\Add0~25\ & VCC)) # (!delay_1(13) & (!\Add0~25\)))) # (!delay_0(13) & ((delay_1(13) & (!\Add0~25\)) # (!delay_1(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((delay_0(13) & (!delay_1(13) & !\Add0~25\)) # (!delay_0(13) & ((!\Add0~25\) # (!delay_1(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(13),
	datab => delay_1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X31_Y35_N2
\extra_reg[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[13]~feeder_combout\ = delay_1(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(13),
	combout => \extra_reg[13]~feeder_combout\);

-- Location: FF_X31_Y35_N3
\extra_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[13]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(13));

-- Location: LCCOMB_X27_Y35_N8
\delay_2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~13_combout\ = (extra_reg(13) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => extra_reg(13),
	datad => \reset~input_o\,
	combout => \delay_2~13_combout\);

-- Location: FF_X27_Y35_N9
\delay_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(13));

-- Location: LCCOMB_X27_Y35_N10
\delay_3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~13_combout\ = (delay_2(13) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(13),
	datad => \reset~input_o\,
	combout => \delay_3~13_combout\);

-- Location: FF_X27_Y35_N11
\delay_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(13));

-- Location: LCCOMB_X26_Y35_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (delay_2(13) & ((delay_3(13) & (\Add1~25\ & VCC)) # (!delay_3(13) & (!\Add1~25\)))) # (!delay_2(13) & ((delay_3(13) & (!\Add1~25\)) # (!delay_3(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((delay_2(13) & (!delay_3(13) & !\Add1~25\)) # (!delay_2(13) & ((!\Add1~25\) # (!delay_3(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(13),
	datab => delay_3(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X25_Y35_N26
\sum[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[13]~58_combout\ = (\Add0~26_combout\ & ((\Add1~26_combout\ & (\sum[12]~57\ & VCC)) # (!\Add1~26_combout\ & (!\sum[12]~57\)))) # (!\Add0~26_combout\ & ((\Add1~26_combout\ & (!\sum[12]~57\)) # (!\Add1~26_combout\ & ((\sum[12]~57\) # (GND)))))
-- \sum[13]~59\ = CARRY((\Add0~26_combout\ & (!\Add1~26_combout\ & !\sum[12]~57\)) # (!\Add0~26_combout\ & ((!\sum[12]~57\) # (!\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add1~26_combout\,
	datad => VCC,
	cin => \sum[12]~57\,
	combout => \sum[13]~58_combout\,
	cout => \sum[13]~59\);

-- Location: FF_X25_Y35_N27
\sum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[13]~58_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(13));

-- Location: LCCOMB_X22_Y35_N4
\y_out[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[13]~reg0feeder_combout\ = sum(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(13),
	combout => \y_out[13]~reg0feeder_combout\);

-- Location: FF_X22_Y35_N5
\y_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[13]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[13]~reg0_q\);

-- Location: IOIBUF_X0_Y27_N15
\x_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(14),
	o => \x_in[14]~input_o\);

-- Location: LCCOMB_X23_Y34_N12
\delay_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~14_combout\ = (\x_in[14]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[14]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~14_combout\);

-- Location: LCCOMB_X22_Y35_N30
\delay_0[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0[14]~feeder_combout\ = \delay_0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_0~14_combout\,
	combout => \delay_0[14]~feeder_combout\);

-- Location: FF_X22_Y35_N31
\delay_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(14));

-- Location: LCCOMB_X23_Y34_N28
\delay_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~14_combout\ = (delay_0(14) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(14),
	datad => \reset~input_o\,
	combout => \delay_1~14_combout\);

-- Location: FF_X23_Y35_N1
\delay_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(14));

-- Location: FF_X29_Y35_N7
\extra_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(14),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(14));

-- Location: LCCOMB_X29_Y35_N22
\delay_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~14_combout\ = (extra_reg(14) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => extra_reg(14),
	datad => \reset~input_o\,
	combout => \delay_2~14_combout\);

-- Location: FF_X29_Y35_N23
\delay_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(14));

-- Location: LCCOMB_X29_Y35_N16
\delay_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~14_combout\ = (delay_2(14) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(14),
	datad => \reset~input_o\,
	combout => \delay_3~14_combout\);

-- Location: FF_X29_Y35_N17
\delay_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(14));

-- Location: LCCOMB_X26_Y35_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((delay_3(14) $ (delay_2(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((delay_3(14) & ((delay_2(14)) # (!\Add1~27\))) # (!delay_3(14) & (delay_2(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(14),
	datab => delay_2(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y35_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((delay_1(14) $ (delay_0(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((delay_1(14) & ((delay_0(14)) # (!\Add0~27\))) # (!delay_1(14) & (delay_0(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(14),
	datab => delay_0(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X25_Y35_N28
\sum[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[14]~60_combout\ = ((\Add1~28_combout\ $ (\Add0~28_combout\ $ (!\sum[13]~59\)))) # (GND)
-- \sum[14]~61\ = CARRY((\Add1~28_combout\ & ((\Add0~28_combout\) # (!\sum[13]~59\))) # (!\Add1~28_combout\ & (\Add0~28_combout\ & !\sum[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \sum[13]~59\,
	combout => \sum[14]~60_combout\,
	cout => \sum[14]~61\);

-- Location: FF_X25_Y35_N29
\sum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[14]~60_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(14));

-- Location: FF_X22_Y35_N23
\y_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => sum(14),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[14]~reg0_q\);

-- Location: IOIBUF_X0_Y37_N8
\x_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(15),
	o => \x_in[15]~input_o\);

-- Location: LCCOMB_X24_Y36_N30
\delay_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~15_combout\ = (!\reset~input_o\ & \x_in[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x_in[15]~input_o\,
	combout => \delay_0~15_combout\);

-- Location: FF_X24_Y36_N31
\delay_0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(15));

-- Location: LCCOMB_X23_Y35_N14
\delay_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~15_combout\ = (delay_0(15) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(15),
	datad => \reset~input_o\,
	combout => \delay_1~15_combout\);

-- Location: FF_X23_Y35_N15
\delay_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(15));

-- Location: LCCOMB_X30_Y35_N24
\extra_reg[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[15]~feeder_combout\ = delay_1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(15),
	combout => \extra_reg[15]~feeder_combout\);

-- Location: FF_X30_Y35_N25
\extra_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[15]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(15));

-- Location: LCCOMB_X30_Y35_N6
\delay_2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~15_combout\ = (extra_reg(15) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(15),
	datad => \reset~input_o\,
	combout => \delay_2~15_combout\);

-- Location: FF_X30_Y35_N7
\delay_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(15));

-- Location: LCCOMB_X30_Y35_N10
\delay_3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~15_combout\ = (delay_2(15) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(15),
	datad => \reset~input_o\,
	combout => \delay_3~15_combout\);

-- Location: FF_X29_Y35_N15
\delay_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(15));

-- Location: LCCOMB_X26_Y35_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (delay_3(15) & ((delay_2(15) & (\Add1~29\ & VCC)) # (!delay_2(15) & (!\Add1~29\)))) # (!delay_3(15) & ((delay_2(15) & (!\Add1~29\)) # (!delay_2(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((delay_3(15) & (!delay_2(15) & !\Add1~29\)) # (!delay_3(15) & ((!\Add1~29\) # (!delay_2(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(15),
	datab => delay_2(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X24_Y35_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (delay_1(15) & ((delay_0(15) & (\Add0~29\ & VCC)) # (!delay_0(15) & (!\Add0~29\)))) # (!delay_1(15) & ((delay_0(15) & (!\Add0~29\)) # (!delay_0(15) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((delay_1(15) & (!delay_0(15) & !\Add0~29\)) # (!delay_1(15) & ((!\Add0~29\) # (!delay_0(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(15),
	datab => delay_0(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X25_Y35_N30
\sum[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[15]~62_combout\ = (\Add1~30_combout\ & ((\Add0~30_combout\ & (\sum[14]~61\ & VCC)) # (!\Add0~30_combout\ & (!\sum[14]~61\)))) # (!\Add1~30_combout\ & ((\Add0~30_combout\ & (!\sum[14]~61\)) # (!\Add0~30_combout\ & ((\sum[14]~61\) # (GND)))))
-- \sum[15]~63\ = CARRY((\Add1~30_combout\ & (!\Add0~30_combout\ & !\sum[14]~61\)) # (!\Add1~30_combout\ & ((!\sum[14]~61\) # (!\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \sum[14]~61\,
	combout => \sum[15]~62_combout\,
	cout => \sum[15]~63\);

-- Location: FF_X25_Y35_N31
\sum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[15]~62_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(15));

-- Location: LCCOMB_X22_Y34_N16
\y_out[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[15]~reg0feeder_combout\ = sum(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(15),
	combout => \y_out[15]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N17
\y_out[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[15]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[15]~reg0_q\);

-- Location: IOIBUF_X0_Y37_N1
\x_in[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(16),
	o => \x_in[16]~input_o\);

-- Location: LCCOMB_X24_Y37_N12
\delay_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~16_combout\ = (\x_in[16]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[16]~input_o\,
	datac => \reset~input_o\,
	combout => \delay_0~16_combout\);

-- Location: FF_X24_Y34_N9
\delay_0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(16));

-- Location: LCCOMB_X23_Y34_N26
\delay_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~16_combout\ = (delay_0(16) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(16),
	datad => \reset~input_o\,
	combout => \delay_1~16_combout\);

-- Location: FF_X24_Y34_N19
\delay_1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(16));

-- Location: LCCOMB_X24_Y34_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((delay_1(16) $ (delay_0(16) $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((delay_1(16) & ((delay_0(16)) # (!\Add0~31\))) # (!delay_1(16) & (delay_0(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(16),
	datab => delay_0(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X27_Y34_N15
\extra_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(16),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(16));

-- Location: LCCOMB_X27_Y34_N16
\delay_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~16_combout\ = (extra_reg(16) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(16),
	datad => \reset~input_o\,
	combout => \delay_2~16_combout\);

-- Location: FF_X26_Y34_N17
\delay_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(16));

-- Location: LCCOMB_X27_Y34_N0
\delay_3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~16_combout\ = (delay_2(16) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(16),
	datad => \reset~input_o\,
	combout => \delay_3~16_combout\);

-- Location: FF_X26_Y34_N1
\delay_3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(16));

-- Location: LCCOMB_X26_Y34_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((delay_2(16) $ (delay_3(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((delay_2(16) & ((delay_3(16)) # (!\Add1~31\))) # (!delay_2(16) & (delay_3(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(16),
	datab => delay_3(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X25_Y34_N0
\sum[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[16]~64_combout\ = ((\Add0~32_combout\ $ (\Add1~32_combout\ $ (!\sum[15]~63\)))) # (GND)
-- \sum[16]~65\ = CARRY((\Add0~32_combout\ & ((\Add1~32_combout\) # (!\sum[15]~63\))) # (!\Add0~32_combout\ & (\Add1~32_combout\ & !\sum[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add1~32_combout\,
	datad => VCC,
	cin => \sum[15]~63\,
	combout => \sum[16]~64_combout\,
	cout => \sum[16]~65\);

-- Location: FF_X25_Y34_N1
\sum[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[16]~64_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(16));

-- Location: LCCOMB_X22_Y34_N10
\y_out[16]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[16]~reg0feeder_combout\ = sum(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(16),
	combout => \y_out[16]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N11
\y_out[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[16]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[16]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N22
\x_in[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(17),
	o => \x_in[17]~input_o\);

-- Location: LCCOMB_X26_Y36_N8
\delay_0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~17_combout\ = (!\reset~input_o\ & \x_in[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \x_in[17]~input_o\,
	combout => \delay_0~17_combout\);

-- Location: FF_X24_Y34_N3
\delay_0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(17));

-- Location: LCCOMB_X24_Y36_N0
\delay_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~17_combout\ = (!\reset~input_o\ & delay_0(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => delay_0(17),
	combout => \delay_1~17_combout\);

-- Location: FF_X24_Y34_N13
\delay_1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(17));

-- Location: LCCOMB_X24_Y34_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (delay_1(17) & ((delay_0(17) & (\Add0~33\ & VCC)) # (!delay_0(17) & (!\Add0~33\)))) # (!delay_1(17) & ((delay_0(17) & (!\Add0~33\)) # (!delay_0(17) & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((delay_1(17) & (!delay_0(17) & !\Add0~33\)) # (!delay_1(17) & ((!\Add0~33\) # (!delay_0(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(17),
	datab => delay_0(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X27_Y34_N1
\extra_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(17),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(17));

-- Location: LCCOMB_X31_Y34_N6
\delay_2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~17_combout\ = (!\reset~input_o\ & extra_reg(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => extra_reg(17),
	combout => \delay_2~17_combout\);

-- Location: FF_X26_Y34_N5
\delay_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(17));

-- Location: LCCOMB_X27_Y34_N10
\delay_3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~17_combout\ = (delay_2(17) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(17),
	datad => \reset~input_o\,
	combout => \delay_3~17_combout\);

-- Location: FF_X26_Y34_N15
\delay_3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(17));

-- Location: LCCOMB_X26_Y34_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (delay_2(17) & ((delay_3(17) & (\Add1~33\ & VCC)) # (!delay_3(17) & (!\Add1~33\)))) # (!delay_2(17) & ((delay_3(17) & (!\Add1~33\)) # (!delay_3(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((delay_2(17) & (!delay_3(17) & !\Add1~33\)) # (!delay_2(17) & ((!\Add1~33\) # (!delay_3(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(17),
	datab => delay_3(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X25_Y34_N2
\sum[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[17]~66_combout\ = (\Add0~34_combout\ & ((\Add1~34_combout\ & (\sum[16]~65\ & VCC)) # (!\Add1~34_combout\ & (!\sum[16]~65\)))) # (!\Add0~34_combout\ & ((\Add1~34_combout\ & (!\sum[16]~65\)) # (!\Add1~34_combout\ & ((\sum[16]~65\) # (GND)))))
-- \sum[17]~67\ = CARRY((\Add0~34_combout\ & (!\Add1~34_combout\ & !\sum[16]~65\)) # (!\Add0~34_combout\ & ((!\sum[16]~65\) # (!\Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add1~34_combout\,
	datad => VCC,
	cin => \sum[16]~65\,
	combout => \sum[17]~66_combout\,
	cout => \sum[17]~67\);

-- Location: FF_X25_Y34_N3
\sum[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[17]~66_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(17));

-- Location: LCCOMB_X32_Y34_N0
\y_out[17]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[17]~reg0feeder_combout\ = sum(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(17),
	combout => \y_out[17]~reg0feeder_combout\);

-- Location: FF_X32_Y34_N1
\y_out[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[17]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[17]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N15
\x_in[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(18),
	o => \x_in[18]~input_o\);

-- Location: LCCOMB_X23_Y34_N8
\delay_0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~18_combout\ = (\x_in[18]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[18]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~18_combout\);

-- Location: FF_X24_Y34_N23
\delay_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(18));

-- Location: LCCOMB_X23_Y34_N30
\delay_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~18_combout\ = (delay_0(18) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(18),
	datad => \reset~input_o\,
	combout => \delay_1~18_combout\);

-- Location: FF_X23_Y34_N31
\delay_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(18));

-- Location: LCCOMB_X31_Y34_N0
\extra_reg[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[18]~feeder_combout\ = delay_1(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(18),
	combout => \extra_reg[18]~feeder_combout\);

-- Location: FF_X31_Y34_N1
\extra_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[18]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(18));

-- Location: LCCOMB_X27_Y34_N14
\delay_2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~18_combout\ = (!\reset~input_o\ & extra_reg(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => extra_reg(18),
	combout => \delay_2~18_combout\);

-- Location: FF_X26_Y34_N29
\delay_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(18));

-- Location: LCCOMB_X27_Y34_N24
\delay_3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~18_combout\ = (!\reset~input_o\ & delay_2(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_2(18),
	combout => \delay_3~18_combout\);

-- Location: FF_X26_Y34_N25
\delay_3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(18));

-- Location: LCCOMB_X26_Y34_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((delay_3(18) $ (delay_2(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((delay_3(18) & ((delay_2(18)) # (!\Add1~35\))) # (!delay_3(18) & (delay_2(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(18),
	datab => delay_2(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X24_Y34_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((delay_0(18) $ (delay_1(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((delay_0(18) & ((delay_1(18)) # (!\Add0~35\))) # (!delay_0(18) & (delay_1(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(18),
	datab => delay_1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X25_Y34_N4
\sum[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[18]~68_combout\ = ((\Add1~36_combout\ $ (\Add0~36_combout\ $ (!\sum[17]~67\)))) # (GND)
-- \sum[18]~69\ = CARRY((\Add1~36_combout\ & ((\Add0~36_combout\) # (!\sum[17]~67\))) # (!\Add1~36_combout\ & (\Add0~36_combout\ & !\sum[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \sum[17]~67\,
	combout => \sum[18]~68_combout\,
	cout => \sum[18]~69\);

-- Location: FF_X25_Y34_N5
\sum[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[18]~68_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(18));

-- Location: LCCOMB_X22_Y34_N28
\y_out[18]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[18]~reg0feeder_combout\ = sum(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(18),
	combout => \y_out[18]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N29
\y_out[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[18]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[18]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N22
\x_in[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(19),
	o => \x_in[19]~input_o\);

-- Location: LCCOMB_X23_Y34_N0
\delay_0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~19_combout\ = (\x_in[19]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[19]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~19_combout\);

-- Location: FF_X24_Y34_N21
\delay_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(19));

-- Location: LCCOMB_X23_Y34_N16
\delay_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~19_combout\ = (delay_0(19) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(19),
	datad => \reset~input_o\,
	combout => \delay_1~19_combout\);

-- Location: FF_X24_Y34_N27
\delay_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(19));

-- Location: LCCOMB_X23_Y34_N20
\extra_reg[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[19]~feeder_combout\ = delay_1(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(19),
	combout => \extra_reg[19]~feeder_combout\);

-- Location: FF_X23_Y34_N21
\extra_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[19]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(19));

-- Location: LCCOMB_X27_Y34_N12
\delay_2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~19_combout\ = (!\reset~input_o\ & extra_reg(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => extra_reg(19),
	combout => \delay_2~19_combout\);

-- Location: FF_X26_Y34_N21
\delay_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(19));

-- Location: LCCOMB_X27_Y34_N30
\delay_3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~19_combout\ = (!\reset~input_o\ & delay_2(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_2(19),
	combout => \delay_3~19_combout\);

-- Location: FF_X26_Y34_N31
\delay_3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(19));

-- Location: LCCOMB_X26_Y34_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (delay_3(19) & ((delay_2(19) & (\Add1~37\ & VCC)) # (!delay_2(19) & (!\Add1~37\)))) # (!delay_3(19) & ((delay_2(19) & (!\Add1~37\)) # (!delay_2(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((delay_3(19) & (!delay_2(19) & !\Add1~37\)) # (!delay_3(19) & ((!\Add1~37\) # (!delay_2(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(19),
	datab => delay_2(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X24_Y34_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (delay_1(19) & ((delay_0(19) & (\Add0~37\ & VCC)) # (!delay_0(19) & (!\Add0~37\)))) # (!delay_1(19) & ((delay_0(19) & (!\Add0~37\)) # (!delay_0(19) & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((delay_1(19) & (!delay_0(19) & !\Add0~37\)) # (!delay_1(19) & ((!\Add0~37\) # (!delay_0(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(19),
	datab => delay_0(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X25_Y34_N6
\sum[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[19]~70_combout\ = (\Add1~38_combout\ & ((\Add0~38_combout\ & (\sum[18]~69\ & VCC)) # (!\Add0~38_combout\ & (!\sum[18]~69\)))) # (!\Add1~38_combout\ & ((\Add0~38_combout\ & (!\sum[18]~69\)) # (!\Add0~38_combout\ & ((\sum[18]~69\) # (GND)))))
-- \sum[19]~71\ = CARRY((\Add1~38_combout\ & (!\Add0~38_combout\ & !\sum[18]~69\)) # (!\Add1~38_combout\ & ((!\sum[18]~69\) # (!\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \sum[18]~69\,
	combout => \sum[19]~70_combout\,
	cout => \sum[19]~71\);

-- Location: FF_X25_Y34_N7
\sum[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[19]~70_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(19));

-- Location: LCCOMB_X22_Y34_N30
\y_out[19]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[19]~reg0feeder_combout\ = sum(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(19),
	combout => \y_out[19]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N31
\y_out[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[19]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[19]~reg0_q\);

-- Location: IOIBUF_X0_Y30_N22
\x_in[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(20),
	o => \x_in[20]~input_o\);

-- Location: LCCOMB_X23_Y34_N2
\delay_0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~20_combout\ = (\x_in[20]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[20]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~20_combout\);

-- Location: FF_X24_Y34_N15
\delay_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(20));

-- Location: LCCOMB_X23_Y34_N18
\delay_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~20_combout\ = (delay_0(20) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(20),
	datad => \reset~input_o\,
	combout => \delay_1~20_combout\);

-- Location: FF_X23_Y34_N19
\delay_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(20));

-- Location: LCCOMB_X24_Y34_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((delay_0(20) $ (delay_1(20) $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((delay_0(20) & ((delay_1(20)) # (!\Add0~39\))) # (!delay_0(20) & (delay_1(20) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(20),
	datab => delay_1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X23_Y34_N25
\extra_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(20),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(20));

-- Location: LCCOMB_X23_Y34_N24
\delay_2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~20_combout\ = (extra_reg(20) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(20),
	datad => \reset~input_o\,
	combout => \delay_2~20_combout\);

-- Location: FF_X27_Y34_N13
\delay_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(20));

-- Location: LCCOMB_X27_Y34_N6
\delay_3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~20_combout\ = (!\reset~input_o\ & delay_2(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_2(20),
	combout => \delay_3~20_combout\);

-- Location: FF_X27_Y34_N7
\delay_3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(20));

-- Location: LCCOMB_X26_Y34_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((delay_3(20) $ (delay_2(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((delay_3(20) & ((delay_2(20)) # (!\Add1~39\))) # (!delay_3(20) & (delay_2(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(20),
	datab => delay_2(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X25_Y34_N8
\sum[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[20]~72_combout\ = ((\Add0~40_combout\ $ (\Add1~40_combout\ $ (!\sum[19]~71\)))) # (GND)
-- \sum[20]~73\ = CARRY((\Add0~40_combout\ & ((\Add1~40_combout\) # (!\sum[19]~71\))) # (!\Add0~40_combout\ & (\Add1~40_combout\ & !\sum[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add1~40_combout\,
	datad => VCC,
	cin => \sum[19]~71\,
	combout => \sum[20]~72_combout\,
	cout => \sum[20]~73\);

-- Location: FF_X25_Y34_N9
\sum[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[20]~72_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(20));

-- Location: LCCOMB_X22_Y34_N4
\y_out[20]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[20]~reg0feeder_combout\ = sum(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(20),
	combout => \y_out[20]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N5
\y_out[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[20]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[20]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N29
\x_in[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(21),
	o => \x_in[21]~input_o\);

-- Location: LCCOMB_X25_Y37_N28
\delay_0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~21_combout\ = (!\reset~input_o\ & \x_in[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \x_in[21]~input_o\,
	combout => \delay_0~21_combout\);

-- Location: FF_X25_Y37_N29
\delay_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(21));

-- Location: LCCOMB_X25_Y37_N4
\delay_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~21_combout\ = (!\reset~input_o\ & delay_0(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => delay_0(21),
	combout => \delay_1~21_combout\);

-- Location: FF_X23_Y34_N13
\delay_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(21));

-- Location: LCCOMB_X24_Y34_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (delay_1(21) & ((delay_0(21) & (\Add0~41\ & VCC)) # (!delay_0(21) & (!\Add0~41\)))) # (!delay_1(21) & ((delay_0(21) & (!\Add0~41\)) # (!delay_0(21) & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((delay_1(21) & (!delay_0(21) & !\Add0~41\)) # (!delay_1(21) & ((!\Add0~41\) # (!delay_0(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(21),
	datab => delay_0(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X25_Y37_N7
\extra_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(21),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(21));

-- Location: LCCOMB_X25_Y37_N6
\delay_2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~21_combout\ = (!\reset~input_o\ & extra_reg(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => extra_reg(21),
	combout => \delay_2~21_combout\);

-- Location: FF_X27_Y34_N31
\delay_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(21));

-- Location: LCCOMB_X27_Y34_N8
\delay_3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~21_combout\ = (delay_2(21) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(21),
	datad => \reset~input_o\,
	combout => \delay_3~21_combout\);

-- Location: FF_X26_Y34_N19
\delay_3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(21));

-- Location: LCCOMB_X26_Y34_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (delay_2(21) & ((delay_3(21) & (\Add1~41\ & VCC)) # (!delay_3(21) & (!\Add1~41\)))) # (!delay_2(21) & ((delay_3(21) & (!\Add1~41\)) # (!delay_3(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((delay_2(21) & (!delay_3(21) & !\Add1~41\)) # (!delay_2(21) & ((!\Add1~41\) # (!delay_3(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(21),
	datab => delay_3(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X25_Y34_N10
\sum[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[21]~74_combout\ = (\Add0~42_combout\ & ((\Add1~42_combout\ & (\sum[20]~73\ & VCC)) # (!\Add1~42_combout\ & (!\sum[20]~73\)))) # (!\Add0~42_combout\ & ((\Add1~42_combout\ & (!\sum[20]~73\)) # (!\Add1~42_combout\ & ((\sum[20]~73\) # (GND)))))
-- \sum[21]~75\ = CARRY((\Add0~42_combout\ & (!\Add1~42_combout\ & !\sum[20]~73\)) # (!\Add0~42_combout\ & ((!\sum[20]~73\) # (!\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add1~42_combout\,
	datad => VCC,
	cin => \sum[20]~73\,
	combout => \sum[21]~74_combout\,
	cout => \sum[21]~75\);

-- Location: FF_X25_Y34_N11
\sum[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[21]~74_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(21));

-- Location: LCCOMB_X22_Y34_N6
\y_out[21]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[21]~reg0feeder_combout\ = sum(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(21),
	combout => \y_out[21]~reg0feeder_combout\);

-- Location: FF_X22_Y34_N7
\y_out[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[21]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[21]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N1
\x_in[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(22),
	o => \x_in[22]~input_o\);

-- Location: LCCOMB_X29_Y34_N10
\delay_0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~22_combout\ = (\x_in[22]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[22]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~22_combout\);

-- Location: FF_X29_Y34_N11
\delay_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(22));

-- Location: LCCOMB_X29_Y34_N2
\delay_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~22_combout\ = (delay_0(22) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(22),
	datad => \reset~input_o\,
	combout => \delay_1~22_combout\);

-- Location: FF_X23_Y34_N3
\delay_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(22));

-- Location: LCCOMB_X24_Y34_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((delay_1(22) $ (delay_0(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((delay_1(22) & ((delay_0(22)) # (!\Add0~43\))) # (!delay_1(22) & (delay_0(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(22),
	datab => delay_0(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X27_Y34_N25
\extra_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(22),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(22));

-- Location: LCCOMB_X27_Y34_N18
\delay_2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~22_combout\ = (extra_reg(22) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(22),
	datad => \reset~input_o\,
	combout => \delay_2~22_combout\);

-- Location: FF_X27_Y34_N19
\delay_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(22));

-- Location: LCCOMB_X27_Y34_N20
\delay_3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~22_combout\ = (!\reset~input_o\ & delay_2(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => delay_2(22),
	combout => \delay_3~22_combout\);

-- Location: FF_X27_Y34_N21
\delay_3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(22));

-- Location: LCCOMB_X26_Y34_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((delay_3(22) $ (delay_2(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((delay_3(22) & ((delay_2(22)) # (!\Add1~43\))) # (!delay_3(22) & (delay_2(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(22),
	datab => delay_2(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X25_Y34_N12
\sum[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[22]~76_combout\ = ((\Add0~44_combout\ $ (\Add1~44_combout\ $ (!\sum[21]~75\)))) # (GND)
-- \sum[22]~77\ = CARRY((\Add0~44_combout\ & ((\Add1~44_combout\) # (!\sum[21]~75\))) # (!\Add0~44_combout\ & (\Add1~44_combout\ & !\sum[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add1~44_combout\,
	datad => VCC,
	cin => \sum[21]~75\,
	combout => \sum[22]~76_combout\,
	cout => \sum[22]~77\);

-- Location: FF_X25_Y34_N13
\sum[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[22]~76_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(22));

-- Location: LCCOMB_X21_Y35_N0
\y_out[22]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[22]~reg0feeder_combout\ = sum(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(22),
	combout => \y_out[22]~reg0feeder_combout\);

-- Location: FF_X21_Y35_N1
\y_out[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[22]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[22]~reg0_q\);

-- Location: IOIBUF_X36_Y39_N29
\x_in[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(23),
	o => \x_in[23]~input_o\);

-- Location: LCCOMB_X32_Y34_N2
\delay_0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~23_combout\ = (!\reset~input_o\ & \x_in[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \x_in[23]~input_o\,
	combout => \delay_0~23_combout\);

-- Location: FF_X29_Y34_N21
\delay_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(23));

-- Location: LCCOMB_X29_Y34_N20
\delay_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~23_combout\ = (delay_0(23) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(23),
	datad => \reset~input_o\,
	combout => \delay_1~23_combout\);

-- Location: FF_X24_Y34_N11
\delay_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_1~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(23));

-- Location: LCCOMB_X24_Y34_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (delay_1(23) & ((delay_0(23) & (\Add0~45\ & VCC)) # (!delay_0(23) & (!\Add0~45\)))) # (!delay_1(23) & ((delay_0(23) & (!\Add0~45\)) # (!delay_0(23) & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((delay_1(23) & (!delay_0(23) & !\Add0~45\)) # (!delay_1(23) & ((!\Add0~45\) # (!delay_0(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(23),
	datab => delay_0(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X23_Y34_N5
\extra_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(23),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(23));

-- Location: LCCOMB_X23_Y34_N4
\delay_2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~23_combout\ = (extra_reg(23) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(23),
	datad => \reset~input_o\,
	combout => \delay_2~23_combout\);

-- Location: FF_X27_Y34_N11
\delay_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_2~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(23));

-- Location: LCCOMB_X27_Y34_N4
\delay_3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~23_combout\ = (delay_2(23) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(23),
	datad => \reset~input_o\,
	combout => \delay_3~23_combout\);

-- Location: FF_X27_Y34_N5
\delay_3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(23));

-- Location: LCCOMB_X26_Y34_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (delay_2(23) & ((delay_3(23) & (\Add1~45\ & VCC)) # (!delay_3(23) & (!\Add1~45\)))) # (!delay_2(23) & ((delay_3(23) & (!\Add1~45\)) # (!delay_3(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((delay_2(23) & (!delay_3(23) & !\Add1~45\)) # (!delay_2(23) & ((!\Add1~45\) # (!delay_3(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(23),
	datab => delay_3(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X25_Y34_N14
\sum[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[23]~78_combout\ = (\Add0~46_combout\ & ((\Add1~46_combout\ & (\sum[22]~77\ & VCC)) # (!\Add1~46_combout\ & (!\sum[22]~77\)))) # (!\Add0~46_combout\ & ((\Add1~46_combout\ & (!\sum[22]~77\)) # (!\Add1~46_combout\ & ((\sum[22]~77\) # (GND)))))
-- \sum[23]~79\ = CARRY((\Add0~46_combout\ & (!\Add1~46_combout\ & !\sum[22]~77\)) # (!\Add0~46_combout\ & ((!\sum[22]~77\) # (!\Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add1~46_combout\,
	datad => VCC,
	cin => \sum[22]~77\,
	combout => \sum[23]~78_combout\,
	cout => \sum[23]~79\);

-- Location: FF_X25_Y34_N15
\sum[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[23]~78_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(23));

-- Location: LCCOMB_X29_Y34_N16
\y_out[23]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[23]~reg0feeder_combout\ = sum(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(23),
	combout => \y_out[23]~reg0feeder_combout\);

-- Location: FF_X29_Y34_N17
\y_out[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[23]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[23]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N8
\x_in[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(24),
	o => \x_in[24]~input_o\);

-- Location: LCCOMB_X23_Y34_N14
\delay_0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~24_combout\ = (\x_in[24]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[24]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~24_combout\);

-- Location: FF_X23_Y34_N15
\delay_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(24));

-- Location: LCCOMB_X23_Y34_N6
\delay_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~24_combout\ = (delay_0(24) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(24),
	datad => \reset~input_o\,
	combout => \delay_1~24_combout\);

-- Location: FF_X23_Y34_N7
\delay_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(24));

-- Location: LCCOMB_X24_Y34_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((delay_0(24) $ (delay_1(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((delay_0(24) & ((delay_1(24)) # (!\Add0~47\))) # (!delay_0(24) & (delay_1(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(24),
	datab => delay_1(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X22_Y34_N12
\extra_reg[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[24]~feeder_combout\ = delay_1(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_1(24),
	combout => \extra_reg[24]~feeder_combout\);

-- Location: FF_X22_Y34_N13
\extra_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[24]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(24));

-- Location: LCCOMB_X22_Y34_N24
\delay_2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~24_combout\ = (extra_reg(24) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => extra_reg(24),
	datac => \reset~input_o\,
	combout => \delay_2~24_combout\);

-- Location: FF_X22_Y34_N25
\delay_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(24));

-- Location: LCCOMB_X22_Y34_N14
\delay_3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~24_combout\ = (!\reset~input_o\ & delay_2(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => delay_2(24),
	combout => \delay_3~24_combout\);

-- Location: FF_X22_Y34_N15
\delay_3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(24));

-- Location: LCCOMB_X26_Y34_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((delay_3(24) $ (delay_2(24) $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((delay_3(24) & ((delay_2(24)) # (!\Add1~47\))) # (!delay_3(24) & (delay_2(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(24),
	datab => delay_2(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X25_Y34_N16
\sum[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[24]~80_combout\ = ((\Add0~48_combout\ $ (\Add1~48_combout\ $ (!\sum[23]~79\)))) # (GND)
-- \sum[24]~81\ = CARRY((\Add0~48_combout\ & ((\Add1~48_combout\) # (!\sum[23]~79\))) # (!\Add0~48_combout\ & (\Add1~48_combout\ & !\sum[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add1~48_combout\,
	datad => VCC,
	cin => \sum[23]~79\,
	combout => \sum[24]~80_combout\,
	cout => \sum[24]~81\);

-- Location: FF_X25_Y34_N17
\sum[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[24]~80_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(24));

-- Location: LCCOMB_X21_Y35_N22
\y_out[24]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[24]~reg0feeder_combout\ = sum(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(24),
	combout => \y_out[24]~reg0feeder_combout\);

-- Location: FF_X21_Y35_N23
\y_out[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[24]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[24]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N8
\x_in[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(25),
	o => \x_in[25]~input_o\);

-- Location: LCCOMB_X25_Y38_N22
\delay_0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~25_combout\ = (!\reset~input_o\ & \x_in[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x_in[25]~input_o\,
	combout => \delay_0~25_combout\);

-- Location: FF_X25_Y38_N23
\delay_0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(25));

-- Location: LCCOMB_X25_Y38_N20
\delay_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~25_combout\ = (!\reset~input_o\ & delay_0(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => delay_0(25),
	combout => \delay_1~25_combout\);

-- Location: FF_X25_Y38_N21
\delay_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(25));

-- Location: LCCOMB_X25_Y38_N4
\extra_reg[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[25]~feeder_combout\ = delay_1(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(25),
	combout => \extra_reg[25]~feeder_combout\);

-- Location: FF_X25_Y38_N5
\extra_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[25]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(25));

-- Location: LCCOMB_X29_Y34_N18
\delay_2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~25_combout\ = (extra_reg(25) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(25),
	datad => \reset~input_o\,
	combout => \delay_2~25_combout\);

-- Location: FF_X29_Y34_N19
\delay_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(25));

-- Location: LCCOMB_X29_Y34_N28
\delay_3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~25_combout\ = (delay_2(25) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(25),
	datad => \reset~input_o\,
	combout => \delay_3~25_combout\);

-- Location: FF_X29_Y34_N29
\delay_3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(25));

-- Location: LCCOMB_X26_Y34_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (delay_2(25) & ((delay_3(25) & (\Add1~49\ & VCC)) # (!delay_3(25) & (!\Add1~49\)))) # (!delay_2(25) & ((delay_3(25) & (!\Add1~49\)) # (!delay_3(25) & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((delay_2(25) & (!delay_3(25) & !\Add1~49\)) # (!delay_2(25) & ((!\Add1~49\) # (!delay_3(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(25),
	datab => delay_3(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X24_Y34_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (delay_0(25) & ((delay_1(25) & (\Add0~49\ & VCC)) # (!delay_1(25) & (!\Add0~49\)))) # (!delay_0(25) & ((delay_1(25) & (!\Add0~49\)) # (!delay_1(25) & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((delay_0(25) & (!delay_1(25) & !\Add0~49\)) # (!delay_0(25) & ((!\Add0~49\) # (!delay_1(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(25),
	datab => delay_1(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X25_Y34_N18
\sum[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[25]~82_combout\ = (\Add1~50_combout\ & ((\Add0~50_combout\ & (\sum[24]~81\ & VCC)) # (!\Add0~50_combout\ & (!\sum[24]~81\)))) # (!\Add1~50_combout\ & ((\Add0~50_combout\ & (!\sum[24]~81\)) # (!\Add0~50_combout\ & ((\sum[24]~81\) # (GND)))))
-- \sum[25]~83\ = CARRY((\Add1~50_combout\ & (!\Add0~50_combout\ & !\sum[24]~81\)) # (!\Add1~50_combout\ & ((!\sum[24]~81\) # (!\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \sum[24]~81\,
	combout => \sum[25]~82_combout\,
	cout => \sum[25]~83\);

-- Location: FF_X25_Y34_N19
\sum[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[25]~82_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(25));

-- Location: LCCOMB_X21_Y35_N8
\y_out[25]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[25]~reg0feeder_combout\ = sum(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(25),
	combout => \y_out[25]~reg0feeder_combout\);

-- Location: FF_X21_Y35_N9
\y_out[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[25]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[25]~reg0_q\);

-- Location: IOIBUF_X0_Y35_N8
\x_in[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(26),
	o => \x_in[26]~input_o\);

-- Location: LCCOMB_X21_Y35_N30
\delay_0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~26_combout\ = (!\reset~input_o\ & \x_in[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \x_in[26]~input_o\,
	combout => \delay_0~26_combout\);

-- Location: FF_X21_Y34_N25
\delay_0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(26));

-- Location: LCCOMB_X29_Y34_N22
\delay_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~26_combout\ = (delay_0(26) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(26),
	datad => \reset~input_o\,
	combout => \delay_1~26_combout\);

-- Location: FF_X29_Y34_N23
\delay_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(26));

-- Location: LCCOMB_X31_Y34_N18
\extra_reg[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[26]~feeder_combout\ = delay_1(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_1(26),
	combout => \extra_reg[26]~feeder_combout\);

-- Location: FF_X31_Y34_N19
\extra_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[26]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(26));

-- Location: LCCOMB_X31_Y34_N4
\delay_2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~26_combout\ = (extra_reg(26) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(26),
	datac => \reset~input_o\,
	combout => \delay_2~26_combout\);

-- Location: FF_X31_Y34_N5
\delay_2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(26));

-- Location: LCCOMB_X27_Y34_N22
\delay_3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~26_combout\ = (delay_2(26) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(26),
	datad => \reset~input_o\,
	combout => \delay_3~26_combout\);

-- Location: FF_X27_Y34_N23
\delay_3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(26));

-- Location: LCCOMB_X26_Y34_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((delay_2(26) $ (delay_3(26) $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((delay_2(26) & ((delay_3(26)) # (!\Add1~51\))) # (!delay_2(26) & (delay_3(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(26),
	datab => delay_3(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X24_Y34_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((delay_0(26) $ (delay_1(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((delay_0(26) & ((delay_1(26)) # (!\Add0~51\))) # (!delay_0(26) & (delay_1(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(26),
	datab => delay_1(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X25_Y34_N20
\sum[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[26]~84_combout\ = ((\Add1~52_combout\ $ (\Add0~52_combout\ $ (!\sum[25]~83\)))) # (GND)
-- \sum[26]~85\ = CARRY((\Add1~52_combout\ & ((\Add0~52_combout\) # (!\sum[25]~83\))) # (!\Add1~52_combout\ & (\Add0~52_combout\ & !\sum[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Add0~52_combout\,
	datad => VCC,
	cin => \sum[25]~83\,
	combout => \sum[26]~84_combout\,
	cout => \sum[26]~85\);

-- Location: FF_X25_Y34_N21
\sum[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[26]~84_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(26));

-- Location: LCCOMB_X21_Y35_N10
\y_out[26]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[26]~reg0feeder_combout\ = sum(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(26),
	combout => \y_out[26]~reg0feeder_combout\);

-- Location: FF_X21_Y35_N11
\y_out[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[26]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[26]~reg0_q\);

-- Location: IOIBUF_X34_Y39_N15
\x_in[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(27),
	o => \x_in[27]~input_o\);

-- Location: LCCOMB_X29_Y35_N30
\delay_0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~27_combout\ = (!\reset~input_o\ & \x_in[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \x_in[27]~input_o\,
	combout => \delay_0~27_combout\);

-- Location: FF_X29_Y34_N31
\delay_0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_0~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(27));

-- Location: LCCOMB_X27_Y34_N26
\delay_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~27_combout\ = (delay_0(27) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(27),
	datad => \reset~input_o\,
	combout => \delay_1~27_combout\);

-- Location: FF_X27_Y34_N27
\delay_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(27));

-- Location: FF_X27_Y34_N9
\extra_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delay_1(27),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(27));

-- Location: LCCOMB_X27_Y34_N28
\delay_2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~27_combout\ = (extra_reg(27) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(27),
	datad => \reset~input_o\,
	combout => \delay_2~27_combout\);

-- Location: FF_X27_Y34_N29
\delay_2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(27));

-- Location: LCCOMB_X29_Y34_N0
\delay_3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~27_combout\ = (delay_2(27) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(27),
	datad => \reset~input_o\,
	combout => \delay_3~27_combout\);

-- Location: FF_X29_Y34_N1
\delay_3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(27));

-- Location: LCCOMB_X26_Y34_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (delay_3(27) & ((delay_2(27) & (\Add1~53\ & VCC)) # (!delay_2(27) & (!\Add1~53\)))) # (!delay_3(27) & ((delay_2(27) & (!\Add1~53\)) # (!delay_2(27) & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((delay_3(27) & (!delay_2(27) & !\Add1~53\)) # (!delay_3(27) & ((!\Add1~53\) # (!delay_2(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(27),
	datab => delay_2(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X24_Y34_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (delay_0(27) & ((delay_1(27) & (\Add0~53\ & VCC)) # (!delay_1(27) & (!\Add0~53\)))) # (!delay_0(27) & ((delay_1(27) & (!\Add0~53\)) # (!delay_1(27) & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((delay_0(27) & (!delay_1(27) & !\Add0~53\)) # (!delay_0(27) & ((!\Add0~53\) # (!delay_1(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(27),
	datab => delay_1(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X25_Y34_N22
\sum[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[27]~86_combout\ = (\Add1~54_combout\ & ((\Add0~54_combout\ & (\sum[26]~85\ & VCC)) # (!\Add0~54_combout\ & (!\sum[26]~85\)))) # (!\Add1~54_combout\ & ((\Add0~54_combout\ & (!\sum[26]~85\)) # (!\Add0~54_combout\ & ((\sum[26]~85\) # (GND)))))
-- \sum[27]~87\ = CARRY((\Add1~54_combout\ & (!\Add0~54_combout\ & !\sum[26]~85\)) # (!\Add1~54_combout\ & ((!\sum[26]~85\) # (!\Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \sum[26]~85\,
	combout => \sum[27]~86_combout\,
	cout => \sum[27]~87\);

-- Location: FF_X25_Y34_N23
\sum[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[27]~86_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(27));

-- Location: LCCOMB_X25_Y38_N0
\y_out[27]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[27]~reg0feeder_combout\ = sum(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(27),
	combout => \y_out[27]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N1
\y_out[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[27]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[27]~reg0_q\);

-- Location: IOIBUF_X0_Y37_N15
\x_in[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(28),
	o => \x_in[28]~input_o\);

-- Location: LCCOMB_X22_Y34_N18
\delay_0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~28_combout\ = (\x_in[28]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[28]~input_o\,
	datac => \reset~input_o\,
	combout => \delay_0~28_combout\);

-- Location: LCCOMB_X23_Y34_N22
\delay_0[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0[28]~feeder_combout\ = \delay_0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_0~28_combout\,
	combout => \delay_0[28]~feeder_combout\);

-- Location: FF_X23_Y34_N23
\delay_0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(28));

-- Location: LCCOMB_X23_Y34_N10
\delay_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~28_combout\ = (delay_0(28) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(28),
	datad => \reset~input_o\,
	combout => \delay_1~28_combout\);

-- Location: FF_X23_Y34_N11
\delay_1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(28));

-- Location: LCCOMB_X29_Y34_N24
\extra_reg[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[28]~feeder_combout\ = delay_1(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(28),
	combout => \extra_reg[28]~feeder_combout\);

-- Location: FF_X29_Y34_N25
\extra_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[28]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(28));

-- Location: LCCOMB_X29_Y34_N4
\delay_2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~28_combout\ = (extra_reg(28) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => extra_reg(28),
	datad => \reset~input_o\,
	combout => \delay_2~28_combout\);

-- Location: FF_X29_Y34_N5
\delay_2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(28));

-- Location: LCCOMB_X29_Y34_N26
\delay_3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~28_combout\ = (delay_2(28) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(28),
	datad => \reset~input_o\,
	combout => \delay_3~28_combout\);

-- Location: FF_X27_Y34_N17
\delay_3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \delay_3~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(28));

-- Location: LCCOMB_X26_Y34_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((delay_2(28) $ (delay_3(28) $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((delay_2(28) & ((delay_3(28)) # (!\Add1~55\))) # (!delay_2(28) & (delay_3(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(28),
	datab => delay_3(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X24_Y34_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((delay_1(28) $ (delay_0(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((delay_1(28) & ((delay_0(28)) # (!\Add0~55\))) # (!delay_1(28) & (delay_0(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(28),
	datab => delay_0(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X25_Y34_N24
\sum[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[28]~88_combout\ = ((\Add1~56_combout\ $ (\Add0~56_combout\ $ (!\sum[27]~87\)))) # (GND)
-- \sum[28]~89\ = CARRY((\Add1~56_combout\ & ((\Add0~56_combout\) # (!\sum[27]~87\))) # (!\Add1~56_combout\ & (\Add0~56_combout\ & !\sum[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \sum[27]~87\,
	combout => \sum[28]~88_combout\,
	cout => \sum[28]~89\);

-- Location: FF_X25_Y34_N25
\sum[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[28]~88_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(28));

-- Location: LCCOMB_X25_Y38_N10
\y_out[28]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[28]~reg0feeder_combout\ = sum(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(28),
	combout => \y_out[28]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N11
\y_out[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[28]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[28]~reg0_q\);

-- Location: IOIBUF_X49_Y54_N15
\x_in[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(29),
	o => \x_in[29]~input_o\);

-- Location: LCCOMB_X29_Y34_N6
\delay_0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~29_combout\ = (!\reset~input_o\ & \x_in[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \x_in[29]~input_o\,
	combout => \delay_0~29_combout\);

-- Location: FF_X29_Y34_N7
\delay_0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(29));

-- Location: LCCOMB_X29_Y34_N12
\delay_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~29_combout\ = (delay_0(29) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_0(29),
	datad => \reset~input_o\,
	combout => \delay_1~29_combout\);

-- Location: FF_X29_Y34_N13
\delay_1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(29));

-- Location: LCCOMB_X24_Y34_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (delay_1(29) & ((delay_0(29) & (\Add0~57\ & VCC)) # (!delay_0(29) & (!\Add0~57\)))) # (!delay_1(29) & ((delay_0(29) & (!\Add0~57\)) # (!delay_0(29) & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((delay_1(29) & (!delay_0(29) & !\Add0~57\)) # (!delay_1(29) & ((!\Add0~57\) # (!delay_0(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(29),
	datab => delay_0(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X29_Y34_N8
\extra_reg[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[29]~feeder_combout\ = delay_1(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(29),
	combout => \extra_reg[29]~feeder_combout\);

-- Location: FF_X29_Y34_N9
\extra_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[29]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(29));

-- Location: LCCOMB_X30_Y34_N8
\delay_2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~29_combout\ = (extra_reg(29) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => extra_reg(29),
	datad => \reset~input_o\,
	combout => \delay_2~29_combout\);

-- Location: FF_X30_Y34_N9
\delay_2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(29));

-- Location: LCCOMB_X30_Y34_N14
\delay_3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~29_combout\ = (delay_2(29) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(29),
	datad => \reset~input_o\,
	combout => \delay_3~29_combout\);

-- Location: FF_X30_Y34_N15
\delay_3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(29));

-- Location: LCCOMB_X26_Y34_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (delay_3(29) & ((delay_2(29) & (\Add1~57\ & VCC)) # (!delay_2(29) & (!\Add1~57\)))) # (!delay_3(29) & ((delay_2(29) & (!\Add1~57\)) # (!delay_2(29) & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((delay_3(29) & (!delay_2(29) & !\Add1~57\)) # (!delay_3(29) & ((!\Add1~57\) # (!delay_2(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(29),
	datab => delay_2(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X25_Y34_N26
\sum[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[29]~90_combout\ = (\Add0~58_combout\ & ((\Add1~58_combout\ & (\sum[28]~89\ & VCC)) # (!\Add1~58_combout\ & (!\sum[28]~89\)))) # (!\Add0~58_combout\ & ((\Add1~58_combout\ & (!\sum[28]~89\)) # (!\Add1~58_combout\ & ((\sum[28]~89\) # (GND)))))
-- \sum[29]~91\ = CARRY((\Add0~58_combout\ & (!\Add1~58_combout\ & !\sum[28]~89\)) # (!\Add0~58_combout\ & ((!\sum[28]~89\) # (!\Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add1~58_combout\,
	datad => VCC,
	cin => \sum[28]~89\,
	combout => \sum[29]~90_combout\,
	cout => \sum[29]~91\);

-- Location: FF_X25_Y34_N27
\sum[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[29]~90_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(29));

-- Location: LCCOMB_X25_Y38_N12
\y_out[29]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[29]~reg0feeder_combout\ = sum(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sum(29),
	combout => \y_out[29]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N13
\y_out[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[29]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[29]~reg0_q\);

-- Location: IOIBUF_X34_Y39_N1
\x_in[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(30),
	o => \x_in[30]~input_o\);

-- Location: LCCOMB_X30_Y35_N16
\delay_0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~30_combout\ = (!\reset~input_o\ & \x_in[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \x_in[30]~input_o\,
	combout => \delay_0~30_combout\);

-- Location: FF_X30_Y35_N17
\delay_0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(30));

-- Location: LCCOMB_X30_Y35_N30
\delay_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~30_combout\ = (delay_0(30) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_0(30),
	datad => \reset~input_o\,
	combout => \delay_1~30_combout\);

-- Location: FF_X30_Y35_N31
\delay_1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(30));

-- Location: LCCOMB_X30_Y35_N8
\extra_reg[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[30]~feeder_combout\ = delay_1(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_1(30),
	combout => \extra_reg[30]~feeder_combout\);

-- Location: FF_X30_Y35_N9
\extra_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[30]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(30));

-- Location: LCCOMB_X30_Y34_N16
\delay_2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~30_combout\ = (extra_reg(30) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => extra_reg(30),
	datad => \reset~input_o\,
	combout => \delay_2~30_combout\);

-- Location: FF_X30_Y34_N17
\delay_2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(30));

-- Location: LCCOMB_X30_Y34_N6
\delay_3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~30_combout\ = (delay_2(30) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(30),
	datad => \reset~input_o\,
	combout => \delay_3~30_combout\);

-- Location: FF_X30_Y34_N7
\delay_3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(30));

-- Location: LCCOMB_X26_Y34_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((delay_2(30) $ (delay_3(30) $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((delay_2(30) & ((delay_3(30)) # (!\Add1~59\))) # (!delay_2(30) & (delay_3(30) & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(30),
	datab => delay_3(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X24_Y34_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((delay_1(30) $ (delay_0(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((delay_1(30) & ((delay_0(30)) # (!\Add0~59\))) # (!delay_1(30) & (delay_0(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(30),
	datab => delay_0(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X25_Y34_N28
\sum[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[30]~92_combout\ = ((\Add1~60_combout\ $ (\Add0~60_combout\ $ (!\sum[29]~91\)))) # (GND)
-- \sum[30]~93\ = CARRY((\Add1~60_combout\ & ((\Add0~60_combout\) # (!\sum[29]~91\))) # (!\Add1~60_combout\ & (\Add0~60_combout\ & !\sum[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \sum[29]~91\,
	combout => \sum[30]~92_combout\,
	cout => \sum[30]~93\);

-- Location: FF_X25_Y34_N29
\sum[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[30]~92_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(30));

-- Location: LCCOMB_X32_Y35_N0
\y_out[30]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[30]~reg0feeder_combout\ = sum(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(30),
	combout => \y_out[30]~reg0feeder_combout\);

-- Location: FF_X32_Y35_N1
\y_out[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[30]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[30]~reg0_q\);

-- Location: IOIBUF_X46_Y54_N22
\x_in[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(31),
	o => \x_in[31]~input_o\);

-- Location: LCCOMB_X27_Y34_N2
\delay_0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_0~31_combout\ = (\x_in[31]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[31]~input_o\,
	datad => \reset~input_o\,
	combout => \delay_0~31_combout\);

-- Location: FF_X27_Y34_N3
\delay_0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_0(31));

-- Location: LCCOMB_X29_Y34_N14
\delay_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1~31_combout\ = (delay_0(31) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_0(31),
	datad => \reset~input_o\,
	combout => \delay_1~31_combout\);

-- Location: LCCOMB_X30_Y34_N28
\delay_1[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_1[31]~feeder_combout\ = \delay_1~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay_1~31_combout\,
	combout => \delay_1[31]~feeder_combout\);

-- Location: FF_X30_Y34_N29
\delay_1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_1[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(31));

-- Location: LCCOMB_X30_Y34_N10
\extra_reg[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extra_reg[31]~feeder_combout\ = delay_1(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => delay_1(31),
	combout => \extra_reg[31]~feeder_combout\);

-- Location: FF_X30_Y34_N11
\extra_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \extra_reg[31]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => extra_reg(31));

-- Location: LCCOMB_X30_Y34_N12
\delay_2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_2~31_combout\ = (extra_reg(31) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => extra_reg(31),
	datad => \reset~input_o\,
	combout => \delay_2~31_combout\);

-- Location: FF_X30_Y34_N13
\delay_2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_2~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(31));

-- Location: LCCOMB_X30_Y34_N18
\delay_3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_3~31_combout\ = (delay_2(31) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(31),
	datad => \reset~input_o\,
	combout => \delay_3~31_combout\);

-- Location: FF_X30_Y34_N19
\delay_3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(31));

-- Location: LCCOMB_X26_Y34_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = delay_3(31) $ (\Add1~61\ $ (delay_2(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(31),
	datad => delay_2(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X24_Y34_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = delay_0(31) $ (\Add0~61\ $ (delay_1(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_0(31),
	datad => delay_1(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X25_Y34_N30
\sum[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[31]~94_combout\ = \Add1~62_combout\ $ (\sum[30]~93\ $ (\Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datad => \Add0~62_combout\,
	cin => \sum[30]~93\,
	combout => \sum[31]~94_combout\);

-- Location: FF_X25_Y34_N31
\sum[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum[31]~94_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(31));

-- Location: LCCOMB_X21_Y35_N12
\y_out[31]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_out[31]~reg0feeder_combout\ = sum(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sum(31),
	combout => \y_out[31]~reg0feeder_combout\);

-- Location: FF_X21_Y35_N13
\y_out[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_out[31]~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_out[31]~reg0_q\);

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

ww_y_out(0) <= \y_out[0]~output_o\;

ww_y_out(1) <= \y_out[1]~output_o\;

ww_y_out(2) <= \y_out[2]~output_o\;

ww_y_out(3) <= \y_out[3]~output_o\;

ww_y_out(4) <= \y_out[4]~output_o\;

ww_y_out(5) <= \y_out[5]~output_o\;

ww_y_out(6) <= \y_out[6]~output_o\;

ww_y_out(7) <= \y_out[7]~output_o\;

ww_y_out(8) <= \y_out[8]~output_o\;

ww_y_out(9) <= \y_out[9]~output_o\;

ww_y_out(10) <= \y_out[10]~output_o\;

ww_y_out(11) <= \y_out[11]~output_o\;

ww_y_out(12) <= \y_out[12]~output_o\;

ww_y_out(13) <= \y_out[13]~output_o\;

ww_y_out(14) <= \y_out[14]~output_o\;

ww_y_out(15) <= \y_out[15]~output_o\;

ww_y_out(16) <= \y_out[16]~output_o\;

ww_y_out(17) <= \y_out[17]~output_o\;

ww_y_out(18) <= \y_out[18]~output_o\;

ww_y_out(19) <= \y_out[19]~output_o\;

ww_y_out(20) <= \y_out[20]~output_o\;

ww_y_out(21) <= \y_out[21]~output_o\;

ww_y_out(22) <= \y_out[22]~output_o\;

ww_y_out(23) <= \y_out[23]~output_o\;

ww_y_out(24) <= \y_out[24]~output_o\;

ww_y_out(25) <= \y_out[25]~output_o\;

ww_y_out(26) <= \y_out[26]~output_o\;

ww_y_out(27) <= \y_out[27]~output_o\;

ww_y_out(28) <= \y_out[28]~output_o\;

ww_y_out(29) <= \y_out[29]~output_o\;

ww_y_out(30) <= \y_out[30]~output_o\;

ww_y_out(31) <= \y_out[31]~output_o\;
END structure;


