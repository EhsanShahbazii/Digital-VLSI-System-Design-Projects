module Ram_sp_tb;

	wire [7:0]out;
	reg [7:0] data_in;
	reg [9:0] address;
	reg Wr, Rd;

	Ram_sp ram_sp1(out, data_in, address, Wr, Rd);
	
	initial 
		begin
			$monitor("Data_in : %d, Address : %b, Wr : %b, Rd : %b | Out : %d", data_in, address, Wr, Rd, out);
			
			data_in = 4; address = 2; Wr = 1;
			#10 data_in = 10; address = 4; Wr = 1;
			#10 Wr = 0;
			#10 address = 2; Rd = 1;
			#10 address = 4; Rd = 1;
			
			#60 $finish;
		end

endmodule;
