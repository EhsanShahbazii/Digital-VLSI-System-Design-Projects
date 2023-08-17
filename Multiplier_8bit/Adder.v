module Adder(sum, RA, RP);
	output reg [15:0] sum;
	input [7:0] RA;
	input [15:0] RP;
	
	always @(RA or RP)
		sum = RP + RA;
endmodule