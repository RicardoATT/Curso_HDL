module ROM4x8(DIR, S);
input				[1:0]		DIR;
output	reg	[7:0]		S;

always @(DIR)
	case (DIR)
		2'b00		: S = 8'b11001100;
		2'b01		: S = 8'b10101010;
		2'b10		: S = 8'b11110000;
		2'b11		: S = 8'b00001111;
		default	: S = 8'b0;
	endcase

endmodule 