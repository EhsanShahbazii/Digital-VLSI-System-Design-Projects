/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : data flow	ALU with logic and arithmetic unit
********************************************************************************/

module MUX4_1(out, D0, D1, D2, D3, S);

	output out;
	input D0,D1,D2,D3;
	input [1:0] S;
	
	assign out = (S[1]) ? (S[0] ? D3 : D2) : (S[0] ? D1 : D0);
endmodule
