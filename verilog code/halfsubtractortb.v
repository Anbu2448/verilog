`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:11:55
// Design Name: 
// Module Name: halfsubtractortb
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


module halfsubtractortb;
reg a,b;
wire borrow,diff;
halfsubtractor uut(.diff(diff), .borrow(borrow), .a(a), .b(b));
initial begin
    a=0;b=0;
    #100;
    a=0;b=1;
    #100;
    a=1;b=1;
    $finish;
   end
endmodule
