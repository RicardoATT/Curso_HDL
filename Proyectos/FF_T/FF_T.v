module FF_T (
	input 			CLK,
	input 			RST,
	input 			T,
	output	reg	Q
);

always @(posedge CLK or posedge RST)
begin
	if (RST)
		Q <= 1'b0;
	else if (T)
		Q <= ~Q;
end

endmodule 