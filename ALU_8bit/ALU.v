/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : gatelevel	ALU with logic and arithmetic unit
********************************************************************************/


module ALU(Z, Cout, D, A, B, Cin, S);
	
	output Z, Cout;
	output [7:0] D;
	input [7:0] A;
	input [7:0] B;
	input Cin;
	input [3:0] S;
	
	wire [7:0] x0;
	wire [7:0] x1;
	wire [7:0] x2;
	wire [7:0] x3;
	
	ArithmeticUnit au(Z, Cout, x0, Cin, A, B, S[1:0]);
	LogicUnit lu(x1, A, B, S[1:0]);
	
	buf b0(x3[0], A[1]);
	buf b1(x3[1], A[2]);
	buf b2(x3[2], A[3]);
	buf b3(x3[3], A[4]);
	buf b4(x3[4], A[5]);
	buf b5(x3[5], A[6]);
	buf b6(x3[6], A[7]);
	buf b7(x3[7], 1'b0);
	
	buf b10(x2[0], 1'b0);
	buf b11(x2[1], A[0]);
	buf b12(x2[2], A[1]);
	buf b13(x2[3], A[2]);
	buf b14(x2[4], A[3]);
	buf b15(x2[5], A[4]);
	buf b16(x2[6], A[5]);
	buf b17(x2[7], A[6]);
	
	MUX4_1 mu0(D[0], x0[0], x1[0], x2[0], x3[0], S[3:2]);
	MUX4_1 mu1(D[1], x0[1], x1[1], x2[1], x3[1], S[3:2]);
	MUX4_1 mu2(D[2], x0[2], x1[2], x2[2], x3[2], S[3:2]);
	MUX4_1 mu3(D[3], x0[3], x1[3], x2[3], x3[3], S[3:2]);
	MUX4_1 mu4(D[4], x0[4], x1[4], x2[4], x3[4], S[3:2]);
	MUX4_1 mu5(D[5], x0[5], x1[5], x2[5], x3[5], S[3:2]);
	MUX4_1 mu6(D[6], x0[6], x1[6], x2[6], x3[6], S[3:2]);
	MUX4_1 mu7(D[7], x0[7], x1[7], x2[7], x3[7], S[3:2]);
	
endmodule
