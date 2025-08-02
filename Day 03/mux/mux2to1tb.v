`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:39:20
// Design Name: 
// Module Name: mux2to1tb
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


module mux2to1tb;
reg i0,i1,s0;
wire y;

mux2to1 uut(.i0(i0), .i1(i1), .s0(s0), .y(y));
initial begin
     $monitor("%0t\t%b\t%b\t%b\t%b", $time, s0, i0, i1, y);
    s0 = 0; i0 = 0; i1 = 0;
    #10;
    s0 = 0; i0 = 1; i1 = 0;
    #10;
    s0 = 0; i0 = 0; i1 = 1;
    #10;
    s0 = 0; i0 = 1; i1 = 1;
    #10;
    s0 = 1; i0 = 0; i1 = 0;
    #10;
    s0 = 1; i0 = 1; i1 = 0; 
    #10;
    s0 = 1; i0 = 0; i1 = 1;
    #10;
    s0 = 1; i0 = 1; i1 = 1; 
    $finish;
   end
endmodule