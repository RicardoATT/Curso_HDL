module Magnitude_Comparator(
	input		[3:0]		A,
	input		[3:0]		B,
	output	reg		S
);

always @(*)
   if (A == B)
      S = 1'b1;
   else
      S = 1'b0;
endmodule 