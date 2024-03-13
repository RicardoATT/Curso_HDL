LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;                                

ENTITY Adder_Cin_VHDL_vhd_tst IS
END Adder_Cin_VHDL_vhd_tst;

ARCHITECTURE Adder_Cin_VHDL_arch OF Adder_Cin_VHDL_vhd_tst IS                                                 
	SIGNAL 	Cin	: STD_LOGIC:='0';
	SIGNAL 	A		: STD_LOGIC_VECTOR(7 downto 0):="00000000";
	SIGNAL 	B		: STD_LOGIC_VECTOR(7 downto 0):="00000000";
	SIGNAL 	Sum	: STD_LOGIC_VECTOR(7 downto 0);
	COMPONENT Adder_Cin_VHDL
		PORT 	(
				Cin 	: IN STD_LOGIC;
				A 		: IN STD_LOGIC_VECTOR(7 downto 0);
				B 		: IN STD_LOGIC_VECTOR(7 downto 0);
				Sum 	: OUT STD_LOGIC_VECTOR(7 downto 0)
				);
	END COMPONENT;
BEGIN
	i1 : Adder_Cin_VHDL
	PORT MAP (
				Cin 	=> Cin,
				A 		=> A,
				B 		=> B,
				Sum 	=> Sum
				);
	
	init : PROCESS                                    
	BEGIN                                                        
		WAIT;                                                       
	END PROCESS init; 
	
	always : PROCESS                                              
	BEGIN                                                         
		WAIT FOR 50ns;
		Cin <= '0'; A <= "10000111";  B <= "11001110"; -- 135 + 206
		WAIT FOR 50ns;
		Cin <= '0'; A <= "01111010";  B <= "00110100"; -- 122 + 52
		WAIT FOR 50ns;
		Cin <= '0'; A <= "10110010";  B <= "00010010"; -- 178 + 18
		WAIT FOR 50ns;
		Cin <= '0'; A <= "10101010";  B <= "01110011"; -- 170 + 115
		WAIT FOR 50ns;
		Cin <= '0'; A <= "00010111";  B <= "01001101"; -- 23 + 77
		WAIT FOR 50ns;
		Cin <= '1'; A <= "00000000";  B <= "00000000"; -- 0 + 0 + 1
		WAIT FOR 50ns;
		Cin <= '1'; A <= "10000111";  B <= "11001110"; -- 135 + 206 + 1
		WAIT FOR 50ns;
		Cin <= '1'; A <= "01111010";  B <= "00110100"; -- 122 + 52 + 1
		WAIT FOR 50ns;
		Cin <= '1'; A <= "10110010";  B <= "00010010"; -- 178 + 18 + 1
		WAIT FOR 50ns;
		Cin <= '1'; A <= "10101010";  B <= "01110011"; -- 170 + 115 + 1
		WAIT FOR 50ns;
		Cin <= '1'; A <= "00010111";  B <= "01001101"; -- 23 + 77 + 1
		WAIT;                                                        
	END PROCESS always;                                          
END Adder_Cin_VHDL_arch;
