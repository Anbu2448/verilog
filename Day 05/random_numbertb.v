`timescale 1ns / 1ps
module random_numbertb;
  reg clk, reset_n;
  wire signed [7:0] rand_num;

  random_number uut (
      .clk(clk),
      .reset_n(reset_n),
      .rand_num(rand_num)
  );

  always #5 clk = ~clk; 
  initial begin
    clk = 0;
    reset_n = 0;
    #12 reset_n = 1;
    repeat (20) begin
      @(posedge clk);
      $display("Time=%0t | Random Number = %0d (0x%0h)", $time, rand_num, rand_num);
    end
    $finish;
  end
endmodule