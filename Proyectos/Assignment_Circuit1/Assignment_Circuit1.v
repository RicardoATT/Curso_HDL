module Assignment_Circuit1(
input 			Clock, Strobe, Xflag, Mask,
output	reg 	Right, Select, Stop);
 
always @(posedge Clock)
begin
   Right = Right | Strobe;
   Select <= Right | Xflag;
   Stop <= Select ^ Mask;
end
endmodule 