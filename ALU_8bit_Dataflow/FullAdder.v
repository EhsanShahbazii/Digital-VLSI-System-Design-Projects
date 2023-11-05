/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : data flow	ALU with logic and arithmetic unit
********************************************************************************/

module FullAdder(s, cout, a, b, cin);
	
	output s, cout;
	input a, b, cin;

	assign S = a ^ b ^ cin;
	assign cout = ((a ^ b) & cin) | (a & b); 

endmodule;
