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
-- Generated on "09/11/2024 10:26:29"
                                                            
-- Vhdl Test Bench template for design  :  teht1
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY teht1_vhd_tst IS
END teht1_vhd_tst;
ARCHITECTURE teht1_arch OF teht1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL kytkin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT teht1
	PORT (
	kytkin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : teht1
	PORT MAP (
-- list connections between master ports and signals
	kytkin => kytkin,
	segments => segments
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN 
	
	wait for 10ns;
	kytkin <= "0001";
	wait for 10ns;
	kytkin <= "0010";
	wait for 10ns;
	kytkin <= "0100";
	wait for 10ns;
	                                                     
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END teht1_arch;
