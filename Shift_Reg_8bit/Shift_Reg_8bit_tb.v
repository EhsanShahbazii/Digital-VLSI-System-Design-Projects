module Shift_Reg_8bit_tb;

	reg [7:0] data;
	reg serial_in;
	reg [2:0] op;
	reg clk;
	wire serial_out;
	wire [7:0] out;
	
	Shift_Reg_8bit shift_reg_8bit_1(out, serial_out, data, serial_in, op, clk);
	
	always #10 clk = ~clk;
	
	initial
		begin
			$display("op\tdata\tserial_in\t | \tout\tserial_out");
			$display("---------------------------------------------------------");
			$monitor("%b\t%b\t%b\t | \t%b\t%b", op, data, serial_in, out, serial_out);
			
			clk = 1'b0;
			#30 op = 3'b000; data = 8'b00000000; serial_in = 0;
			#30 op = 3'b001; data = 8'b00000001; serial_in = 0; 
			#30 op = 3'b001; data = 8'b00000001; serial_in = 1; 
			#30 op = 3'b010; data = 8'b10000010; serial_in = 0; 
			#30 op = 3'b011; data = 8'b10010000; serial_in = 1; 
			#30 op = 3'b100; data = 8'b00101010; serial_in = 0; 
			#30 op = 3'b101; data = 8'b11100000; serial_in = 0; 
			#30 op = 3'b110; data = 8'b11010110; serial_in = 0; 
			#30 op = 3'b111; data = 8'b10000010; serial_in = 0; 
			
			#300 $finish;
		end
	
endmodule;
