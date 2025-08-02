`timescale 1ns / 1ps

module demux_2to1BO(a,s,y0,y1);
input a;
input s;
output y0,y1;
    assign y0=a&s;
    assign y1=a&s;
endmodule
