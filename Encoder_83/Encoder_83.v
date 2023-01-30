module Encoder_83 (code_out, data_in);

    input [7:0]data_in;
    output reg [2:0]code_out;
    
    always @(data_in)
    begin
        case (data_in)
            8'b00000001 : code_out = 3'd0;
            8'b00000010 : code_out = 3'd1;
            8'b00000100 : code_out = 3'd2;
            8'b00001000 : code_out = 3'd3;
            8'b00010000 : code_out = 3'd4;
            8'b00100000 : code_out = 3'd5;
            8'b01000000 : code_out = 3'd6;
            8'b10000000 : code_out = 3'd7;
            default code_out = 3'dx;
        endcase
    end
    
endmodule;
