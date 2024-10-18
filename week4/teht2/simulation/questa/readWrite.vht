LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY readWrite_vhd_tst IS
END readWrite_vhd_tst;
ARCHITECTURE readWrite_arch OF readWrite_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r_signal : STD_LOGIC;
SIGNAL w_signal : STD_LOGIC;
COMPONENT readWrite
	PORT (
	addr : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clock : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r_signal : IN STD_LOGIC;
	w_signal : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : readWrite
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clock => clock,
	data_in => data_in,
	data_out => data_out,
	r_signal => r_signal,
	w_signal => w_signal
	);
init : PROCESS                                               
-- variable declarations                                  
BEGIN                                                        

	data_in <= (others => '0');
	addr <= (others => '0');
	r_signal <= '1';
	w_signal <= '1';
	
	

	wait for 5 ns;
	
	data_in <= "01010101";
	addr <= "00";
	w_signal <= '0';
	wait for 20 ns;
	
	data_in <= "00011111";
	addr <= "01";
	w_signal <= '0';
	wait for 20 ns;

	data_in <= "00000000";
	addr <= "00";
	r_signal <= '0';
	w_signal <= '1';
	wait for 20 ns;
	
	data_in <= "00000000";
	addr <= "01";
	r_signal <= '0';
	w_signal <= '1';
	wait for 20 ns;
	
	
             
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
                               
BEGIN       
                                                  
	clock <= '0';
	wait for 10 ns;
	clock <= '1';
	wait for 10 ns;
                                                     
END PROCESS always;                                          
END readWrite_arch;
