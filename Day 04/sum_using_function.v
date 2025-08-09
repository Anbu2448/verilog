`timescale 1ns / 1ps

module sum_using_function;
  reg [7:0] a,b;
  wire [7:0] result;
  
  function [7:0] add;
    input [7:0] x,y;
    begin 
     add = x+y;
    end
  endfunction
    assign result = add(a,b);
    initial begin
      a=8'd15;
      b=8'd25;
      #10;
      $display("a=%d,b=%d,sum=%d",a,b,result);
    end
    endmodule
