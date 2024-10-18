library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity kellojakaja is
    Port (
        clk   : in STD_LOGIC;    -- 50 MHz kello
        led   : out STD_LOGIC    -- LED, joka välähtää 1 sekunnin välein
    );
end kellojakaja;


architecture Behavioral of kellojakaja is

    -- Laskurin määrittely: 50 000 000 sykliä (50 MHz -> 1 sekunti)
    signal counter : natural range 0 to 49999998 := 0;
	 signal blinker : std_logic := '0';
begin

    -- Prosessi, joka laskee kellosyklit
    process(clk)
    begin
        if rising_edge(clk) then
				counter <= counter + 1;
					if counter >= 49999998 then
						blinker <= not blinker;
						counter <= 0;
					end if;
        end if;
    end process;
	 
	 led <= blinker;
	 
end Behavioral;
