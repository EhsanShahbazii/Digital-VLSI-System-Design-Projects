module RegisterA(RA, A, LA, CLK);
	output reg [7:0] RA;
	input [7:0] A;
	input LA;
	input CLK;
	
	always @(posedge CLK)
		begin
			if(LA == 1)
				RA <= A; 
		end
endmodule