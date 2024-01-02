module RegisterB(RB, B, LB, DECB, CLK);
	output reg [7:0] RB;
	input [7:0] B;
	input LB;
	input CLK;
	input DECB;
	
	always @(posedge CLK)
		begin
			if(LB == 1)
				RB <= B;
			else if(DECB == 1)
				RB <= RB - 1;
		end
endmodule