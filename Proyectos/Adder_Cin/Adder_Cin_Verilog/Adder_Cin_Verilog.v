module Adder_Cin_Verilog(
	input		A,
	input 	B,
	input 	Cin,
	output 	Sum
);
	
	assign Sum = (A ^ B) ^ Cin;
	
endmodule


