module Decoder_2_4(
	input				[1:0]		E,
	output	reg	[3:0]		S
);

always @(E)
   case (E)
      2'b00 	: S = 4'b0001;
      2'b01 	: S = 4'b0010;
      2'b10 	: S = 4'b0100;
      2'b11 	: S = 4'b1000;
      default	: S = 4'b0000;
   endcase
	
endmodule 