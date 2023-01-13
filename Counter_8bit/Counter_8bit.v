module Counter_8bit (out, data_in, inc, clear, load, countEN, clk);

    input [7:0]data_in;
    input inc, clear, load, countEN, clk;
    output reg [7:0]out;
    
    always @(posedge clk)
    begin
        if (clear)
            out[7:0] <= 8'h00;
        else if (load)
            out[7:0] <= data_in[7:0];
        else if (countEN)
        begin
            if (inc)
                out <= out + 1;
            else
                out <= out - 1;
        end
    end
endmodule;
