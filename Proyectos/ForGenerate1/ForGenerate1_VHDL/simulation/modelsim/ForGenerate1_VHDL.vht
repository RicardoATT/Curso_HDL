library ieee;                                               
use ieee.std_logic_1164.all;                                

entity ForGenerate1_VHDL_vhd_tst is
end ForGenerate1_VHDL_vhd_tst;
architecture ForGenerate1_VHDL_arch of ForGenerate1_VHDL_vhd_tst is                                                  
signal 	A 	: 		std_logic_vector(7 downto 0);
signal 	B 	: 		std_logic_vector(7 downto 0);
signal 	S1 : 		std_logic_vector(7 downto 0);

component ForGenerate1_VHDL
	port (A 	: in 	std_logic_vector(7 downto 0);
			B 	: in 	std_logic_vector(7 downto 0);
			S1 : out std_logic_vector(7 downto 0)
	);
end component;

begin
	i1 : ForGenerate1_VHDL
	port map (
			A 	=> A,
			B 	=> B,
			S1 => S1
	);
	
	init : process                                     
	begin
		wait;
	end process init;
	
	always : process
	begin
		A <= "00000000"; B <= "00000000";
		wait for 10ns;
		A <= "00001111"; B <= "00000000";
		wait for 10ns;
		A <= "00000000"; B <= "11110000";
		wait for 10ns;
		A <= "10101010"; B <= "01010101";
		wait for 10ns;
		A <= "11111111"; B <= "11111111";
		wait for 10ns;
	end process always;
	
end ForGenerate1_VHDL_arch;