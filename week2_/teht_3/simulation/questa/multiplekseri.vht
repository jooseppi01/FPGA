LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplekseri_vhd_tst IS
END multiplekseri_vhd_tst;
ARCHITECTURE multiplekseri_arch OF multiplekseri_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL kytkin : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL led : STD_LOGIC;
SIGNAL valitsin : STD_LOGIC;
COMPONENT multiplekseri
	PORT (
	kytkin : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	led : OUT STD_LOGIC;
	valitsin : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplekseri
	PORT MAP (
-- list connections between master ports and signals
	kytkin => kytkin,
	led => led,
	valitsin => valitsin
	);
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN
	kytkin <= "00";
	valitsin <= '0';
	wait for 10 ns;
	
	kytkin <= "11";
	valitsin <= '0';
	wait for 10 ns;

	kytkin <= "01";
	valitsin <= '1';
	wait for 10 ns;
	
	kytkin <= "10";
	valitsin <= '0';
	wait for 10 ns;
                      
WAIT;                                                       
END PROCESS init;                                           
                                         
END multiplekseri_arch;
