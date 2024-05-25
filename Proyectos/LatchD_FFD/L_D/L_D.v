module L_D (
	input 			D,
	input 			CLK,
	output 	reg 	Q
);

always @ (D or CLK) 
begin
	if (CLK) 
	begin
		Q <= D;
	end
end

endmodule 