`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:38:17
// Design Name: 
// Module Name: mux8to1tb
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


module tb_mux8to1;
reg i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2;
wire y, s0_bar, s1_bar, s2_bar;

mux8to1 uut (.y(y), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7), 
 .s0(s0), .s1(s1), .s2(s2), .s0_bar(s0_bar), .s1_bar(s1_bar), .s2_bar(s2_bar));

initial begin
    i0=1; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
    #10;
    i0=0; i1=1; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
    #10;
    i0=0; i1=0; i2=1; i3=0; i4=0; i5=0; i6=0; i7=0;
    #10;
    i0=0; i1=0; i2=0; i3=1; i4=0; i5=0; i6=0; i7=0;
    #10;
    i0=0; i1=0; i2=0; i3=0; i4=1; i5=0; i6=0; i7=0;
    #10;
    i0=0; i1=0; i2=0; i3=0; i4=0; i5=1; i6=0; i7=0;
    #10;
    i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=1; i7=0;
    #10;
    i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=1;
    $finish;
   end
endmodule
