module Counter_Full(
	input							CLK,
	input							RST,
	input							CE,
	input							LD,
	input							Up_Down,
	input				[7:0]		Count_In,
	output	reg	[7:0]		Count_Out
);

always @(posedge CLK or posedge RST) 
begin
	if (RST)
	begin
		Count_Out <= 8'b00000000;
	end
	else if (CE) 
	begin
		if (LD)
		begin
			Count_Out <= Count_In;
		end
		else 
		begin
			if (Up_Down)
			begin
				if (Count_Out == 8'b00111011)	//Valor de tope: 59
				begin
					Count_Out <= 8'b00000000;
				end
				else
				begin
					Count_Out <= Count_Out + 1'b1;
				end
			end 
			else
			begin
				if (Count_Out == 8'b00000000)
				begin
					Count_Out <= 8'b00111011;		//Valor de tope: 59
				end
				else
				begin
					Count_Out <= Count_Out - 1'b1;
				end
			end
		end
	end
end

endmodule 