`timescale 1ns / 1ps

module priority_encodertb;
  reg  [7:0] din;
  wire [2:0] dout;
  wire valid;

  priority_encoder uut (
    .din(din),
    .dout(dout),
    .valid(valid)
  );

  initial begin
    $monitor("Time=%0t | din=%b | dout=%b | valid=%b", 
              $time, din, dout, valid);

    din = 8'b00000000; #10;  
    din = 8'b00000001; #10;  
    din = 8'b00000100; #10; 
    din = 8'b00001000; #10;  
    din = 8'b00100000; #10; 
    din = 8'b10000000; #10;  
    din = 8'b11111111; #10;  

    $finish;
  end
endmodule
