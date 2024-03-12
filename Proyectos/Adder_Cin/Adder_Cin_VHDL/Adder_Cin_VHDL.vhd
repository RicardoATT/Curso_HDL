library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Adder_Cin_VHDL is
	port(	A, B, Cin	: 	in		std_logic;
			Sum			: 	out	std_logic);
end Adder_Cin_VHDL;

architecture behavior of Adder_Cin_VHDL is
begin
	Sum	<=	(A xor B) xor Cin;
end behavior;
