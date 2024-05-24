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
