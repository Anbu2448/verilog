`timescale 1ns / 1ps

module nested_function;
  function integer double(input integer a);
    double = a * 2;
  endfunction
  
  function integer next_val(input integer x);  
    next_val = double(x) + 1;                 
  endfunction
  
  initial begin
    $display("Result: %0d", next_val(4));     
  end
endmodule


