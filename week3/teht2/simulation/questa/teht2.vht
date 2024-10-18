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
-- Generated on "09/13/2024 16:05:59"
                                                            
-- Vhdl Test Bench template for design  :  teht2
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY teht2_vhd_tst IS
END teht2_vhd_tst;

ARCHITECTURE teht2_arch OF teht2_vhd_tst IS
    -- Signals
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL resetti_button : STD_LOGIC := '0';
    SIGNAL segmentit_kymmenet : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL segmentit_sekunnit : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL start_stop_button : STD_LOGIC := '0';

    COMPONENT teht2
        PORT (
            clk : IN STD_LOGIC;
            resetti_button : IN STD_LOGIC;
            segmentit_kymmenet : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            segmentit_sekunnit : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            start_stop_button : IN STD_LOGIC
        );
    END COMPONENT;

BEGIN
    -- Instansointi
    uut : teht2
        PORT MAP (
            clk => clk,
            resetti_button => resetti_button,
            segmentit_kymmenet => segmentit_kymmenet,
            segmentit_sekunnit => segmentit_sekunnit,
            start_stop_button => start_stop_button
        );

    -- Kellon generaattori
    clk_process : PROCESS
    BEGIN
        LOOP
            clk <= '1';
            WAIT FOR 10 ns;
            clk <= '0';
            WAIT FOR 10 ns;
        END LOOP;
    END PROCESS clk_process;

    -- Testi stimulus
    stim_process : PROCESS
    BEGIN
        -- Odota 20 ns alkuarvoille
        WAIT FOR 1000 ns;
        
        -- Testi: start/stop painike
        start_stop_button <= '1';
        WAIT FOR 5 ns;
        start_stop_button <= '0';
        WAIT FOR 1000 ns;  -- Odota jonkin aikaa
		  
		  start_stop_button <= '1';
        WAIT FOR 5 ns;
        start_stop_button <= '0';
		  WAIT FOR 1000 ns;  -- Odota jonkin aika
	  
		  
		  





        -- Lopeta simulaatio
        WAIT;
    END PROCESS stim_process;

END ARCHITECTURE;

