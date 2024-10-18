library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity testi is
    Port ( 
        sw : in  STD_LOGIC_VECTOR (7 downto 0);  -- 8 vipukytkintä, jaetaan kahteen osaan
        led_sum : out  STD_LOGIC_VECTOR (4 downto 0); -- 5 ledille yhteenlaskun tulos
        led_xor : out  STD_LOGIC_VECTOR (3 downto 0)  -- 4 ledille XOR-operaation tulos
    );
end testi;

architecture Behavioral of testi is
    signal A, B : STD_LOGIC_VECTOR (3 downto 0);  -- Kaksi 4-bittistä syötettä
    signal sum_result : STD_LOGIC_VECTOR (4 downto 0); -- 5-bittinen yhteenlaskun tulos
    signal xor_result : STD_LOGIC_VECTOR (3 downto 0); -- 4-bittinen XOR-tulos
begin
    -- Jaetaan 8 kytkintä kahteen 4-bittiseen lukuun
    A <= sw(3 downto 0);  -- Ensimmäinen 4-bittinen luku (sw[3:0])
    B <= sw(7 downto 4);  -- Toinen 4-bittinen luku (sw[7:4])

    -- Yhteenlasku
    sum_result <= ('0' & A) + ('0' & B);  -- 5-bittinen tulos

    -- XOR-operaatio
    xor_result <= A xor B;  -- 4-bittinen XOR-tulos

    -- Tulos ledien näyttämiseen
    led_sum <= sum_result;  -- Yhteenlaskun tulos 5 ledille
    led_xor <= xor_result;  -- XOR-tulos 4 ledille
end Behavioral;