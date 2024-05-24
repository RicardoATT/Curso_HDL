module Latch_RS(CLK, R, S, Q);
	input 	CLK, R, S;
	output 	Q;
	wire 		Ri, Si, Qa, Qb /*synthesis keep*/;

	assign 	Ri = R & CLK;
	assign 	Si = S & CLK;
	assign 	Qa = ~(Ri | Qb);
	assign 	Qb = ~(Si | Qa);
	assign 	Q  = Qa;

endmodule

