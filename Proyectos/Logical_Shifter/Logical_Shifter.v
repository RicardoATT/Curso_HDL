module Logical_Shifter(SEL, E, S);
input				[1:0]		SEL;
input				[7:0]		E;
output	reg	[7:0]		S;

always @(SEL, E)
	case (SEL)
		2'b00		: S = E;
		2'b01		: S = {E[6:0],1'b0};
		2'b10		: S = {E[5:0],2'b0};
		2'b11		: S = {E[4:0],3'b0};
		default	: S = E;
	endcase

endmodule 