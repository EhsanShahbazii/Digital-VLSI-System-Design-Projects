/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : data flow	ALU with logic and arithmetic unit
********************************************************************************/

module LogicSegment(out, A, B, S);

	output out;
	input A, B;
	input [1:0] S;
	
	MUX4_1 mx0(out, A & B, A | B, A ^ B, ~A, S);

endmodule
