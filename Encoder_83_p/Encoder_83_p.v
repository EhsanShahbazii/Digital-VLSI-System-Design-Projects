module Encoder_83_p (code_out, data_in);

    input [7:0]data_in;
    output reg [2:0]code_out;
    
    always @(data_in)
    begin
        casex (data_in)
            8'b00000001 : code_out = 3'b000;
            8'b0000001x : code_out = 3'b001;
            8'b000001xx : code_out = 3'b010;
            8'b00001xxx : code_out = 3'b011;
            8'b0001xxxx : code_out = 3'b100;
            8'b001xxxxx : code_out = 3'b101;
            8'b01xxxxxx : code_out = 3'b110;
            8'b1xxxxxxx : code_out = 3'b111;
            default code_out = 3'bx;
        endcase
    end
    
endmodule;
