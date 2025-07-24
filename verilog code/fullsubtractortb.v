`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:58:39
// Design Name: 
// Module Name: fullsubtractortb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fullsubtractortb;
reg a,b,c_in;
wire diff,borrow;

fullsubtractor uut(.diff(diff), .borrow(borrow), .a(a), .b(b), .c_in(c_in));
initial begin
     a=0;b=0;c_in=0;
     #100;
     a=0;b=0;c_in=1;
     #100;
     a=0;b=1;c_in=0;
     #100;
     a=1;b=1;c_in=1;
     $finish;
    end
endmodule
