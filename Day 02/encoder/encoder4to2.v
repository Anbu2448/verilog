`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:20:20
// Design Name: 
// Module Name: encoder4to2
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


module encoder4to2(y0, y1, i0, i1, i2, i3);
input i0,i1, i2, i3;
output y0, y1;

    or (y1,i3,i2);
    or (y0,i3,i1);
endmodule
