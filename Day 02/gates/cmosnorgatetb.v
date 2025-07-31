`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:56:09
// Design Name: 
// Module Name: cmosnorgatetb
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


module cmosnorgatetb;
reg a,b;
wire f;
    norgate uut(.f(f), .a(a), .b(b));
initial begin
     a=0;b=0;
     #10;
     a=0;b=1;
     #10
     a=1;b=0;
     #10;
     a=1;b=1;
     $finish;
    end
   endmodule
