library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity readWrite is
port(
	addr:			in		std_logic_vector (1 downto 0);
	data_in:		in		std_logic_vector (7 downto 0);
	data_out:	out	std_logic_vector (7 downto 0) := (others => '0');
	r_signal:	in		std_logic;
	w_signal:	in		std_logic;
	clock	:		in		std_logic
);

end entity readWrite;


architecture rtl of readWrite is

type t_memory is array (255 downto 0) of std_logic_vector(7 downto 0);
signal memory: t_memory;

begin

	process (clock) is

	begin
	
		if rising_edge(clock) then
		
			if r_signal = '0' then
				data_out <= memory(to_integer(unsigned(addr)));
			
			elsif w_signal = '0' then

			memory(to_integer(unsigned(addr))) <= data_in;
			

			end if;			
		
		end if;

	end process;

end architecture rtl;
