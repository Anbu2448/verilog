`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:49:14
// Design Name: 
// Module Name: norgate
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


module norgate(f,a,b);
input a,b;
output f;
wire c;

   supply1 power;
   supply0 ground;
   
   pmos p1(c,power,b);
   pmos p2(f,c,a);
   nmos n1(f,ground,a);
   nmos n2(f,ground,b);
   
endmodule
