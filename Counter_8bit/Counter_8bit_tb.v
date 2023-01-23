module Counter_8bit_tb;

	reg [7:0] data_in;
	reg inc;
	reg clear;
	reg load;
	reg countEN;

	wire [7:0] out;
	reg clk;
	
	always #1 clk = ~clk;
	
	Counter_8bit Counter8bit_1(out, data_in, inc, clear, load, countEN, clk);
	
	initial
		begin 
			$monitor("CLEAR : %b , LOAD : %b , INC : %b , EN : %b , IN : %d , OUT : %d", clear, load, inc, countEN, data_in, out);
			
			clk = 0;
			inc = 0;
			clear = 0;
			load = 0;
			countEN = 1;
			
			#2 clear = 1;
			#4 clear = 0; data_in = 4; load = 1;
			#6 countEN = 0; load = 0;
			#8 countEN = 1; inc = 0;
			#10 countEN = 1; inc = 1;
			
			#120 $finish;
		end
endmodule;
