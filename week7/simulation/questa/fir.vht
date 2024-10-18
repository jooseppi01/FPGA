LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fir_vhd_tst IS
END fir_vhd_tst;
ARCHITECTURE fir_arch OF fir_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL x_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL y_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT fir
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	x_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	y_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fir
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	x_in => x_in,
	y_out => y_out
	);
	
init : PROCESS                                                                                   
BEGIN                                                        
	reset<= '1';
	x_in <= "00000000000000000000000000000010";
	wait for 20 ns;
	reset <= '0';
	
	x_in <= "00000000000000000000000000000010";
	wait for 200 ns;
	x_in <= "00000000000000000000000000000001";
	
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
END fir_arch;
