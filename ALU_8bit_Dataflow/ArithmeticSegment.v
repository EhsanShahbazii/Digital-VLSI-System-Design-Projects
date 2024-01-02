/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : data flow	ALU with logic and arithmetic unit
********************************************************************************/

module ArithmeticSegment(D, Cout, A, B, Cin, S);
	output D, Cout;
	input A, B, Cin;
	input[1:0] S;
	
	wire x;
	
	MUX4_1 mx(x, B, ~B, 1'b0, 1'b1, S);

	FullAdder fa0(D, Cout, A, x, Cin);
endmodule
