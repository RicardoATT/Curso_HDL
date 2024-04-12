module Counter_Asyn_RST(
	input							CLK,
	input							RST,
	output	reg	[7:0]		Count_Out
);

always @(posedge CLK or posedge RST)
begin
	if (RST)
		Count_Out <= 8'b00000000;
	else
		Count_Out <= Count_Out + 1'b1;
end

endmodule 