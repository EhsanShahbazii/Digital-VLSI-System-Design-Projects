module Ram_sp (out, data_in, address, Wr, Rd);

    parameter DATA_WIDTH = 8;
    parameter ADDRESS_WIDTH = 10;
    parameter MEMORY_DEPTH = 1024;
    
    input [DATA_WIDTH-1:0]data_in;
    input [ADDRESS_WIDTH-1:0]address;
    input Wr, Rd;
    output reg [DATA_WIDTH-1:0]out;
    
    reg [DATA_WIDTH-1:0] memory[0: MEMORY_DEPTH - 1];
    
    always @(data_in or address or Wr or Rd)
    begin
        if (Rd)
            out <= memory[address];
        else if (Wr)
            memory[address] <= data_in;
        else
            out <= 8'bz;
    end
  
endmodule;
