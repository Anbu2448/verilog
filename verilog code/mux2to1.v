`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:38:15
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(y,i0,i1,s0);
input i0,i1,s0;
output y;
wire w1,w2,w3;

    not(w1,s0);
    and(w2,i0,w1);
    and(w3,s0,i1);
    or(y,w2,w3);
endmodule
