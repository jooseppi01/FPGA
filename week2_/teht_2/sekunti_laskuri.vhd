library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sekunti_laskuri is
	port (
		clk : in STD_LOGIC;
		led : out STD_LOGIC_VECTOR(6 downto 0)
	);
end sekunti_laskuri;



architecture behavioral of sekunti_laskuri is
	signal clk_counter : unsigned(25 downto 0) := (others => '0');
	signal sec_counter : unsigned(6 downto 0) := (others => '0');
	constant MAX_COUNT : unsigned(25 downto 0) := to_unsigned(49999999, 26);
begin
	
process(clk)
begin
    if rising_edge(clk) then
        clk_counter <= clk_counter + 1;
        
        if clk_counter = MAX_COUNT then
            clk_counter <= (others => '0');  
				sec_counter <= sec_counter + 1;  

            if sec_counter = "1111111" then   
                sec_counter <= (others => '0');  
                
            end if;
        end if;
    end if;
end process;

	
	led <= std_logic_vector(sec_counter);

end behavioral;
				
	
	
	
