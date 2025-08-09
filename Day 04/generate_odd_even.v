`timescale 1ns / 1ps

module generate_odd_even;
  reg [4:0] i;  
  reg mode; 
  reg [7:0] value;

  function [7:0] gen_value;
    input [4:0] index;
    input mode; 
    begin
      if (mode == 1'b0)
        gen_value = index*2;  
      else
        gen_value = (index*2) + 1;
    end
  endfunction

  initial begin
    mode = 1'b1;

    for (i = 0; i < 20; i = i + 1) 
      begin
      value = gen_value(i, mode);
      $display("Value %0d=%0d", i, value);
    end
  end
endmodule


