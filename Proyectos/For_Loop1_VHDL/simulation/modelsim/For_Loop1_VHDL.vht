library ieee;                                               
use ieee.std_logic_1164.all;                                

entity For_Loop1_VHDL_vhd_tst IS
end For_Loop1_VHDL_vhd_tst;

architecture For_Loop1_VHDL_arch OF For_Loop1_VHDL_vhd_tst is
signal Data_In1 	:			std_logic_vector(7 downto 0);
signal Data_In2 	:			std_logic_vector(7 downto 0);
signal Data_Out 	:			std_logic_vector(15 downto 0);
signal Dir 			:			std_logic_vector(1 downto 0);
signal WR 			:			std_logic;

component For_Loop1_VHDL
	port (Data_In1 : in 		std_logic_vector(7 downto 0);
			Data_In2 : in 		std_logic_vector(7 downto 0);
			Data_Out : buffer std_logic_vector(15 downto 0);
			Dir 		: in 		std_logic_vector(1 downto 0);
			WR 		: in 		std_logic);
end component;
begin
	i1 : For_Loop1_VHDL
	port map (	Data_In1 => Data_In1,
					Data_In2 => Data_In2,
					Data_Out => Data_Out,
					Dir 		=> Dir,
					WR 		=> WR);
					
	init : process
	begin                     
		wait;
	end process init;
	
	always : process
	begin
		Data_In1 <= "00000001"; Data_In2 <= "00000001"; Dir <= "00"; WR <= '1'; -- 1 + 4 + 9 + 16 = 30
		wait for 10ns;
	end process always;																			 
end For_Loop1_VHDL_arch;
