library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Full_Adder_VHDL is
	port(	A, B, Cin	: 	in		std_logic;
			Sum, Cout	: 	out	std_logic);
end Full_Adder_VHDL;

architecture behavior of Full_Adder_VHDL is
begin
	Sum	<=	(A xor B) xor Cin;
	Cout	<= (A and B) or ((A xor B) and Cin);
end behavior;