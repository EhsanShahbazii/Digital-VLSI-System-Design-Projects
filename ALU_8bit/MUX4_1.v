module MUX4_1(out, D0, D1, D2, D3, S);

	output out;
	input D0,D1,D2,D3;
	input [1:0] S;

	wire nS0, nS1, a0, a1, a2, a3;
	
	not n0(nS0, S[0]);
	not n1(nS1, S[1]);
	
	and an0(a0, D0, nS0, nS1);
	and an1(a1, D1, S[0], nS1);
	and an2(a2, D2, nS0, S[1]);
	and an3(a3, D3, S[0], S[1]);
	
	or o(out, a0, a1, a2, a3);
endmodule
