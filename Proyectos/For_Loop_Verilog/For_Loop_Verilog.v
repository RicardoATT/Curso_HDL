module For_Loop_Verilog (
	input 			[7:0] 	Data_In1,
	input 			[7:0] 	Data_In2,
	input 			[1:0] 	Dir,
	input 						WR,
	output	reg 	[15:0] 	Data_Out
);

reg [7:0] Vector1 [3:0];
reg [7:0] Vector2 [3:0];

initial 
begin
	Vector1[0] = 0;
	Vector1[1] = 2;
	Vector1[2] = 3;
	Vector1[3] = 4;
	Vector2[0] = 0;
	Vector2[1] = 2;
	Vector2[2] = 3;
	Vector2[3] = 4;
end

always @(WR) 
begin
	Vector1[Dir] <= Data_In1;
	Vector2[Dir] <= Data_In2;
end

reg [15:0] Var;
integer i;

always @(*) 
begin
	Var = 0;
	for (i = 0; i < 4; i = i + 1) 
	begin
		Var = Var + Vector1[i] * Vector2[i];
	end
	Data_Out = Var;
end
endmodule 