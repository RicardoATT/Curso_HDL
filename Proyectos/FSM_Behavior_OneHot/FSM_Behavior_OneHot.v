module FSM_Behavior_OneHot(
input 			CLK, RST, W,
output 	reg 	S
);

parameter A = 9'b000000001;
parameter B = 9'b000000010;
parameter C = 9'b000000100;
parameter D = 9'b000001000;
parameter E = 9'b000010000;
parameter F = 9'b000100000;
parameter G = 9'b001000000;
parameter H = 9'b010000000;
parameter I = 9'b100000000;
reg [8:0] State;
reg [8:0] NextState;

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