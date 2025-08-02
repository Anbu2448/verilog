`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:21:45
// Design Name: 
// Module Name: mux8to1
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

module mux8to1(y, i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, s0_bar, s1_bar, s2_bar);
input i0, i1, i2, i3, i4, i5, i6, i7;
input s0, s1, s2;
output s0_bar, s1_bar, s2_bar, y;
wire w0, w1, w2, w3, w4, w5, w6, w7;
    not (s0_bar, s0);
    not (s1_bar, s1);
    not (s2_bar, s2);
    and (w0, i0, s2_bar, s1_bar, s0_bar);
    and (w1, i1, s2_bar, s1_bar, s0);
    and (w2, i2, s2_bar, s1, s0_bar);
    and (w3, i3, s2_bar, s1, s0);
    and (w4, i4, s2, s1_bar, s0_bar);
    and (w5, i5, s2, s1_bar, s0);
    and (w6, i6, s2, s1, s0_bar);
    and (w7, i7, s2, s1, s0);
    or (y, w0, w1, w2, w3, w4, w5, w6, w7);
endmodule
