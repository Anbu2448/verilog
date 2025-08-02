`timescale 1ns / 1ps

module mux_2to1BO_tb;
reg a,b,s;
wire c;

mux_2to1BO uut(.a(a), .b(b), .c(c), .s(s));
initial begin
    $display("a b s | c");
    $monitor("a=%b b=%b s=%b | c=%b",a,b,s,c);
    a = 0;b = 0;s = 0;
    #10;
    a = 0;b = 0;s = 1;
    #10;
    a = 0;b = 1;s = 0;
    #10;
    a = 0;b = 1;s = 1;
    #10;
    a = 1;b = 0;s = 0;
    #10;
    a = 1;b = 0;s = 1;
    #10;
    a = 1;b = 1;s = 0;
    #10;
    a = 1;b = 1;s = 1;
    #10;
    $finish;
    end
endmodule
