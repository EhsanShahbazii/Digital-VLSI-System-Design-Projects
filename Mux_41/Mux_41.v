module Mux_41 (out, i0, i1, i2, i3, i4, s1, s0);

    input i0, i1, i2, i3, i4, s1, s0;
    output reg out;
    
    always @(i0 or i1 or i2 or i3 or i4 or s1 or s0)
    begin
        case ({s1, s0})
            2'b00 : out = i0;
            2'b01 : out = i1;
            2'b10 : out = i2;
            2'b11 : out = i3;
        endcase
    end

endmodule;
