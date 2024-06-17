module Mem(
input 				CLK, WE,
input 	[4:0]		DIR,
input 	[7:0]		DATA,
output	[7:0]		Q
);

MyMem u0(DIR, CLK, DATA, WE, Q);

endmodule 