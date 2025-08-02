`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:11:18
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(i0, i1, i2, i3, y, s1, s0, s1_bar, s0_bar);
input s1, s0, i0, i1, i2, i3;
output s1_bar, s0_bar, y;
wire w1, w2, w3, w4;
    not (s1,s1_bar);
    not (s0,s0_bar);
    and (w1,s1_bar,s0_bar,i0);
    and (w2,s1_bar, s0, i1);
    and (w3,s1,s0_bar,i2);
    and (w4,s1,s0,i3);
    or (y, w1, w2, w3, w4);
endmodule
