library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Adder_Subtractor_VHDL is
	port(	A, B, C		: 	in		std_logic;
			Res, Cout	: 	out	std_logic);
end Adder_Cin_VHDL;

architecture behavior of Adder_Subtractor_VHDL is
begin
	process(A, B, C)
	begin
		if C = '0' then
			Res	<=	A + B;
			Cout	<=	()
		else
			
		end if;
	end process;
end behavior;