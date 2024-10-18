LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sinesig_vhd_tst IS
END sinesig_vhd_tst;

ARCHITECTURE sinesig_arch OF sinesig_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sine_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL freq_tuning :  std_logic_vector(7 downto 0);

COMPONENT sinesig
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	freq_tuning : in  std_logic_vector(7 downto 0);
	sine_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

BEGIN
	i1 : sinesig
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	sine_out => sine_out,
	freq_tuning => freq_tuning
	);
	
	
init : PROCESS                                                                                  
BEGIN  
	freq_tuning <= "01000000";
	reset <= '1';
	wait for 5 ns;
	reset <= '0';
	wait for 500 ns;
	
	freq_tuning <= "00100000";
	reset <= '1';
	wait for 5 ns;
	reset <= '0';
	wait for 2000 ns;
	
	freq_tuning <= "00001000";
	reset <= '1';
	wait for 5 ns;
	reset <= '0';
	
WAIT;                                                       
END PROCESS init;

                                           
always : PROCESS                                                                                   
BEGIN                                                         
	  LOOP
			clk <= '0';
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
	  END LOOP;  
	WAIT;                                                        
END PROCESS always;                                          
END sinesig_arch;
