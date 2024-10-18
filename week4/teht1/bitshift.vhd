library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bitshift is
    Port ( clk : in STD_LOGIC;           
           reset : in STD_LOGIC;         
           start_nappi : in STD_LOGIC;        -- Painonappi (aktiivinen matala)
           kytkin : in STD_LOGIC_VECTOR(7 downto 0); -- Vipukytkimet (8-bit)
           led_out : out STD_LOGIC);     -- LED-ulostulo (sarjadata)
end bitshift;

architecture Behavioral of bitshift is
    signal shift_reg : STD_LOGIC_VECTOR(7 downto 0);  -- Siirtorekisteri
    signal load : STD_LOGIC := '0';                   -- Siirto päälle/pois
    signal counter : natural range 0 to 8 := 0;       			-- Laskuri lähetystä varten
    signal clock_div : natural range 0 to 49999999 := 0; -- Kellon jakaja 1 Hz taajuuden saavuttamiseksi
begin

    process(clk, reset)
    begin
        if reset = '0' then  -- Reset-signaali (aktiivinen matala)
            -- Nollataan tilat resetillä
            shift_reg <= (others => '0');
            counter <= 0;
            load <= '0';

        elsif rising_edge(clk) then
            
            if clock_div >= 49999999 then  -- 1 Hz taajuuden saavuttaminen
                clock_div <= 0;

                -- Jos nappia painetaan, ladataan data siirtorekisteriin //HOX nappia tulee pitää painettua 1 sec jotta saadaan arvot ja homma rullaan
                if start_nappi = '0' then  -- Painonappi on aktiivinen matala
                    shift_reg <= kytkin;     -- Ladataan 8-bittinen data kytkimiltä
                    load <= '1';             -- Aloitetaan siirto
                    counter <= 0;            -- Nollataan laskuri

                -- Siirretään bittejä sarjamuotoon
                elsif load = '1' then  
                    if counter = 8 then
							  load <= '0';

                    else
								led_out <= shift_reg(7);  -- Näytetään ylin bitti LEDissä
                        shift_reg <= shift_reg(6 downto 0) & '0';  -- Siirretään bittijonoa vasemmalle
                        counter <= counter + 1;  -- Päivitetään laskuri
                    end if;
                end if;

            else
                clock_div <= clock_div + 1; 
            end if;
        end if;
    end process;

end Behavioral;
