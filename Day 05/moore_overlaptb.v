`timescale 1ns / 1ps

module moore_overlaptb();
  reg clk;
  reg reset;
  reg din;
  wire detected;
  
  moore_overlap uut (.clk(clk), .reset(reset),
                     .din(din), .detected(detected));
  initial clk = 0;
  always #5 clk = ~clk;
  
  initial begin
    reset = 1; din = 0;
    #12;
    reset = 0;
    din = 1;
    #10;
    din = 0;
    #10;
    din = 1;
    #10;
    din = 1;
    #10;
    din = 0;
    #10;
    din = 0;
    #20;
    $finish;
  end
endmodule

