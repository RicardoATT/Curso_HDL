module FSM_1ShiftRegister(
input				CLK, RST, W,
output	reg  	S
);

reg 	[3:0] 	ZerosOnes;
reg				BeforeWasOne;

always @(posedge CLK or negedge RST) 
begin
	if (!RST)
	begin
		ZerosOnes = 4'b0000;
		S = 0;
		BeforeWasOne = 0;
	end 
	else 
	begin
		if (W)
		begin
			if (BeforeWasOne) 
				ZerosOnes = {ZerosOnes[2:0], 1'b1};
			else 
			begin
				ZerosOnes = 4'b0001;
				BeforeWasOne = 1;
			end
		end
		else
			if (BeforeWasOne) 
			begin
				ZerosOnes = 4'b1000;
				BeforeWasOne = 0;
			end
			else
				ZerosOnes = {1'b1, ZerosOnes[3:1]};
		if (ZerosOnes == 4'b1111)
			S = 1;
		else
			S = 0;
	end
end
endmodule 