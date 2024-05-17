module MyOr2(
	input 		Ac,
	input 		Bc,
	output 	 	Sc
);
	assign Sc = Ac | Bc;
endmodule 

module ForGenerate1_Verilog(
	input 	[7:0] 	A,
	input 	[7:0] 	B,
	output  	[7:0] 	S1
);

	genvar n;
	generate
		for(n = 0; n < 8; n = n + 1)
		begin : G0
			MyOr2 U0(
				.Ac(A[n]),
				.Bc(B[n]),
				.Sc(S1[n])
			);
		end
	endgenerate
endmodule 