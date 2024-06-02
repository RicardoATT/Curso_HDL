module FSM_Behavior_MB(
input 			CLK, RST, W,
output 	reg 	S
);

parameter A = 4'b0001;
parameter B = 4'b0010;
parameter C = 4'b0011;
parameter D = 4'b0100;
parameter E = 4'b0101;
parameter F = 4'b0110;
parameter G = 4'b0111;
parameter H = 4'b1000;
parameter I = 4'b1001;
reg [3:0] State;
reg [3:0] NextState;

always @(posedge CLK, negedge RST)
begin
	if (!RST)
	begin
		State = A;
		S = 0;
	end
	else
	begin
		case(State)
		A: 
			if(W)
				NextState = F;
			else
				NextState = B;
		B: 
			if(W)
				NextState = F;
			else
				NextState = C;
		C: 
			if(W)
				NextState = F;
			else
				NextState = D;
		D: 
			if(W)
				NextState = F;
			else 
			begin
				S = 1;
				NextState = E;
			end
		E: 
			if(W)
			begin
				S = 0;
				NextState = F;
			end
			else
				NextState = E;
		F: 
			if(W)
				NextState = G;
			else
				NextState = B;
		G: 
			if(W)
				NextState = H;
			else
				NextState = B;
		H: 
			if(W)
			begin
				S = 1;
				NextState = I;
			end
			else
				NextState = B;
		I: 
			if(W)
				NextState = I;
			else
			begin
				S = 0;
				NextState = B;
			end
		endcase
		State = NextState;
	end
end
endmodule 