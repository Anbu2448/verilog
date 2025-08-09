`timescale 1ns / 1ps

module shift_1bit_data;
  reg [3:0] data;
  reg [3:0] shifted_data;
       function right_shift_1;
         input data_in;
         begin
           right_shift_1 = data_in;
         end
       endfunction
       initial begin
         data = 8'b1011;
         shifted_data = right_shift_1(data);
         $display("shifted_data = %b",shifted_data);
       end
       endmodule

