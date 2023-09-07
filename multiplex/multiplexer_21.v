/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-1 multiplexer with delays
********************************************************************************/

module multiplexer_21_typical(out, in0, in1, s);
	
	output out;
	input in0, in1, s;

	bufif1 #(2,4,6) x(out, in1, s);
	bufif0 #(2,4,6) x1(out, in0, s);

endmodule

module multiplexer_21_max(out, in0, in1, s);
	
	output out;
	input in0, in1, s;

	bufif1 #(1,3,5) x(out, in1, s);
	bufif0 #(1,3,5) x1(out, in0, s);

endmodule

module multiplexer_21_min(out, in0, in1, s);
	
	output out;
	input in0, in1, s;

	bufif1 #(3,5,7) x(out, in1, s);
	bufif0 #(3,5,7) x1(out, in0, s);

endmodule
