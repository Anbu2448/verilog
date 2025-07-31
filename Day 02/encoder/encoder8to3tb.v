`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:54:10
// Design Name: 
// Module Name: encoder8to3tb
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


module encoder8to3tb;
reg i0, i1, i2, i3, i4, i5, i6, i7;
wire y0, y1, y2;

encoder8to3 uut(.y0(y0), .y1(y1), .y2(y2), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7));
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
