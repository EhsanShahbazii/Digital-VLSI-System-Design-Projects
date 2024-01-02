/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-1 decoder gatelevel
********************************************************************************/

module decoder24_gatelevel_tb;

	wire [3:0] D;
	reg x, y, E;
	
	decoder24_gatelevel dec24_gate(D, x, y, E);
	
	initial
		begin
			$display("2-4 Decoder : ");
			$display("E\ty\tx\t|\tD");
			$display("---------------------------------");
			$monitor("%b\t%b\t%b\t|\t%b", E, y, x, D);
			
				E = 1'b0; y = 1'b0; x = 1'b0;
			#10	E = 1'b0; y = 1'b0; x = 1'b1;
			#10	E = 1'b0; y = 1'b1; x = 1'b0;
			#10	E = 1'b0; y = 1'b1; x = 1'b1;
			#10	E = 1'b1; y = 1'b0; x = 1'b0;
			#10	E = 1'b1; y = 1'b0; x = 1'b1;
			#10	E = 1'b1; y = 1'b1; x = 1'b0;
			#10	E = 1'b1; y = 1'b1; x = 1'b1;
		end

endmodule
