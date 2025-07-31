`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:19:33
// Design Name: 
// Module Name: transmissiongatetb
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


module transmissiongatetb;
reg a,control;
wire b;

transmissiongate uut(.a(a), .control(control), .b(b));
initial begin
   control=0;a=0;
   #20;
   a=1;
   #20;
   control=1;a=0;
   #20;
   a=1;
   $finish;
  end
 endmodule
