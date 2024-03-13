library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder_Subtractor_VHDL is
    Port ( 
        Cin			: in std_logic;
		  A, B		: in std_logic_vector(1 downto 0);
        result		: out std_logic_vector(1 downto 0)
    );
end Adder_Subtractor_VHDL;

architecture Behavioral of Adder_Subtractor_VHDL is
begin
    process(A, B)
    begin
        result <= A + B + Cin;
    end process;
end Behavioral;
