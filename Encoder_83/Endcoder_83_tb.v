module Endcoder_83_tb;

	reg [7:0] data_in;
	wire [2:0] out;
	
	Encoder_83 encoder_83_1(out, data_in);
	
	initial
		begin
			$display("Input\t \tOutput");
			$display("---------------------------------");
			$monitor("%b\t|\t%b", data_in, out);
			
			data_in = 8'h01;
			#10 data_in = 8'h02;
			#10 data_in = 8'h04;
			#10 data_in = 8'h08;
			#10 data_in = 8'h10;
			#10 data_in = 8'h20; 
			#10 data_in = 8'h40;
			#10 data_in = 8'h80;
			#10 data_in = 8'h12;
			#10 data_in = 8'h21;
			
			#120 $finish;
		end
		
endmodule;
