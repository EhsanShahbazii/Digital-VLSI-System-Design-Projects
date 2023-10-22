/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : gatelevel	ALU with logic and arithmetic unit
********************************************************************************/

module LogicUnit(D, A, B, S);
	output [7:0] D;
	input [7:0] A;
	input [7:0] B;
	input [1:0] S;


	LogicSegment ls0(D[0], A[0], B[0], S);
	LogicSegment ls1(D[1], A[1], B[1], S);
	LogicSegment ls2(D[2], A[2], B[2], S);
	LogicSegment ls3(D[3], A[3], B[3], S);
	LogicSegment ls4(D[4], A[4], B[4], S);
	LogicSegment ls5(D[5], A[5], B[5], S);
	LogicSegment ls6(D[6], A[6], B[6], S);
	LogicSegment ls7(D[7], A[7], B[7], S);
	
endmodule
