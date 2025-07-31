`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 13:24:00
// Design Name: 
// Module Name: invertertb
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


module invertertb;
reg in;
wire out;

inverter uut(
       .out(out),
       .in(in)
 );
 initial begin
     in=0;
     #100;
     in=1;
     #100;
     $finish;
    end
  endmodule
