module Binary_Multiplier(
	input			[7:0]		A,
	input 		[7:0]		B,
	output		[15:0]	P
);
	
assign P = A * B;

endmodule 