library ieee;                                               
use ieee.std_logic_1164.all;                                

entity Subprogram_Procedure2_vhd_tst is
end Subprogram_Procedure2_vhd_tst;
architecture Subprogram_Procedure2_arch of Subprogram_Procedure2_vhd_tst is                                                  
signal A		:	std_logic_vector(3 downto 0);
signal B		:	std_logic_vector(3 downto 0);
signal C		:	std_logic_vector(3 downto 0);
signal D		:	std_logic_vector(3 downto 0);
signal E		:	std_logic_vector(3 downto 0);
signal F		:	std_logic_vector(3 downto 0);
signal S1	:	std_logic_vector(3 downto 0);
signal S2	:	std_logic_vector(3 downto 0);
signal S3	:	std_logic_vector(3 downto 0);

component Subprogram_Procedure2
	port ( A		:	in		std_logic_vector(3 downto 0);
			 B		:	in		std_logic_vector(3 downto 0);
			 C		:	in		std_logic_vector(3 downto 0);
			 D		:	in		std_logic_vector(3 downto 0);
			 E		:	in		std_logic_vector(3 downto 0);
			 F		:	in		std_logic_vector(3 downto 0);
			 S1 	:	out	std_logic_vector(3 downto 0);
			 S2 	:	out	std_logic_vector(3 downto 0);
			 S3 	:	out	std_logic_vector(3 downto 0));
end component;

begin
	i1 : Subprogram_Procedure2
	port map (A		=>		A,
				 B		=>		B,
				 C		=>		C,
				 D		=>		D,
				 E		=>		E,
				 F		=>		F,
				 S1 	=>		S1,
				 S2 	=>		S2,
				 S3 	=>		S3);
	init : process                                     
	begin
		wait;
	end process init;
	always : process
	begin
		A <= "0001"; B <= "0010"; C <= "0011"; D <= "0100"; E <= "0101"; F <= "0110";	-- 1 + 2 | 3 + 4 | 5 + 6
		wait for 50ns;
		A <= "1000"; B <= "0111"; C <= "0111"; D <= "0110"; E <= "0110"; F <= "0101";	-- 8 + 7 | 7 + 6 | 6 + 5
		wait for 50ns;
		A <= "1110"; B <= "0001"; C <= "1101"; D <= "0010"; E <= "1100"; F <= "0011";	-- 14 + 1 | 13 + 2 | 12 + 3
		wait for 50ns;
		A <= "0111"; B <= "0111"; C <= "0011"; D <= "0011"; E <= "0001"; F <= "0001";	-- 7 + 7 | 3 + 3 | 1 + 1
		wait for 50ns;
	end process always;
end Subprogram_Procedure2_arch;