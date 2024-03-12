module Adder_Subtractor_Verilog(
	input		A,
	input 	B,
	input 	C,
	output	Res,
	output	Cout
);
	
	assign Sum = (A ^ B) ^ Cin;
	
endmodule
