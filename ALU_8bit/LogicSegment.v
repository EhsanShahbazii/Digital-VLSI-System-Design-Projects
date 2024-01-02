module LogicSegment(out, A, B, S);

	output out;
	input A, B;
	input [1:0] S;
	wire [3:0] x;
	
	and a0(x[0], A, B);
	or a1(x[1], A, B);
	xor a2(x[2], A, B);
	not a3(x[3], A);
	
	MUX4_1 mx0(out, x[0], x[1], x[2], x[3], S);

endmodule
