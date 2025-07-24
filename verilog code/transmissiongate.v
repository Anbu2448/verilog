`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:14:33
// Design Name: 
// Module Name: transmissiongate
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


module transmissiongate(a,control,b);
input a,control;
output b;
wire n;
   supply1 vdd;
   supply0 ground;
   
   nmos n1(b,a,control);
   pmos p1(b,a,ncontrol);
endmodule
