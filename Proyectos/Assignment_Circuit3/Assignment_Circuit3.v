module Assignment_Circuit3(
input				A, B, Test,
output	reg	Ax, By);

always @(*)
begin
	if (Test)
		Ax = A & B;
	else
		By = A | B;
end
endmodule 