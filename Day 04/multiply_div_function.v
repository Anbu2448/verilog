`timescale 1ns / 1ps

module multiply_div_function;
  reg [7:0] a, b;
  reg [7:0] multi_result, div_result;

  function [7:0] multiply;
    input [7:0] x, y;
    begin
      multiply = x * y; 
    end
  endfunction

  function [7:0] divide;
    input [7:0] x, y;
    begin
      if (y != 0)   
        divide = x / y;
      else
        divide = 8'd0;
    end
  endfunction

  initial begin
    a = 8'd20;
    b = 8'd5;

    multi_result = multiply(a, b);
    div_result   = divide(a, b);

    $display("a = %d, b = %d", a, b);
    $display("Multiplication result = %d", multi_result);
    $display("Division result       = %d", div_result);
  end
endmodule


