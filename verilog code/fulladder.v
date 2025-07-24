`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:23:57
// Design Name: 
// Module Name: fulladder
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


module fulladder(sum,carry,a,b,c_in);
input a,b,c_in;
output sum,carry;
    xor x1(w1,a,b);
    xor x2(sum,w1,c_in);
    and x3(w2,a,b);
    and x4(w3,w1,c_in);
    or x5(carry,w2,w3);
endmodule
