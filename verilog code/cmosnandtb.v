`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:20:10
// Design Name: 
// Module Name: cmosnandtb
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


module cmosnandtb;
reg a,b;
wire y;

 cmosnand uut(
      .y(y),
      .a(a),
      .b(b)
 );
 initial begin
    a=0;
    b=0;
    #100;
    a=0;
    b=1;
    #100;
    a=1;
    b=0;
    #100
    a=1;
    b=1;
    $finish;
   end
  endmodule
