`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:43:31
// Design Name: 
// Module Name: cmosandtb
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


module cmosandtb;
reg a,b;
wire y;

cmosand uut(.y(y), .a(a), .b(b));
initial begin
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    $finish;
   end
  endmodule
