library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity For_Loop1_VHDL is
	port( Data_In1, Data_In2: 	in 	std_logic_vector(7 downto 0);
			Dir:						in		std_logic_vector(1 downto 0);
			WR:						in		std_logic;
			Data_Out:				out	std_logic_vector(15 downto 0));
end For_Loop1_VHDL;

architecture behavior of For_Loop1_VHDL is
 
type ram_type is array (3 downto 0) of std_logic_vector(7 downto 0);
signal Vector1: ram_type := (
    0 => "00000000",
    1 => "00000010",
    2 => "00000011",
    3 => "00000100"
);
signal Vector2: ram_type := (
    0 => "00000000",
    1 => "00000010",
    2 => "00000011",
    3 => "00000100" 
);

begin

	process(Data_In1, Data_In2, WR)
	begin
		if WR = '1' then
			Vector1(conv_integer(Dir)) <= Data_In1;
			Vector2(conv_integer(Dir)) <= Data_In2;
		end if;
	end process;

	process(Vector1, Vector2)
	variable Var : std_logic_vector(15 downto 0);
	begin
		--Var := "0000000000000000";
		for i in 0 to 3 loop
			Var := Var + (Vector1(i)*Vector2(i));
		end loop;
		Data_Out <= Var;
	end process;
	
end behavior;