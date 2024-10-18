LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bitshift_vhd_tst IS
END bitshift_vhd_tst;
ARCHITECTURE bitshift_arch OF bitshift_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL kytkin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL led_out : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start_nappi : STD_LOGIC;
COMPONENT bitshift
	PORT (
	clk : IN STD_LOGIC;
	kytkin : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	led_out : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	start_nappi : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bitshift
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	kytkin => kytkin,
	led_out => led_out,
	reset => reset,
	start_nappi => start_nappi
	);
init : PROCESS                                                                                   
BEGIN
	wait for 10 ns;
	kytkin <= "10100110";
	start_nappi <= '0';
	wait for 150 ns;
	start_nappi <= '1';
	
	wait for 1000 ns;
	kytkin <= "11001010";
	start_nappi <= '0';
	wait for 150 ns;
	start_nappi <= '1';
	
                                   
                             
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                                                                  
BEGIN
	LOOP
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
	END LOOP;                                                            
WAIT;                                                        
END PROCESS always;                                          
END bitshift_arch;
