/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : data flow	ALU with logic and arithmetic unit
********************************************************************************/

module ArithmeticUnit(z, cout, D, cin, A, B, S);
	
	output z, cout;
	input cin;
	input [1:0] S;
	input [7:0] A;
	input [7:0] B;
	output [7:0] D;
	wire [7:0] x;
	wire cout0,cout1,cout2,cout3,cout4,cout5,cout6;
	
	MUX4_1 mx0(x[0], B[0], ~B[0], 1'b0, 1'b1, S);
	MUX4_1 mx1(x[1], B[1], ~B[1], 1'b0, 1'b1, S);
	MUX4_1 mx2(x[2], B[2], ~B[2], 1'b0, 1'b1, S);
	MUX4_1 mx3(x[3], B[3], ~B[3], 1'b0, 1'b1, S);
	MUX4_1 mx4(x[4], B[4], ~B[4], 1'b0, 1'b1, S);
	MUX4_1 mx5(x[5], B[5], ~B[5], 1'b0, 1'b1, S);
	MUX4_1 mx6(x[6], B[6], ~B[6], 1'b0, 1'b1, S);
	MUX4_1 mx7(x[7], B[7], ~B[7], 1'b0, 1'b1, S);
	
	FullAdder fa0(D[0], cout0, A[0], x[0], cin);
	FullAdder fa1(D[1], cout1, A[1], x[1], cout0);
	FullAdder fa2(D[2], cout2, A[2], x[2], cout1);
	FullAdder fa3(D[3], cout3, A[3], x[3], cout2);
	FullAdder fa4(D[4], cout4, A[4], x[4], cout3);
	FullAdder fa5(D[5], cout5, A[5], x[5], cout4);
	FullAdder fa6(D[6], cout6, A[6], x[6], cout5);
	FullAdder fa7(D[7], cout, A[7], x[7], cout6);
	
	assign z = ~(D[0] | D[1] | D[2] | D[3] | D[4] | D[5] | D[6] | D[7]);
	
endmodule
