module Add_Sub_8bit (out, a, b, op);

    input [7:0]a;
    input [7:0]b;
    input op;
    output reg [7:0]out;
    
    always @(a or b or op)
    begin
        if (op)
            out = a + b;
        else
            out = a - b;
    end

endmodule;
