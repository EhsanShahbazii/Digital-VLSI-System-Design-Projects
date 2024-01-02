module TBMult;
	wire [15:0] Out;
	reg [7:0] A;
	reg [7:0] B;
	reg S;
	reg LP, LA, LB, DECB, CLRP;
	reg  RBZERO, CLK;
	Mult m(Out, A, B, S);
	
	initial
		begin
		$monitor("a = %d, b = %d, out = %d", A, B,Out);
		A = 8'd3; B = 8'd3; S = 1;
		end
endmodule