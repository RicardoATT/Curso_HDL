library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Full_Adder_VHDL is
	port(	Cin	: 	in			std_logic;
			A, B	: 	in			std_logic_vector(7 downto 0);
			Temp	: 	buffer	std_logic_vector(8 downto 0);
			Sum	: 	out		std_logic_vector(7 downto 0);
			Cout	: 	out		std_logic);
end Full_Adder_VHDL;

architecture behavior of Full_Adder_VHDL is
begin
	process(A, B, Cin)
	begin
		Temp <= ('0' & A) + ('0' & B) + Cin;
		Sum  <= Temp(7 downto 0);
		Cout <= Temp(8);
	end process;
end behavior;