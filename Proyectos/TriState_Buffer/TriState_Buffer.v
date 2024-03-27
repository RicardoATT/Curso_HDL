module TriState_Buffer(ENABLE, A, F);
input				ENABLE;
input				A;
output	reg 	F;

always @(ENABLE, A)
	if (ENABLE == 1)
		F = A;
	else
		F = 1'bz ;

endmodule 