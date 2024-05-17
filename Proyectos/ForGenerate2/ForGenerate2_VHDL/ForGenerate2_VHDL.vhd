library ieee;
use ieee.std_logic_1164.all;
 
entity ForGenerate2_VHDL is
	port(	A, B		:	in 	std_logic_vector(7 downto 0);
			S0, S1	:	out 	std_logic_vector(7 downto 0));
end ForGenerate2_VHDL;

architecture behavior of ForGenerate2_VHDL is
 
component MyOr2 is
	port(	Ac, Bc	: 	in 	std_logic;
			Sc			: 	out 	std_logic);
end component MyOr2; 

begin
	G1: for i in 0 to 7 generate
		U0: MyOr2 port map(A(i), B(i), S1(i)); 
		G2: if i < 4 generate
			S0(i) <= A(i) xor B(i);
		end generate G2;
		G3: if i >3 generate
			S0(i) <= A(i) and B(i);
		end generate G3;
	end generate G1; 
end behavior; 

library ieee;
use ieee.std_logic_1164.all;
 
entity MyOr2 is
	port(	Ac, Bc 	: 	in 	std_logic;
			Sc 		: 	out 	std_logic);
end MyOr2;
 
architecture MyOr2_behavior of MyOr2 is
begin
	Sc <= Ac or Bc;
end MyOr2_behavior;