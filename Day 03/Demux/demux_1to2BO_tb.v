`timescale 1ns / 1ps


module testbench;
  reg a, s;
  wire y0, y1;

  demux_2to1BO uut (.a(a), .s(s), .y0(y0), .y1(y1));
  initial begin
    $display("a s | y0 y1");
    $monitor("a%b s%b|y0%b y1%b", a, s, y0, y1);
    a=0;s=0;#10;
    a=0;s=1;#10;
    a=1;s=1;#10;
    a=1;s=0;#10;
    $finish;
  end
endmodule
