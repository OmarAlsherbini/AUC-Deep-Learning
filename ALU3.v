module ALU3 (
	Out ,
	In1 ,
	In2 ,
	Sel
	);

input [2:0] In1;
input [2:0] In2;
input [2:0] Sel;

output [3:0] Out;

reg [3:0] Out;

always begin
	if (Sel == 3'h0) begin //ANDing
		Out = In1 & In2;
	end else if (Sel == 3'h1) begin //ORing
		Out = In1 | In2;
	end else if (Sel == 3'h2) begin //XORing
		Out = In1 ^ In2;
	end else if (Sel == 3'h3) begin //ADDing
		Out = In1 + In2;
	end else if (Sel == 3'h4) begin //SUBTRACTing
		Out = In1 - In2;
	end
end

endmodule