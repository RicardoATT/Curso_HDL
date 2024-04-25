library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity Subprogram_Procedure2 is
	port(	A, B, C, D, E, F	:	in		std_logic_vector(3 downto 0);
			S1, S2, S3			:	out	std_logic_vector(3 downto 0));
end Subprogram_Procedure2;

architecture behavior of Subprogram_Procedure2 is
	
procedure Sum(Op1, Op2	:	in 	std_logic_vector;
		signal  Total		:	out	std_logic_vector);
procedure Sum(Op1, Op2	:	in 	std_logic_vector;
		signal  Total		:	out	std_logic_vector) is
	begin
		Total <= Op1 + Op2;
end Sum;

begin
	Sum(A, B, S1);
	Sum(C, D, S2);
	Sum(E, F, S3);
end behavior;