`timescale 1ns / 1ps

module cmos_andSLtb;
reg a,b;
wire y;

cmos_andSLtb uut(.a(a), .b(b), .y(y));
initial begin
$display ("%b %b|%b",a,b,y);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $finish;
    end
endmodule
