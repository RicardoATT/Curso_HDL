library ieee;
use ieee.std_logic_1164.all;
 
entity ForGenerate1_VHDL is
	port(	A, B		:	in 	std_logic_vector(7 downto 0);
			S1			:	out 	std_logic_vector(7 downto 0));
end ForGenerate1_VHDL;

architecture behavior of ForGenerate1_VHDL is
 
component MyOr2 is
	port(	Ac, Bc	: 	in 	std_logic;
			Sc			: 	out 	std_logic);
end component MyOr2; 

begin
	G0: for n in 0 to 7 generate
		U0: MyOr2 port map(A(n), B(n), S1(n));
	end generate G0;
 
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