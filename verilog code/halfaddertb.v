`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:05:02
// Design Name: 
// Module Name: halfaddertb
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


module halfaddertb;
reg a,b;
wire sum,carry;
halfadder uut(.carry(carry), .sum(sum), .a(a), .b(b));
 initial begin
     a=0;
     b=0;
     #100; a=1;
     b=0;
     #100;
     $finish;
    end
endmodule
