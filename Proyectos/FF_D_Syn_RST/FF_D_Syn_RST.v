module FF_D_Syn_RST(
	input				CLK,
	input 			RST,
	input				D,
	output	reg	Q
);

always @(posedge CLK)
begin
	if (RST)
		Q <= 1'b0;
	else
		Q <= D;
	end

endmodule 