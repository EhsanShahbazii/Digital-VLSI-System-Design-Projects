/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-1 multiplexer with delays
********************************************************************************/

module multiplexer_21_tb;

	wire typicalout, maximumout, minimumout;
	reg in0, in1, s;

	multiplexer_21_typical tmux21(typicalout, in0, in1, s);
	multiplexer_21_max mamux21(maximumout, in0, in1, s);
	multiplexer_21_min mimux21(minimumout, in0, in1, s);
	
	initial
		begin
			$monitor("typical = %d\tmaximum = %d\tmimimum = %d", typicalout, maximumout, minimumout);
				s = 1'b0; in0 = 1'b0; in1 = 1'b0;
			#10 s = 1'b0; in0 = 1'b0; in1 = 1'b1;
			#10 s = 1'b0; in0 = 1'b1; in1 = 1'b0;
			#10 s = 1'b0; in0 = 1'b1; in1 = 1'b1;
			#10 s = 1'b1; in0 = 1'b0; in1 = 1'b0;
			#10 s = 1'b1; in0 = 1'b0; in1 = 1'b1;
			#10 s = 1'b1; in0 = 1'b1; in1 = 1'b0;
			#10 s = 1'b1; in0 = 1'b1; in1 = 1'b1;
		end
endmodule
