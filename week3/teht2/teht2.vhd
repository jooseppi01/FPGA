library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity teht2 is
    Port (
        start_stop_button : in  STD_LOGIC;           -- Start/Stop-painike
	     resetti_button : in STD_LOGIC;					  -- Nollauspainike
        clk : in  STD_LOGIC;                         -- Kellosignaali
        segmentit_sekunnit : out STD_LOGIC_VECTOR(6 downto 0); -- 7-segmenttinäyttö sekunneille
        segmentit_kymmenet : out STD_LOGIC_VECTOR(6 downto 0)  -- 7-segmenttinäyttö kymmenille
    );
end teht2;

architecture Behavioral of teht2 is
    signal sekunti_counter : natural range 0 to 9 := 0;
    signal kymmenys_counter : natural range 0 to 9 := 0;
    signal clk_counter : natural range 0 to 50000000 := 0;  -- 50 MHz kello
    signal running : std_logic := '0';  -- Laskurin käynnistystila ('1' = käynnissä, '0' = pysäytetty)
	 signal last_button_state : std_logic := '0';
	 signal last_button_state2 : std_logic := '0';
	 signal resetting : std_logic := '0';
begin

    -- Prosessi, joka hallitsee start/stop-painikkeen toimintaa ja running tilan toimintaa
    process(clk)
    begin
        if rising_edge(clk) then
			if resetting = '1' then
				running <= '0';
			else
            -- Jos painiketta painetaan (nouseva reuna) ja se oli aiemmin vapautettu
            if start_stop_button = '1' and last_button_state = '0' then
                running <= not running;  -- Vaihdetaan laskurin tila (käynnissä/pysäytetty)
            end if;
            -- Päivitetään painikkeen edellinen tila
            last_button_state <= start_stop_button;
        end if;
		 end if;
    end process;
	 
	 -- prosessi joka hallitsee nollauspainikkeen ja nollaustilan toimintaa
	process(clk)
	begin
		 if rising_edge(clk) then
			  -- Jos painiketta painetaan (nouseva reuna) ja se oli aiemmin vapautettu
			  if resetti_button = '1' and last_button_state2 = '0' then
					resetting <= '1';
			  else
					resetting <= '0';  -- Nollataan resetting, kun resettiä ei paineta
			  end if;
			  
			  -- Päivitetään painikkeen edellinen tila
			  last_button_state2 <= resetti_button;
		 end if;
		 
		 -- lisätään tämä jotta laskuri pysähtyy nollaan kun se saavuttaa 60.
		 if kymmenys_counter = 6 then  
			resetting <= '1';
		end if;
	end process;
			
			

    
    process(clk)
    begin
        if rising_edge(clk) then
				if resetting = '1' then
					sekunti_counter <= 0;
					kymmenys_counter <= 0;
					
				else
					if running = '1' then  -- Laskuri käynnissä vain, jos running = '1'
						 clk_counter <= clk_counter + 1;

						 if clk_counter >= 50000000 then  
							  clk_counter <= 0;

							  -- Päivitetään sekuntilaskuri
							  if sekunti_counter = 9 then
									sekunti_counter <= 0;

									-- Päivitetään kymmenyslaskuri
									if kymmenys_counter = 6 then
										 kymmenys_counter <= 0;
									else
										 kymmenys_counter <= kymmenys_counter + 1;
									end if;
							  else
									sekunti_counter <= sekunti_counter + 1;
							  end if;
						 end if;
					end if;
				end if;
        end if;
    end process;

    -- 7-segmenttinäytön päivitys sekuntilaskurin perusteella
    process(clk)
    begin 
        case sekunti_counter is 
            when 0 => segmentit_sekunnit <= "0000001";  -- 0
            when 1 => segmentit_sekunnit <= "1001111";  -- 1
            when 2 => segmentit_sekunnit <= "0010010";  -- 2
            when 3 => segmentit_sekunnit <= "0000110";  -- 3
            when 4 => segmentit_sekunnit <= "1001100";  -- 4
            when 5 => segmentit_sekunnit <= "0100100";  -- 5
            when 6 => segmentit_sekunnit <= "0100000";  -- 6
            when 7 => segmentit_sekunnit <= "0001111";  -- 7
            when 8 => segmentit_sekunnit <= "0000000";  -- 8
            when 9 => segmentit_sekunnit <= "0000100";  -- 9
            when others => segmentit_sekunnit <= "1111111";  -- Kaikki segmentit pois päältä
        end case;

        case kymmenys_counter is 
            when 0 => segmentit_kymmenet <= "0000001";  -- 0
            when 1 => segmentit_kymmenet <= "1001111";  -- 1
            when 2 => segmentit_kymmenet <= "0010010";  -- 2
            when 3 => segmentit_kymmenet <= "0000110";  -- 3
            when 4 => segmentit_kymmenet <= "1001100";  -- 4
            when 5 => segmentit_kymmenet <= "0100100";  -- 5
            when others => segmentit_kymmenet <= "1111111";  -- Kaikki segmentit pois päältä
        end case;
    end process;

end Behavioral;




