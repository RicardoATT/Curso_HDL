module Multiplexer_4_1(SEL, A, B, C, D, S);
input				[1:0]		SEL;
input							A, B, C, D;
output	reg				S;

always @(SEL, A, B, C, D)
	case (SEL)
		2'b00		: S = A;
		2'b01		: S = B;
		2'b10		: S = C;
		2'b11		: S = D;
		default	: S = A;
	endcase

endmodule 