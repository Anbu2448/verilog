`timescale 1ns / 1ps

module cmos_nandSL_tb;
reg a,b;
wire y;

cmos_nandSL uut(.a(a), .b(b), .y(y));
initial begin
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $finish;
    end
endmodule
