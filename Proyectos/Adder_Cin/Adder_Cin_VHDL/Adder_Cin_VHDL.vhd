library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Adder_Cin_VHDL is
	port(	Cin	:	in		std_logic;
			A, B	: 	in		std_logic_VECTOR(7 downto 0);
			Sum	: 	out	std_logic_VECTOR(7 downto 0));
end Adder_Cin_VHDL;

architecture behavior of Adder_Cin_VHDL is
begin
	Sum <= A + B + Cin;
end behavior;