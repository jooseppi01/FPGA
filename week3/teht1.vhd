library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity teht1 is 
	port(
		kytkin : in std_logic_vector (3 downto 0);
		segmentit : out std_logic_vector (6 downto 0)
	);
end teht1;

architecture behavioral of teht1 is
begin
	process(kytkin)
	begin
		case kytkin is 
			when "0000" => segmentit <= "0000001";  -- 0
			when "0001" => segmentit <= "1001111";  -- 1
			when "0010" => segmentit <= "0010010";  -- 2
			when "0011" => segmentit <= "0000110";  -- 3
			when "0100" => segmentit <= "1001100";  -- 4
			when "0101" => segmentit <= "0100100";  -- 5
			when "0110" => segmentit <= "0100000";  -- 6
			when "0111" => segmentit <= "0001111";  -- 7
			when "1000" => segmentit <= "0000000";  -- 8
			when "1001" => segmentit <= "0000100";  -- 9
			when "1010" => segmentit <= "0001000";  -- A
			when "1011" => segmentit <= "1100000";  -- B
			when "1100" => segmentit <= "0110001";  -- C
			when "1101" => segmentit <= "1000010";  -- D
			when "1110" => segmentit <= "0110000";  -- E
			when "1111" => segmentit <= "0111000";  -- F
			when others => segmentit <= "1111111";	-- kaikki pois päältä
		end case;
	end process;
end behavioral;