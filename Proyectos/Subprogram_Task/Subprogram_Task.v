module Subprogram_Task(
	input 			[3:0]		A, B, C, D, E, F,
	output	reg	[3:0]		S1, S2, S3
);

task Sum;
	input 			[3:0] 	Op1, Op2;
	output	reg	[3:0]		Result;
	begin
		Result = Op1 + Op2;
	end
endtask

always @(*)
begin
	Sum(A, B, S1);
	Sum(C, D, S2);
	Sum(E, F, S3);
end

endmodule 