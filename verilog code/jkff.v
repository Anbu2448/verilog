`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:12:18
// Design Name: 
// Module Name: jkff
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


module jkff(j,k,clk,x,y);
input j,k,clk;
output x,y;
    and(w1,x,j,clk);
    and(w2,clk,k,y);
    nor(x,w1,y);
    nor(y,x,w2);
endmodule