module Mux_Structural_Description(
	input 	A, B, C,
	output 	F);

MyMux u0(A, B, C, F);
 
endmodule

//Modulo a instanciar
module MyMux(
	input 	In1, In2, Ctrl,
	output 	Out);

assign Out = Ctrl ? In1 : In2; 
	
endmodule 