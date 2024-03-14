module Full_Adder_Verilog(
	input		A,
	input 	B,
	input 	Cin,
	output 	Sum,
	output 	Cout
);
	
	assign Sum	= (A ^ B) ^ Cin;
	assign Cout	= (A & B) | (A ^ B) & Cin;
	
endmodule
