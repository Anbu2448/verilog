`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:08:00
// Design Name: 
// Module Name: cmosnand
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


module cmosnand(a,b,y);
 input a,b;
 output y;
  
  wire w;
  supply1 vdd;
  supply0 ground;
  
  pmos m1(y, vdd, a);
  pmos m2(y, vdd, b);
  
  nmos m3(y, w, a);
  nmos m4(w, ground, b);
endmodule
