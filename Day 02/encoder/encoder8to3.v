`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:50:03
// Design Name: 
// Module Name: encoder8to3
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


module encoder8to3(y0, y1, y2, i0, i1, i2, i3, i4, i5, i6, i7);
input i0, i1, i2, i3, i4, i5, i6, i7;
output y0, y1, y2;
    or (y2,i7,i6,i4,i5);
    or (y1,i7,i3,i6,i2);
    or (y0,i7,i3,i1,i5);
endmodule
