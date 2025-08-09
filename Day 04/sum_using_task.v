`timescale 1ns / 1ps

module sum_using_task;
  reg [7:0] a,b;
  reg [7:0] result;
  task add;
    input [7:0] x,y;
    output [7:0] sum;
    begin 
      sum = x+y;
    end 
  endtask
  initial begin
    a = 8'd40;
    b = 8'd22;
    add (a,b,result);
    $display("a=%d,b=%d,sum=%d",a,b,result);
  end
endmodule
