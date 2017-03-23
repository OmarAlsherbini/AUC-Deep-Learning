// Verilog model of an ALU.
// ANDing, ORing, XORing, ADDing, SUBTRACTing, 32-Bits.

module ALU (
	Out ,
	In1 ,
	In2 ,
	Sel
	);

output [32:0] Out;

input [31:0] In1;
input [31:0] In2;
input [2:0] Sel;

reg [32:0] a;

initial begin
	if (Sel == 3'h0) begin //ANDing
		a = In1 & In2;
	end else if (Sel == 3'h1) begin //ORing
		a = In1 | In2;
	end else if (Sel == 3'h2) begin //XORing
		a = In1 ^ In2;
	end else if (Sel == 3'h3) begin //ADDing
		a = In1 + In2;
	end else if (Sel == 3'h4) begin //SUBTRACTing
		a = In1 - In2;
	end else begin
		a = 33'bx;
	end
end

assign Out = a;

endmodule