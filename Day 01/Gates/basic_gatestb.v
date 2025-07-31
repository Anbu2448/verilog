`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:57:43
// Design Name: 
// Module Name: basic_gatestb
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


module basic_gatestb;
reg a,b;
wire f,y,x,z,w,c,g;

basic_gates uut(.a(a), .b(b), .f(f), .y(y), .x(x), .z(z), .w(w), .c(c), .g(g));
initial begin
$monitor("%0t\t%b %b | not %b and  %b  or %b nand  %b xor   %b nor  %b  xnor  %b",
              $time, a, b, f, y, x, z, w, c, g);
    a = 0; b = 0; 
    #10;
    a = 0; b = 1; 
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1; 
    $finish;
    end
endmodule
