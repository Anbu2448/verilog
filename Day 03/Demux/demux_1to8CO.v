`timescale 1ns / 1ps

module demux_1to8CO (i,sel,y0,y1,y2,y3,y4,y5,y6,y7);
input i;         
input [2:0] sel;     
output y0, y1, y2, y3, y4, y5, y6, y7;
  assign y0=(sel==3'b000)?i:1'b0;
  assign y1=(sel==3'b001)?i:1'b0;
  assign y2=(sel==3'b010)?i:1'b0;
  assign y3=(sel==3'b011)?i:1'b0;
  assign y4=(sel==3'b100)?i:1'b0;
  assign y5=(sel==3'b101)?i:1'b0;
  assign y6=(sel==3'b110)?i:1'b0;
  assign y7=(sel==3'b111)?i:1'b0;
endmodule