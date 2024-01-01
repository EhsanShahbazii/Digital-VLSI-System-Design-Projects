module Endcoder_83_p_tb;

	reg [7:0] data_in;
	wire [2:0] out;
	
	Encoder_83_p encoder_83_p_1(out, data_in);
	
	initial
		begin
			$display("Input\t \tOutput");
			$display("---------------------------------");
			$monitor("%b\t|\t%b", data_in, out);
			
		    #10 data_in = 8'b00000001;
		    #10 data_in = 8'b00000010;
		    #10 data_in = 8'b00000110;
		    #10 data_in = 8'b00001000;
		    #10 data_in = 8'b00010100;
		    #10 data_in = 8'b00100000;
		    #10 data_in = 8'b01000000;
		    #10 data_in = 8'b10000001;
		    #10 data_in = 8'b00000000;
			
			#120 $finish;
		end
		
endmodule;
