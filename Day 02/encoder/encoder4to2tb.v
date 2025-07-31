`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:27:52
// Design Name: 
// Module Name: encoder4to2tb
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


module encoder4to2tb;
reg i0, i1, i2, i3;
wire y0, y1;

encoder4to2 uut(.y0(y0), .y1(y1), .i0(i0), .i1(i1), .i2(i2), .i3(i3));
initial begin
$display("Time i3,i2,i1,i0,y1,y0");
    i0=0; i1=0; i2=1; i3=1;
    #10;
    i0=0; i1=1; i2=0; i3=1;
    #10;
    $finish;
   end
endmodule
