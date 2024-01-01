module Add_Sub_8bit_tb;

   reg [7:0]a;
   reg [7:0]b;
   reg op;
  
   wire [7:0]out;

   Add_Sub_8bit dut (a), b, op, out);

   initial 
   begin
   
      $monitor("%b",out);
      
      op = 1;
      a = 8'b00000001;
      b = 8'b00000010;
      #10;
      
      op = 0;
      a = 8'b00000100;
      b = 8'b00000010;
      #10;

      $finish;
   end

endmodule;
