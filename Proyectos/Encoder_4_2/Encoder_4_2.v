module Encoder_4_2(
	input				[3:0]		E,
	output	reg	[1:0]		S
);

always @(E)
   case (E)
      4'b0001 	: S = 2'b00;
      4'b0010 	: S = 2'b01;
      4'b0100 	: S = 2'b10;
      4'b1000 	: S = 2'b11;
      default	: S = 2'b00;
   endcase
	
endmodule 