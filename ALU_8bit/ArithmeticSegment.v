/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : gatelevel	ALU with logic and arithmetic unit
********************************************************************************/

module ArithmeticSegment(D, Cout, A, B, Cin, S);
	output D, Cout;
	input A, B, Cin;
	input[1:0] S;
	
	wire x;
	
	not n(nB, B);
	
	MUX4_1 mx(x, B, nB, 1'b0, 1'b1, S);

	FullAdder fa0(D, Cout, A, x, Cin);
endmodule
