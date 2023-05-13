module SevenSegment_Decoder_tb;
	reg [3:0] D;
	wire [6:0] out;
	
	SevenSegment_Decoder seven_seg_dec(out, D);
	
	initial
		begin
			$display("D\t|\ta\tb\tc\td\te\tf\tg");
			$display("-------------------------------------");
			$monitor("%b\t|\t%b\t%b\t%b\t%b\t%b\t%b\t%b", D, out[6], out[5], out[4], out[3], out[2], out[1], out[0]);
			D = 4'd0;
			#10 D = 4'd1;
			#10 D = 4'd2;
			#10 D = 4'd3;
			#10 D = 4'd4;
			#10 D = 4'd5;
			#10 D = 4'd6;
			#10 D = 4'd7;
			#10 D = 4'd8;
			#10 D = 4'd9;
			
			#120 $finish;
		end
	
endmodule;
