module Counter(
	Out,
	Clk
	);

output [7:0] Out;
input Clk;

reg [7:0] Out;

always @(posedge Clk) begin
	Out = Out + 1;
end

endmodule