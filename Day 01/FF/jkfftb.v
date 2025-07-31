`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:13:29
// Design Name: 
// Module Name: jkfftb
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


module jkfftb;
reg j, k, clk;
wire x, y;

jkff uut (.j(j), .k(k), .clk(clk), .x(x), .y(y));
    initial begin
        $monitor("%4t | %b %b  %b  | %b %b", $time, j, k, clk, x, y);
        j = 0; k = 0; 
        #10;
        j = 0; k = 1;
        #10;
        j = 1; k = 0;
        #10;
        j = 1; k = 1;
        #10;
        j = 0; k = 0;
        #10;
        j = 1; k = 1;
        #10;
        j = 0; k = 1;
        #10;
        j = 1; k = 0;
        #10;
        $finish;
    end
endmodule