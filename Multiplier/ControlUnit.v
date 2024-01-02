module ControlUnit(LP, LA, LB, DECB, CLRP, S, RBZERO, CLK);
	output reg LP;
	output reg LA;
	output reg LB;
	output reg DECB;
	output reg CLRP;
	input S;
	input RBZERO;
	input CLK;
	reg state;
	
	initial 
		state = 0; 
	
	always @(posedge CLK)
		begin
		if(S == 1)
			begin
				case(state)
				0 : begin
					if (S == 0)
						begin
							state <= 0;
						end
					else 
						begin
							LA <= 1;
							LB <= 1;
							LP <= 0;
							DECB <= 0;
							CLRP <= 1;
							state <= 1;
						end
				end
				
				1 : begin
					if(RBZERO == 1)
						begin
							state <= 0;
						end
					else
						begin
							LA <= 0;
							LB <= 0;
							CLRP <= 0;
							LP <= 1;
							DECB <= 1;
						end
				end
				endcase
			end
		end
endmodule