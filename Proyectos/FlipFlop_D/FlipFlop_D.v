module Latch_D(CLK, D, Q);
	input 	CLK, D;
	output 	Q;
	wire 		NAND1, NAND2, NAND3, NAND4 /*synthesis keep*/;
	
	assign 	NAND1 = ~(~D & CLK);
	assign 	NAND2 = ~(D & CLK);
	assign 	NAND3 = ~(NAND1 & NAND4);
	assign 	NAND4 = ~(NAND2 & NAND3);
	assign 	Q  = NAND4;

endmodule

module FlipFlop_D(CLK, D, Q);
	input 	CLK, D;
	output 	Q;
	wire 		L1 /*synthesis keep*/;
	
	Latch_D	U0(~CLK, D, L1);
	Latch_D	U1(CLK, L1, Q);

endmodule
