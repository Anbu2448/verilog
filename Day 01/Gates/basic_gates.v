`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:49:02
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(a,b,f,y,x,z,w,c,g);
input a,b;
output f,y,x,z,w,c,g;
    not (f, a);
    and (y, a, b);
    or (x, a, b);
    nand (z, a, b);
    xor (w, a, b);
    nor (c, a, b);
    xnor (g, a, b);
endmodule
