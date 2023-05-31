module Shift_Reg_8bit (out, serial_out, data_in, serial_in, op, clk);

	input [7:0] data_in;
	input serial_in;
	input [2:0] op;
	input clk;
    output reg [7:0] out;
	output reg serial_out;
	
	always @(posedge clk)
		begin
			case (op)
				3'b000 : 
				    begin
						out = 8'hff;
						serial_out = 1'bx;
					end
 				3'b001 : 
 				    begin	
						serial_out = data_in[7];
						if(serial_in == 1'bx || serial_in == 1'bz)
							out = data_in << 1;
						else
							out = {data_in[6:0] , serial_in};
					end
				3'b010 : 
				    begin
						serial_out = data_in[7];
						out = {data_in[6:0] , data_in[7]};
					end
				3'b011 : 
				    begin		
						serial_out = data_in[0];
						if(serial_in == 1'bx || serial_in == 1'bz)
							out = data_in >> 1;	
						else
							out = {serial_in , data_in[7:1]};
					end
				3'b100 : 
				    begin	
						serial_out = data_in[0];
						if(data_in[7] == 1)
							out = {1 , data_in[7:1]};
						else 
							out = data_in >> 1;
					end		
				3'b101 : 
				    begin
						serial_out = data_in[0];
						out = {data_in[0] , data_in[7:1]};
					end
				3'b110 : 
				    begin
						serial_out = 0'bx;
						out = data_in;
					end
				3'b111 : 
				    begin
						serial_out = 0'bx;
						out = 0;
					end
			endcase
		end
		
endmodule;
