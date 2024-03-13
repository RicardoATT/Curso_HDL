module Adder_Cin_Verilog(
	input 			Cin,
	input		[7:0]	A,
	input 	[7:0]	B,
	output 	[7:0]	Sum
);
	
	assign Sum = A + B + Cin;
	
endmodule


