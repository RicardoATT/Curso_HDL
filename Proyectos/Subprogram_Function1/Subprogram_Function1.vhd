library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity Subprogram_Function1 is
	port(	A, B, C, D, E, F	:	in		std_logic_vector(3 downto 0);
			S1, S2, S3			:	out	std_logic_vector(3 downto 0));
end Subprogram_Function1;

architecture behavior of Subprogram_Function1 is
	
function Sum(Op1, Op2: std_logic_vector) return std_logic_vector;
function Sum(Op1, Op2: std_logic_vector) return std_logic_vector is
	variable Total: std_logic_vector(3 downto 0);
	begin
		Total := Op1 + Op2;
		return Total;
end Sum;

begin
	S1 <= Sum(A, B);
	S2 <= Sum(C, D);
	S3 <= Sum(E, F);
end behavior;