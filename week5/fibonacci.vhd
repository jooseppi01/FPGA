library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fibonacci is
    Port ( clk     : in  STD_LOGIC;
           --data_out : out STD_LOGIC_VECTOR (7 downto 0));
			  dec_out  : out INTEGER);
end fibonacci;

architecture Behavioral of fibonacci is
    signal data_in : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000011"; -- Aloitussisältö
	 signal xor3 : STD_LOGIC;

begin
	-- palautusbitti
	xor3 <= data_in(0) xor data_in(3) xor data_in(5) xor data_in(7);
	 

    process(clk)
    begin

        if rising_edge(clk) then
            data_in <= xor3 & data_in(15 downto 1); -- Siirrä ja lisää palautusbitti
        end if;
    end process;

    dec_out <= to_integer(unsigned(data_in(15 downto 8))); -- tallennetaan kahdeksan bittiä alkaen MSB desimaaleina

end Behavioral;
