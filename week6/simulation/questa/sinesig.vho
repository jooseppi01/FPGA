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

-- DATE "10/09/2024 17:01:27"

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

ENTITY 	sinesig IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	freq_tuning : IN std_logic_vector(7 DOWNTO 0);
	sine_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END sinesig;

-- Design Ports Information
-- sine_out[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine_out[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_tuning[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sinesig IS
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
SIGNAL ww_freq_tuning : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sine_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \sine_out[0]~output_o\ : std_logic;
SIGNAL \sine_out[1]~output_o\ : std_logic;
SIGNAL \sine_out[2]~output_o\ : std_logic;
SIGNAL \sine_out[3]~output_o\ : std_logic;
SIGNAL \sine_out[4]~output_o\ : std_logic;
SIGNAL \sine_out[5]~output_o\ : std_logic;
SIGNAL \sine_out[6]~output_o\ : std_logic;
SIGNAL \sine_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq_tuning[7]~input_o\ : std_logic;
SIGNAL \freq_tuning[6]~input_o\ : std_logic;
SIGNAL \freq_tuning[5]~input_o\ : std_logic;
SIGNAL \freq_tuning[4]~input_o\ : std_logic;
SIGNAL \freq_tuning[3]~input_o\ : std_logic;
SIGNAL \freq_tuning[2]~input_o\ : std_logic;
SIGNAL \freq_tuning[1]~input_o\ : std_logic;
SIGNAL \freq_tuning[0]~input_o\ : std_logic;
SIGNAL \index[0]~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \index[0]~11\ : std_logic;
SIGNAL \index[1]~12_combout\ : std_logic;
SIGNAL \index[1]~13\ : std_logic;
SIGNAL \index[2]~14_combout\ : std_logic;
SIGNAL \index[2]~15\ : std_logic;
SIGNAL \index[3]~16_combout\ : std_logic;
SIGNAL \index[3]~17\ : std_logic;
SIGNAL \index[4]~18_combout\ : std_logic;
SIGNAL \index[4]~19\ : std_logic;
SIGNAL \index[5]~20_combout\ : std_logic;
SIGNAL \index[5]~21\ : std_logic;
SIGNAL \index[6]~22_combout\ : std_logic;
SIGNAL \index[6]~23\ : std_logic;
SIGNAL \index[7]~24_combout\ : std_logic;
SIGNAL \index[7]~25\ : std_logic;
SIGNAL \index[8]~26_combout\ : std_logic;
SIGNAL \sin_table~8_combout\ : std_logic;
SIGNAL \sin_table~4_combout\ : std_logic;
SIGNAL \sin_table~5_combout\ : std_logic;
SIGNAL \sin_table~6_combout\ : std_logic;
SIGNAL \sin_table~7_combout\ : std_logic;
SIGNAL \sin_table~9_combout\ : std_logic;
SIGNAL \sin_table~10_combout\ : std_logic;
SIGNAL \sin_table~14_combout\ : std_logic;
SIGNAL \sin_table~11_combout\ : std_logic;
SIGNAL \sin_table~12_combout\ : std_logic;
SIGNAL \sin_table~13_combout\ : std_logic;
SIGNAL \sin_table~15_combout\ : std_logic;
SIGNAL \sin_table~16_combout\ : std_logic;
SIGNAL \sin_table~45_combout\ : std_logic;
SIGNAL \sin_table~49_combout\ : std_logic;
SIGNAL \sin_table~46_combout\ : std_logic;
SIGNAL \sin_table~47_combout\ : std_logic;
SIGNAL \sin_table~48_combout\ : std_logic;
SIGNAL \sin_table~50_combout\ : std_logic;
SIGNAL \sin_table~43_combout\ : std_logic;
SIGNAL \sin_table~41_combout\ : std_logic;
SIGNAL \sin_table~40_combout\ : std_logic;
SIGNAL \sin_table~42_combout\ : std_logic;
SIGNAL \sin_table~39_combout\ : std_logic;
SIGNAL \sin_table~44_combout\ : std_logic;
SIGNAL \sin_table~51_combout\ : std_logic;
SIGNAL \sin_table~21_combout\ : std_logic;
SIGNAL \sin_table~18_combout\ : std_logic;
SIGNAL \sin_table~19_combout\ : std_logic;
SIGNAL \sin_table~20_combout\ : std_logic;
SIGNAL \sin_table~17_combout\ : std_logic;
SIGNAL \sin_table~22_combout\ : std_logic;
SIGNAL \sin_table~27_combout\ : std_logic;
SIGNAL \sin_table~23_combout\ : std_logic;
SIGNAL \sin_table~24_combout\ : std_logic;
SIGNAL \sin_table~25_combout\ : std_logic;
SIGNAL \sin_table~26_combout\ : std_logic;
SIGNAL \sin_table~28_combout\ : std_logic;
SIGNAL \sin_table~29_combout\ : std_logic;
SIGNAL \sin_table~432_combout\ : std_logic;
SIGNAL \sin_table~433_combout\ : std_logic;
SIGNAL \sin_table~30_combout\ : std_logic;
SIGNAL \sin_table~31_combout\ : std_logic;
SIGNAL \sin_table~32_combout\ : std_logic;
SIGNAL \sin_table~436_combout\ : std_logic;
SIGNAL \sin_table~437_combout\ : std_logic;
SIGNAL \sin_table~33_combout\ : std_logic;
SIGNAL \index[8]~27\ : std_logic;
SIGNAL \index[9]~28_combout\ : std_logic;
SIGNAL \sin_table~34_combout\ : std_logic;
SIGNAL \sin_table~35_combout\ : std_logic;
SIGNAL \sin_table~434_combout\ : std_logic;
SIGNAL \sin_table~435_combout\ : std_logic;
SIGNAL \sin_table~36_combout\ : std_logic;
SIGNAL \sin_table~37_combout\ : std_logic;
SIGNAL \sin_table~38_combout\ : std_logic;
SIGNAL \sin_table~52_combout\ : std_logic;
SIGNAL \sine_out[0]~reg0_q\ : std_logic;
SIGNAL \sin_table~57_combout\ : std_logic;
SIGNAL \sin_table~53_combout\ : std_logic;
SIGNAL \sin_table~55_combout\ : std_logic;
SIGNAL \sin_table~54_combout\ : std_logic;
SIGNAL \sin_table~56_combout\ : std_logic;
SIGNAL \sin_table~58_combout\ : std_logic;
SIGNAL \sin_table~76_combout\ : std_logic;
SIGNAL \sin_table~72_combout\ : std_logic;
SIGNAL \sin_table~74_combout\ : std_logic;
SIGNAL \sin_table~73_combout\ : std_logic;
SIGNAL \sin_table~75_combout\ : std_logic;
SIGNAL \sin_table~77_combout\ : std_logic;
SIGNAL \sin_table~65_combout\ : std_logic;
SIGNAL \sin_table~69_combout\ : std_logic;
SIGNAL \sin_table~66_combout\ : std_logic;
SIGNAL \sin_table~67_combout\ : std_logic;
SIGNAL \sin_table~68_combout\ : std_logic;
SIGNAL \sin_table~70_combout\ : std_logic;
SIGNAL \sin_table~59_combout\ : std_logic;
SIGNAL \sin_table~63_combout\ : std_logic;
SIGNAL \sin_table~61_combout\ : std_logic;
SIGNAL \sin_table~60_combout\ : std_logic;
SIGNAL \sin_table~62_combout\ : std_logic;
SIGNAL \sin_table~64_combout\ : std_logic;
SIGNAL \sin_table~71_combout\ : std_logic;
SIGNAL \sin_table~78_combout\ : std_logic;
SIGNAL \sin_table~136_combout\ : std_logic;
SIGNAL \sin_table~132_combout\ : std_logic;
SIGNAL \sin_table~133_combout\ : std_logic;
SIGNAL \sin_table~134_combout\ : std_logic;
SIGNAL \sin_table~135_combout\ : std_logic;
SIGNAL \sin_table~137_combout\ : std_logic;
SIGNAL \sin_table~151_combout\ : std_logic;
SIGNAL \sin_table~152_combout\ : std_logic;
SIGNAL \sin_table~430_combout\ : std_logic;
SIGNAL \sin_table~431_combout\ : std_logic;
SIGNAL \sin_table~153_combout\ : std_logic;
SIGNAL \sin_table~138_combout\ : std_logic;
SIGNAL \sin_table~142_combout\ : std_logic;
SIGNAL \sin_table~140_combout\ : std_logic;
SIGNAL \sin_table~139_combout\ : std_logic;
SIGNAL \sin_table~141_combout\ : std_logic;
SIGNAL \sin_table~143_combout\ : std_logic;
SIGNAL \sin_table~144_combout\ : std_logic;
SIGNAL \sin_table~148_combout\ : std_logic;
SIGNAL \sin_table~146_combout\ : std_logic;
SIGNAL \sin_table~145_combout\ : std_logic;
SIGNAL \sin_table~147_combout\ : std_logic;
SIGNAL \sin_table~149_combout\ : std_logic;
SIGNAL \sin_table~150_combout\ : std_logic;
SIGNAL \sin_table~154_combout\ : std_logic;
SIGNAL \sin_table~79_combout\ : std_logic;
SIGNAL \sin_table~83_combout\ : std_logic;
SIGNAL \sin_table~81_combout\ : std_logic;
SIGNAL \sin_table~80_combout\ : std_logic;
SIGNAL \sin_table~82_combout\ : std_logic;
SIGNAL \sin_table~84_combout\ : std_logic;
SIGNAL \sin_table~98_combout\ : std_logic;
SIGNAL \sin_table~102_combout\ : std_logic;
SIGNAL \sin_table~100_combout\ : std_logic;
SIGNAL \sin_table~99_combout\ : std_logic;
SIGNAL \sin_table~101_combout\ : std_logic;
SIGNAL \sin_table~103_combout\ : std_logic;
SIGNAL \sin_table~91_combout\ : std_logic;
SIGNAL \sin_table~95_combout\ : std_logic;
SIGNAL \sin_table~92_combout\ : std_logic;
SIGNAL \sin_table~93_combout\ : std_logic;
SIGNAL \sin_table~94_combout\ : std_logic;
SIGNAL \sin_table~96_combout\ : std_logic;
SIGNAL \sin_table~85_combout\ : std_logic;
SIGNAL \sin_table~89_combout\ : std_logic;
SIGNAL \sin_table~86_combout\ : std_logic;
SIGNAL \sin_table~87_combout\ : std_logic;
SIGNAL \sin_table~88_combout\ : std_logic;
SIGNAL \sin_table~90_combout\ : std_logic;
SIGNAL \sin_table~97_combout\ : std_logic;
SIGNAL \sin_table~104_combout\ : std_logic;
SIGNAL \sin_table~124_combout\ : std_logic;
SIGNAL \sin_table~128_combout\ : std_logic;
SIGNAL \sin_table~125_combout\ : std_logic;
SIGNAL \sin_table~126_combout\ : std_logic;
SIGNAL \sin_table~127_combout\ : std_logic;
SIGNAL \sin_table~129_combout\ : std_logic;
SIGNAL \sin_table~105_combout\ : std_logic;
SIGNAL \sin_table~109_combout\ : std_logic;
SIGNAL \sin_table~106_combout\ : std_logic;
SIGNAL \sin_table~107_combout\ : std_logic;
SIGNAL \sin_table~108_combout\ : std_logic;
SIGNAL \sin_table~110_combout\ : std_logic;
SIGNAL \sin_table~117_combout\ : std_logic;
SIGNAL \sin_table~121_combout\ : std_logic;
SIGNAL \sin_table~119_combout\ : std_logic;
SIGNAL \sin_table~118_combout\ : std_logic;
SIGNAL \sin_table~120_combout\ : std_logic;
SIGNAL \sin_table~122_combout\ : std_logic;
SIGNAL \sin_table~111_combout\ : std_logic;
SIGNAL \sin_table~115_combout\ : std_logic;
SIGNAL \sin_table~112_combout\ : std_logic;
SIGNAL \sin_table~113_combout\ : std_logic;
SIGNAL \sin_table~114_combout\ : std_logic;
SIGNAL \sin_table~116_combout\ : std_logic;
SIGNAL \sin_table~123_combout\ : std_logic;
SIGNAL \sin_table~130_combout\ : std_logic;
SIGNAL \sin_table~131_combout\ : std_logic;
SIGNAL \sin_table~155_combout\ : std_logic;
SIGNAL \sine_out[1]~reg0_q\ : std_logic;
SIGNAL \sin_table~174_combout\ : std_logic;
SIGNAL \sin_table~173_combout\ : std_logic;
SIGNAL \sin_table~428_combout\ : std_logic;
SIGNAL \sin_table~429_combout\ : std_logic;
SIGNAL \sin_table~156_combout\ : std_logic;
SIGNAL \sin_table~160_combout\ : std_logic;
SIGNAL \sin_table~158_combout\ : std_logic;
SIGNAL \sin_table~157_combout\ : std_logic;
SIGNAL \sin_table~159_combout\ : std_logic;
SIGNAL \sin_table~161_combout\ : std_logic;
SIGNAL \sin_table~170_combout\ : std_logic;
SIGNAL \sin_table~167_combout\ : std_logic;
SIGNAL \sin_table~168_combout\ : std_logic;
SIGNAL \sin_table~169_combout\ : std_logic;
SIGNAL \sin_table~171_combout\ : std_logic;
SIGNAL \sin_table~165_combout\ : std_logic;
SIGNAL \sin_table~162_combout\ : std_logic;
SIGNAL \sin_table~163_combout\ : std_logic;
SIGNAL \sin_table~164_combout\ : std_logic;
SIGNAL \sin_table~166_combout\ : std_logic;
SIGNAL \sin_table~172_combout\ : std_logic;
SIGNAL \sin_table~175_combout\ : std_logic;
SIGNAL \sin_table~239_combout\ : std_logic;
SIGNAL \sin_table~238_combout\ : std_logic;
SIGNAL \sin_table~240_combout\ : std_logic;
SIGNAL \sin_table~241_combout\ : std_logic;
SIGNAL \sin_table~242_combout\ : std_logic;
SIGNAL \sin_table~223_combout\ : std_logic;
SIGNAL \sin_table~226_combout\ : std_logic;
SIGNAL \sin_table~224_combout\ : std_logic;
SIGNAL \sin_table~225_combout\ : std_logic;
SIGNAL \sin_table~227_combout\ : std_logic;
SIGNAL \sin_table~228_combout\ : std_logic;
SIGNAL \sin_table~229_combout\ : std_logic;
SIGNAL \sin_table~230_combout\ : std_logic;
SIGNAL \sin_table~231_combout\ : std_logic;
SIGNAL \sin_table~232_combout\ : std_logic;
SIGNAL \sin_table~233_combout\ : std_logic;
SIGNAL \sin_table~235_combout\ : std_logic;
SIGNAL \sin_table~234_combout\ : std_logic;
SIGNAL \sin_table~236_combout\ : std_logic;
SIGNAL \sin_table~237_combout\ : std_logic;
SIGNAL \sin_table~243_combout\ : std_logic;
SIGNAL \sin_table~193_combout\ : std_logic;
SIGNAL \sin_table~192_combout\ : std_logic;
SIGNAL \sin_table~194_combout\ : std_logic;
SIGNAL \sin_table~195_combout\ : std_logic;
SIGNAL \sin_table~196_combout\ : std_logic;
SIGNAL \sin_table~177_combout\ : std_logic;
SIGNAL \sin_table~176_combout\ : std_logic;
SIGNAL \sin_table~179_combout\ : std_logic;
SIGNAL \sin_table~178_combout\ : std_logic;
SIGNAL \sin_table~180_combout\ : std_logic;
SIGNAL \sin_table~181_combout\ : std_logic;
SIGNAL \sin_table~182_combout\ : std_logic;
SIGNAL \sin_table~183_combout\ : std_logic;
SIGNAL \sin_table~184_combout\ : std_logic;
SIGNAL \sin_table~185_combout\ : std_logic;
SIGNAL \sin_table~189_combout\ : std_logic;
SIGNAL \sin_table~186_combout\ : std_logic;
SIGNAL \sin_table~187_combout\ : std_logic;
SIGNAL \sin_table~188_combout\ : std_logic;
SIGNAL \sin_table~190_combout\ : std_logic;
SIGNAL \sin_table~191_combout\ : std_logic;
SIGNAL \sin_table~197_combout\ : std_logic;
SIGNAL \sin_table~202_combout\ : std_logic;
SIGNAL \sin_table~198_combout\ : std_logic;
SIGNAL \sin_table~200_combout\ : std_logic;
SIGNAL \sin_table~199_combout\ : std_logic;
SIGNAL \sin_table~201_combout\ : std_logic;
SIGNAL \sin_table~203_combout\ : std_logic;
SIGNAL \sin_table~217_combout\ : std_logic;
SIGNAL \sin_table~216_combout\ : std_logic;
SIGNAL \sin_table~218_combout\ : std_logic;
SIGNAL \sin_table~219_combout\ : std_logic;
SIGNAL \sin_table~220_combout\ : std_logic;
SIGNAL \sin_table~209_combout\ : std_logic;
SIGNAL \sin_table~213_combout\ : std_logic;
SIGNAL \sin_table~211_combout\ : std_logic;
SIGNAL \sin_table~210_combout\ : std_logic;
SIGNAL \sin_table~212_combout\ : std_logic;
SIGNAL \sin_table~214_combout\ : std_logic;
SIGNAL \sin_table~204_combout\ : std_logic;
SIGNAL \sin_table~207_combout\ : std_logic;
SIGNAL \sin_table~205_combout\ : std_logic;
SIGNAL \sin_table~206_combout\ : std_logic;
SIGNAL \sin_table~208_combout\ : std_logic;
SIGNAL \sin_table~215_combout\ : std_logic;
SIGNAL \sin_table~221_combout\ : std_logic;
SIGNAL \sin_table~222_combout\ : std_logic;
SIGNAL \sin_table~244_combout\ : std_logic;
SIGNAL \sine_out[2]~reg0_q\ : std_logic;
SIGNAL \sin_table~256_combout\ : std_logic;
SIGNAL \sin_table~255_combout\ : std_logic;
SIGNAL \sin_table~257_combout\ : std_logic;
SIGNAL \sin_table~247_combout\ : std_logic;
SIGNAL \sin_table~245_combout\ : std_logic;
SIGNAL \sin_table~246_combout\ : std_logic;
SIGNAL \sin_table~248_combout\ : std_logic;
SIGNAL \sin_table~251_combout\ : std_logic;
SIGNAL \sin_table~252_combout\ : std_logic;
SIGNAL \sin_table~253_combout\ : std_logic;
SIGNAL \sin_table~249_combout\ : std_logic;
SIGNAL \sin_table~250_combout\ : std_logic;
SIGNAL \sin_table~254_combout\ : std_logic;
SIGNAL \sin_table~258_combout\ : std_logic;
SIGNAL \sin_table~301_combout\ : std_logic;
SIGNAL \sin_table~302_combout\ : std_logic;
SIGNAL \sin_table~303_combout\ : std_logic;
SIGNAL \sin_table~289_combout\ : std_logic;
SIGNAL \sin_table~290_combout\ : std_logic;
SIGNAL \sin_table~296_combout\ : std_logic;
SIGNAL \sin_table~297_combout\ : std_logic;
SIGNAL \sin_table~298_combout\ : std_logic;
SIGNAL \sin_table~299_combout\ : std_logic;
SIGNAL \sin_table~294_combout\ : std_logic;
SIGNAL \sin_table~291_combout\ : std_logic;
SIGNAL \sin_table~292_combout\ : std_logic;
SIGNAL \sin_table~293_combout\ : std_logic;
SIGNAL \sin_table~295_combout\ : std_logic;
SIGNAL \sin_table~300_combout\ : std_logic;
SIGNAL \sin_table~304_combout\ : std_logic;
SIGNAL \sin_table~272_combout\ : std_logic;
SIGNAL \sin_table~271_combout\ : std_logic;
SIGNAL \sin_table~273_combout\ : std_logic;
SIGNAL \sin_table~283_combout\ : std_logic;
SIGNAL \sin_table~284_combout\ : std_logic;
SIGNAL \sin_table~285_combout\ : std_logic;
SIGNAL \sin_table~286_combout\ : std_logic;
SIGNAL \sin_table~280_combout\ : std_logic;
SIGNAL \sin_table~279_combout\ : std_logic;
SIGNAL \sin_table~281_combout\ : std_logic;
SIGNAL \sin_table~275_combout\ : std_logic;
SIGNAL \sin_table~274_combout\ : std_logic;
SIGNAL \sin_table~276_combout\ : std_logic;
SIGNAL \sin_table~277_combout\ : std_logic;
SIGNAL \sin_table~278_combout\ : std_logic;
SIGNAL \sin_table~282_combout\ : std_logic;
SIGNAL \sin_table~287_combout\ : std_logic;
SIGNAL \sin_table~269_combout\ : std_logic;
SIGNAL \sin_table~420_combout\ : std_logic;
SIGNAL \sin_table~259_combout\ : std_logic;
SIGNAL \sin_table~260_combout\ : std_logic;
SIGNAL \sin_table~261_combout\ : std_logic;
SIGNAL \sin_table~262_combout\ : std_logic;
SIGNAL \sin_table~263_combout\ : std_logic;
SIGNAL \sin_table~264_combout\ : std_logic;
SIGNAL \sin_table~265_combout\ : std_logic;
SIGNAL \sin_table~266_combout\ : std_logic;
SIGNAL \sin_table~267_combout\ : std_logic;
SIGNAL \sin_table~268_combout\ : std_logic;
SIGNAL \sin_table~270_combout\ : std_logic;
SIGNAL \sin_table~288_combout\ : std_logic;
SIGNAL \sin_table~305_combout\ : std_logic;
SIGNAL \sine_out[3]~reg0_q\ : std_logic;
SIGNAL \sin_table~311_combout\ : std_logic;
SIGNAL \sin_table~320_combout\ : std_logic;
SIGNAL \sin_table~319_combout\ : std_logic;
SIGNAL \sin_table~321_combout\ : std_logic;
SIGNAL \sin_table~322_combout\ : std_logic;
SIGNAL \sin_table~306_combout\ : std_logic;
SIGNAL \sin_table~309_combout\ : std_logic;
SIGNAL \sin_table~307_combout\ : std_logic;
SIGNAL \sin_table~308_combout\ : std_logic;
SIGNAL \sin_table~310_combout\ : std_logic;
SIGNAL \sin_table~316_combout\ : std_logic;
SIGNAL \sin_table~315_combout\ : std_logic;
SIGNAL \sin_table~317_combout\ : std_logic;
SIGNAL \sin_table~312_combout\ : std_logic;
SIGNAL \sin_table~313_combout\ : std_logic;
SIGNAL \sin_table~314_combout\ : std_logic;
SIGNAL \sin_table~318_combout\ : std_logic;
SIGNAL \sin_table~323_combout\ : std_logic;
SIGNAL \sin_table~357_combout\ : std_logic;
SIGNAL \sin_table~356_combout\ : std_logic;
SIGNAL \sin_table~359_combout\ : std_logic;
SIGNAL \sin_table~358_combout\ : std_logic;
SIGNAL \sin_table~360_combout\ : std_logic;
SIGNAL \sin_table~347_combout\ : std_logic;
SIGNAL \sin_table~337_combout\ : std_logic;
SIGNAL \sin_table~348_combout\ : std_logic;
SIGNAL \sin_table~350_combout\ : std_logic;
SIGNAL \sin_table~349_combout\ : std_logic;
SIGNAL \sin_table~351_combout\ : std_logic;
SIGNAL \sin_table~352_combout\ : std_logic;
SIGNAL \sin_table~353_combout\ : std_logic;
SIGNAL \sin_table~354_combout\ : std_logic;
SIGNAL \sin_table~355_combout\ : std_logic;
SIGNAL \sin_table~361_combout\ : std_logic;
SIGNAL \sin_table~324_combout\ : std_logic;
SIGNAL \sin_table~325_combout\ : std_logic;
SIGNAL \sin_table~331_combout\ : std_logic;
SIGNAL \sin_table~424_combout\ : std_logic;
SIGNAL \sin_table~425_combout\ : std_logic;
SIGNAL \sin_table~326_combout\ : std_logic;
SIGNAL \sin_table~327_combout\ : std_logic;
SIGNAL \sin_table~328_combout\ : std_logic;
SIGNAL \sin_table~329_combout\ : std_logic;
SIGNAL \sin_table~426_combout\ : std_logic;
SIGNAL \sin_table~427_combout\ : std_logic;
SIGNAL \sin_table~330_combout\ : std_logic;
SIGNAL \sin_table~332_combout\ : std_logic;
SIGNAL \sin_table~343_combout\ : std_logic;
SIGNAL \sin_table~342_combout\ : std_logic;
SIGNAL \sin_table~341_combout\ : std_logic;
SIGNAL \sin_table~344_combout\ : std_logic;
SIGNAL \sin_table~335_combout\ : std_logic;
SIGNAL \sin_table~333_combout\ : std_logic;
SIGNAL \sin_table~334_combout\ : std_logic;
SIGNAL \sin_table~336_combout\ : std_logic;
SIGNAL \sin_table~422_combout\ : std_logic;
SIGNAL \sin_table~423_combout\ : std_logic;
SIGNAL \sin_table~338_combout\ : std_logic;
SIGNAL \sin_table~339_combout\ : std_logic;
SIGNAL \sin_table~340_combout\ : std_logic;
SIGNAL \sin_table~345_combout\ : std_logic;
SIGNAL \sin_table~346_combout\ : std_logic;
SIGNAL \sin_table~362_combout\ : std_logic;
SIGNAL \sine_out[4]~reg0_q\ : std_logic;
SIGNAL \sin_table~397_combout\ : std_logic;
SIGNAL \sin_table~393_combout\ : std_logic;
SIGNAL \sin_table~394_combout\ : std_logic;
SIGNAL \sin_table~395_combout\ : std_logic;
SIGNAL \sin_table~396_combout\ : std_logic;
SIGNAL \sin_table~390_combout\ : std_logic;
SIGNAL \sin_table~391_combout\ : std_logic;
SIGNAL \sin_table~392_combout\ : std_logic;
SIGNAL \sin_table~398_combout\ : std_logic;
SIGNAL \sin_table~363_combout\ : std_logic;
SIGNAL \sin_table~364_combout\ : std_logic;
SIGNAL \sin_table~365_combout\ : std_logic;
SIGNAL \sin_table~366_combout\ : std_logic;
SIGNAL \sin_table~367_combout\ : std_logic;
SIGNAL \sin_table~368_combout\ : std_logic;
SIGNAL \sin_table~369_combout\ : std_logic;
SIGNAL \sin_table~370_combout\ : std_logic;
SIGNAL \sin_table~371_combout\ : std_logic;
SIGNAL \sin_table~387_combout\ : std_logic;
SIGNAL \sin_table~380_combout\ : std_logic;
SIGNAL \sin_table~381_combout\ : std_logic;
SIGNAL \sin_table~382_combout\ : std_logic;
SIGNAL \sin_table~383_combout\ : std_logic;
SIGNAL \sin_table~384_combout\ : std_logic;
SIGNAL \sin_table~385_combout\ : std_logic;
SIGNAL \sin_table~386_combout\ : std_logic;
SIGNAL \sin_table~388_combout\ : std_logic;
SIGNAL \sin_table~372_combout\ : std_logic;
SIGNAL \sin_table~374_combout\ : std_logic;
SIGNAL \sin_table~373_combout\ : std_logic;
SIGNAL \sin_table~376_combout\ : std_logic;
SIGNAL \sin_table~375_combout\ : std_logic;
SIGNAL \sin_table~377_combout\ : std_logic;
SIGNAL \sin_table~378_combout\ : std_logic;
SIGNAL \sin_table~379_combout\ : std_logic;
SIGNAL \sin_table~389_combout\ : std_logic;
SIGNAL \sin_table~399_combout\ : std_logic;
SIGNAL \sine_out[5]~reg0_q\ : std_logic;
SIGNAL \sin_table~401_combout\ : std_logic;
SIGNAL \sin_table~402_combout\ : std_logic;
SIGNAL \sin_table~400_combout\ : std_logic;
SIGNAL \sin_table~403_combout\ : std_logic;
SIGNAL \sin_table~413_combout\ : std_logic;
SIGNAL \sin_table~414_combout\ : std_logic;
SIGNAL \sin_table~415_combout\ : std_logic;
SIGNAL \sin_table~404_combout\ : std_logic;
SIGNAL \sin_table~405_combout\ : std_logic;
SIGNAL \sin_table~406_combout\ : std_logic;
SIGNAL \sin_table~407_combout\ : std_logic;
SIGNAL \sin_table~421_combout\ : std_logic;
SIGNAL \sin_table~408_combout\ : std_logic;
SIGNAL \sin_table~409_combout\ : std_logic;
SIGNAL \sin_table~410_combout\ : std_logic;
SIGNAL \sin_table~411_combout\ : std_logic;
SIGNAL \sin_table~412_combout\ : std_logic;
SIGNAL \sin_table~416_combout\ : std_logic;
SIGNAL \sine_out[6]~reg0_q\ : std_logic;
SIGNAL \sin_table~418_combout\ : std_logic;
SIGNAL \sin_table~417_combout\ : std_logic;
SIGNAL \sin_table~419_combout\ : std_logic;
SIGNAL \sine_out[7]~reg0_q\ : std_logic;
SIGNAL index : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
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
ww_freq_tuning <= freq_tuning;
sine_out <= ww_sine_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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

-- Location: IOOBUF_X0_Y23_N16
\sine_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\sine_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\sine_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\sine_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\sine_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\sine_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\sine_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[6]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\sine_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sine_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \sine_out[7]~output_o\);

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

-- Location: IOIBUF_X0_Y16_N15
\freq_tuning[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(7),
	o => \freq_tuning[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\freq_tuning[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(6),
	o => \freq_tuning[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\freq_tuning[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(5),
	o => \freq_tuning[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\freq_tuning[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(4),
	o => \freq_tuning[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N8
\freq_tuning[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(3),
	o => \freq_tuning[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\freq_tuning[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(2),
	o => \freq_tuning[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\freq_tuning[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(1),
	o => \freq_tuning[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\freq_tuning[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_tuning(0),
	o => \freq_tuning[0]~input_o\);

-- Location: LCCOMB_X9_Y21_N6
\index[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[0]~10_combout\ = (index(0) & (\freq_tuning[0]~input_o\ $ (VCC))) # (!index(0) & (\freq_tuning[0]~input_o\ & VCC))
-- \index[0]~11\ = CARRY((index(0) & \freq_tuning[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => \freq_tuning[0]~input_o\,
	datad => VCC,
	combout => \index[0]~10_combout\,
	cout => \index[0]~11\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X9_Y21_N7
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[0]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LCCOMB_X9_Y21_N8
\index[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[1]~12_combout\ = (index(1) & ((\freq_tuning[1]~input_o\ & (\index[0]~11\ & VCC)) # (!\freq_tuning[1]~input_o\ & (!\index[0]~11\)))) # (!index(1) & ((\freq_tuning[1]~input_o\ & (!\index[0]~11\)) # (!\freq_tuning[1]~input_o\ & ((\index[0]~11\) # 
-- (GND)))))
-- \index[1]~13\ = CARRY((index(1) & (!\freq_tuning[1]~input_o\ & !\index[0]~11\)) # (!index(1) & ((!\index[0]~11\) # (!\freq_tuning[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => \freq_tuning[1]~input_o\,
	datad => VCC,
	cin => \index[0]~11\,
	combout => \index[1]~12_combout\,
	cout => \index[1]~13\);

-- Location: FF_X9_Y21_N9
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[1]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LCCOMB_X9_Y21_N10
\index[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[2]~14_combout\ = ((index(2) $ (\freq_tuning[2]~input_o\ $ (!\index[1]~13\)))) # (GND)
-- \index[2]~15\ = CARRY((index(2) & ((\freq_tuning[2]~input_o\) # (!\index[1]~13\))) # (!index(2) & (\freq_tuning[2]~input_o\ & !\index[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => \freq_tuning[2]~input_o\,
	datad => VCC,
	cin => \index[1]~13\,
	combout => \index[2]~14_combout\,
	cout => \index[2]~15\);

-- Location: FF_X9_Y21_N11
\index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[2]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(2));

-- Location: LCCOMB_X9_Y21_N12
\index[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[3]~16_combout\ = (index(3) & ((\freq_tuning[3]~input_o\ & (\index[2]~15\ & VCC)) # (!\freq_tuning[3]~input_o\ & (!\index[2]~15\)))) # (!index(3) & ((\freq_tuning[3]~input_o\ & (!\index[2]~15\)) # (!\freq_tuning[3]~input_o\ & ((\index[2]~15\) # 
-- (GND)))))
-- \index[3]~17\ = CARRY((index(3) & (!\freq_tuning[3]~input_o\ & !\index[2]~15\)) # (!index(3) & ((!\index[2]~15\) # (!\freq_tuning[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \freq_tuning[3]~input_o\,
	datad => VCC,
	cin => \index[2]~15\,
	combout => \index[3]~16_combout\,
	cout => \index[3]~17\);

-- Location: FF_X9_Y21_N13
\index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[3]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(3));

-- Location: LCCOMB_X9_Y21_N14
\index[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[4]~18_combout\ = ((\freq_tuning[4]~input_o\ $ (index(4) $ (!\index[3]~17\)))) # (GND)
-- \index[4]~19\ = CARRY((\freq_tuning[4]~input_o\ & ((index(4)) # (!\index[3]~17\))) # (!\freq_tuning[4]~input_o\ & (index(4) & !\index[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_tuning[4]~input_o\,
	datab => index(4),
	datad => VCC,
	cin => \index[3]~17\,
	combout => \index[4]~18_combout\,
	cout => \index[4]~19\);

-- Location: FF_X9_Y21_N15
\index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[4]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(4));

-- Location: LCCOMB_X9_Y21_N16
\index[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[5]~20_combout\ = (\freq_tuning[5]~input_o\ & ((index(5) & (\index[4]~19\ & VCC)) # (!index(5) & (!\index[4]~19\)))) # (!\freq_tuning[5]~input_o\ & ((index(5) & (!\index[4]~19\)) # (!index(5) & ((\index[4]~19\) # (GND)))))
-- \index[5]~21\ = CARRY((\freq_tuning[5]~input_o\ & (!index(5) & !\index[4]~19\)) # (!\freq_tuning[5]~input_o\ & ((!\index[4]~19\) # (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_tuning[5]~input_o\,
	datab => index(5),
	datad => VCC,
	cin => \index[4]~19\,
	combout => \index[5]~20_combout\,
	cout => \index[5]~21\);

-- Location: FF_X9_Y21_N17
\index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[5]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(5));

-- Location: LCCOMB_X9_Y21_N18
\index[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[6]~22_combout\ = ((index(6) $ (\freq_tuning[6]~input_o\ $ (!\index[5]~21\)))) # (GND)
-- \index[6]~23\ = CARRY((index(6) & ((\freq_tuning[6]~input_o\) # (!\index[5]~21\))) # (!index(6) & (\freq_tuning[6]~input_o\ & !\index[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \freq_tuning[6]~input_o\,
	datad => VCC,
	cin => \index[5]~21\,
	combout => \index[6]~22_combout\,
	cout => \index[6]~23\);

-- Location: FF_X9_Y21_N19
\index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[6]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(6));

-- Location: LCCOMB_X9_Y21_N20
\index[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[7]~24_combout\ = (index(7) & ((\freq_tuning[7]~input_o\ & (\index[6]~23\ & VCC)) # (!\freq_tuning[7]~input_o\ & (!\index[6]~23\)))) # (!index(7) & ((\freq_tuning[7]~input_o\ & (!\index[6]~23\)) # (!\freq_tuning[7]~input_o\ & ((\index[6]~23\) # 
-- (GND)))))
-- \index[7]~25\ = CARRY((index(7) & (!\freq_tuning[7]~input_o\ & !\index[6]~23\)) # (!index(7) & ((!\index[6]~23\) # (!\freq_tuning[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => \freq_tuning[7]~input_o\,
	datad => VCC,
	cin => \index[6]~23\,
	combout => \index[7]~24_combout\,
	cout => \index[7]~25\);

-- Location: FF_X9_Y21_N21
\index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[7]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(7));

-- Location: LCCOMB_X9_Y21_N22
\index[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[8]~26_combout\ = (index(8) & (\index[7]~25\ $ (GND))) # (!index(8) & (!\index[7]~25\ & VCC))
-- \index[8]~27\ = CARRY((index(8) & !\index[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datad => VCC,
	cin => \index[7]~25\,
	combout => \index[8]~26_combout\,
	cout => \index[8]~27\);

-- Location: FF_X9_Y21_N23
\index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[8]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(8));

-- Location: LCCOMB_X4_Y21_N22
\sin_table~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~8_combout\ = (index(8) & (((index(2))))) # (!index(8) & (!index(6) & (!index(2) & index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~8_combout\);

-- Location: LCCOMB_X4_Y21_N2
\sin_table~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~4_combout\ = (index(2) & (((!index(6) & !index(3))) # (!index(8)))) # (!index(2) & (index(3) & ((index(8)) # (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~4_combout\);

-- Location: LCCOMB_X4_Y21_N4
\sin_table~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~5_combout\ = (index(8) & (index(6) $ ((!index(2))))) # (!index(8) & (index(3) $ (((index(6) & index(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~5_combout\);

-- Location: LCCOMB_X4_Y21_N18
\sin_table~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~6_combout\ = (index(6) & ((index(8) & (index(2) & !index(3))) # (!index(8) & ((index(2)) # (!index(3)))))) # (!index(6) & (((index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~6_combout\);

-- Location: LCCOMB_X4_Y21_N0
\sin_table~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~7_combout\ = (index(5) & ((\sin_table~5_combout\) # ((index(4))))) # (!index(5) & (((!index(4) & \sin_table~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => \sin_table~5_combout\,
	datac => index(4),
	datad => \sin_table~6_combout\,
	combout => \sin_table~7_combout\);

-- Location: LCCOMB_X4_Y21_N28
\sin_table~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~9_combout\ = (index(4) & ((\sin_table~7_combout\ & (\sin_table~8_combout\)) # (!\sin_table~7_combout\ & ((!\sin_table~4_combout\))))) # (!index(4) & (((\sin_table~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~8_combout\,
	datab => \sin_table~4_combout\,
	datac => index(4),
	datad => \sin_table~7_combout\,
	combout => \sin_table~9_combout\);

-- Location: LCCOMB_X4_Y21_N30
\sin_table~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~10_combout\ = (index(8) & (index(3) $ (((!index(6) & !index(2)))))) # (!index(8) & (index(6) $ ((index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~10_combout\);

-- Location: LCCOMB_X4_Y21_N26
\sin_table~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~14_combout\ = (index(6) & (((!index(3))))) # (!index(6) & ((index(8) & ((index(3)) # (!index(2)))) # (!index(8) & (!index(2) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~14_combout\);

-- Location: LCCOMB_X4_Y21_N8
\sin_table~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~11_combout\ = (index(2) & (!index(3) & ((index(6)) # (!index(8))))) # (!index(2) & ((index(8)) # ((index(6) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(6),
	datad => index(3),
	combout => \sin_table~11_combout\);

-- Location: LCCOMB_X4_Y21_N6
\sin_table~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~12_combout\ = (index(8) & (((index(3)) # (!index(6))) # (!index(2)))) # (!index(8) & (index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(6),
	datad => index(3),
	combout => \sin_table~12_combout\);

-- Location: LCCOMB_X4_Y21_N20
\sin_table~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~13_combout\ = (index(5) & ((index(4)) # ((!\sin_table~11_combout\)))) # (!index(5) & (!index(4) & ((!\sin_table~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(4),
	datac => \sin_table~11_combout\,
	datad => \sin_table~12_combout\,
	combout => \sin_table~13_combout\);

-- Location: LCCOMB_X4_Y21_N24
\sin_table~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~15_combout\ = (index(4) & ((\sin_table~13_combout\ & ((\sin_table~14_combout\))) # (!\sin_table~13_combout\ & (!\sin_table~10_combout\)))) # (!index(4) & (((\sin_table~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~10_combout\,
	datab => index(4),
	datac => \sin_table~14_combout\,
	datad => \sin_table~13_combout\,
	combout => \sin_table~15_combout\);

-- Location: LCCOMB_X4_Y21_N10
\sin_table~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~16_combout\ = (index(7) & (\sin_table~9_combout\)) # (!index(7) & ((\sin_table~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sin_table~9_combout\,
	datac => index(7),
	datad => \sin_table~15_combout\,
	combout => \sin_table~16_combout\);

-- Location: LCCOMB_X8_Y22_N18
\sin_table~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~45_combout\ = (index(5)) # ((index(3) & (!index(8))) # (!index(3) & ((index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~45_combout\);

-- Location: LCCOMB_X8_Y22_N22
\sin_table~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~49_combout\ = (index(3) & (index(8) $ (((index(5) & index(4)))))) # (!index(3) & ((index(8) & ((index(4)))) # (!index(8) & (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(5),
	datac => index(4),
	datad => index(8),
	combout => \sin_table~49_combout\);

-- Location: LCCOMB_X8_Y22_N8
\sin_table~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~46_combout\ = (index(8) & (!index(3) & (index(5) $ (index(4))))) # (!index(8) & (index(5) & (!index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~46_combout\);

-- Location: LCCOMB_X8_Y22_N6
\sin_table~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~47_combout\ = (index(5)) # ((index(8) & ((!index(3)) # (!index(4)))) # (!index(8) & ((index(4)) # (index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~47_combout\);

-- Location: LCCOMB_X8_Y22_N12
\sin_table~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~48_combout\ = (index(7) & ((index(2)) # ((!\sin_table~46_combout\)))) # (!index(7) & (!index(2) & ((!\sin_table~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(2),
	datac => \sin_table~46_combout\,
	datad => \sin_table~47_combout\,
	combout => \sin_table~48_combout\);

-- Location: LCCOMB_X8_Y22_N28
\sin_table~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~50_combout\ = (index(2) & ((\sin_table~48_combout\ & ((!\sin_table~49_combout\))) # (!\sin_table~48_combout\ & (\sin_table~45_combout\)))) # (!index(2) & (((\sin_table~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~45_combout\,
	datab => index(2),
	datac => \sin_table~49_combout\,
	datad => \sin_table~48_combout\,
	combout => \sin_table~50_combout\);

-- Location: LCCOMB_X7_Y21_N26
\sin_table~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~43_combout\ = (index(8) & (((index(2)) # (!index(7))))) # (!index(8) & ((index(2) & ((index(7)))) # (!index(2) & (index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(7),
	datac => index(8),
	datad => index(2),
	combout => \sin_table~43_combout\);

-- Location: LCCOMB_X7_Y21_N2
\sin_table~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~41_combout\ = (index(4) & ((index(2) & (index(8))) # (!index(2) & (!index(8) & !index(7))))) # (!index(4) & (index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(2),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~41_combout\);

-- Location: LCCOMB_X7_Y21_N28
\sin_table~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~40_combout\ = (index(7) & ((index(8) & (!index(2) & index(4))) # (!index(8) & (index(2) & !index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(7),
	datad => index(4),
	combout => \sin_table~40_combout\);

-- Location: LCCOMB_X7_Y21_N24
\sin_table~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~42_combout\ = (index(5) & (((index(3)) # (\sin_table~40_combout\)))) # (!index(5) & (\sin_table~41_combout\ & (!index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => \sin_table~41_combout\,
	datac => index(3),
	datad => \sin_table~40_combout\,
	combout => \sin_table~42_combout\);

-- Location: LCCOMB_X8_Y21_N6
\sin_table~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~39_combout\ = (index(7) & (index(2) $ (((index(4) & !index(8)))))) # (!index(7) & ((index(4)) # ((!index(2) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => index(2),
	datad => index(8),
	combout => \sin_table~39_combout\);

-- Location: LCCOMB_X7_Y21_N16
\sin_table~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~44_combout\ = (\sin_table~42_combout\ & (((!index(3))) # (!\sin_table~43_combout\))) # (!\sin_table~42_combout\ & (((index(3) & \sin_table~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~43_combout\,
	datab => \sin_table~42_combout\,
	datac => index(3),
	datad => \sin_table~39_combout\,
	combout => \sin_table~44_combout\);

-- Location: LCCOMB_X4_Y21_N14
\sin_table~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~51_combout\ = (index(6) & ((\sin_table~44_combout\))) # (!index(6) & (\sin_table~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datac => \sin_table~50_combout\,
	datad => \sin_table~44_combout\,
	combout => \sin_table~51_combout\);

-- Location: LCCOMB_X3_Y21_N8
\sin_table~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~21_combout\ = (index(5) & ((index(3) & (index(8) & index(4))) # (!index(3) & (!index(8) & !index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(3),
	datac => index(8),
	datad => index(4),
	combout => \sin_table~21_combout\);

-- Location: LCCOMB_X3_Y21_N14
\sin_table~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~18_combout\ = (index(5) & ((index(3) & (index(4))) # (!index(3) & ((!index(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(3),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~18_combout\);

-- Location: LCCOMB_X3_Y21_N20
\sin_table~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~19_combout\ = (index(3) & ((index(8) & ((!index(5)))) # (!index(8) & (!index(4))))) # (!index(3) & (index(8) $ (((index(4)) # (index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(4),
	datac => index(3),
	datad => index(5),
	combout => \sin_table~19_combout\);

-- Location: LCCOMB_X3_Y21_N26
\sin_table~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~20_combout\ = (index(2) & (index(7))) # (!index(2) & ((index(7) & (!\sin_table~18_combout\)) # (!index(7) & ((!\sin_table~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(7),
	datac => \sin_table~18_combout\,
	datad => \sin_table~19_combout\,
	combout => \sin_table~20_combout\);

-- Location: LCCOMB_X3_Y21_N24
\sin_table~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~17_combout\ = (index(8) & (index(4) & ((!index(5))))) # (!index(8) & (index(3) & (index(4) $ (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(4),
	datac => index(3),
	datad => index(5),
	combout => \sin_table~17_combout\);

-- Location: LCCOMB_X3_Y21_N22
\sin_table~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~22_combout\ = (index(2) & ((\sin_table~20_combout\ & (\sin_table~21_combout\)) # (!\sin_table~20_combout\ & ((!\sin_table~17_combout\))))) # (!index(2) & (((\sin_table~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => \sin_table~21_combout\,
	datac => \sin_table~20_combout\,
	datad => \sin_table~17_combout\,
	combout => \sin_table~22_combout\);

-- Location: LCCOMB_X3_Y21_N12
\sin_table~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~27_combout\ = (index(8) & ((index(4) & ((index(2)))) # (!index(4) & ((!index(2)) # (!index(7)))))) # (!index(8) & (((index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(7),
	datac => index(4),
	datad => index(2),
	combout => \sin_table~27_combout\);

-- Location: LCCOMB_X3_Y21_N4
\sin_table~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~23_combout\ = (!index(7) & ((index(8) & (index(4) & !index(2))) # (!index(8) & (!index(4) & index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(7),
	datac => index(4),
	datad => index(2),
	combout => \sin_table~23_combout\);

-- Location: LCCOMB_X3_Y21_N30
\sin_table~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~24_combout\ = (index(7) & (index(4) & ((index(8)) # (!index(2))))) # (!index(7) & (index(2) $ (((index(8) & !index(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(4),
	datac => index(7),
	datad => index(2),
	combout => \sin_table~24_combout\);

-- Location: LCCOMB_X3_Y21_N28
\sin_table~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~25_combout\ = (index(8) & ((index(2) & (index(4))) # (!index(2) & ((index(7)))))) # (!index(8) & (((!index(7) & index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(4),
	datac => index(7),
	datad => index(2),
	combout => \sin_table~25_combout\);

-- Location: LCCOMB_X3_Y21_N18
\sin_table~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~26_combout\ = (index(5) & ((index(3)) # ((!\sin_table~24_combout\)))) # (!index(5) & (!index(3) & ((\sin_table~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(3),
	datac => \sin_table~24_combout\,
	datad => \sin_table~25_combout\,
	combout => \sin_table~26_combout\);

-- Location: LCCOMB_X3_Y21_N10
\sin_table~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~28_combout\ = (index(3) & ((\sin_table~26_combout\ & (!\sin_table~27_combout\)) # (!\sin_table~26_combout\ & ((\sin_table~23_combout\))))) # (!index(3) & (((\sin_table~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~27_combout\,
	datab => \sin_table~23_combout\,
	datac => index(3),
	datad => \sin_table~26_combout\,
	combout => \sin_table~28_combout\);

-- Location: LCCOMB_X3_Y21_N16
\sin_table~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~29_combout\ = (index(6) & (\sin_table~22_combout\)) # (!index(6) & ((\sin_table~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datac => \sin_table~22_combout\,
	datad => \sin_table~28_combout\,
	combout => \sin_table~29_combout\);

-- Location: LCCOMB_X8_Y21_N12
\sin_table~432\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~432_combout\ = (index(8) & ((index(4) & ((index(6)))) # (!index(4) & (index(7) & !index(6))))) # (!index(8) & (index(6) & ((!index(4)) # (!index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(4),
	datad => index(6),
	combout => \sin_table~432_combout\);

-- Location: LCCOMB_X8_Y21_N30
\sin_table~433\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~433_combout\ = (index(2) & (index(7) $ (((\sin_table~432_combout\) # (!index(8)))))) # (!index(2) & ((\sin_table~432_combout\) # ((!index(7) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(2),
	datad => \sin_table~432_combout\,
	combout => \sin_table~433_combout\);

-- Location: LCCOMB_X8_Y21_N24
\sin_table~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~30_combout\ = (index(7) & ((index(2) $ (!index(6))) # (!index(8)))) # (!index(7) & ((index(2)) # (index(8) $ (index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(2),
	datad => index(6),
	combout => \sin_table~30_combout\);

-- Location: LCCOMB_X8_Y21_N14
\sin_table~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~31_combout\ = (index(8) & ((index(2) & ((!index(6)))) # (!index(2) & ((index(6)) # (!index(7)))))) # (!index(8) & ((index(2)) # ((!index(7) & index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(2),
	datad => index(6),
	combout => \sin_table~31_combout\);

-- Location: LCCOMB_X8_Y21_N8
\sin_table~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~32_combout\ = (index(4) & (\sin_table~30_combout\)) # (!index(4) & ((!\sin_table~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sin_table~30_combout\,
	datac => \sin_table~31_combout\,
	datad => index(4),
	combout => \sin_table~32_combout\);

-- Location: LCCOMB_X8_Y21_N16
\sin_table~436\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~436_combout\ = (index(7) & ((index(2)) # ((!index(8) & !index(6))))) # (!index(7) & ((index(6) & (index(8))) # (!index(6) & ((index(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(2),
	datad => index(6),
	combout => \sin_table~436_combout\);

-- Location: LCCOMB_X8_Y21_N22
\sin_table~437\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~437_combout\ = (index(8) & ((index(4) $ (\sin_table~436_combout\)))) # (!index(8) & (\sin_table~436_combout\ & ((!index(4)) # (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => index(4),
	datad => \sin_table~436_combout\,
	combout => \sin_table~437_combout\);

-- Location: LCCOMB_X9_Y21_N4
\sin_table~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~33_combout\ = index(7) $ (((!index(8) & index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(7),
	datac => index(8),
	datad => index(6),
	combout => \sin_table~33_combout\);

-- Location: LCCOMB_X9_Y21_N24
\index[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \index[9]~28_combout\ = index(9) $ (\index[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	cin => \index[8]~27\,
	combout => \index[9]~28_combout\);

-- Location: FF_X9_Y21_N25
\index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \index[9]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(9));

-- Location: LCCOMB_X9_Y21_N2
\sin_table~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~34_combout\ = (index(6) & ((index(8) $ (!index(7))))) # (!index(6) & (index(9) & (index(8) & !index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => index(6),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~34_combout\);

-- Location: LCCOMB_X9_Y21_N28
\sin_table~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~35_combout\ = (index(2) & ((index(4)) # ((\sin_table~33_combout\)))) # (!index(2) & (!index(4) & ((!\sin_table~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => \sin_table~33_combout\,
	datad => \sin_table~34_combout\,
	combout => \sin_table~35_combout\);

-- Location: LCCOMB_X9_Y21_N0
\sin_table~434\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~434_combout\ = (index(6) & (\sin_table~35_combout\ $ (((!index(7)) # (!index(8)))))) # (!index(6) & ((index(8) & (index(7) & \sin_table~35_combout\)) # (!index(8) & (!index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => index(7),
	datad => \sin_table~35_combout\,
	combout => \sin_table~434_combout\);

-- Location: LCCOMB_X9_Y21_N26
\sin_table~435\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~435_combout\ = (index(4) & ((\sin_table~434_combout\))) # (!index(4) & (\sin_table~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~35_combout\,
	datad => \sin_table~434_combout\,
	combout => \sin_table~435_combout\);

-- Location: LCCOMB_X8_Y21_N10
\sin_table~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~36_combout\ = (index(5) & ((\sin_table~437_combout\) # ((index(3))))) # (!index(5) & (((!index(3) & \sin_table~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~437_combout\,
	datab => index(5),
	datac => index(3),
	datad => \sin_table~435_combout\,
	combout => \sin_table~36_combout\);

-- Location: LCCOMB_X8_Y21_N4
\sin_table~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~37_combout\ = (index(3) & ((\sin_table~36_combout\ & (\sin_table~433_combout\)) # (!\sin_table~36_combout\ & ((\sin_table~32_combout\))))) # (!index(3) & (((\sin_table~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~433_combout\,
	datab => index(3),
	datac => \sin_table~32_combout\,
	datad => \sin_table~36_combout\,
	combout => \sin_table~37_combout\);

-- Location: LCCOMB_X4_Y21_N16
\sin_table~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~38_combout\ = (index(0) & ((index(1)) # ((\sin_table~29_combout\)))) # (!index(0) & (!index(1) & ((\sin_table~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(1),
	datac => \sin_table~29_combout\,
	datad => \sin_table~37_combout\,
	combout => \sin_table~38_combout\);

-- Location: LCCOMB_X4_Y21_N12
\sin_table~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~52_combout\ = (index(1) & ((\sin_table~38_combout\ & ((\sin_table~51_combout\))) # (!\sin_table~38_combout\ & (\sin_table~16_combout\)))) # (!index(1) & (((\sin_table~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~16_combout\,
	datab => index(1),
	datac => \sin_table~51_combout\,
	datad => \sin_table~38_combout\,
	combout => \sin_table~52_combout\);

-- Location: FF_X4_Y21_N13
\sine_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~52_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[0]~reg0_q\);

-- Location: LCCOMB_X10_Y20_N30
\sin_table~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~57_combout\ = (index(8) & (((!index(6) & !index(5))))) # (!index(8) & (index(6) $ (((index(7) & !index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(6),
	datad => index(5),
	combout => \sin_table~57_combout\);

-- Location: LCCOMB_X10_Y20_N0
\sin_table~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~53_combout\ = (index(7) & (!index(8) & ((index(5))))) # (!index(7) & (index(8) & ((!index(5)) # (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(6),
	datad => index(5),
	combout => \sin_table~53_combout\);

-- Location: LCCOMB_X9_Y20_N30
\sin_table~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~55_combout\ = (index(6) & (!index(8) & (index(7) $ (index(5))))) # (!index(6) & (index(5) & (index(7) $ (index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~55_combout\);

-- Location: LCCOMB_X9_Y20_N16
\sin_table~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~54_combout\ = (index(6) & (!index(5) & (index(8) $ (index(7))))) # (!index(6) & (index(8) & (index(5) $ (index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~54_combout\);

-- Location: LCCOMB_X9_Y20_N24
\sin_table~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~56_combout\ = (index(4) & ((index(1)) # ((\sin_table~54_combout\)))) # (!index(4) & (!index(1) & (\sin_table~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(1),
	datac => \sin_table~55_combout\,
	datad => \sin_table~54_combout\,
	combout => \sin_table~56_combout\);

-- Location: LCCOMB_X9_Y20_N14
\sin_table~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~58_combout\ = (index(1) & ((\sin_table~56_combout\ & (!\sin_table~57_combout\)) # (!\sin_table~56_combout\ & ((!\sin_table~53_combout\))))) # (!index(1) & (((\sin_table~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~57_combout\,
	datab => index(1),
	datac => \sin_table~53_combout\,
	datad => \sin_table~56_combout\,
	combout => \sin_table~58_combout\);

-- Location: LCCOMB_X8_Y20_N20
\sin_table~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~76_combout\ = (index(8) & (((!index(6) & !index(5))))) # (!index(8) & (index(7) $ (((index(6) & index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(6),
	datac => index(5),
	datad => index(8),
	combout => \sin_table~76_combout\);

-- Location: LCCOMB_X8_Y19_N12
\sin_table~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~72_combout\ = (index(7) & (((index(5) & !index(6))))) # (!index(7) & ((index(8) & ((index(6)))) # (!index(8) & (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(5),
	datad => index(6),
	combout => \sin_table~72_combout\);

-- Location: LCCOMB_X9_Y20_N20
\sin_table~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~74_combout\ = (index(8) & (((!index(5) & !index(7))) # (!index(6)))) # (!index(8) & (((index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~74_combout\);

-- Location: LCCOMB_X8_Y20_N16
\sin_table~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~73_combout\ = (index(7) & ((!index(6)) # (!index(5)))) # (!index(7) & ((index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datad => index(6),
	combout => \sin_table~73_combout\);

-- Location: LCCOMB_X8_Y20_N2
\sin_table~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~75_combout\ = (index(1) & (index(4))) # (!index(1) & ((index(4) & ((\sin_table~73_combout\))) # (!index(4) & (!\sin_table~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(4),
	datac => \sin_table~74_combout\,
	datad => \sin_table~73_combout\,
	combout => \sin_table~75_combout\);

-- Location: LCCOMB_X8_Y20_N14
\sin_table~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~77_combout\ = (index(1) & ((\sin_table~75_combout\ & (\sin_table~76_combout\)) # (!\sin_table~75_combout\ & ((\sin_table~72_combout\))))) # (!index(1) & (((\sin_table~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => \sin_table~76_combout\,
	datac => \sin_table~72_combout\,
	datad => \sin_table~75_combout\,
	combout => \sin_table~77_combout\);

-- Location: LCCOMB_X9_Y20_N12
\sin_table~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~65_combout\ = (index(8) & (index(7) $ (((index(6)) # (index(5)))))) # (!index(8) & (index(6) & ((index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~65_combout\);

-- Location: LCCOMB_X10_Y20_N20
\sin_table~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~69_combout\ = (index(7) & ((index(8) & (!index(5))) # (!index(8) & ((!index(6)))))) # (!index(7) & (!index(5) & ((index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => index(8),
	datad => index(6),
	combout => \sin_table~69_combout\);

-- Location: LCCOMB_X9_Y20_N22
\sin_table~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~66_combout\ = (index(8) & (!index(7) & ((index(5)) # (!index(6))))) # (!index(8) & (index(7) & ((index(6)) # (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(6),
	datad => index(7),
	combout => \sin_table~66_combout\);

-- Location: LCCOMB_X9_Y20_N0
\sin_table~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~67_combout\ = (index(6) & (index(7) $ (((index(5)) # (index(8)))))) # (!index(6) & ((index(7)) # ((!index(5) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~67_combout\);

-- Location: LCCOMB_X9_Y20_N10
\sin_table~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~68_combout\ = (index(4) & ((index(1)) # ((!\sin_table~66_combout\)))) # (!index(4) & (!index(1) & ((!\sin_table~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(1),
	datac => \sin_table~66_combout\,
	datad => \sin_table~67_combout\,
	combout => \sin_table~68_combout\);

-- Location: LCCOMB_X9_Y20_N8
\sin_table~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~70_combout\ = (index(1) & ((\sin_table~68_combout\ & ((\sin_table~69_combout\))) # (!\sin_table~68_combout\ & (\sin_table~65_combout\)))) # (!index(1) & (((\sin_table~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~65_combout\,
	datab => index(1),
	datac => \sin_table~69_combout\,
	datad => \sin_table~68_combout\,
	combout => \sin_table~70_combout\);

-- Location: LCCOMB_X10_Y20_N28
\sin_table~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~59_combout\ = (index(4) & ((index(8) & ((!index(5)))) # (!index(8) & (!index(1))))) # (!index(4) & (index(1) & ((index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(8),
	datac => index(4),
	datad => index(5),
	combout => \sin_table~59_combout\);

-- Location: LCCOMB_X10_Y20_N8
\sin_table~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~63_combout\ = (index(1) & ((index(8)) # ((!index(4) & !index(5))))) # (!index(1) & (index(8) & (index(4) & index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(8),
	datac => index(4),
	datad => index(5),
	combout => \sin_table~63_combout\);

-- Location: LCCOMB_X10_Y20_N4
\sin_table~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~61_combout\ = (index(5)) # ((!index(8) & ((index(1)) # (index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(4),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~61_combout\);

-- Location: LCCOMB_X10_Y20_N6
\sin_table~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~60_combout\ = (index(8) & ((index(1) & (!index(4))) # (!index(1) & (index(4) & !index(5))))) # (!index(8) & (((index(4) & index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(8),
	datac => index(4),
	datad => index(5),
	combout => \sin_table~60_combout\);

-- Location: LCCOMB_X10_Y20_N18
\sin_table~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~62_combout\ = (index(7) & ((index(6)) # ((!\sin_table~60_combout\)))) # (!index(7) & (!index(6) & (\sin_table~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(6),
	datac => \sin_table~61_combout\,
	datad => \sin_table~60_combout\,
	combout => \sin_table~62_combout\);

-- Location: LCCOMB_X10_Y20_N22
\sin_table~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~64_combout\ = (index(6) & ((\sin_table~62_combout\ & ((\sin_table~63_combout\))) # (!\sin_table~62_combout\ & (!\sin_table~59_combout\)))) # (!index(6) & (((\sin_table~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~59_combout\,
	datac => \sin_table~63_combout\,
	datad => \sin_table~62_combout\,
	combout => \sin_table~64_combout\);

-- Location: LCCOMB_X9_Y20_N18
\sin_table~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~71_combout\ = (index(3) & (index(2))) # (!index(3) & ((index(2) & ((\sin_table~64_combout\))) # (!index(2) & (\sin_table~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(2),
	datac => \sin_table~70_combout\,
	datad => \sin_table~64_combout\,
	combout => \sin_table~71_combout\);

-- Location: LCCOMB_X8_Y20_N28
\sin_table~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~78_combout\ = (index(3) & ((\sin_table~71_combout\ & ((\sin_table~77_combout\))) # (!\sin_table~71_combout\ & (\sin_table~58_combout\)))) # (!index(3) & (((\sin_table~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \sin_table~58_combout\,
	datac => \sin_table~77_combout\,
	datad => \sin_table~71_combout\,
	combout => \sin_table~78_combout\);

-- Location: LCCOMB_X6_Y21_N26
\sin_table~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~136_combout\ = (index(1) & (!index(2) & ((index(8)) # (!index(5))))) # (!index(1) & (index(2) $ (((index(8) & !index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~136_combout\);

-- Location: LCCOMB_X6_Y21_N2
\sin_table~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~132_combout\ = (index(5) & (index(8) $ (index(2) $ (!index(1))))) # (!index(5) & (index(1) & (index(8) $ (!index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~132_combout\);

-- Location: LCCOMB_X6_Y21_N8
\sin_table~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~133_combout\ = (index(2) & (index(8) & ((index(1)) # (!index(5))))) # (!index(2) & (index(1) $ (((index(8) & index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(5),
	datad => index(1),
	combout => \sin_table~133_combout\);

-- Location: LCCOMB_X6_Y21_N10
\sin_table~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~134_combout\ = (index(5) & ((index(2) & (index(8) & !index(1))) # (!index(2) & ((index(1)))))) # (!index(5) & ((index(8)) # ((index(2) & !index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~134_combout\);

-- Location: LCCOMB_X6_Y21_N12
\sin_table~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~135_combout\ = (index(4) & ((index(3)) # ((!\sin_table~133_combout\)))) # (!index(4) & (!index(3) & ((\sin_table~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(3),
	datac => \sin_table~133_combout\,
	datad => \sin_table~134_combout\,
	combout => \sin_table~135_combout\);

-- Location: LCCOMB_X6_Y21_N28
\sin_table~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~137_combout\ = (index(3) & ((\sin_table~135_combout\ & (\sin_table~136_combout\)) # (!\sin_table~135_combout\ & ((\sin_table~132_combout\))))) # (!index(3) & (((\sin_table~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~136_combout\,
	datab => index(3),
	datac => \sin_table~132_combout\,
	datad => \sin_table~135_combout\,
	combout => \sin_table~137_combout\);

-- Location: LCCOMB_X8_Y20_N30
\sin_table~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~151_combout\ = (!index(4) & (!index(2) & !index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~151_combout\);

-- Location: LCCOMB_X6_Y20_N28
\sin_table~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~152_combout\ = (index(1) & (!index(3))) # (!index(1) & (index(3) & ((index(2)) # (!index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(3),
	datac => index(4),
	datad => index(2),
	combout => \sin_table~152_combout\);

-- Location: LCCOMB_X10_Y20_N10
\sin_table~430\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~430_combout\ = (index(1) & (index(2) & ((index(8)) # (!index(4))))) # (!index(1) & (((index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(8),
	datac => index(1),
	datad => index(4),
	combout => \sin_table~430_combout\);

-- Location: LCCOMB_X6_Y20_N2
\sin_table~431\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~431_combout\ = (index(5) & (((index(8))))) # (!index(5) & (index(3) $ (((\sin_table~430_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(3),
	datac => index(8),
	datad => \sin_table~430_combout\,
	combout => \sin_table~431_combout\);

-- Location: LCCOMB_X6_Y20_N22
\sin_table~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~153_combout\ = (index(5) & ((\sin_table~431_combout\ & ((!\sin_table~152_combout\))) # (!\sin_table~431_combout\ & (\sin_table~151_combout\)))) # (!index(5) & (((\sin_table~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~151_combout\,
	datab => \sin_table~152_combout\,
	datac => index(5),
	datad => \sin_table~431_combout\,
	combout => \sin_table~153_combout\);

-- Location: LCCOMB_X6_Y21_N30
\sin_table~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~138_combout\ = (index(2) & (index(1) $ (((!index(8) & !index(5)))))) # (!index(2) & ((index(8)) # ((!index(5) & index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~138_combout\);

-- Location: LCCOMB_X6_Y20_N8
\sin_table~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~142_combout\ = (index(5) & (((index(1) & !index(2))) # (!index(8)))) # (!index(5) & ((index(1) & (!index(2) & !index(8))) # (!index(1) & (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(2),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~142_combout\);

-- Location: LCCOMB_X6_Y20_N4
\sin_table~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~140_combout\ = (index(1) & (index(2) $ (((index(8)) # (!index(5)))))) # (!index(1) & (index(2) & ((index(5)) # (!index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(8),
	datac => index(5),
	datad => index(2),
	combout => \sin_table~140_combout\);

-- Location: LCCOMB_X6_Y20_N6
\sin_table~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~139_combout\ = (index(1) & (!index(5) & (index(2) $ (!index(8))))) # (!index(1) & (index(2) $ (index(8) $ (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(2),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~139_combout\);

-- Location: LCCOMB_X6_Y20_N10
\sin_table~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~141_combout\ = (index(4) & ((index(3)) # ((\sin_table~139_combout\)))) # (!index(4) & (!index(3) & (\sin_table~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(3),
	datac => \sin_table~140_combout\,
	datad => \sin_table~139_combout\,
	combout => \sin_table~141_combout\);

-- Location: LCCOMB_X6_Y20_N14
\sin_table~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~143_combout\ = (index(3) & ((\sin_table~141_combout\ & ((\sin_table~142_combout\))) # (!\sin_table~141_combout\ & (\sin_table~138_combout\)))) # (!index(3) & (((\sin_table~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~138_combout\,
	datab => index(3),
	datac => \sin_table~142_combout\,
	datad => \sin_table~141_combout\,
	combout => \sin_table~143_combout\);

-- Location: LCCOMB_X7_Y21_N14
\sin_table~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~144_combout\ = index(3) $ (((!index(1) & index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(1),
	datad => index(2),
	combout => \sin_table~144_combout\);

-- Location: LCCOMB_X6_Y20_N26
\sin_table~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~148_combout\ = index(3) $ (((index(4) & (!index(2) & !index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(2),
	datac => index(1),
	datad => index(3),
	combout => \sin_table~148_combout\);

-- Location: LCCOMB_X6_Y20_N30
\sin_table~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~146_combout\ = (index(1) & (!index(3) & ((index(4)) # (!index(2))))) # (!index(1) & (((index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(2),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~146_combout\);

-- Location: LCCOMB_X6_Y20_N24
\sin_table~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~145_combout\ = (index(2) & (index(4) & index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~145_combout\);

-- Location: LCCOMB_X6_Y20_N20
\sin_table~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~147_combout\ = (index(5) & (index(8))) # (!index(5) & ((index(8) & ((\sin_table~145_combout\))) # (!index(8) & (!\sin_table~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => \sin_table~146_combout\,
	datad => \sin_table~145_combout\,
	combout => \sin_table~147_combout\);

-- Location: LCCOMB_X6_Y20_N12
\sin_table~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~149_combout\ = (index(5) & ((\sin_table~147_combout\ & ((!\sin_table~148_combout\))) # (!\sin_table~147_combout\ & (\sin_table~144_combout\)))) # (!index(5) & (((\sin_table~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~144_combout\,
	datab => index(5),
	datac => \sin_table~148_combout\,
	datad => \sin_table~147_combout\,
	combout => \sin_table~149_combout\);

-- Location: LCCOMB_X6_Y20_N18
\sin_table~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~150_combout\ = (index(6) & (index(7))) # (!index(6) & ((index(7) & (\sin_table~143_combout\)) # (!index(7) & ((\sin_table~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => \sin_table~143_combout\,
	datad => \sin_table~149_combout\,
	combout => \sin_table~150_combout\);

-- Location: LCCOMB_X6_Y20_N16
\sin_table~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~154_combout\ = (index(6) & ((\sin_table~150_combout\ & ((\sin_table~153_combout\))) # (!\sin_table~150_combout\ & (\sin_table~137_combout\)))) # (!index(6) & (((\sin_table~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~137_combout\,
	datab => index(6),
	datac => \sin_table~153_combout\,
	datad => \sin_table~150_combout\,
	combout => \sin_table~154_combout\);

-- Location: LCCOMB_X10_Y20_N2
\sin_table~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~79_combout\ = (index(1) & (((index(8) & index(5))) # (!index(4)))) # (!index(1) & (((index(4)) # (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(8),
	datac => index(4),
	datad => index(5),
	combout => \sin_table~79_combout\);

-- Location: LCCOMB_X10_Y20_N14
\sin_table~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~83_combout\ = (index(1) & ((index(8) & ((index(5)))) # (!index(8) & (!index(4))))) # (!index(1) & ((index(5)) # ((index(4) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(4),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~83_combout\);

-- Location: LCCOMB_X10_Y20_N26
\sin_table~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~81_combout\ = (index(4) & ((index(8) & ((!index(5)))) # (!index(8) & (index(1) & index(5))))) # (!index(4) & (!index(8) & (index(1) $ (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(4),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~81_combout\);

-- Location: LCCOMB_X10_Y20_N12
\sin_table~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~80_combout\ = (index(4) & (index(1) & ((!index(5)) # (!index(8))))) # (!index(4) & (!index(8) & (index(1) $ (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(4),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~80_combout\);

-- Location: LCCOMB_X10_Y20_N24
\sin_table~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~82_combout\ = (index(3) & (index(2))) # (!index(3) & ((index(2) & ((!\sin_table~80_combout\))) # (!index(2) & (\sin_table~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(2),
	datac => \sin_table~81_combout\,
	datad => \sin_table~80_combout\,
	combout => \sin_table~82_combout\);

-- Location: LCCOMB_X10_Y20_N16
\sin_table~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~84_combout\ = (index(3) & ((\sin_table~82_combout\ & ((\sin_table~83_combout\))) # (!\sin_table~82_combout\ & (!\sin_table~79_combout\)))) # (!index(3) & (((\sin_table~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \sin_table~79_combout\,
	datac => \sin_table~83_combout\,
	datad => \sin_table~82_combout\,
	combout => \sin_table~84_combout\);

-- Location: LCCOMB_X6_Y21_N6
\sin_table~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~98_combout\ = (index(5) & (index(2) $ (((!index(1)) # (!index(8)))))) # (!index(5) & ((index(1)) # (index(8) $ (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~98_combout\);

-- Location: LCCOMB_X6_Y21_N14
\sin_table~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~102_combout\ = (index(8) & ((index(5) & ((index(2)) # (!index(1)))) # (!index(5) & ((index(1)) # (!index(2)))))) # (!index(8) & (!index(5) & (index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~102_combout\);

-- Location: LCCOMB_X6_Y21_N22
\sin_table~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~100_combout\ = (index(8) & ((index(1)) # ((!index(2))))) # (!index(8) & (!index(5) & ((index(1)) # (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(1),
	datac => index(5),
	datad => index(2),
	combout => \sin_table~100_combout\);

-- Location: LCCOMB_X6_Y21_N0
\sin_table~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~99_combout\ = (index(5) & ((index(2) $ (!index(1))) # (!index(8)))) # (!index(5) & ((index(1)) # (index(8) $ (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(5),
	datad => index(1),
	combout => \sin_table~99_combout\);

-- Location: LCCOMB_X6_Y21_N24
\sin_table~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~101_combout\ = (index(4) & ((index(3)) # ((\sin_table~99_combout\)))) # (!index(4) & (!index(3) & (\sin_table~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(3),
	datac => \sin_table~100_combout\,
	datad => \sin_table~99_combout\,
	combout => \sin_table~101_combout\);

-- Location: LCCOMB_X6_Y21_N20
\sin_table~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~103_combout\ = (index(3) & ((\sin_table~101_combout\ & ((!\sin_table~102_combout\))) # (!\sin_table~101_combout\ & (!\sin_table~98_combout\)))) # (!index(3) & (((\sin_table~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~98_combout\,
	datab => index(3),
	datac => \sin_table~102_combout\,
	datad => \sin_table~101_combout\,
	combout => \sin_table~103_combout\);

-- Location: LCCOMB_X8_Y20_N10
\sin_table~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~91_combout\ = (index(5) & (index(1) & (index(2) $ (!index(8))))) # (!index(5) & (!index(8) & (index(1) $ (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(5),
	datac => index(2),
	datad => index(8),
	combout => \sin_table~91_combout\);

-- Location: LCCOMB_X6_Y20_N0
\sin_table~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~95_combout\ = (index(8) & (((index(1) & index(2))) # (!index(5)))) # (!index(8) & (index(1) & (!index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(2),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~95_combout\);

-- Location: LCCOMB_X6_Y21_N4
\sin_table~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~92_combout\ = (index(1) & (index(2) $ (((!index(5)) # (!index(8)))))) # (!index(1) & (!index(5) & (index(2) $ (index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(2),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~92_combout\);

-- Location: LCCOMB_X6_Y21_N18
\sin_table~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~93_combout\ = (index(8) & ((index(2)) # ((!index(5))))) # (!index(8) & ((index(2) & (!index(5) & !index(1))) # (!index(2) & (index(5) & index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(5),
	datad => index(1),
	combout => \sin_table~93_combout\);

-- Location: LCCOMB_X6_Y21_N16
\sin_table~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~94_combout\ = (index(4) & ((index(3)) # ((\sin_table~92_combout\)))) # (!index(4) & (!index(3) & ((\sin_table~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(3),
	datac => \sin_table~92_combout\,
	datad => \sin_table~93_combout\,
	combout => \sin_table~94_combout\);

-- Location: LCCOMB_X7_Y20_N22
\sin_table~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~96_combout\ = (index(3) & ((\sin_table~94_combout\ & ((!\sin_table~95_combout\))) # (!\sin_table~94_combout\ & (!\sin_table~91_combout\)))) # (!index(3) & (((\sin_table~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \sin_table~91_combout\,
	datac => \sin_table~95_combout\,
	datad => \sin_table~94_combout\,
	combout => \sin_table~96_combout\);

-- Location: LCCOMB_X7_Y20_N10
\sin_table~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~85_combout\ = (index(8) & (index(1) $ (((index(5)) # (!index(4)))))) # (!index(8) & (!index(4) & (!index(1) & index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(4),
	datac => index(1),
	datad => index(5),
	combout => \sin_table~85_combout\);

-- Location: LCCOMB_X8_Y20_N8
\sin_table~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~89_combout\ = (index(4) & (index(8) & (index(5) $ (index(1))))) # (!index(4) & ((index(5) & ((!index(8)))) # (!index(5) & (!index(1) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(5),
	datac => index(1),
	datad => index(8),
	combout => \sin_table~89_combout\);

-- Location: LCCOMB_X7_Y20_N4
\sin_table~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~86_combout\ = (index(4) & (index(1) & ((index(5))))) # (!index(4) & (!index(1) & ((index(8)) # (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(1),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~86_combout\);

-- Location: LCCOMB_X8_Y20_N26
\sin_table~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~87_combout\ = (index(1) & (index(5) & ((index(4)) # (index(8))))) # (!index(1) & ((index(8) & (!index(4))) # (!index(8) & ((index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(5),
	datac => index(1),
	datad => index(8),
	combout => \sin_table~87_combout\);

-- Location: LCCOMB_X7_Y20_N2
\sin_table~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~88_combout\ = (index(3) & (index(2))) # (!index(3) & ((index(2) & (\sin_table~86_combout\)) # (!index(2) & ((!\sin_table~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(2),
	datac => \sin_table~86_combout\,
	datad => \sin_table~87_combout\,
	combout => \sin_table~88_combout\);

-- Location: LCCOMB_X7_Y20_N20
\sin_table~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~90_combout\ = (index(3) & ((\sin_table~88_combout\ & ((\sin_table~89_combout\))) # (!\sin_table~88_combout\ & (!\sin_table~85_combout\)))) # (!index(3) & (((\sin_table~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~85_combout\,
	datab => \sin_table~89_combout\,
	datac => index(3),
	datad => \sin_table~88_combout\,
	combout => \sin_table~90_combout\);

-- Location: LCCOMB_X7_Y20_N24
\sin_table~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~97_combout\ = (index(6) & (index(7))) # (!index(6) & ((index(7) & ((\sin_table~90_combout\))) # (!index(7) & (\sin_table~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => \sin_table~96_combout\,
	datad => \sin_table~90_combout\,
	combout => \sin_table~97_combout\);

-- Location: LCCOMB_X7_Y20_N26
\sin_table~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~104_combout\ = (index(6) & ((\sin_table~97_combout\ & ((\sin_table~103_combout\))) # (!\sin_table~97_combout\ & (\sin_table~84_combout\)))) # (!index(6) & (((\sin_table~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~84_combout\,
	datab => index(6),
	datac => \sin_table~103_combout\,
	datad => \sin_table~97_combout\,
	combout => \sin_table~104_combout\);

-- Location: LCCOMB_X11_Y21_N12
\sin_table~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~124_combout\ = (index(7) & ((index(5) & ((!index(3)))) # (!index(5) & (index(8) & index(3))))) # (!index(7) & (((!index(8) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~124_combout\);

-- Location: LCCOMB_X11_Y21_N28
\sin_table~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~128_combout\ = (index(5) & (index(3) & (index(7) $ (!index(8))))) # (!index(5) & (index(3) $ (((!index(7) & index(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~128_combout\);

-- Location: LCCOMB_X11_Y21_N22
\sin_table~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~125_combout\ = (index(8) & (!index(3) & ((index(5)) # (index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => index(7),
	datad => index(3),
	combout => \sin_table~125_combout\);

-- Location: LCCOMB_X11_Y21_N16
\sin_table~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~126_combout\ = (index(7) & ((index(8) $ (index(5))) # (!index(3)))) # (!index(7) & (index(3) $ (((index(8) & index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(5),
	datad => index(3),
	combout => \sin_table~126_combout\);

-- Location: LCCOMB_X11_Y21_N6
\sin_table~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~127_combout\ = (index(6) & ((index(1)) # ((!\sin_table~125_combout\)))) # (!index(6) & (!index(1) & ((!\sin_table~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(1),
	datac => \sin_table~125_combout\,
	datad => \sin_table~126_combout\,
	combout => \sin_table~127_combout\);

-- Location: LCCOMB_X11_Y21_N26
\sin_table~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~129_combout\ = (index(1) & ((\sin_table~127_combout\ & ((!\sin_table~128_combout\))) # (!\sin_table~127_combout\ & (\sin_table~124_combout\)))) # (!index(1) & (((\sin_table~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~124_combout\,
	datab => \sin_table~128_combout\,
	datac => index(1),
	datad => \sin_table~127_combout\,
	combout => \sin_table~129_combout\);

-- Location: LCCOMB_X11_Y21_N20
\sin_table~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~105_combout\ = (index(8) & ((index(3)) # ((index(1) & index(5))))) # (!index(8) & ((index(1) & ((!index(3)))) # (!index(1) & ((index(5)) # (index(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(1),
	datac => index(5),
	datad => index(3),
	combout => \sin_table~105_combout\);

-- Location: LCCOMB_X11_Y21_N8
\sin_table~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~109_combout\ = (index(8) & (index(3) $ (((index(1)) # (index(5)))))) # (!index(8) & (((index(5)) # (index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(1),
	datac => index(5),
	datad => index(3),
	combout => \sin_table~109_combout\);

-- Location: LCCOMB_X11_Y21_N14
\sin_table~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~106_combout\ = (index(5) & (index(1) & (index(8) $ (!index(3))))) # (!index(5) & (!index(1) & (index(8) $ (index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(1),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~106_combout\);

-- Location: LCCOMB_X11_Y21_N24
\sin_table~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~107_combout\ = (index(8) & (index(5) $ (((index(3)))))) # (!index(8) & (!index(3) & (index(5) $ (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(1),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~107_combout\);

-- Location: LCCOMB_X11_Y21_N10
\sin_table~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~108_combout\ = (index(6) & (index(7))) # (!index(6) & ((index(7) & (!\sin_table~106_combout\)) # (!index(7) & ((!\sin_table~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => \sin_table~106_combout\,
	datad => \sin_table~107_combout\,
	combout => \sin_table~108_combout\);

-- Location: LCCOMB_X11_Y21_N30
\sin_table~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~110_combout\ = (index(6) & ((\sin_table~108_combout\ & ((\sin_table~109_combout\))) # (!\sin_table~108_combout\ & (!\sin_table~105_combout\)))) # (!index(6) & (((\sin_table~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~105_combout\,
	datac => \sin_table~109_combout\,
	datad => \sin_table~108_combout\,
	combout => \sin_table~110_combout\);

-- Location: LCCOMB_X8_Y20_N0
\sin_table~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~117_combout\ = (index(6) & (((!index(8) & !index(1))) # (!index(5)))) # (!index(6) & ((index(8)) # ((index(1)) # (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(1),
	datad => index(5),
	combout => \sin_table~117_combout\);

-- Location: LCCOMB_X7_Y20_N30
\sin_table~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~121_combout\ = (index(8) & (index(6) $ ((index(1))))) # (!index(8) & (!index(5) & (index(6) $ (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => index(1),
	datad => index(5),
	combout => \sin_table~121_combout\);

-- Location: LCCOMB_X7_Y20_N14
\sin_table~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~119_combout\ = (index(6) & (((index(8)) # (!index(5))))) # (!index(6) & ((index(5)) # ((index(1) & !index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(1),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~119_combout\);

-- Location: LCCOMB_X7_Y20_N16
\sin_table~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~118_combout\ = (index(1) & (index(6) $ ((!index(8))))) # (!index(1) & (!index(6) & (index(8) & index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(1),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~118_combout\);

-- Location: LCCOMB_X7_Y20_N0
\sin_table~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~120_combout\ = (index(3) & (index(7))) # (!index(3) & ((index(7) & ((\sin_table~118_combout\))) # (!index(7) & (!\sin_table~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(7),
	datac => \sin_table~119_combout\,
	datad => \sin_table~118_combout\,
	combout => \sin_table~120_combout\);

-- Location: LCCOMB_X7_Y20_N8
\sin_table~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~122_combout\ = (index(3) & ((\sin_table~120_combout\ & ((\sin_table~121_combout\))) # (!\sin_table~120_combout\ & (\sin_table~117_combout\)))) # (!index(3) & (((\sin_table~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \sin_table~117_combout\,
	datac => \sin_table~121_combout\,
	datad => \sin_table~120_combout\,
	combout => \sin_table~122_combout\);

-- Location: LCCOMB_X8_Y20_N12
\sin_table~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~111_combout\ = (index(7) & (index(5))) # (!index(7) & ((index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => index(1),
	combout => \sin_table~111_combout\);

-- Location: LCCOMB_X8_Y20_N4
\sin_table~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~115_combout\ = (index(6) & (index(7) $ (((!index(5)) # (!index(1)))))) # (!index(6) & (index(1) & ((index(7)) # (index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(6),
	datac => index(7),
	datad => index(5),
	combout => \sin_table~115_combout\);

-- Location: LCCOMB_X8_Y20_N22
\sin_table~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~112_combout\ = (!index(1) & (index(6) & ((index(7)) # (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => index(1),
	datad => index(6),
	combout => \sin_table~112_combout\);

-- Location: LCCOMB_X8_Y20_N24
\sin_table~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~113_combout\ = (index(6) & (index(5) $ (((!index(7) & index(1)))))) # (!index(6) & (((index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => index(1),
	datad => index(6),
	combout => \sin_table~113_combout\);

-- Location: LCCOMB_X8_Y20_N6
\sin_table~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~114_combout\ = (index(8) & ((index(3)) # ((!\sin_table~112_combout\)))) # (!index(8) & (!index(3) & ((!\sin_table~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(3),
	datac => \sin_table~112_combout\,
	datad => \sin_table~113_combout\,
	combout => \sin_table~114_combout\);

-- Location: LCCOMB_X8_Y20_N18
\sin_table~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~116_combout\ = (index(3) & ((\sin_table~114_combout\ & ((!\sin_table~115_combout\))) # (!\sin_table~114_combout\ & (\sin_table~111_combout\)))) # (!index(3) & (((\sin_table~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~111_combout\,
	datab => index(3),
	datac => \sin_table~115_combout\,
	datad => \sin_table~114_combout\,
	combout => \sin_table~116_combout\);

-- Location: LCCOMB_X7_Y20_N18
\sin_table~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~123_combout\ = (index(2) & ((index(4)) # ((\sin_table~116_combout\)))) # (!index(2) & (!index(4) & (\sin_table~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => \sin_table~122_combout\,
	datad => \sin_table~116_combout\,
	combout => \sin_table~123_combout\);

-- Location: LCCOMB_X7_Y20_N28
\sin_table~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~130_combout\ = (index(4) & ((\sin_table~123_combout\ & (\sin_table~129_combout\)) # (!\sin_table~123_combout\ & ((\sin_table~110_combout\))))) # (!index(4) & (((\sin_table~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~129_combout\,
	datab => index(4),
	datac => \sin_table~110_combout\,
	datad => \sin_table~123_combout\,
	combout => \sin_table~130_combout\);

-- Location: LCCOMB_X7_Y20_N6
\sin_table~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~131_combout\ = (index(9) & (index(0))) # (!index(9) & ((index(0) & (\sin_table~104_combout\)) # (!index(0) & ((\sin_table~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => index(0),
	datac => \sin_table~104_combout\,
	datad => \sin_table~130_combout\,
	combout => \sin_table~131_combout\);

-- Location: LCCOMB_X7_Y20_N12
\sin_table~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~155_combout\ = (index(9) & ((\sin_table~131_combout\ & ((\sin_table~154_combout\))) # (!\sin_table~131_combout\ & (\sin_table~78_combout\)))) # (!index(9) & (((\sin_table~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => \sin_table~78_combout\,
	datac => \sin_table~154_combout\,
	datad => \sin_table~131_combout\,
	combout => \sin_table~155_combout\);

-- Location: FF_X7_Y20_N13
\sine_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~155_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[1]~reg0_q\);

-- Location: LCCOMB_X9_Y23_N28
\sin_table~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~174_combout\ = (index(5)) # ((index(7) & (index(8) $ (index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(8),
	datad => index(4),
	combout => \sin_table~174_combout\);

-- Location: LCCOMB_X10_Y23_N16
\sin_table~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~173_combout\ = (index(7) & ((index(8) $ (!index(4))))) # (!index(7) & ((index(5) & ((!index(4)) # (!index(8)))) # (!index(5) & (index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => index(7),
	datad => index(4),
	combout => \sin_table~173_combout\);

-- Location: LCCOMB_X9_Y23_N4
\sin_table~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~428_combout\ = (\sin_table~174_combout\ & ((index(2) & ((\sin_table~173_combout\) # (!index(0)))) # (!index(2) & ((!\sin_table~173_combout\))))) # (!\sin_table~174_combout\ & (index(2) & ((index(0)) # (!\sin_table~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => \sin_table~174_combout\,
	datac => index(2),
	datad => \sin_table~173_combout\,
	combout => \sin_table~428_combout\);

-- Location: LCCOMB_X9_Y23_N10
\sin_table~429\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~429_combout\ = (index(4) & ((\sin_table~428_combout\ & ((\sin_table~173_combout\))) # (!\sin_table~428_combout\ & (!\sin_table~174_combout\ & !\sin_table~173_combout\)))) # (!index(4) & ((\sin_table~173_combout\ & (!\sin_table~174_combout\)) # 
-- (!\sin_table~173_combout\ & ((\sin_table~428_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~174_combout\,
	datac => \sin_table~428_combout\,
	datad => \sin_table~173_combout\,
	combout => \sin_table~429_combout\);

-- Location: LCCOMB_X10_Y23_N28
\sin_table~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~156_combout\ = (index(8) & ((index(5) & ((index(7)))) # (!index(5) & ((!index(7)) # (!index(0)))))) # (!index(8) & ((index(5) & (index(0))) # (!index(5) & ((index(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~156_combout\);

-- Location: LCCOMB_X10_Y23_N14
\sin_table~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~160_combout\ = (index(7) & (((index(8) & index(0))) # (!index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~160_combout\);

-- Location: LCCOMB_X10_Y21_N8
\sin_table~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~158_combout\ = (index(5) & ((index(7) & (index(8))) # (!index(7) & ((index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => index(0),
	datad => index(7),
	combout => \sin_table~158_combout\);

-- Location: LCCOMB_X10_Y23_N6
\sin_table~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~157_combout\ = (index(5) & ((index(7)))) # (!index(5) & (index(8) & !index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~157_combout\);

-- Location: LCCOMB_X10_Y23_N12
\sin_table~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~159_combout\ = (index(4) & (index(2))) # (!index(4) & ((index(2) & ((!\sin_table~157_combout\))) # (!index(2) & (\sin_table~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(2),
	datac => \sin_table~158_combout\,
	datad => \sin_table~157_combout\,
	combout => \sin_table~159_combout\);

-- Location: LCCOMB_X10_Y23_N20
\sin_table~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~161_combout\ = (index(4) & ((\sin_table~159_combout\ & ((\sin_table~160_combout\))) # (!\sin_table~159_combout\ & (!\sin_table~156_combout\)))) # (!index(4) & (((\sin_table~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~156_combout\,
	datac => \sin_table~160_combout\,
	datad => \sin_table~159_combout\,
	combout => \sin_table~161_combout\);

-- Location: LCCOMB_X10_Y23_N0
\sin_table~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~170_combout\ = (index(5)) # ((!index(8) & !index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~170_combout\);

-- Location: LCCOMB_X10_Y23_N22
\sin_table~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~167_combout\ = (index(8) & ((index(5) & ((index(0)) # (!index(7)))) # (!index(5) & ((index(7)))))) # (!index(8) & (((index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~167_combout\);

-- Location: LCCOMB_X10_Y23_N4
\sin_table~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~168_combout\ = (index(8) & (((index(5)) # (!index(7))))) # (!index(8) & (index(2) & ((index(5)) # (index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~168_combout\);

-- Location: LCCOMB_X10_Y23_N2
\sin_table~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~169_combout\ = (index(4) & (index(2))) # (!index(4) & (!\sin_table~168_combout\ & ((!index(0)) # (!index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(2),
	datac => index(0),
	datad => \sin_table~168_combout\,
	combout => \sin_table~169_combout\);

-- Location: LCCOMB_X10_Y23_N30
\sin_table~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~171_combout\ = (index(4) & ((\sin_table~169_combout\ & (\sin_table~170_combout\)) # (!\sin_table~169_combout\ & ((\sin_table~167_combout\))))) # (!index(4) & (((\sin_table~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~170_combout\,
	datac => \sin_table~167_combout\,
	datad => \sin_table~169_combout\,
	combout => \sin_table~171_combout\);

-- Location: LCCOMB_X8_Y23_N26
\sin_table~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~165_combout\ = (index(8) & ((index(2)))) # (!index(8) & (!index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(5),
	datac => index(2),
	datad => index(8),
	combout => \sin_table~165_combout\);

-- Location: LCCOMB_X8_Y23_N8
\sin_table~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~162_combout\ = (index(8) & ((index(5)) # ((!index(2))))) # (!index(8) & (index(5) $ (((index(2) & index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(2),
	datad => index(0),
	combout => \sin_table~162_combout\);

-- Location: LCCOMB_X8_Y23_N30
\sin_table~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~163_combout\ = (index(2) & (!index(7))) # (!index(2) & ((index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~163_combout\);

-- Location: LCCOMB_X8_Y23_N0
\sin_table~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~164_combout\ = (index(4) & (index(7))) # (!index(4) & (\sin_table~163_combout\ $ (((!index(7) & !index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => \sin_table~163_combout\,
	datad => index(4),
	combout => \sin_table~164_combout\);

-- Location: LCCOMB_X8_Y23_N12
\sin_table~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~166_combout\ = (index(4) & ((\sin_table~164_combout\ & (\sin_table~165_combout\)) # (!\sin_table~164_combout\ & ((\sin_table~162_combout\))))) # (!index(4) & (((\sin_table~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~165_combout\,
	datab => index(4),
	datac => \sin_table~162_combout\,
	datad => \sin_table~164_combout\,
	combout => \sin_table~166_combout\);

-- Location: LCCOMB_X9_Y23_N2
\sin_table~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~172_combout\ = (index(3) & (index(6))) # (!index(3) & ((index(6) & ((\sin_table~166_combout\))) # (!index(6) & (\sin_table~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(6),
	datac => \sin_table~171_combout\,
	datad => \sin_table~166_combout\,
	combout => \sin_table~172_combout\);

-- Location: LCCOMB_X9_Y23_N22
\sin_table~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~175_combout\ = (index(3) & ((\sin_table~172_combout\ & (\sin_table~429_combout\)) # (!\sin_table~172_combout\ & ((\sin_table~161_combout\))))) # (!index(3) & (((\sin_table~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~429_combout\,
	datab => index(3),
	datac => \sin_table~161_combout\,
	datad => \sin_table~172_combout\,
	combout => \sin_table~175_combout\);

-- Location: LCCOMB_X8_Y24_N22
\sin_table~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~239_combout\ = (index(7) & (index(2) & ((index(6)) # (index(5))))) # (!index(7) & (index(6) $ (((!index(2) & index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(6),
	datac => index(2),
	datad => index(5),
	combout => \sin_table~239_combout\);

-- Location: LCCOMB_X8_Y24_N28
\sin_table~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~238_combout\ = (index(7) & (!index(6) & ((!index(5))))) # (!index(7) & (index(6) & (index(2) $ (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(6),
	datac => index(2),
	datad => index(5),
	combout => \sin_table~238_combout\);

-- Location: LCCOMB_X8_Y24_N8
\sin_table~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~240_combout\ = (index(2) & ((\sin_table~238_combout\) # ((index(0) & !\sin_table~239_combout\)))) # (!index(2) & (\sin_table~238_combout\ & (index(0) $ (\sin_table~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(2),
	datac => \sin_table~239_combout\,
	datad => \sin_table~238_combout\,
	combout => \sin_table~240_combout\);

-- Location: LCCOMB_X8_Y24_N18
\sin_table~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~241_combout\ = (\sin_table~239_combout\ & ((index(2)) # ((!index(0) & !\sin_table~238_combout\)))) # (!\sin_table~239_combout\ & (\sin_table~238_combout\ & ((!index(2)) # (!index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(2),
	datac => \sin_table~239_combout\,
	datad => \sin_table~238_combout\,
	combout => \sin_table~241_combout\);

-- Location: LCCOMB_X8_Y24_N12
\sin_table~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~242_combout\ = (index(8) & ((\sin_table~241_combout\))) # (!index(8) & (\sin_table~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datac => \sin_table~240_combout\,
	datad => \sin_table~241_combout\,
	combout => \sin_table~242_combout\);

-- Location: LCCOMB_X7_Y24_N28
\sin_table~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~223_combout\ = (index(7) & (index(2) & !index(6))) # (!index(7) & (index(2) $ (!index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datac => index(2),
	datad => index(6),
	combout => \sin_table~223_combout\);

-- Location: LCCOMB_X7_Y24_N26
\sin_table~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~226_combout\ = (index(7) & (((index(2))))) # (!index(7) & (index(6) & ((!index(2)) # (!index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(0),
	datac => index(2),
	datad => index(6),
	combout => \sin_table~226_combout\);

-- Location: LCCOMB_X7_Y24_N2
\sin_table~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~224_combout\ = (index(2) & ((index(8) & ((index(7)))) # (!index(8) & (index(0) & !index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~224_combout\);

-- Location: LCCOMB_X7_Y24_N12
\sin_table~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~225_combout\ = (index(5) & (((index(8))))) # (!index(5) & ((index(6) & ((!\sin_table~224_combout\) # (!index(8)))) # (!index(6) & (index(8) $ (!\sin_table~224_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(6),
	datac => index(8),
	datad => \sin_table~224_combout\,
	combout => \sin_table~225_combout\);

-- Location: LCCOMB_X7_Y24_N16
\sin_table~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~227_combout\ = (index(5) & ((\sin_table~225_combout\ & ((!\sin_table~226_combout\))) # (!\sin_table~225_combout\ & (\sin_table~223_combout\)))) # (!index(5) & (((\sin_table~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => \sin_table~223_combout\,
	datac => \sin_table~226_combout\,
	datad => \sin_table~225_combout\,
	combout => \sin_table~227_combout\);

-- Location: LCCOMB_X8_Y24_N16
\sin_table~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~228_combout\ = (index(0) & ((index(2)) # ((index(8) & !index(5))))) # (!index(0) & (index(2) & ((!index(5)) # (!index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(2),
	datad => index(5),
	combout => \sin_table~228_combout\);

-- Location: LCCOMB_X8_Y24_N6
\sin_table~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~229_combout\ = (index(8) & (\sin_table~228_combout\ $ (((index(5)) # (!index(7)))))) # (!index(8) & (index(5) $ (((index(7)) # (\sin_table~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(7),
	datad => \sin_table~228_combout\,
	combout => \sin_table~229_combout\);

-- Location: LCCOMB_X8_Y24_N20
\sin_table~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~230_combout\ = (index(8) & ((index(7) & ((!\sin_table~228_combout\))) # (!index(7) & (index(5))))) # (!index(8) & ((index(7) & (index(5))) # (!index(7) & ((\sin_table~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(7),
	datad => \sin_table~228_combout\,
	combout => \sin_table~230_combout\);

-- Location: LCCOMB_X8_Y24_N30
\sin_table~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~231_combout\ = (index(6) & (\sin_table~229_combout\)) # (!index(6) & ((\sin_table~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~229_combout\,
	datab => index(6),
	datad => \sin_table~230_combout\,
	combout => \sin_table~231_combout\);

-- Location: LCCOMB_X8_Y24_N4
\sin_table~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~232_combout\ = (index(7) & (index(0) & (index(6) $ (!index(8))))) # (!index(7) & (((index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(6),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~232_combout\);

-- Location: LCCOMB_X8_Y24_N2
\sin_table~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~233_combout\ = (index(7) & ((index(0)) # (index(6) $ (index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(6),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~233_combout\);

-- Location: LCCOMB_X8_Y24_N14
\sin_table~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~235_combout\ = (\sin_table~232_combout\ & (index(5) & (index(8) $ (!\sin_table~233_combout\)))) # (!\sin_table~232_combout\ & (\sin_table~233_combout\ & (index(8) $ (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => \sin_table~232_combout\,
	datad => \sin_table~233_combout\,
	combout => \sin_table~235_combout\);

-- Location: LCCOMB_X8_Y24_N0
\sin_table~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~234_combout\ = (index(8) & ((index(5) & ((\sin_table~233_combout\) # (!\sin_table~232_combout\))) # (!index(5) & ((\sin_table~232_combout\) # (!\sin_table~233_combout\))))) # (!index(8) & (\sin_table~233_combout\ & ((!\sin_table~232_combout\) # 
-- (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => \sin_table~232_combout\,
	datad => \sin_table~233_combout\,
	combout => \sin_table~234_combout\);

-- Location: LCCOMB_X8_Y24_N24
\sin_table~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~236_combout\ = (index(2) & (\sin_table~235_combout\)) # (!index(2) & ((!\sin_table~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datac => \sin_table~235_combout\,
	datad => \sin_table~234_combout\,
	combout => \sin_table~236_combout\);

-- Location: LCCOMB_X8_Y24_N10
\sin_table~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~237_combout\ = (index(4) & ((index(3)) # ((\sin_table~231_combout\)))) # (!index(4) & (!index(3) & ((\sin_table~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(3),
	datac => \sin_table~231_combout\,
	datad => \sin_table~236_combout\,
	combout => \sin_table~237_combout\);

-- Location: LCCOMB_X8_Y24_N26
\sin_table~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~243_combout\ = (index(3) & ((\sin_table~237_combout\ & (\sin_table~242_combout\)) # (!\sin_table~237_combout\ & ((\sin_table~227_combout\))))) # (!index(3) & (((\sin_table~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~242_combout\,
	datab => index(3),
	datac => \sin_table~227_combout\,
	datad => \sin_table~237_combout\,
	combout => \sin_table~243_combout\);

-- Location: LCCOMB_X10_Y19_N4
\sin_table~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~193_combout\ = (index(2) & ((index(8)) # ((index(4) & index(7))))) # (!index(2) & (((index(7) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~193_combout\);

-- Location: LCCOMB_X10_Y19_N10
\sin_table~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~192_combout\ = (index(7) & ((index(8) & ((index(4)))) # (!index(8) & (!index(2))))) # (!index(7) & ((index(4) & ((index(2)) # (!index(8)))) # (!index(4) & ((index(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~192_combout\);

-- Location: LCCOMB_X10_Y19_N26
\sin_table~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~194_combout\ = (index(2) & ((\sin_table~193_combout\ $ (!\sin_table~192_combout\)))) # (!index(2) & ((\sin_table~193_combout\ & ((!\sin_table~192_combout\))) # (!\sin_table~193_combout\ & ((index(0)) # (\sin_table~192_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => \sin_table~193_combout\,
	datad => \sin_table~192_combout\,
	combout => \sin_table~194_combout\);

-- Location: LCCOMB_X10_Y19_N20
\sin_table~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~195_combout\ = (index(2) & (((\sin_table~192_combout\)))) # (!index(2) & (\sin_table~193_combout\ & (index(0) $ (!\sin_table~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => \sin_table~193_combout\,
	datad => \sin_table~192_combout\,
	combout => \sin_table~195_combout\);

-- Location: LCCOMB_X10_Y19_N2
\sin_table~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~196_combout\ = (index(5) & ((!\sin_table~195_combout\))) # (!index(5) & (!\sin_table~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datac => \sin_table~194_combout\,
	datad => \sin_table~195_combout\,
	combout => \sin_table~196_combout\);

-- Location: LCCOMB_X10_Y19_N30
\sin_table~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~177_combout\ = (index(7) & ((index(2)) # ((index(0)) # (!index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(8),
	datac => index(7),
	datad => index(0),
	combout => \sin_table~177_combout\);

-- Location: LCCOMB_X10_Y19_N16
\sin_table~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~176_combout\ = (index(2) & (!index(8))) # (!index(2) & ((index(8) & (index(7))) # (!index(8) & (!index(7) & index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(8),
	datac => index(7),
	datad => index(0),
	combout => \sin_table~176_combout\);

-- Location: LCCOMB_X10_Y19_N22
\sin_table~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~179_combout\ = (index(5) & (!\sin_table~177_combout\ & (index(8) $ (\sin_table~176_combout\)))) # (!index(5) & ((\sin_table~176_combout\) # ((index(8) & \sin_table~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => \sin_table~177_combout\,
	datad => \sin_table~176_combout\,
	combout => \sin_table~179_combout\);

-- Location: LCCOMB_X10_Y19_N28
\sin_table~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~178_combout\ = (index(5) & (\sin_table~176_combout\ & (index(8) $ (\sin_table~177_combout\)))) # (!index(5) & ((index(8) & ((\sin_table~176_combout\) # (!\sin_table~177_combout\))) # (!index(8) & (\sin_table~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => \sin_table~177_combout\,
	datad => \sin_table~176_combout\,
	combout => \sin_table~178_combout\);

-- Location: LCCOMB_X10_Y19_N12
\sin_table~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~180_combout\ = \sin_table~179_combout\ $ (((\sin_table~178_combout\) # (!index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~179_combout\,
	datad => \sin_table~178_combout\,
	combout => \sin_table~180_combout\);

-- Location: LCCOMB_X8_Y23_N22
\sin_table~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~181_combout\ = (index(8) & (((index(4)) # (index(2))))) # (!index(8) & (index(0) & (!index(4) & !index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(4),
	datad => index(2),
	combout => \sin_table~181_combout\);

-- Location: LCCOMB_X8_Y23_N24
\sin_table~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~182_combout\ = (index(8) & (((index(2)) # (!index(4))))) # (!index(8) & (index(2) & ((index(0)) # (!index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(4),
	datad => index(2),
	combout => \sin_table~182_combout\);

-- Location: LCCOMB_X8_Y23_N14
\sin_table~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~183_combout\ = (index(5) & (index(4) $ (((!\sin_table~181_combout\ & !\sin_table~182_combout\))))) # (!index(5) & (((\sin_table~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(4),
	datac => \sin_table~181_combout\,
	datad => \sin_table~182_combout\,
	combout => \sin_table~183_combout\);

-- Location: LCCOMB_X8_Y23_N20
\sin_table~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~184_combout\ = (\sin_table~181_combout\ & ((index(4) $ (\sin_table~182_combout\)))) # (!\sin_table~181_combout\ & (!index(5) & (index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(4),
	datac => \sin_table~181_combout\,
	datad => \sin_table~182_combout\,
	combout => \sin_table~184_combout\);

-- Location: LCCOMB_X8_Y23_N6
\sin_table~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~185_combout\ = \sin_table~184_combout\ $ (((index(7)) # (\sin_table~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(7),
	datac => \sin_table~183_combout\,
	datad => \sin_table~184_combout\,
	combout => \sin_table~185_combout\);

-- Location: LCCOMB_X10_Y23_N8
\sin_table~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~189_combout\ = (index(2) & (((!index(7) & !index(0))) # (!index(4)))) # (!index(2) & (((index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(2),
	datac => index(0),
	datad => index(4),
	combout => \sin_table~189_combout\);

-- Location: LCCOMB_X10_Y23_N26
\sin_table~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~186_combout\ = (index(2) & ((!index(4)))) # (!index(2) & (!index(7) & index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datac => index(2),
	datad => index(4),
	combout => \sin_table~186_combout\);

-- Location: LCCOMB_X10_Y23_N24
\sin_table~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~187_combout\ = (index(8) & ((index(2)) # ((index(4)) # (!index(7))))) # (!index(8) & (index(2) $ (((!index(7) & index(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(2),
	datac => index(7),
	datad => index(4),
	combout => \sin_table~187_combout\);

-- Location: LCCOMB_X10_Y23_N10
\sin_table~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~188_combout\ = (index(5) & (((index(8))))) # (!index(5) & ((\sin_table~187_combout\) # ((index(0) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(5),
	datad => \sin_table~187_combout\,
	combout => \sin_table~188_combout\);

-- Location: LCCOMB_X10_Y23_N18
\sin_table~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~190_combout\ = (index(5) & ((\sin_table~188_combout\ & (!\sin_table~189_combout\)) # (!\sin_table~188_combout\ & ((\sin_table~186_combout\))))) # (!index(5) & (((\sin_table~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => \sin_table~189_combout\,
	datac => \sin_table~186_combout\,
	datad => \sin_table~188_combout\,
	combout => \sin_table~190_combout\);

-- Location: LCCOMB_X9_Y23_N0
\sin_table~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~191_combout\ = (index(3) & (index(6))) # (!index(3) & ((index(6) & (\sin_table~185_combout\)) # (!index(6) & ((\sin_table~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(6),
	datac => \sin_table~185_combout\,
	datad => \sin_table~190_combout\,
	combout => \sin_table~191_combout\);

-- Location: LCCOMB_X9_Y23_N26
\sin_table~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~197_combout\ = (index(3) & ((\sin_table~191_combout\ & (\sin_table~196_combout\)) # (!\sin_table~191_combout\ & ((\sin_table~180_combout\))))) # (!index(3) & (((\sin_table~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~196_combout\,
	datab => index(3),
	datac => \sin_table~180_combout\,
	datad => \sin_table~191_combout\,
	combout => \sin_table~197_combout\);

-- Location: LCCOMB_X10_Y21_N10
\sin_table~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~202_combout\ = (index(6)) # (index(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datad => index(8),
	combout => \sin_table~202_combout\);

-- Location: LCCOMB_X10_Y21_N18
\sin_table~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~198_combout\ = index(8) $ (((index(7) & !index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datac => index(7),
	datad => index(6),
	combout => \sin_table~198_combout\);

-- Location: LCCOMB_X10_Y21_N22
\sin_table~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~200_combout\ = (index(6) & index(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datad => index(8),
	combout => \sin_table~200_combout\);

-- Location: LCCOMB_X10_Y21_N12
\sin_table~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~199_combout\ = (index(6) & ((index(8) & ((index(7)))) # (!index(8) & (!index(0) & !index(7))))) # (!index(6) & (index(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => index(0),
	datad => index(7),
	combout => \sin_table~199_combout\);

-- Location: LCCOMB_X10_Y21_N24
\sin_table~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~201_combout\ = (index(5) & ((index(4)) # ((!\sin_table~199_combout\)))) # (!index(5) & (!index(4) & (!\sin_table~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(4),
	datac => \sin_table~200_combout\,
	datad => \sin_table~199_combout\,
	combout => \sin_table~201_combout\);

-- Location: LCCOMB_X10_Y21_N28
\sin_table~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~203_combout\ = (index(4) & ((\sin_table~201_combout\ & (\sin_table~202_combout\)) # (!\sin_table~201_combout\ & ((\sin_table~198_combout\))))) # (!index(4) & (((\sin_table~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~202_combout\,
	datab => \sin_table~198_combout\,
	datac => index(4),
	datad => \sin_table~201_combout\,
	combout => \sin_table~203_combout\);

-- Location: LCCOMB_X9_Y20_N4
\sin_table~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~217_combout\ = (index(0) & (((index(6))))) # (!index(0) & (index(7) & (index(8) $ (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(6),
	datad => index(7),
	combout => \sin_table~217_combout\);

-- Location: LCCOMB_X9_Y20_N6
\sin_table~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~216_combout\ = (index(8) & ((index(6) $ (index(7))))) # (!index(8) & ((index(0) & (!index(6) & index(7))) # (!index(0) & (index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(6),
	datad => index(7),
	combout => \sin_table~216_combout\);

-- Location: LCCOMB_X9_Y20_N26
\sin_table~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~218_combout\ = (index(4) & (((!\sin_table~217_combout\ & !\sin_table~216_combout\)) # (!index(8)))) # (!index(4) & ((\sin_table~217_combout\ $ (\sin_table~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(8),
	datac => \sin_table~217_combout\,
	datad => \sin_table~216_combout\,
	combout => \sin_table~218_combout\);

-- Location: LCCOMB_X9_Y20_N28
\sin_table~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~219_combout\ = (index(4) & (!index(8) & (!\sin_table~217_combout\ & \sin_table~216_combout\))) # (!index(4) & (\sin_table~217_combout\ $ (((index(8)) # (\sin_table~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(8),
	datac => \sin_table~217_combout\,
	datad => \sin_table~216_combout\,
	combout => \sin_table~219_combout\);

-- Location: LCCOMB_X9_Y20_N2
\sin_table~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~220_combout\ = \sin_table~218_combout\ $ (((!index(5) & \sin_table~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(5),
	datac => \sin_table~218_combout\,
	datad => \sin_table~219_combout\,
	combout => \sin_table~220_combout\);

-- Location: LCCOMB_X9_Y23_N24
\sin_table~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~209_combout\ = (index(5) & (((!index(8) & !index(6))))) # (!index(5) & ((index(0)) # ((index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(0),
	datac => index(8),
	datad => index(6),
	combout => \sin_table~209_combout\);

-- Location: LCCOMB_X9_Y23_N14
\sin_table~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~213_combout\ = (index(8) & (!index(5) & (index(0) $ (index(6))))) # (!index(8) & (index(5) & ((index(6)) # (!index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(6),
	datac => index(8),
	datad => index(5),
	combout => \sin_table~213_combout\);

-- Location: LCCOMB_X9_Y23_N30
\sin_table~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~211_combout\ = (index(5) & ((index(8) $ (!index(6))))) # (!index(5) & (!index(8) & ((index(0)) # (index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(5),
	datac => index(8),
	datad => index(6),
	combout => \sin_table~211_combout\);

-- Location: LCCOMB_X10_Y21_N30
\sin_table~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~210_combout\ = (index(8) & ((index(6) & ((index(0)))) # (!index(6) & (index(5))))) # (!index(8) & (((index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => index(0),
	datad => index(6),
	combout => \sin_table~210_combout\);

-- Location: LCCOMB_X9_Y23_N20
\sin_table~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~212_combout\ = (index(4) & (index(7))) # (!index(4) & ((index(7) & ((\sin_table~210_combout\))) # (!index(7) & (!\sin_table~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(7),
	datac => \sin_table~211_combout\,
	datad => \sin_table~210_combout\,
	combout => \sin_table~212_combout\);

-- Location: LCCOMB_X9_Y23_N8
\sin_table~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~214_combout\ = (index(4) & ((\sin_table~212_combout\ & ((\sin_table~213_combout\))) # (!\sin_table~212_combout\ & (\sin_table~209_combout\)))) # (!index(4) & (((\sin_table~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~209_combout\,
	datac => \sin_table~213_combout\,
	datad => \sin_table~212_combout\,
	combout => \sin_table~214_combout\);

-- Location: LCCOMB_X10_Y24_N20
\sin_table~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~204_combout\ = (index(4) & (!index(7))) # (!index(4) & ((index(7)) # ((!index(0) & index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(7),
	datac => index(0),
	datad => index(8),
	combout => \sin_table~204_combout\);

-- Location: LCCOMB_X10_Y24_N22
\sin_table~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~207_combout\ = (index(8) & (((index(0) & !index(7))) # (!index(4)))) # (!index(8) & (((index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(8),
	datac => index(0),
	datad => index(7),
	combout => \sin_table~207_combout\);

-- Location: LCCOMB_X10_Y24_N18
\sin_table~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~205_combout\ = (index(4) & (((!index(0) & !index(7))) # (!index(5)))) # (!index(4) & (index(0) & (index(5) $ (index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(5),
	datac => index(0),
	datad => index(7),
	combout => \sin_table~205_combout\);

-- Location: LCCOMB_X10_Y24_N28
\sin_table~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~206_combout\ = (index(6) & (((index(5))))) # (!index(6) & ((index(8) & (!index(5))) # (!index(8) & ((\sin_table~205_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => index(5),
	datad => \sin_table~205_combout\,
	combout => \sin_table~206_combout\);

-- Location: LCCOMB_X10_Y24_N24
\sin_table~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~208_combout\ = (index(6) & ((\sin_table~206_combout\ & ((\sin_table~207_combout\))) # (!\sin_table~206_combout\ & (\sin_table~204_combout\)))) # (!index(6) & (((\sin_table~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~204_combout\,
	datac => \sin_table~207_combout\,
	datad => \sin_table~206_combout\,
	combout => \sin_table~208_combout\);

-- Location: LCCOMB_X9_Y23_N18
\sin_table~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~215_combout\ = (index(3) & (index(2))) # (!index(3) & ((index(2) & ((\sin_table~208_combout\))) # (!index(2) & (\sin_table~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(2),
	datac => \sin_table~214_combout\,
	datad => \sin_table~208_combout\,
	combout => \sin_table~215_combout\);

-- Location: LCCOMB_X9_Y23_N16
\sin_table~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~221_combout\ = (index(3) & ((\sin_table~215_combout\ & ((\sin_table~220_combout\))) # (!\sin_table~215_combout\ & (\sin_table~203_combout\)))) # (!index(3) & (((\sin_table~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \sin_table~203_combout\,
	datac => \sin_table~220_combout\,
	datad => \sin_table~215_combout\,
	combout => \sin_table~221_combout\);

-- Location: LCCOMB_X9_Y23_N6
\sin_table~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~222_combout\ = (index(9) & (index(1))) # (!index(9) & ((index(1) & (\sin_table~197_combout\)) # (!index(1) & ((\sin_table~221_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => index(1),
	datac => \sin_table~197_combout\,
	datad => \sin_table~221_combout\,
	combout => \sin_table~222_combout\);

-- Location: LCCOMB_X9_Y23_N12
\sin_table~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~244_combout\ = (index(9) & ((\sin_table~222_combout\ & ((\sin_table~243_combout\))) # (!\sin_table~222_combout\ & (\sin_table~175_combout\)))) # (!index(9) & (((\sin_table~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~175_combout\,
	datab => index(9),
	datac => \sin_table~243_combout\,
	datad => \sin_table~222_combout\,
	combout => \sin_table~244_combout\);

-- Location: FF_X9_Y23_N13
\sine_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~244_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[2]~reg0_q\);

-- Location: LCCOMB_X8_Y19_N30
\sin_table~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~256_combout\ = (index(7) & (index(8) & ((index(2)) # (index(1))))) # (!index(7) & ((index(8) & (index(2) & index(1))) # (!index(8) & (!index(2) & !index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~256_combout\);

-- Location: LCCOMB_X8_Y19_N28
\sin_table~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~255_combout\ = (index(0) & (index(8) & (index(2) & index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~255_combout\);

-- Location: LCCOMB_X8_Y19_N24
\sin_table~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~257_combout\ = (index(4) & (index(7) $ (((!\sin_table~255_combout\))))) # (!index(4) & (((\sin_table~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => \sin_table~256_combout\,
	datad => \sin_table~255_combout\,
	combout => \sin_table~257_combout\);

-- Location: LCCOMB_X8_Y19_N14
\sin_table~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~247_combout\ = ((index(8) & (!index(2) & !index(1))) # (!index(8) & ((!index(1)) # (!index(2))))) # (!index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~247_combout\);

-- Location: LCCOMB_X8_Y19_N10
\sin_table~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~245_combout\ = (index(8) & (!index(2) & ((!index(1)) # (!index(0))))) # (!index(8) & (index(2) & ((index(0)) # (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(8),
	datac => index(1),
	datad => index(2),
	combout => \sin_table~245_combout\);

-- Location: LCCOMB_X8_Y19_N20
\sin_table~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~246_combout\ = (index(7) & (index(4) & (index(8)))) # (!index(7) & (((\sin_table~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => index(8),
	datad => \sin_table~245_combout\,
	combout => \sin_table~246_combout\);

-- Location: LCCOMB_X8_Y19_N4
\sin_table~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~248_combout\ = (\sin_table~246_combout\) # ((!index(4) & \sin_table~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~247_combout\,
	datad => \sin_table~246_combout\,
	combout => \sin_table~248_combout\);

-- Location: LCCOMB_X8_Y19_N22
\sin_table~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~251_combout\ = (index(2) & (index(8) $ (((!index(4) & index(7)))))) # (!index(2) & ((index(8)) # (index(4) $ (index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(8),
	datac => index(2),
	datad => index(7),
	combout => \sin_table~251_combout\);

-- Location: LCCOMB_X8_Y19_N16
\sin_table~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~252_combout\ = (index(7) & (index(8) & (index(4) $ (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => index(2),
	datad => index(8),
	combout => \sin_table~252_combout\);

-- Location: LCCOMB_X8_Y19_N26
\sin_table~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~253_combout\ = (\sin_table~251_combout\ & (\sin_table~252_combout\ & ((!index(1)) # (!index(0))))) # (!\sin_table~251_combout\ & ((index(0)) # ((index(1)) # (!\sin_table~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(1),
	datac => \sin_table~251_combout\,
	datad => \sin_table~252_combout\,
	combout => \sin_table~253_combout\);

-- Location: LCCOMB_X9_Y19_N8
\sin_table~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~249_combout\ = (index(2) & (((index(0) & index(1))) # (!index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(1),
	datac => index(8),
	datad => index(2),
	combout => \sin_table~249_combout\);

-- Location: LCCOMB_X9_Y19_N6
\sin_table~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~250_combout\ = (index(4) & ((\sin_table~249_combout\ & (index(7))) # (!\sin_table~249_combout\ & ((!index(8)))))) # (!index(4) & (index(7) & ((index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(7),
	datac => \sin_table~249_combout\,
	datad => index(8),
	combout => \sin_table~250_combout\);

-- Location: LCCOMB_X9_Y19_N12
\sin_table~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~254_combout\ = (index(5) & ((index(6)) # ((\sin_table~250_combout\)))) # (!index(5) & (!index(6) & (\sin_table~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(6),
	datac => \sin_table~253_combout\,
	datad => \sin_table~250_combout\,
	combout => \sin_table~254_combout\);

-- Location: LCCOMB_X9_Y19_N10
\sin_table~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~258_combout\ = (index(6) & ((\sin_table~254_combout\ & (\sin_table~257_combout\)) # (!\sin_table~254_combout\ & ((\sin_table~248_combout\))))) # (!index(6) & (((\sin_table~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~257_combout\,
	datac => \sin_table~248_combout\,
	datad => \sin_table~254_combout\,
	combout => \sin_table~258_combout\);

-- Location: LCCOMB_X9_Y22_N8
\sin_table~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~301_combout\ = (index(1)) # ((index(8) & index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datac => index(1),
	datad => index(0),
	combout => \sin_table~301_combout\);

-- Location: LCCOMB_X9_Y22_N2
\sin_table~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~302_combout\ = (index(2) & ((index(4)) # (\sin_table~301_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~301_combout\,
	datad => index(2),
	combout => \sin_table~302_combout\);

-- Location: LCCOMB_X9_Y22_N20
\sin_table~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~303_combout\ = (index(7) & (index(8) & ((index(4)) # (!\sin_table~302_combout\)))) # (!index(7) & (index(4) $ (((index(8)) # (\sin_table~302_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(4),
	datad => \sin_table~302_combout\,
	combout => \sin_table~303_combout\);

-- Location: LCCOMB_X11_Y22_N10
\sin_table~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~289_combout\ = (index(8) & (index(2) & ((index(0)) # (index(1))))) # (!index(8) & (((index(2)) # (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~289_combout\);

-- Location: LCCOMB_X11_Y22_N12
\sin_table~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~290_combout\ = (index(4) & (!index(7) & (!index(8)))) # (!index(4) & ((\sin_table~289_combout\ & ((index(8)))) # (!\sin_table~289_combout\ & (!index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => index(8),
	datad => \sin_table~289_combout\,
	combout => \sin_table~290_combout\);

-- Location: LCCOMB_X9_Y19_N16
\sin_table~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~296_combout\ = (index(1) & ((index(0)) # (!index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => index(0),
	datad => index(1),
	combout => \sin_table~296_combout\);

-- Location: LCCOMB_X9_Y19_N22
\sin_table~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~297_combout\ = (index(2) & (index(8) $ (!\sin_table~296_combout\))) # (!index(2) & (!index(8) & \sin_table~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datac => index(8),
	datad => \sin_table~296_combout\,
	combout => \sin_table~297_combout\);

-- Location: LCCOMB_X9_Y19_N20
\sin_table~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~298_combout\ = (index(8)) # ((index(2) & \sin_table~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datac => index(8),
	datad => \sin_table~296_combout\,
	combout => \sin_table~298_combout\);

-- Location: LCCOMB_X9_Y19_N26
\sin_table~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~299_combout\ = (index(4) & (\sin_table~298_combout\ $ (((!\sin_table~297_combout\) # (!index(7)))))) # (!index(4) & (index(7) $ (((!\sin_table~297_combout\ & !\sin_table~298_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(7),
	datac => \sin_table~297_combout\,
	datad => \sin_table~298_combout\,
	combout => \sin_table~299_combout\);

-- Location: LCCOMB_X10_Y19_N14
\sin_table~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~294_combout\ = (index(4)) # ((index(8) & ((!index(2)))) # (!index(8) & (index(1) & index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(8),
	datac => index(2),
	datad => index(4),
	combout => \sin_table~294_combout\);

-- Location: LCCOMB_X10_Y19_N8
\sin_table~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~291_combout\ = (index(2) & ((index(8)) # ((index(1) & index(0))))) # (!index(2) & (index(8) & (index(1) & index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(8),
	datac => index(1),
	datad => index(0),
	combout => \sin_table~291_combout\);

-- Location: LCCOMB_X10_Y19_N6
\sin_table~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~292_combout\ = (!index(8) & ((index(2)) # ((index(0)) # (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => index(1),
	datad => index(8),
	combout => \sin_table~292_combout\);

-- Location: LCCOMB_X10_Y19_N0
\sin_table~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~293_combout\ = (index(4) & (((\sin_table~291_combout\)))) # (!index(4) & (!index(7) & ((\sin_table~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => \sin_table~291_combout\,
	datad => \sin_table~292_combout\,
	combout => \sin_table~293_combout\);

-- Location: LCCOMB_X10_Y19_N24
\sin_table~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~295_combout\ = (\sin_table~293_combout\) # ((index(7) & \sin_table~294_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datac => \sin_table~294_combout\,
	datad => \sin_table~293_combout\,
	combout => \sin_table~295_combout\);

-- Location: LCCOMB_X10_Y22_N28
\sin_table~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~300_combout\ = (index(5) & ((index(6)) # ((\sin_table~295_combout\)))) # (!index(5) & (!index(6) & (\sin_table~299_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(6),
	datac => \sin_table~299_combout\,
	datad => \sin_table~295_combout\,
	combout => \sin_table~300_combout\);

-- Location: LCCOMB_X10_Y22_N22
\sin_table~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~304_combout\ = (index(6) & ((\sin_table~300_combout\ & (\sin_table~303_combout\)) # (!\sin_table~300_combout\ & ((\sin_table~290_combout\))))) # (!index(6) & (((\sin_table~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~303_combout\,
	datac => \sin_table~290_combout\,
	datad => \sin_table~300_combout\,
	combout => \sin_table~304_combout\);

-- Location: LCCOMB_X11_Y22_N30
\sin_table~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~272_combout\ = (index(8) & ((index(0)) # ((index(2)) # (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~272_combout\);

-- Location: LCCOMB_X11_Y22_N20
\sin_table~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~271_combout\ = (index(8) & (((!index(2))))) # (!index(8) & ((index(2)) # ((index(0) & index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(2),
	datad => index(1),
	combout => \sin_table~271_combout\);

-- Location: LCCOMB_X11_Y22_N28
\sin_table~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~273_combout\ = (index(7) & (index(5) $ ((\sin_table~272_combout\)))) # (!index(7) & (index(5) & ((\sin_table~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => \sin_table~272_combout\,
	datad => \sin_table~271_combout\,
	combout => \sin_table~273_combout\);

-- Location: LCCOMB_X10_Y22_N0
\sin_table~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~283_combout\ = (index(1) & index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datad => index(2),
	combout => \sin_table~283_combout\);

-- Location: LCCOMB_X10_Y22_N2
\sin_table~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~284_combout\ = (index(2) & ((index(1) & ((index(5)) # (index(0)))) # (!index(1) & (index(5) & index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(5),
	datac => index(0),
	datad => index(2),
	combout => \sin_table~284_combout\);

-- Location: LCCOMB_X10_Y22_N24
\sin_table~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~285_combout\ = (index(7) & (index(5))) # (!index(7) & ((\sin_table~284_combout\ & ((index(8)))) # (!\sin_table~284_combout\ & (!index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => \sin_table~284_combout\,
	datac => index(7),
	datad => index(8),
	combout => \sin_table~285_combout\);

-- Location: LCCOMB_X10_Y22_N26
\sin_table~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~286_combout\ = (index(7) & ((\sin_table~283_combout\ $ (\sin_table~285_combout\)) # (!index(8)))) # (!index(7) & (((\sin_table~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => \sin_table~283_combout\,
	datac => index(7),
	datad => \sin_table~285_combout\,
	combout => \sin_table~286_combout\);

-- Location: LCCOMB_X10_Y22_N30
\sin_table~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~280_combout\ = (index(7) & ((index(5)) # ((index(1) & index(0))))) # (!index(7) & (!index(5) & ((index(1)) # (index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(7),
	datac => index(0),
	datad => index(5),
	combout => \sin_table~280_combout\);

-- Location: LCCOMB_X8_Y21_N0
\sin_table~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~279_combout\ = index(7) $ (index(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(7),
	datad => index(8),
	combout => \sin_table~279_combout\);

-- Location: LCCOMB_X10_Y22_N4
\sin_table~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~281_combout\ = (\sin_table~279_combout\) # ((!\sin_table~280_combout\ & ((index(5)) # (!index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(2),
	datac => \sin_table~280_combout\,
	datad => \sin_table~279_combout\,
	combout => \sin_table~281_combout\);

-- Location: LCCOMB_X10_Y22_N12
\sin_table~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~275_combout\ = ((index(2) & ((index(0)) # (index(1)))) # (!index(2) & (!index(0)))) # (!index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => index(5),
	datad => index(1),
	combout => \sin_table~275_combout\);

-- Location: LCCOMB_X10_Y22_N14
\sin_table~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~274_combout\ = (index(2) & (((!index(1)) # (!index(5))))) # (!index(2) & ((index(0)) # ((index(5)) # (index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => index(5),
	datad => index(1),
	combout => \sin_table~274_combout\);

-- Location: LCCOMB_X9_Y21_N30
\sin_table~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~276_combout\ = (index(1) & (!index(7) & (index(2) $ (!index(5))))) # (!index(1) & (index(7) $ (((index(2)) # (!index(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(5),
	datac => index(1),
	datad => index(7),
	combout => \sin_table~276_combout\);

-- Location: LCCOMB_X10_Y22_N18
\sin_table~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~277_combout\ = (\sin_table~276_combout\ & ((!index(0)) # (!index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datac => index(0),
	datad => \sin_table~276_combout\,
	combout => \sin_table~277_combout\);

-- Location: LCCOMB_X10_Y22_N20
\sin_table~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~278_combout\ = (index(8) & (((\sin_table~274_combout\) # (\sin_table~277_combout\)))) # (!index(8) & (\sin_table~275_combout\ & ((\sin_table~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~275_combout\,
	datab => index(8),
	datac => \sin_table~274_combout\,
	datad => \sin_table~277_combout\,
	combout => \sin_table~278_combout\);

-- Location: LCCOMB_X10_Y22_N6
\sin_table~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~282_combout\ = (index(6) & (index(4))) # (!index(6) & ((index(4) & ((\sin_table~278_combout\))) # (!index(4) & (\sin_table~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(4),
	datac => \sin_table~281_combout\,
	datad => \sin_table~278_combout\,
	combout => \sin_table~282_combout\);

-- Location: LCCOMB_X10_Y22_N8
\sin_table~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~287_combout\ = (index(6) & ((\sin_table~282_combout\ & ((\sin_table~286_combout\))) # (!\sin_table~282_combout\ & (\sin_table~273_combout\)))) # (!index(6) & (((\sin_table~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~273_combout\,
	datac => \sin_table~286_combout\,
	datad => \sin_table~282_combout\,
	combout => \sin_table~287_combout\);

-- Location: LCCOMB_X9_Y22_N0
\sin_table~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~269_combout\ = (index(7) & (!index(8))) # (!index(7) & ((index(8)) # ((index(1) & index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(1),
	datad => index(2),
	combout => \sin_table~269_combout\);

-- Location: LCCOMB_X9_Y22_N18
\sin_table~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~420_combout\ = (index(5) & (((\sin_table~269_combout\)))) # (!index(5) & ((index(7)) # ((index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(5),
	datad => \sin_table~269_combout\,
	combout => \sin_table~420_combout\);

-- Location: LCCOMB_X9_Y22_N4
\sin_table~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~259_combout\ = (index(1) & ((index(0)) # (index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(1),
	datad => index(7),
	combout => \sin_table~259_combout\);

-- Location: LCCOMB_X9_Y22_N30
\sin_table~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~260_combout\ = (!index(8) & ((index(5)) # ((\sin_table~259_combout\) # (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => \sin_table~259_combout\,
	datad => index(2),
	combout => \sin_table~260_combout\);

-- Location: LCCOMB_X9_Y22_N28
\sin_table~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~261_combout\ = (index(5) & (!index(2) & ((!index(1)) # (!index(0))))) # (!index(5) & (((index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(1),
	datac => index(5),
	datad => index(2),
	combout => \sin_table~261_combout\);

-- Location: LCCOMB_X9_Y22_N26
\sin_table~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~262_combout\ = (\sin_table~260_combout\) # ((index(7) & (index(8) & !\sin_table~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => \sin_table~260_combout\,
	datad => \sin_table~261_combout\,
	combout => \sin_table~262_combout\);

-- Location: LCCOMB_X9_Y22_N12
\sin_table~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~263_combout\ = (index(2) & ((index(8) & (!index(1))) # (!index(8) & ((index(1)) # (index(0)))))) # (!index(2) & (index(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(8),
	datac => index(1),
	datad => index(0),
	combout => \sin_table~263_combout\);

-- Location: LCCOMB_X9_Y22_N22
\sin_table~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~264_combout\ = (index(7) & (((!index(5) & \sin_table~263_combout\)))) # (!index(7) & (index(8) $ ((index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(5),
	datad => \sin_table~263_combout\,
	combout => \sin_table~264_combout\);

-- Location: LCCOMB_X9_Y22_N16
\sin_table~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~265_combout\ = (index(2) & (((index(7))))) # (!index(2) & ((index(1) & ((index(7)) # (!index(0)))) # (!index(1) & ((!index(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(1),
	datac => index(0),
	datad => index(7),
	combout => \sin_table~265_combout\);

-- Location: LCCOMB_X9_Y22_N6
\sin_table~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~266_combout\ = (index(5) & ((\sin_table~265_combout\))) # (!index(5) & (!index(7) & !\sin_table~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datac => index(5),
	datad => \sin_table~265_combout\,
	combout => \sin_table~266_combout\);

-- Location: LCCOMB_X9_Y22_N24
\sin_table~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~267_combout\ = (\sin_table~266_combout\) # ((index(8) & ((!index(7)))) # (!index(8) & (!index(2) & index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(8),
	datac => index(7),
	datad => \sin_table~266_combout\,
	combout => \sin_table~267_combout\);

-- Location: LCCOMB_X9_Y22_N10
\sin_table~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~268_combout\ = (index(6) & (index(4))) # (!index(6) & ((index(4) & (\sin_table~264_combout\)) # (!index(4) & ((\sin_table~267_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(4),
	datac => \sin_table~264_combout\,
	datad => \sin_table~267_combout\,
	combout => \sin_table~268_combout\);

-- Location: LCCOMB_X9_Y22_N14
\sin_table~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~270_combout\ = (index(6) & ((\sin_table~268_combout\ & (\sin_table~420_combout\)) # (!\sin_table~268_combout\ & ((\sin_table~262_combout\))))) # (!index(6) & (((\sin_table~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~420_combout\,
	datac => \sin_table~262_combout\,
	datad => \sin_table~268_combout\,
	combout => \sin_table~270_combout\);

-- Location: LCCOMB_X10_Y22_N10
\sin_table~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~288_combout\ = (index(9) & (index(3))) # (!index(9) & ((index(3) & ((\sin_table~270_combout\))) # (!index(3) & (\sin_table~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => index(3),
	datac => \sin_table~287_combout\,
	datad => \sin_table~270_combout\,
	combout => \sin_table~288_combout\);

-- Location: LCCOMB_X10_Y22_N16
\sin_table~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~305_combout\ = (index(9) & ((\sin_table~288_combout\ & ((\sin_table~304_combout\))) # (!\sin_table~288_combout\ & (\sin_table~258_combout\)))) # (!index(9) & (((\sin_table~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => \sin_table~258_combout\,
	datac => \sin_table~304_combout\,
	datad => \sin_table~288_combout\,
	combout => \sin_table~305_combout\);

-- Location: FF_X10_Y22_N17
\sine_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~305_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[3]~reg0_q\);

-- Location: LCCOMB_X6_Y22_N4
\sin_table~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~311_combout\ = (index(6) & (!index(3) & index(8))) # (!index(6) & ((!index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datac => index(3),
	datad => index(8),
	combout => \sin_table~311_combout\);

-- Location: LCCOMB_X6_Y22_N30
\sin_table~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~320_combout\ = (index(6)) # ((!index(8) & index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~320_combout\);

-- Location: LCCOMB_X6_Y22_N24
\sin_table~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~319_combout\ = (index(6) & (((!index(3)) # (!index(8))) # (!index(0)))) # (!index(6) & (((index(8) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(0),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~319_combout\);

-- Location: LCCOMB_X6_Y22_N16
\sin_table~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~321_combout\ = (index(7) & ((index(4)) # ((!\sin_table~319_combout\)))) # (!index(7) & (!index(4) & (\sin_table~320_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(4),
	datac => \sin_table~320_combout\,
	datad => \sin_table~319_combout\,
	combout => \sin_table~321_combout\);

-- Location: LCCOMB_X6_Y22_N26
\sin_table~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~322_combout\ = (index(4) & ((\sin_table~321_combout\ & (\sin_table~200_combout\)) # (!\sin_table~321_combout\ & ((\sin_table~311_combout\))))) # (!index(4) & (((\sin_table~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~200_combout\,
	datac => \sin_table~311_combout\,
	datad => \sin_table~321_combout\,
	combout => \sin_table~322_combout\);

-- Location: LCCOMB_X10_Y21_N16
\sin_table~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~306_combout\ = (index(6) & ((index(3)) # ((index(8)) # (index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(8),
	datac => index(0),
	datad => index(6),
	combout => \sin_table~306_combout\);

-- Location: LCCOMB_X10_Y21_N14
\sin_table~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~309_combout\ = ((!index(3) & index(8))) # (!index(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(8),
	datad => index(6),
	combout => \sin_table~309_combout\);

-- Location: LCCOMB_X10_Y21_N26
\sin_table~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~307_combout\ = (index(6) & ((index(8)))) # (!index(6) & (index(3) & !index(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(6),
	datad => index(8),
	combout => \sin_table~307_combout\);

-- Location: LCCOMB_X10_Y21_N20
\sin_table~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~308_combout\ = (index(4) & (index(7))) # (!index(4) & ((index(7) & (\sin_table~307_combout\)) # (!index(7) & ((!\sin_table~202_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(7),
	datac => \sin_table~307_combout\,
	datad => \sin_table~202_combout\,
	combout => \sin_table~308_combout\);

-- Location: LCCOMB_X10_Y21_N0
\sin_table~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~310_combout\ = (index(4) & ((\sin_table~308_combout\ & ((\sin_table~309_combout\))) # (!\sin_table~308_combout\ & (\sin_table~306_combout\)))) # (!index(4) & (((\sin_table~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~306_combout\,
	datac => \sin_table~309_combout\,
	datad => \sin_table~308_combout\,
	combout => \sin_table~310_combout\);

-- Location: LCCOMB_X6_Y22_N22
\sin_table~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~316_combout\ = (index(6) & (((!index(7)) # (!index(8))) # (!index(3)))) # (!index(6) & (((index(8)) # (index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(3),
	datac => index(8),
	datad => index(7),
	combout => \sin_table~316_combout\);

-- Location: LCCOMB_X6_Y22_N28
\sin_table~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~315_combout\ = (index(3) & (index(6) $ ((!index(7))))) # (!index(3) & ((index(6) & ((!index(8)) # (!index(7)))) # (!index(6) & ((index(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => index(3),
	datad => index(8),
	combout => \sin_table~315_combout\);

-- Location: LCCOMB_X6_Y22_N8
\sin_table~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~317_combout\ = (index(4) & ((\sin_table~315_combout\))) # (!index(4) & (\sin_table~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~316_combout\,
	datad => \sin_table~315_combout\,
	combout => \sin_table~317_combout\);

-- Location: LCCOMB_X6_Y22_N18
\sin_table~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~312_combout\ = (index(6)) # ((index(0) & (!index(8) & index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(0),
	datac => index(8),
	datad => index(3),
	combout => \sin_table~312_combout\);

-- Location: LCCOMB_X6_Y22_N20
\sin_table~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~313_combout\ = (index(7) & (((index(4))) # (!index(6)))) # (!index(7) & (((!index(4) & \sin_table~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(7),
	datac => index(4),
	datad => \sin_table~312_combout\,
	combout => \sin_table~313_combout\);

-- Location: LCCOMB_X6_Y22_N6
\sin_table~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~314_combout\ = (index(4) & ((\sin_table~313_combout\ & ((\sin_table~200_combout\))) # (!\sin_table~313_combout\ & (\sin_table~311_combout\)))) # (!index(4) & (((\sin_table~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~311_combout\,
	datac => \sin_table~200_combout\,
	datad => \sin_table~313_combout\,
	combout => \sin_table~314_combout\);

-- Location: LCCOMB_X6_Y22_N2
\sin_table~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~318_combout\ = (index(2) & (index(5))) # (!index(2) & ((index(5) & ((\sin_table~314_combout\))) # (!index(5) & (!\sin_table~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(5),
	datac => \sin_table~317_combout\,
	datad => \sin_table~314_combout\,
	combout => \sin_table~318_combout\);

-- Location: LCCOMB_X6_Y22_N12
\sin_table~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~323_combout\ = (index(2) & ((\sin_table~318_combout\ & (\sin_table~322_combout\)) # (!\sin_table~318_combout\ & ((\sin_table~310_combout\))))) # (!index(2) & (((\sin_table~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~322_combout\,
	datab => index(2),
	datac => \sin_table~310_combout\,
	datad => \sin_table~318_combout\,
	combout => \sin_table~323_combout\);

-- Location: LCCOMB_X9_Y24_N26
\sin_table~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~357_combout\ = (index(4) & ((index(3)) # (index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datac => index(4),
	datad => index(0),
	combout => \sin_table~357_combout\);

-- Location: LCCOMB_X9_Y24_N28
\sin_table~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~356_combout\ = index(3) $ (((!index(0) & index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~356_combout\);

-- Location: LCCOMB_X9_Y24_N14
\sin_table~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~359_combout\ = (index(7) & (!index(8) & ((\sin_table~357_combout\) # (\sin_table~356_combout\)))) # (!index(7) & (\sin_table~357_combout\ & ((index(8)) # (\sin_table~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(7),
	datac => \sin_table~357_combout\,
	datad => \sin_table~356_combout\,
	combout => \sin_table~359_combout\);

-- Location: LCCOMB_X9_Y24_N0
\sin_table~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~358_combout\ = (index(7) & (((!\sin_table~357_combout\ & !\sin_table~356_combout\)))) # (!index(7) & (!index(8) & (\sin_table~357_combout\ $ (\sin_table~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(7),
	datac => \sin_table~357_combout\,
	datad => \sin_table~356_combout\,
	combout => \sin_table~358_combout\);

-- Location: LCCOMB_X9_Y24_N20
\sin_table~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~360_combout\ = (index(6) & (\sin_table~359_combout\ $ (!\sin_table~358_combout\))) # (!index(6) & (!\sin_table~359_combout\ & \sin_table~358_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datac => \sin_table~359_combout\,
	datad => \sin_table~358_combout\,
	combout => \sin_table~360_combout\);

-- Location: LCCOMB_X9_Y24_N8
\sin_table~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~347_combout\ = (index(6) & (((index(8) & !index(3))) # (!index(7)))) # (!index(6) & (((index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(7),
	datad => index(3),
	combout => \sin_table~347_combout\);

-- Location: LCCOMB_X11_Y21_N4
\sin_table~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~337_combout\ = (index(6) & (((!index(7))) # (!index(8)))) # (!index(6) & ((index(8)) # ((!index(3) & index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => index(3),
	datad => index(7),
	combout => \sin_table~337_combout\);

-- Location: LCCOMB_X9_Y24_N22
\sin_table~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~348_combout\ = (index(4) & (\sin_table~347_combout\)) # (!index(4) & ((!\sin_table~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~347_combout\,
	datad => \sin_table~337_combout\,
	combout => \sin_table~348_combout\);

-- Location: LCCOMB_X9_Y24_N30
\sin_table~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~350_combout\ = (index(8) & (((!index(7) & index(3))) # (!index(6)))) # (!index(8) & ((index(6)) # ((index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(7),
	datad => index(3),
	combout => \sin_table~350_combout\);

-- Location: LCCOMB_X9_Y24_N16
\sin_table~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~349_combout\ = (index(6) & (((!index(7))))) # (!index(6) & ((index(7)) # ((!index(8) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(7),
	datad => index(3),
	combout => \sin_table~349_combout\);

-- Location: LCCOMB_X9_Y24_N12
\sin_table~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~351_combout\ = (index(4) & (!\sin_table~350_combout\)) # (!index(4) & ((\sin_table~349_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => \sin_table~350_combout\,
	datad => \sin_table~349_combout\,
	combout => \sin_table~351_combout\);

-- Location: LCCOMB_X10_Y21_N6
\sin_table~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~352_combout\ = (index(3) & (!index(6))) # (!index(3) & ((index(6) & ((!index(8)) # (!index(0)))) # (!index(6) & ((index(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(6),
	datac => index(0),
	datad => index(8),
	combout => \sin_table~352_combout\);

-- Location: LCCOMB_X10_Y21_N4
\sin_table~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~353_combout\ = (index(3) & (((index(6))))) # (!index(3) & ((index(8) & (!index(0) & !index(6))) # (!index(8) & ((index(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(8),
	datac => index(0),
	datad => index(6),
	combout => \sin_table~353_combout\);

-- Location: LCCOMB_X10_Y21_N2
\sin_table~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~354_combout\ = (index(4) & ((\sin_table~308_combout\ & ((!\sin_table~353_combout\))) # (!\sin_table~308_combout\ & (!\sin_table~352_combout\)))) # (!index(4) & (((\sin_table~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~352_combout\,
	datab => \sin_table~353_combout\,
	datac => index(4),
	datad => \sin_table~308_combout\,
	combout => \sin_table~354_combout\);

-- Location: LCCOMB_X9_Y24_N18
\sin_table~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~355_combout\ = (index(2) & (((index(5))))) # (!index(2) & ((index(5) & (\sin_table~351_combout\)) # (!index(5) & ((\sin_table~354_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~351_combout\,
	datab => index(2),
	datac => index(5),
	datad => \sin_table~354_combout\,
	combout => \sin_table~355_combout\);

-- Location: LCCOMB_X9_Y24_N6
\sin_table~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~361_combout\ = (index(2) & ((\sin_table~355_combout\ & (\sin_table~360_combout\)) # (!\sin_table~355_combout\ & ((\sin_table~348_combout\))))) # (!index(2) & (((\sin_table~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => \sin_table~360_combout\,
	datac => \sin_table~348_combout\,
	datad => \sin_table~355_combout\,
	combout => \sin_table~361_combout\);

-- Location: LCCOMB_X7_Y24_N14
\sin_table~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~324_combout\ = (index(4) & (((!index(5))))) # (!index(4) & ((index(5)) # ((index(2) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => index(3),
	datad => index(5),
	combout => \sin_table~324_combout\);

-- Location: LCCOMB_X7_Y24_N20
\sin_table~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~325_combout\ = (index(6)) # (!\sin_table~324_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sin_table~324_combout\,
	datad => index(6),
	combout => \sin_table~325_combout\);

-- Location: LCCOMB_X9_Y24_N4
\sin_table~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~331_combout\ = (index(4) & (((index(2)) # (index(3))))) # (!index(4) & (index(3) & ((index(0)) # (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(4),
	datac => index(2),
	datad => index(3),
	combout => \sin_table~331_combout\);

-- Location: LCCOMB_X9_Y24_N24
\sin_table~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~424_combout\ = (index(4) & ((index(5) $ (index(6))))) # (!index(4) & ((index(5) & ((index(3)) # (index(6)))) # (!index(5) & ((!index(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(4),
	datac => index(5),
	datad => index(6),
	combout => \sin_table~424_combout\);

-- Location: LCCOMB_X9_Y24_N2
\sin_table~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~425_combout\ = (\sin_table~424_combout\ & ((index(4) $ (!\sin_table~331_combout\)) # (!index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(4),
	datac => \sin_table~331_combout\,
	datad => \sin_table~424_combout\,
	combout => \sin_table~425_combout\);

-- Location: LCCOMB_X7_Y24_N22
\sin_table~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~326_combout\ = (index(4) & (((!index(2) & !index(3))) # (!index(5)))) # (!index(4) & (((index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => index(3),
	datad => index(5),
	combout => \sin_table~326_combout\);

-- Location: LCCOMB_X7_Y24_N8
\sin_table~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~327_combout\ = (!index(6)) # (!\sin_table~326_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sin_table~326_combout\,
	datad => index(6),
	combout => \sin_table~327_combout\);

-- Location: LCCOMB_X8_Y21_N26
\sin_table~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~328_combout\ = (index(0) & (index(3))) # (!index(0) & ((index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(2),
	datad => index(0),
	combout => \sin_table~328_combout\);

-- Location: LCCOMB_X8_Y21_N20
\sin_table~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~329_combout\ = (index(3)) # ((index(2) & index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(2),
	datac => index(3),
	datad => index(0),
	combout => \sin_table~329_combout\);

-- Location: LCCOMB_X8_Y21_N28
\sin_table~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~426_combout\ = (\sin_table~328_combout\ & ((index(6) $ (!index(5))) # (!\sin_table~329_combout\))) # (!\sin_table~328_combout\ & ((index(5)) # (index(6) $ (\sin_table~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => \sin_table~328_combout\,
	datad => \sin_table~329_combout\,
	combout => \sin_table~426_combout\);

-- Location: LCCOMB_X8_Y21_N18
\sin_table~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~427_combout\ = (index(6) & ((index(4) & ((\sin_table~426_combout\))) # (!index(4) & (!index(5))))) # (!index(6) & (\sin_table~426_combout\ & (index(5) $ (index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => index(4),
	datad => \sin_table~426_combout\,
	combout => \sin_table~427_combout\);

-- Location: LCCOMB_X7_Y24_N18
\sin_table~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~330_combout\ = (index(7) & (index(8))) # (!index(7) & ((index(8) & (\sin_table~327_combout\)) # (!index(8) & ((\sin_table~427_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => \sin_table~327_combout\,
	datad => \sin_table~427_combout\,
	combout => \sin_table~330_combout\);

-- Location: LCCOMB_X7_Y24_N4
\sin_table~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~332_combout\ = (index(7) & ((\sin_table~330_combout\ & ((\sin_table~425_combout\))) # (!\sin_table~330_combout\ & (\sin_table~325_combout\)))) # (!index(7) & (((\sin_table~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => \sin_table~325_combout\,
	datac => \sin_table~425_combout\,
	datad => \sin_table~330_combout\,
	combout => \sin_table~332_combout\);

-- Location: LCCOMB_X10_Y24_N26
\sin_table~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~343_combout\ = (index(8) & ((index(5) $ (!index(7))) # (!index(6)))) # (!index(8) & ((index(5)) # ((index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(6),
	datad => index(8),
	combout => \sin_table~343_combout\);

-- Location: LCCOMB_X10_Y24_N4
\sin_table~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~342_combout\ = (index(6) & (((!index(8))))) # (!index(6) & ((index(7) & (index(5))) # (!index(7) & ((index(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(6),
	datad => index(8),
	combout => \sin_table~342_combout\);

-- Location: LCCOMB_X9_Y24_N10
\sin_table~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~341_combout\ = (index(3)) # ((index(0) & index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datac => index(5),
	datad => index(3),
	combout => \sin_table~341_combout\);

-- Location: LCCOMB_X10_Y24_N0
\sin_table~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~344_combout\ = \sin_table~342_combout\ $ (((!\sin_table~343_combout\ & \sin_table~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~343_combout\,
	datac => \sin_table~342_combout\,
	datad => \sin_table~341_combout\,
	combout => \sin_table~344_combout\);

-- Location: LCCOMB_X10_Y24_N14
\sin_table~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~335_combout\ = (index(3) & (index(7) $ (!index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(7),
	datac => index(6),
	datad => index(3),
	combout => \sin_table~335_combout\);

-- Location: LCCOMB_X10_Y24_N10
\sin_table~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~333_combout\ = (index(3)) # ((index(7) & (index(0) & !index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(7),
	datac => index(0),
	datad => index(6),
	combout => \sin_table~333_combout\);

-- Location: LCCOMB_X10_Y24_N12
\sin_table~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~334_combout\ = (\sin_table~333_combout\ & (index(5))) # (!\sin_table~333_combout\ & ((index(8) $ (index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => index(6),
	datad => \sin_table~333_combout\,
	combout => \sin_table~334_combout\);

-- Location: LCCOMB_X10_Y24_N8
\sin_table~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~336_combout\ = (\sin_table~335_combout\ & ((index(6) $ (index(8))) # (!\sin_table~334_combout\))) # (!\sin_table~335_combout\ & (((\sin_table~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => \sin_table~335_combout\,
	datad => \sin_table~334_combout\,
	combout => \sin_table~336_combout\);

-- Location: LCCOMB_X10_Y24_N16
\sin_table~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~422_combout\ = (index(0) & (index(8) $ (((!index(6)))))) # (!index(0) & (index(3) & (index(8) $ (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(3),
	datad => index(6),
	combout => \sin_table~422_combout\);

-- Location: LCCOMB_X10_Y24_N30
\sin_table~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~423_combout\ = (index(5) & (index(7) $ ((index(6))))) # (!index(5) & (\sin_table~422_combout\ & (index(7) $ (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(6),
	datad => \sin_table~422_combout\,
	combout => \sin_table~423_combout\);

-- Location: LCCOMB_X11_Y21_N2
\sin_table~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~338_combout\ = (index(7) & (index(6) $ (((!index(3)) # (!index(8)))))) # (!index(7) & ((index(6)) # ((!index(8) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(8),
	datac => index(6),
	datad => index(3),
	combout => \sin_table~338_combout\);

-- Location: LCCOMB_X11_Y21_N0
\sin_table~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~339_combout\ = (index(5) & ((!\sin_table~338_combout\))) # (!index(5) & (\sin_table~337_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datac => \sin_table~337_combout\,
	datad => \sin_table~338_combout\,
	combout => \sin_table~339_combout\);

-- Location: LCCOMB_X10_Y24_N6
\sin_table~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~340_combout\ = (index(4) & (index(2))) # (!index(4) & ((index(2) & ((\sin_table~339_combout\))) # (!index(2) & (!\sin_table~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(2),
	datac => \sin_table~423_combout\,
	datad => \sin_table~339_combout\,
	combout => \sin_table~340_combout\);

-- Location: LCCOMB_X10_Y24_N2
\sin_table~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~345_combout\ = (index(4) & ((\sin_table~340_combout\ & (\sin_table~344_combout\)) # (!\sin_table~340_combout\ & ((\sin_table~336_combout\))))) # (!index(4) & (((\sin_table~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~344_combout\,
	datac => \sin_table~336_combout\,
	datad => \sin_table~340_combout\,
	combout => \sin_table~345_combout\);

-- Location: LCCOMB_X7_Y24_N6
\sin_table~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~346_combout\ = (index(9) & (index(1))) # (!index(9) & ((index(1) & (\sin_table~332_combout\)) # (!index(1) & ((\sin_table~345_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => index(1),
	datac => \sin_table~332_combout\,
	datad => \sin_table~345_combout\,
	combout => \sin_table~346_combout\);

-- Location: LCCOMB_X7_Y24_N24
\sin_table~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~362_combout\ = (index(9) & ((\sin_table~346_combout\ & ((\sin_table~361_combout\))) # (!\sin_table~346_combout\ & (\sin_table~323_combout\)))) # (!index(9) & (((\sin_table~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(9),
	datab => \sin_table~323_combout\,
	datac => \sin_table~361_combout\,
	datad => \sin_table~346_combout\,
	combout => \sin_table~362_combout\);

-- Location: FF_X7_Y24_N25
\sine_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~362_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[4]~reg0_q\);

-- Location: LCCOMB_X8_Y21_N2
\sin_table~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~397_combout\ = (index(8) & ((index(5)) # ((index(4) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(8),
	datac => index(3),
	datad => index(5),
	combout => \sin_table~397_combout\);

-- Location: LCCOMB_X7_Y22_N26
\sin_table~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~393_combout\ = (index(7) & ((index(3)) # ((index(4)) # (index(5))))) # (!index(7) & (index(5) & ((index(3)) # (index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(3),
	datac => index(4),
	datad => index(5),
	combout => \sin_table~393_combout\);

-- Location: LCCOMB_X7_Y22_N28
\sin_table~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~394_combout\ = (index(5) & ((index(4)) # ((index(2) & index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(4),
	datac => index(5),
	datad => index(3),
	combout => \sin_table~394_combout\);

-- Location: LCCOMB_X7_Y22_N18
\sin_table~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~395_combout\ = (index(7) & ((index(6)) # (!\sin_table~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datac => index(7),
	datad => \sin_table~394_combout\,
	combout => \sin_table~395_combout\);

-- Location: LCCOMB_X7_Y22_N8
\sin_table~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~396_combout\ = (index(6) & (((\sin_table~395_combout\)))) # (!index(6) & ((index(8) & ((\sin_table~395_combout\))) # (!index(8) & (!\sin_table~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(8),
	datac => \sin_table~393_combout\,
	datad => \sin_table~395_combout\,
	combout => \sin_table~396_combout\);

-- Location: LCCOMB_X7_Y22_N22
\sin_table~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~390_combout\ = (index(4) & ((index(3)) # ((index(0) & index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(0),
	datac => index(3),
	datad => index(2),
	combout => \sin_table~390_combout\);

-- Location: LCCOMB_X7_Y21_N6
\sin_table~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~391_combout\ = (index(5)) # ((index(4) & ((index(3)) # (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(5),
	datac => index(3),
	datad => index(2),
	combout => \sin_table~391_combout\);

-- Location: LCCOMB_X7_Y22_N16
\sin_table~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~392_combout\ = (index(8) & (index(5) & (\sin_table~390_combout\))) # (!index(8) & ((\sin_table~391_combout\) # ((index(5) & \sin_table~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => \sin_table~390_combout\,
	datad => \sin_table~391_combout\,
	combout => \sin_table~392_combout\);

-- Location: LCCOMB_X7_Y22_N14
\sin_table~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~398_combout\ = (index(6) & ((\sin_table~396_combout\ & (\sin_table~397_combout\)) # (!\sin_table~396_combout\ & ((\sin_table~392_combout\))))) # (!index(6) & (((\sin_table~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => \sin_table~397_combout\,
	datac => \sin_table~396_combout\,
	datad => \sin_table~392_combout\,
	combout => \sin_table~398_combout\);

-- Location: LCCOMB_X8_Y19_N18
\sin_table~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~363_combout\ = (index(5)) # (index(7) $ (index(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datac => index(5),
	datad => index(8),
	combout => \sin_table~363_combout\);

-- Location: LCCOMB_X9_Y19_N4
\sin_table~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~364_combout\ = (index(5) & (index(8) $ (!index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(8),
	datac => index(5),
	datad => index(7),
	combout => \sin_table~364_combout\);

-- Location: LCCOMB_X9_Y19_N2
\sin_table~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~365_combout\ = (index(3) & ((index(2)) # ((index(0) & !index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(7),
	datac => index(3),
	datad => index(2),
	combout => \sin_table~365_combout\);

-- Location: LCCOMB_X9_Y19_N0
\sin_table~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~366_combout\ = (index(5) & (!\sin_table~365_combout\ & (index(7) $ (!index(8))))) # (!index(5) & ((index(7) & ((index(8)) # (!\sin_table~365_combout\))) # (!index(7) & (!index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(8),
	datad => \sin_table~365_combout\,
	combout => \sin_table~366_combout\);

-- Location: LCCOMB_X9_Y19_N14
\sin_table~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~367_combout\ = (index(4) & (((index(6))))) # (!index(4) & ((index(6) & (\sin_table~364_combout\)) # (!index(6) & ((\sin_table~366_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~364_combout\,
	datac => index(6),
	datad => \sin_table~366_combout\,
	combout => \sin_table~367_combout\);

-- Location: LCCOMB_X9_Y19_N28
\sin_table~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~368_combout\ = (index(0) & (index(2) & (!index(7) & !index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(2),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~368_combout\);

-- Location: LCCOMB_X9_Y19_N18
\sin_table~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~369_combout\ = (\sin_table~368_combout\) # ((index(5) & ((index(8)) # (!index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(8),
	datac => index(7),
	datad => \sin_table~368_combout\,
	combout => \sin_table~369_combout\);

-- Location: LCCOMB_X9_Y19_N24
\sin_table~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~370_combout\ = (index(3) & ((index(5) & ((\sin_table~369_combout\))) # (!index(5) & (!\sin_table~279_combout\)))) # (!index(3) & ((index(5) & (!\sin_table~279_combout\)) # (!index(5) & ((\sin_table~369_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => \sin_table~279_combout\,
	datac => index(5),
	datad => \sin_table~369_combout\,
	combout => \sin_table~370_combout\);

-- Location: LCCOMB_X9_Y19_N30
\sin_table~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~371_combout\ = (index(4) & ((\sin_table~367_combout\ & ((\sin_table~370_combout\))) # (!\sin_table~367_combout\ & (!\sin_table~363_combout\)))) # (!index(4) & (((\sin_table~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => \sin_table~363_combout\,
	datac => \sin_table~367_combout\,
	datad => \sin_table~370_combout\,
	combout => \sin_table~371_combout\);

-- Location: LCCOMB_X7_Y21_N18
\sin_table~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~387_combout\ = (index(5) & ((index(8) & ((index(7)) # (index(4)))) # (!index(8) & (!index(7))))) # (!index(5) & (index(4) & (index(8) $ (!index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(5),
	datac => index(7),
	datad => index(4),
	combout => \sin_table~387_combout\);

-- Location: LCCOMB_X7_Y21_N12
\sin_table~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~380_combout\ = (index(4)) # (index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datad => index(2),
	combout => \sin_table~380_combout\);

-- Location: LCCOMB_X7_Y21_N30
\sin_table~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~381_combout\ = (index(5) & ((\sin_table~380_combout\) # (index(7) $ (index(8))))) # (!index(5) & ((index(7) & (!index(8) & \sin_table~380_combout\)) # (!index(7) & (index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => index(8),
	datad => \sin_table~380_combout\,
	combout => \sin_table~381_combout\);

-- Location: LCCOMB_X7_Y21_N8
\sin_table~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~382_combout\ = (index(8) & (!index(7) & ((!index(2)) # (!index(0))))) # (!index(8) & (((index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(7),
	datad => index(2),
	combout => \sin_table~382_combout\);

-- Location: LCCOMB_X7_Y21_N22
\sin_table~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~383_combout\ = ((index(4) & ((\sin_table~382_combout\))) # (!index(4) & (\sin_table~279_combout\))) # (!index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(5),
	datac => \sin_table~279_combout\,
	datad => \sin_table~382_combout\,
	combout => \sin_table~383_combout\);

-- Location: LCCOMB_X7_Y21_N4
\sin_table~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~384_combout\ = (index(7)) # ((!index(8) & ((index(0)) # (index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(0),
	datac => index(7),
	datad => index(2),
	combout => \sin_table~384_combout\);

-- Location: LCCOMB_X7_Y21_N10
\sin_table~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~385_combout\ = (index(4) & ((index(5)) # ((\sin_table~279_combout\)))) # (!index(4) & ((index(5) & (\sin_table~279_combout\)) # (!index(5) & ((!\sin_table~384_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(4),
	datab => index(5),
	datac => \sin_table~279_combout\,
	datad => \sin_table~384_combout\,
	combout => \sin_table~385_combout\);

-- Location: LCCOMB_X7_Y21_N20
\sin_table~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~386_combout\ = (index(6) & ((index(3)) # ((\sin_table~383_combout\)))) # (!index(6) & (!index(3) & ((\sin_table~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(3),
	datac => \sin_table~383_combout\,
	datad => \sin_table~385_combout\,
	combout => \sin_table~386_combout\);

-- Location: LCCOMB_X7_Y21_N0
\sin_table~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~388_combout\ = (index(3) & ((\sin_table~386_combout\ & (!\sin_table~387_combout\)) # (!\sin_table~386_combout\ & ((\sin_table~381_combout\))))) # (!index(3) & (((\sin_table~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~387_combout\,
	datab => index(3),
	datac => \sin_table~381_combout\,
	datad => \sin_table~386_combout\,
	combout => \sin_table~388_combout\);

-- Location: LCCOMB_X8_Y22_N30
\sin_table~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~372_combout\ = index(8) $ (index(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datac => index(7),
	combout => \sin_table~372_combout\);

-- Location: LCCOMB_X8_Y22_N14
\sin_table~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~374_combout\ = (index(3) & ((index(4)) # ((index(2) & !index(6))))) # (!index(3) & (index(4) & ((index(2)) # (!index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(2),
	datac => index(4),
	datad => index(6),
	combout => \sin_table~374_combout\);

-- Location: LCCOMB_X8_Y22_N16
\sin_table~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~373_combout\ = (index(7)) # ((index(0) & !index(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(0),
	datac => index(7),
	datad => index(8),
	combout => \sin_table~373_combout\);

-- Location: LCCOMB_X8_Y22_N26
\sin_table~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~376_combout\ = (index(3) & ((\sin_table~374_combout\) # ((index(5) & \sin_table~373_combout\)))) # (!index(3) & (\sin_table~374_combout\ & ((index(5)) # (\sin_table~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(5),
	datac => \sin_table~374_combout\,
	datad => \sin_table~373_combout\,
	combout => \sin_table~376_combout\);

-- Location: LCCOMB_X8_Y22_N20
\sin_table~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~375_combout\ = (index(5) & (!\sin_table~373_combout\ & ((index(3)) # (\sin_table~374_combout\)))) # (!index(5) & ((\sin_table~374_combout\ & (index(3))) # (!\sin_table~374_combout\ & ((\sin_table~373_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(3),
	datab => index(5),
	datac => \sin_table~374_combout\,
	datad => \sin_table~373_combout\,
	combout => \sin_table~375_combout\);

-- Location: LCCOMB_X8_Y22_N4
\sin_table~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~377_combout\ = (index(5) & (\sin_table~376_combout\ & ((\sin_table~375_combout\) # (!index(6))))) # (!index(5) & (!\sin_table~376_combout\ & ((index(6)) # (\sin_table~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => \sin_table~376_combout\,
	datad => \sin_table~375_combout\,
	combout => \sin_table~377_combout\);

-- Location: LCCOMB_X8_Y22_N2
\sin_table~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~378_combout\ = (index(6) & (((\sin_table~376_combout\ & \sin_table~375_combout\)))) # (!index(6) & (!\sin_table~376_combout\ & (index(5) $ (\sin_table~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(6),
	datab => index(5),
	datac => \sin_table~376_combout\,
	datad => \sin_table~375_combout\,
	combout => \sin_table~378_combout\);

-- Location: LCCOMB_X8_Y22_N24
\sin_table~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~379_combout\ = (\sin_table~377_combout\ & (((!\sin_table~378_combout\)))) # (!\sin_table~377_combout\ & ((\sin_table~378_combout\ & ((\sin_table~279_combout\))) # (!\sin_table~378_combout\ & (\sin_table~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~372_combout\,
	datab => \sin_table~279_combout\,
	datac => \sin_table~377_combout\,
	datad => \sin_table~378_combout\,
	combout => \sin_table~379_combout\);

-- Location: LCCOMB_X8_Y22_N10
\sin_table~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~389_combout\ = (index(1) & ((index(9)) # ((\sin_table~379_combout\)))) # (!index(1) & (!index(9) & (\sin_table~388_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(9),
	datac => \sin_table~388_combout\,
	datad => \sin_table~379_combout\,
	combout => \sin_table~389_combout\);

-- Location: LCCOMB_X8_Y22_N0
\sin_table~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~399_combout\ = (index(9) & ((\sin_table~389_combout\ & (\sin_table~398_combout\)) # (!\sin_table~389_combout\ & ((\sin_table~371_combout\))))) # (!index(9) & (((\sin_table~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~398_combout\,
	datab => index(9),
	datac => \sin_table~371_combout\,
	datad => \sin_table~389_combout\,
	combout => \sin_table~399_combout\);

-- Location: FF_X8_Y22_N1
\sine_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~399_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[5]~reg0_q\);

-- Location: LCCOMB_X6_Y22_N10
\sin_table~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~401_combout\ = (index(4)) # ((index(3) & index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(4),
	datac => index(3),
	datad => index(2),
	combout => \sin_table~401_combout\);

-- Location: LCCOMB_X6_Y22_N0
\sin_table~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~402_combout\ = (index(8) & (((index(5) & \sin_table~401_combout\)) # (!index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(7),
	datac => index(8),
	datad => \sin_table~401_combout\,
	combout => \sin_table~402_combout\);

-- Location: LCCOMB_X7_Y22_N0
\sin_table~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~400_combout\ = (index(6) & ((\sin_table~390_combout\) # (index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~390_combout\,
	datac => index(6),
	datad => index(5),
	combout => \sin_table~400_combout\);

-- Location: LCCOMB_X7_Y22_N30
\sin_table~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~403_combout\ = (index(7) & ((\sin_table~200_combout\) # ((\sin_table~402_combout\ & !\sin_table~400_combout\)))) # (!index(7) & (((!\sin_table~402_combout\ & !\sin_table~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => \sin_table~200_combout\,
	datac => \sin_table~402_combout\,
	datad => \sin_table~400_combout\,
	combout => \sin_table~403_combout\);

-- Location: LCCOMB_X3_Y21_N2
\sin_table~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~413_combout\ = (index(4) & ((index(3)) # (index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(3),
	datac => index(4),
	datad => index(2),
	combout => \sin_table~413_combout\);

-- Location: LCCOMB_X3_Y21_N0
\sin_table~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~414_combout\ = (index(6) & ((index(8)) # ((index(5)) # (\sin_table~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(5),
	datad => \sin_table~413_combout\,
	combout => \sin_table~414_combout\);

-- Location: LCCOMB_X7_Y22_N4
\sin_table~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~415_combout\ = (index(7) & (index(8) & ((\sin_table~394_combout\) # (\sin_table~414_combout\)))) # (!index(7) & (((!index(8) & !\sin_table~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => \sin_table~394_combout\,
	datac => index(8),
	datad => \sin_table~414_combout\,
	combout => \sin_table~415_combout\);

-- Location: LCCOMB_X7_Y22_N20
\sin_table~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~404_combout\ = (index(4)) # (index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(4),
	datad => index(3),
	combout => \sin_table~404_combout\);

-- Location: LCCOMB_X7_Y22_N2
\sin_table~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~405_combout\ = (index(7) & (index(5) & ((\sin_table~404_combout\)))) # (!index(7) & ((index(5)) # ((\sin_table~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(5),
	datac => \sin_table~390_combout\,
	datad => \sin_table~404_combout\,
	combout => \sin_table~405_combout\);

-- Location: LCCOMB_X7_Y22_N12
\sin_table~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~406_combout\ = (index(7) & (((!index(6) & !\sin_table~405_combout\)) # (!index(8)))) # (!index(7) & ((index(8)) # ((index(6) & \sin_table~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(6),
	datac => index(8),
	datad => \sin_table~405_combout\,
	combout => \sin_table~406_combout\);

-- Location: LCCOMB_X8_Y23_N16
\sin_table~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~407_combout\ = (index(5) & (((index(3)) # (!index(7))))) # (!index(5) & (!index(7) & ((index(0)) # (index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(5),
	datac => index(7),
	datad => index(3),
	combout => \sin_table~407_combout\);

-- Location: LCCOMB_X8_Y23_N18
\sin_table~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~421_combout\ = (index(8) & (((!\sin_table~407_combout\) # (!index(2))) # (!index(7)))) # (!index(8) & ((index(7)) # ((!index(2) & !\sin_table~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(7),
	datac => index(2),
	datad => \sin_table~407_combout\,
	combout => \sin_table~421_combout\);

-- Location: LCCOMB_X8_Y23_N10
\sin_table~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~408_combout\ = (index(4) & ((index(3)) # (!index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(6),
	datac => index(4),
	datad => index(3),
	combout => \sin_table~408_combout\);

-- Location: LCCOMB_X8_Y23_N4
\sin_table~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~409_combout\ = (index(6) & (!index(8))) # (!index(6) & (\sin_table~408_combout\ & ((!index(5)) # (!index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(5),
	datad => \sin_table~408_combout\,
	combout => \sin_table~409_combout\);

-- Location: LCCOMB_X8_Y23_N2
\sin_table~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~410_combout\ = (index(8) & ((index(6)) # ((\sin_table~408_combout\)))) # (!index(8) & (index(6) & ((index(5)) # (\sin_table~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(8),
	datab => index(6),
	datac => index(5),
	datad => \sin_table~408_combout\,
	combout => \sin_table~410_combout\);

-- Location: LCCOMB_X8_Y23_N28
\sin_table~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~411_combout\ = (\sin_table~409_combout\ & ((index(7)) # ((\sin_table~410_combout\)))) # (!\sin_table~409_combout\ & ((\sin_table~410_combout\ & (!index(7))) # (!\sin_table~410_combout\ & ((\sin_table~421_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => \sin_table~421_combout\,
	datac => \sin_table~409_combout\,
	datad => \sin_table~410_combout\,
	combout => \sin_table~411_combout\);

-- Location: LCCOMB_X7_Y22_N10
\sin_table~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~412_combout\ = (index(9) & (((index(1))))) # (!index(9) & ((index(1) & (\sin_table~406_combout\)) # (!index(1) & ((\sin_table~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~406_combout\,
	datab => index(9),
	datac => index(1),
	datad => \sin_table~411_combout\,
	combout => \sin_table~412_combout\);

-- Location: LCCOMB_X7_Y22_N24
\sin_table~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~416_combout\ = (index(9) & ((\sin_table~412_combout\ & ((\sin_table~415_combout\))) # (!\sin_table~412_combout\ & (\sin_table~403_combout\)))) # (!index(9) & (((\sin_table~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~403_combout\,
	datab => index(9),
	datac => \sin_table~415_combout\,
	datad => \sin_table~412_combout\,
	combout => \sin_table~416_combout\);

-- Location: FF_X7_Y22_N25
\sine_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~416_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[6]~reg0_q\);

-- Location: LCCOMB_X7_Y24_N30
\sin_table~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~418_combout\ = (!index(5) & (!index(1) & (!index(2) & !index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(5),
	datab => index(1),
	datac => index(2),
	datad => index(6),
	combout => \sin_table~418_combout\);

-- Location: LCCOMB_X7_Y24_N0
\sin_table~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~417_combout\ = (!index(7) & (!index(3) & (!index(4) & !index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(7),
	datab => index(3),
	datac => index(4),
	datad => index(8),
	combout => \sin_table~417_combout\);

-- Location: LCCOMB_X7_Y24_N10
\sin_table~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sin_table~419_combout\ = (!index(9) & (((index(0)) # (!\sin_table~417_combout\)) # (!\sin_table~418_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_table~418_combout\,
	datab => index(0),
	datac => index(9),
	datad => \sin_table~417_combout\,
	combout => \sin_table~419_combout\);

-- Location: FF_X7_Y24_N11
\sine_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_table~419_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_out[7]~reg0_q\);

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

ww_sine_out(0) <= \sine_out[0]~output_o\;

ww_sine_out(1) <= \sine_out[1]~output_o\;

ww_sine_out(2) <= \sine_out[2]~output_o\;

ww_sine_out(3) <= \sine_out[3]~output_o\;

ww_sine_out(4) <= \sine_out[4]~output_o\;

ww_sine_out(5) <= \sine_out[5]~output_o\;

ww_sine_out(6) <= \sine_out[6]~output_o\;

ww_sine_out(7) <= \sine_out[7]~output_o\;
END structure;


