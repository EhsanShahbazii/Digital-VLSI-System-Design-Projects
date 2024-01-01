module Mux_41_tb;

    reg i0, i1, i2, i3, i4, s1, s0;
    wire out;
    
    Mux_41 uut (out, i0, i1, i2, i3, i4, s1, s0);
    
    initial 
    begin
        $monitor("%b", out);
        
        #10; i0 = 1; i1 = 0; i2 = 0; i3 = 0; i4 = 0; s1 = 0; s0 = 0;
        
        #10; i0 = 0; i1 = 1; i2 = 0; i3 = 0; i4 = 0; s1 = 0; s0 = 1;
        
        #10; i0 = 0; i1 = 0; i2 = 1; i3 = 0; i4 = 0; s1 = 1; s0 = 0;
        
        #10; i0 = 0; i1 = 0; i2 = 0; i3 = 1; i4 = 0; s1 = 1; s0 = 1;
        
        $finish;
    end

endmodule;
