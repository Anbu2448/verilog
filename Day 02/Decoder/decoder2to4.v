`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:29:45
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(i0, i1, i0_bar, i1_bar, y0, y1, y2, y3);
input i0, i1;
output y0, y1, y2, y3, i0_bar, i1_bar;
wire w0,w1,w2,w3;
    not (i0,i0_bar);
    not (i1,i1_bar);
    and (y0,i1_bar,i0_bar);
    and (y1,i1_bar,i0);
    and (i1,i0_bar);
    and (i1,i0);
endmodule
