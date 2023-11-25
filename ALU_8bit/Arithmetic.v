module ArithmeticUnit(z, cout, D, cin, A, B, S);
	
	output z, cout;
	input cin;
	input [1:0] S;
	input [7:0] A;
	input [7:0] B;
	output [7:0] D;
	
	wire cout0,cout1,cout2,cout3,cout4,cout5,cout6;
	
	ArithmeticSegment as0(D[0], cout0, A[0], B[0], cin, S);
	ArithmeticSegment as1(D[1], cout1, A[1], B[1], cout0, S);
	ArithmeticSegment as2(D[2], cout2, A[2], B[2], cout1, S);
	ArithmeticSegment as3(D[3], cout3, A[3], B[3], cout2, S);
	ArithmeticSegment as4(D[4], cout4, A[4], B[4], cout3, S);
	ArithmeticSegment as5(D[5], cout5, A[5], B[5], cout4, S);
	ArithmeticSegment as6(D[6], cout6, A[6], B[6], cout5, S);
	ArithmeticSegment as7(D[7], cout, A[7], B[7], cout6, S);
	
	nor no1(z, D[0], D[1], D[2], D[3], D[4], D[5], D[6], D[7]);
	
endmodule
