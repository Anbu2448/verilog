`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:26:32
// Design Name: 
// Module Name: mux4to1tb
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


module mux4to1tb;
reg s1,s0,i0,i1,i2,i3;
wire s1_bar,s0_bar,y;

mux4to1 uut(.s1(s1), .s0(s0), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .s1_bar(s1_bar), .s0_bar(s0_bar), .y(y));
initial begin
    $display("Time | s1 s0 | i0 i1 i2 i3 | y");
    $monitor("%4t   |  %b  %b |  %b  %b  %b  %b |  %b", 
              $time, s1, s0, i0, i1, i2, i3, y);

    s1 = 0; s0 = 0; i0 = 1; i1 = 0; i2 = 0; i3 = 0; #10;
    s1 = 0; s0 = 1; i0 = 0; i1 = 1; i2 = 0; i3 = 0; #10;
    s1 = 1; s0 = 0; i0 = 0; i1 = 0; i2 = 1; i3 = 0; #10;
    s1 = 1; s0 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 1; #10;
    s1 = 0; s0 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 1; #10;
    $finish;
  end
endmodule