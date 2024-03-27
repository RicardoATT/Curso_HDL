module Mux_4_1_If(SEL, A, B, C, D, S);
	input				[1:0]		SEL;
	input							A, B, C, D;
	output	reg				S;
	
	always @(*) 
	begin
		if      (SEL == 2'b00)
			S = A;
		else if (SEL == 2'b01)
			S = B;
		else if (SEL == 2'b10)
			S = C;
		else if (SEL == 2'b11)
			S = D;
		else
			S = A;
	end
	
endmodule 