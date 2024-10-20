library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity week1_laskin_tb is
end week1_laskin_tb;

architecture Behavioral of week1_laskin_tb is
   -- Signals to connect to the DUT (Design Under Test)
   signal sw : STD_LOGIC_VECTOR(7 downto 0);
   signal led_sum : STD_LOGIC_VECTOR(4 downto 0);
   signal led_xor : STD_LOGIC_VECTOR(3 downto 0);

begin
   -- Instantiate the Design Under Test (DUT)
   uut: entity work.testi
      port map (
         sw => sw,
         led_sum => led_sum,
         led_xor => led_xor
      );

   -- Test process
   process
   begin
      -- Test case 1: SW[0:3] = 3, SW[4:7] = 3
      sw <= "00000011";
      wait for 100 ns;
      
      -- Test case 2: SW[0:3] = 10, SW[4:7] = 3
      sw <= "10100011";
      wait for 100 ns;
      
      -- Test case 3: SW[0:3] = 15, SW[4:7] = 15
      sw <= "11111111";
      wait for 100 ns;
      
      -- Test case 4: SW[0:3] = 0, SW[4:7] = 0
      sw <= "00000000";
      wait for 100 ns;
      
      -- Stop simulation
      wait;
   end process;
end Behavioral;