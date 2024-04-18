module Barrel_Shifter(
	input				[3:0] 	DataIn,
	input				[1:0] 	Shift,
	input							LeftRight,
	output	reg	[3:0]		DataOut
);

always @(*) begin
	case(Shift)
		2'b00: DataOut = DataIn;
		2'b01: DataOut = LeftRight ? {DataIn[2:0], DataIn[3]} : {DataIn[0], DataIn[3:1]};
		2'b10: DataOut = LeftRight ? {DataIn[1:0], DataIn[3:2]} : {DataIn[1:0], DataIn[3:2]};
		2'b11: DataOut = LeftRight ? {DataIn[0], DataIn[3:1]} : {DataIn[2:0], DataIn[3]};
		default: DataOut = 4'b0000;
	endcase
end

endmodule 