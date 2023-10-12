/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-4 decoder gate level
********************************************************************************/

module decoder38_tb;

	wire [7:0] D;
	reg x,y,z;
	
	decoder38 dec38(D, x, y, z);
	
	initial
		begin
			$display("z\ty\tx\t|\tD");
			$monitor("%b\t%b\t%b\t|\t%b%b", z, y, x, D[3:0], D[7:4]);
				z = 1'b0; y = 1'b0; x = 1'b0;
			#10	z = 1'b0; y = 1'b0; x = 1'b1; 
			#10	z = 1'b0; y = 1'b1; x = 1'b0; 
			#10	z = 1'b0; y = 1'b1; x = 1'b1; 
			#10	z = 1'b1; y = 1'b0; x = 1'b0; 
			#10	z = 1'b1; y = 1'b0; x = 1'b1; 
			#10	z = 1'b1; y = 1'b1; x = 1'b0; 
			#10	z = 1'b1; y = 1'b1; x = 1'b1;
		end

endmodule;
