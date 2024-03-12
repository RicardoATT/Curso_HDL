LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder_Cin_VHDL_vhd_tst IS
END Adder_Cin_VHDL_vhd_tst;

ARCHITECTURE Adder_Cin_VHDL_arch OF Adder_Cin_VHDL_vhd_tst IS                                                 
	SIGNAL 	A		: STD_LOGIC:='0';
	SIGNAL 	B		: STD_LOGIC:='0';
	SIGNAL 	Cin	: STD_LOGIC:='0';
	SIGNAL 	Sum	: STD_LOGIC;
	COMPONENT Adder_Cin_VHDL
		PORT 	(
				A 		: IN STD_LOGIC;
				B 		: IN STD_LOGIC;
				Cin 	: IN STD_LOGIC;
				Sum 	: OUT STD_LOGIC
				);
	END COMPONENT;
BEGIN
	i1 : Adder_Cin_VHDL
	PORT MAP (
				A 		=> A,
				B 		=> B,
				Cin 	=> Cin,
				Sum 	=> Sum
				);
	
	init : PROCESS                                    
	BEGIN                                                        
		WAIT;                                                       
	END PROCESS init; 
	
	always : PROCESS                                              
	BEGIN                                                         
		WAIT FOR 50ns;
		A 		<= '0';
		B 		<= '0';
		Cin 	<= '1';
		WAIT FOR 50ns;
		A 		<= '0';
		B 		<= '1';
		Cin 	<= '0';
		WAIT FOR 50ns;
		A 		<= '0';
		B 		<= '1';
		Cin 	<= '1';	
		WAIT FOR 50ns;
		A 		<= '1';
		B 		<= '0';
		Cin 	<= '0';
		WAIT FOR 50ns;
		A 		<= '1';
		B 		<= '0';
		Cin 	<= '1';
		WAIT FOR 50ns;
		A 		<= '1';
		B 		<= '1';
		Cin 	<= '0';
		WAIT FOR 50ns;
		A 		<= '1';
		B 		<= '1';
		Cin 	<= '1';
		WAIT FOR 50ns;
		WAIT;                                                        
	END PROCESS always;                                          
END Adder_Cin_VHDL_arch;
