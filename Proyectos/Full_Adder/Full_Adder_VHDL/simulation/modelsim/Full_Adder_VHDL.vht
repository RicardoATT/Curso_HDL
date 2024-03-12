LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Full_Adder_VHDL_vhd_tst IS
END Full_Adder_VHDL_vhd_tst;

ARCHITECTURE Full_Adder_VHDL_arch OF Full_Adder_VHDL_vhd_tst IS                                                 
	SIGNAL 	A		: STD_LOGIC:='0';
	SIGNAL 	B		: STD_LOGIC:='0';
	SIGNAL 	Cin	: STD_LOGIC:='0';
	SIGNAL 	Sum	: STD_LOGIC;
	SIGNAL 	Cout	: STD_LOGIC;
	COMPONENT Full_Adder_VHDL
		PORT 	(
				A 		: IN STD_LOGIC;
				B 		: IN STD_LOGIC;
				Cin 	: IN STD_LOGIC;
				Sum 	: OUT STD_LOGIC;
				Cout 	: OUT STD_LOGIC
				);
	END COMPONENT;
BEGIN
	i1 : Full_Adder_VHDL
	PORT MAP (
				A 		=> A,
				B 		=> B,
				Cin 	=> Cin,
				Sum 	=> Sum,
				Cout	=> Cout
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
END Full_Adder_VHDL_arch;
