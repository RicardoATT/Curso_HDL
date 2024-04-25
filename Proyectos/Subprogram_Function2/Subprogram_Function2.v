module Subprogram_Function2(
	input 			[3:0] 	A, B, C, D, E, F,
	output	reg	[3:0]		S1, S2, S3
);

function	[3:0]	Sum;
	input 			[3:0] 	Op1, Op2;
	begin
		Sum = Op1 + Op2;
	end
endfunction

always @(*)
begin
	S1 = Sum(A, B);
	S2 = Sum(C, D);
	S3 = Sum(E, F);
end

endmodule 