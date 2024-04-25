library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity Subprogram_Procedure1 is
	port(	A, B, C, D, E, F	:	in		std_logic_vector(3 downto 0);
			S1, S2, S3			:	out	std_logic_vector(3 downto 0));
end Subprogram_Procedure1;

architecture behavior of Subprogram_Procedure1 is
	
procedure Sum(Op1, Op2	:	in 	std_logic_vector;
				  Total		:	out	std_logic_vector);
procedure Sum(Op1, Op2	:	in 	std_logic_vector;
				  Total		:	out	std_logic_vector) is
	begin
		Total := Op1 + Op2;
end Sum;

begin
	process(A, B, C, D, E, F)
	variable	Sum1, Sum2, Sum3	:	std_logic_vector(3 downto 0);
	begin
		Sum(A, B, Sum1);
		Sum(C, D, Sum2);
		Sum(E, F, Sum3);
		S1 <= Sum1;
		S2 <= Sum2;
		S3 <= Sum3;
	end process;
end behavior;