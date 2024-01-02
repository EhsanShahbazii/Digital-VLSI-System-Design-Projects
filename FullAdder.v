/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : gatelevel	ALU with logic and arithmetic unit
********************************************************************************/

module FullAdder(s, cout, a, b, cin);
	
	output s, cout;
	input a, b, cin;

	wire x, y, z;
	
	xor x1(x, a, b);
	and a1(y, a, b);
	xor x2(s, x, cin);
	and a2(z, x, cin);
	or o1(cout, z, y);

endmodule;
