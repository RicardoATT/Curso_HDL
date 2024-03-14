module Adder_Subtractor_Verilog(
	input 	C,
	input				[7:0]		A,
	input 			[7:0]		B,
	output	reg	[8:0]		Total
);
	
	always @(A, B, C)
	begin
		if(!C)
			Total <= {1'b0, A} + {1'b0, B};
		else
			Total <= {1'b0, A} - {1'b0, B};
	end

endmodule
