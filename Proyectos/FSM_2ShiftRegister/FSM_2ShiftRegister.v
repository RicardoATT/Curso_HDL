module FSM_2ShiftRegister(
input				CLK, RST, W,
output	reg  	S
);

reg [3:0] Zeros;
reg [3:0] Ones;

always @(posedge CLK or negedge RST) 
begin
	if (!RST)
	begin
		Zeros = 4'b0000;
		Ones  = 4'b0000;
		S = 0;
	end 
	else 
	begin
		Zeros = {Zeros[2:0], ~W};
		Ones  = {Ones[2:0], W};
		if (Zeros == 4'b1111 || Ones == 4'b1111)
			S = 1;
		else
			S = 0;
	end
end
endmodule 