module Full_Adder_Verilog (
    input 			Cin,
    input 	[7:0] A,
    input 	[7:0] B,
    output 	[7:0] Sum,
    output 			Cout
);
	
	reg	[8:0] Temp;
	always @(Cin, A, B)
	begin
		Temp <= {1'b0, A} + {1'b0, B} + Cin;
	end
	assign Sum  = Temp[7:0];
	assign Cout = Temp[8];

endmodule
