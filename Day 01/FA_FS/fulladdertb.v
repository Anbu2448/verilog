`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:41:11
// Design Name: 
// Module Name: fulladdertb
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


module fulladdertb;
reg a,b,c_in;
wire sum,carry;

fulladder uut(.sum(sum), .carry(carry), .a(a), .b(b));
initial begin
    a=0;b=0;c_in=0;
    #100;
    a=0;b=0; c_in=1;
    #100;
    a=1;b=1;c_in=1;
    $finish;
   end
endmodule
