module RegisterP(RP, sum, LP, CLRP, CLK);
	output reg [15:0] RP;
	input [15:0] sum;
	input LP;
	input CLK;
	input CLRP;
	
	always @(posedge CLK)
		begin
			if(CLRP == 1)
				RP <= 0;
			else if(LP == 1)
				RP <= sum;
			
		end
endmodule