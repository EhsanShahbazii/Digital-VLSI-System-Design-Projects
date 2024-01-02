module Mult(RP, A, B, S);
	output [15:0] RP;
	input [7:0] A;
	input [7:0] B;
	input S;
	reg CLK;
	reg RBZERO;
	wire LP,LA,LB,DECB,CLRP;
	wire [7:0] RA,RB;
	wire [15:0] sum;
	
	initial CLK = 0;

	always #10 CLK = ~CLK; 
		
	always @(RB)
		if(RB == 0)
			RBZERO <= 1;
	
	ControlUnit cu(LP, LA, LB, DECB, CLRP, S, RBZERO, CLK);
	RegisterB rb(RB, B, LB, DECB, CLK);
	RegisterA ra(RA, A, LA, CLK);
	Adder add1(sum, RA, RP);
	RegisterP rp(RP, sum, LP, CLRP, CLK);
endmodule