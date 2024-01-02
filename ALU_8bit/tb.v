/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : gatelevel	ALU with logic and arithmetic unit
********************************************************************************/

module tb;
	wire Z, Cout;
	wire [7:0] D;
	
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;
	reg [3:0] S;

	ALU x(Z, Cout, D, A, B, Cin, S);
	
	initial
		begin
			A = 8'b00000011; B = 8'b00000100; 
			$display("A = %b , B = %b", A, B);
			$display("S\tCin\t|\tOut\t Z\tCout");
			$monitor("%b\t%b\t|\t%b\t%b\t%b" , S, Cin, D, Z, Cout);
			
				Cin = 1'b0; S = 4'b0000;
			#10 Cin = 1'b1; S = 4'b0000;
			#10 Cin = 1'b0; S = 4'b0001;
			#10 Cin = 1'b1; S = 4'b0001;
			#10 Cin = 1'b0; S = 4'b0010;
			#10 Cin = 1'b1; S = 4'b0010;
			#10 Cin = 1'b0; S = 4'b0011;
			#10 Cin = 1'b1; S = 4'b0011;
			#10 Cin = 1'b0; S = 4'b0100;
			#10 Cin = 1'b1; S = 4'b0101;
			#10 Cin = 1'b0; S = 4'b0110;
			#10 Cin = 1'b1; S = 4'b0111;
			#10 Cin = 1'b0; S = 4'b1011;
			#10 Cin = 1'b1; S = 4'b1100;
		end

endmodule
