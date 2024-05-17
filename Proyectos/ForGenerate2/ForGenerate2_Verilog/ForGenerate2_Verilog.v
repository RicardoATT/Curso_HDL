module MyOr2(
	input 				Ac,
	input 				Bc,
	output				Sc
);

	assign Sc = Ac | Bc;

endmodule

module ForGenerate2_Verilog(
    input	[7:0]		A,
    input	[7:0]		B,
    output 	[7:0]		S0,
    output 	[7:0]		S1
);

	genvar i;
	generate
		for(i = 0; i < 8; i = i + 1) 
		begin : G0
			MyOr2 U0 (
				.Ac(A[i]),
				.Bc(B[i]),
				.Sc(S1[i])
			);
		end
		genvar j;
		for(j = 0; j < 4; j = j + 1) 
		begin : G1
			assign S0[j] = A[j] ^ B[j];
		end
		for(j = 4; j < 8; j = j + 1) 
		begin : G2
				assign S0[j] = A[j] & B[j];
		end
	endgenerate

endmodule 