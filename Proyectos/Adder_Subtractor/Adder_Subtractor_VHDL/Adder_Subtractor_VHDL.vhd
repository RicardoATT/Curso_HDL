library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder_Subtractor_VHDL is
    Port (	C			: in	std_logic;
				A, B		: in	std_logic_vector(7 downto 0);
				Total		: out std_logic_vector(8 downto 0)
    );
end Adder_Subtractor_VHDL;

architecture Behavioral of Adder_Subtractor_VHDL is
begin
	process(A, B, C)
	begin
		if (C = '0') then
			Total <= ('0' & A) + ('0' & B);
		else
			Total <= ('0' & A) - ('0' & B);
		end if;
	end process;
end Behavioral;
