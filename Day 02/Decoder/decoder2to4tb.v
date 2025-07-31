`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:37:45
// Design Name: 
// Module Name: decoder2to4tb
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


module decoder2to4tb;
reg i0, i1;
wire y0, y1, y2, y3, i0_bar, i1_bar;

decoder2to4 uut(.i0(i0), .i1(i1), .i0_bar(i0_bar), .i1_bar(i1_bar), .y0(y0), .y1(y1), .y2(y2), .y3(y3));
initial begin
    i1=0; i0=0; 
    #10;
    i1=0; i0=1;
     #10;
    i1=1; i0=0; 
    #10;
    i1=1; i0=1; 
    $finish;
    end
endmodule
