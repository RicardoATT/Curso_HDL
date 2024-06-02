module FSM_OneHotM(
input 			CLK, RST, W,
output 	reg 	S
);
reg Y0;
reg Y1;
reg Y2;
reg Y3;
reg Y4;
reg Y5;
reg Y6;
reg Y7;
reg Y8;
always @(posedge CLK, negedge RST) 
begin
	if (!RST)
	begin
		Y0 <= 0;
		Y1 <= 0;
		Y2 <= 0;
		Y3 <= 0;
		Y4 <= 0;
		Y5 <= 0;
		Y6 <= 0;
		Y7 <= 0;
		Y8 <= 0;
		S 	<= 0;
	end 
	else
	begin
		Y0 <= 1;
		/*Secuencia 0000*/
		Y1 <= ~Y0 & ~W | Y5 & ~W | Y6 & ~W | Y7 & ~W | Y8 & ~W;
		Y2 <=  Y1 & ~W;
		Y3 <=  Y2 & ~W;
		Y4 <=  Y3 & ~W | Y4 & ~W;
		/*Secuencia 1111*/
		Y5 <=  Y0 &  W | Y1 &  W | Y2 &  W | Y3 &  W | Y4 &  W;
		Y6 <=  Y5 &  W;
		Y7 <=  Y6 &  W;
		Y8 <=  Y7 &  W | Y8 & W;
		/*Estado de aceptación*/
		S  <= Y3 & ~W | Y4 & ~W | Y7 &  W | Y8 &  W;
	end
end
endmodule 