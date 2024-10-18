library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fir is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        x_in  : in  STD_LOGIC_VECTOR(31 downto 0); 
        y_out : out STD_LOGIC_VECTOR(31 downto 0)  
    );
end fir;

architecture Behavioral of fir is

    signal delay_0, delay_1, delay_2, delay_3, extra_reg : signed(31 downto 0) := (others => '0');
    signal sum : signed(31 downto 0) := (others => '0');    

begin

    process(clk)
    begin
	 
        if rising_edge(clk) then
		  
            if reset = '1' then			
                delay_0 <= (others => '0');
                delay_1 <= (others => '0');
                delay_2 <= (others => '0');
                delay_3 <= (others => '0');
                sum <= (others => '0');
					 
            else
                delay_3 <= delay_2;
                delay_2 <= extra_reg;
					 extra_reg <= delay_1;
                delay_1 <= delay_0;
                delay_0 <= signed(x_in);

                sum <= delay_0 +
                       delay_1 +
                       delay_2 +
                       delay_3;  

                y_out <= std_logic_vector(sum);
					 
            end if;
        end if;
    end process;

end Behavioral;
