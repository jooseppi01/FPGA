LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;

ENTITY fibonacci_vhd_tst IS
END fibonacci_vhd_tst;

ARCHITECTURE fibonacci_arch OF fibonacci_vhd_tst IS

-- Signals
SIGNAL clk     : STD_LOGIC := '0';
SIGNAL dec_out  : INTEGER;

-- Component declaration
COMPONENT fibonacci
    PORT (
        clk    : IN STD_LOGIC;
        dec_out : OUT INTEGER
    );
END COMPONENT;

-- File for results
FILE file_RESULTS : text;

BEGIN
i1 : fibonacci
    PORT MAP (
        clk    => clk,
        dec_out => dec_out
    );

init : PROCESS
    VARIABLE line_buffer : line;  -- A line buffer for textio
	 
BEGIN
    -- Open the file in write mode
    file_open(file_RESULTS, "output_results.txt", WRITE_MODE);
    WAIT FOR 20 ns;  -- Wait for initial setup
	 
    WHILE TRUE LOOP
        WAIT FOR 20 ns;  -- Wait for each clock cycle
        
        -- Write the data_out values to the line buffer
        WRITE(line_buffer, dec_out);  
        
        -- Write the line buffer to the file
        WRITELINE(file_RESULTS, line_buffer);
    END LOOP;
    
    -- Close the file when done
    file_close(file_RESULTS);

WAIT;
END PROCESS init;

always : PROCESS
BEGIN
    LOOP
        clk <= '1';
        WAIT FOR 10 ns;
        clk <= '0';
        WAIT FOR 10 ns;
    END LOOP;
WAIT;
END PROCESS always;

END fibonacci_arch;
