library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplekseri is
	port (
		valitsin : in STD_LOGIC;            
		kytkin   : in STD_LOGIC_VECTOR(1 downto 0);  
		led      : out STD_LOGIC            
	);
end multiplekseri;

architecture behavioral of multiplekseri is
begin
	process(kytkin, valitsin)
	begin
		case kytkin is
			when "00" => 
				led <= '0';            
			when "11" => 
				led <= '1';            
			when "01" => 
				led <= valitsin;       
			when "10" => 
				led <= not valitsin;   
			when others => 
				led <= '0';            
		end case;
	end process;

end behavioral;
