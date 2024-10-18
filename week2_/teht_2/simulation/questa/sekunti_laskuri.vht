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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/03/2024 11:52:21"
                                                            
-- Vhdl Test Bench template for design  :  sekunti_laskuri
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sekunti_laskuri_vhd_tst IS
END sekunti_laskuri_vhd_tst;

ARCHITECTURE sekunti_laskuri_arch OF sekunti_laskuri_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL led : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT sekunti_laskuri
	PORT (
	clk : IN STD_LOGIC;
	led : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sekunti_laskuri
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	led => led
	);
	
init : PROCESS                                               
-- variable declarations                                     
	BEGIN
		LOOP
			clk <= '0';
			wait for 10 ns;  -- 20 ns period, eli 50 MHz
			clk <= '1';
			wait for 10 ns;
		END LOOP;																				                                                      
	END PROCESS init;
	
END sekunti_laskuri_arch;
