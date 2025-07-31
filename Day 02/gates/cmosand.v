`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:30:16
// Design Name: 
// Module Name: cmosand
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


module cmosand(a,b,y);
input a,b;
output y;
wire w;

   supply1 vdd;
   supply0 ground;
   
   pmos p1(w,vdd,a);
   pmos p2(y,w,b);
   nmos n1(y,ground,a);
   nmos n2(y,ground,b);
endmodule
