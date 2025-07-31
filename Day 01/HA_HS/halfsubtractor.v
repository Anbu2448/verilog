`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 19:04:21
// Design Name: 
// Module Name: halfsubtractor
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


module halfsubtractor(diff,borrow,a,b);
input a,b;
output diff,borrow;
    xor x1(diff,a,b);
    not x2(x,a);
    and x3(borrow,x,b);
endmodule
