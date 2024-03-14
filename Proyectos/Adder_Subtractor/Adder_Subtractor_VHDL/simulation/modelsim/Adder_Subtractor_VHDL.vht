LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder_Subtractor_VHDL_vhd_tst IS
END Adder_Subtractor_VHDL_vhd_tst;

ARCHITECTURE Adder_Subtractor_VHDL_arch OF Adder_Subtractor_VHDL_vhd_tst IS                                                 
	SIGNAL	C 		: STD_LOGIC:='0';
	SIGNAL 	A		: STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
	SIGNAL 	B		: STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
	SIGNAL 	Total	: STD_LOGIC_VECTOR(8 DOWNTO 0);
	COMPONENT Adder_Subtractor_VHDL
		PORT 	(
				C 		: IN  STD_LOGIC;
				A 		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
				B 		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
				Total : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
				);
	END COMPONENT;
BEGIN
	i1 : Adder_Subtractor_VHDL
	PORT MAP (
				C		=> C,
				A 		=> A,
				B 		=> B,
				Total	=> Total
				);
	
	init : PROCESS                                    
	BEGIN                                                        
		WAIT;                                                       
	END PROCESS init; 
	
	always : PROCESS                                              
	BEGIN
		WAIT FOR 50ns;
		C <= '0'; A <= "10000111";  B <= "11001110"; -- 135 + 206
		WAIT FOR 50ns;
		C <= '0'; A <= "01111010";  B <= "00110100"; -- 122 + 52
		WAIT FOR 50ns;
		C <= '0'; A <= "10110010";  B <= "00010010"; -- 178 + 18
		WAIT FOR 50ns;
		C <= '0'; A <= "10101010";  B <= "01110011"; -- 170 + 115
		WAIT FOR 50ns;
		C <= '0'; A <= "00010111";  B <= "01001101"; -- 23 + 77
		WAIT FOR 50ns;
		C <= '1'; A <= "00000000";  B <= "00000000"; -- 0 - 0
		WAIT FOR 50ns;
		C <= '1'; A <= "10000111";  B <= "11001110"; -- 135 - 206
		WAIT FOR 50ns;
		C <= '1'; A <= "01111010";  B <= "00110100"; -- 122 - 52
		WAIT FOR 50ns;
		C <= '1'; A <= "10110010";  B <= "00010010"; -- 178 - 18
		WAIT FOR 50ns;
		C <= '1'; A <= "10101010";  B <= "01110011"; -- 170 - 115
		WAIT FOR 50ns;
		C <= '1'; A <= "00010111";  B <= "01001101"; -- 23 - 77
		WAIT;                                                        
	END PROCESS always;                                          
END Adder_Subtractor_VHDL_arch;
