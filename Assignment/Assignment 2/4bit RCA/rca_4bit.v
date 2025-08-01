`timescale 1ns / 1ps

module rca_4bit(
    input [3:0] a, b,
    input Cin,
    output [3:0] sum,
    output Cout
);
    wire c1, c2, c3;

    fa fa0 (.a(a[0]), .b(b[0]), .cin(Cin), .sum(sum[0]), .cout(c1));
    fa fa1 (.a(a[1]), .b(b[1]), .cin(c1),  .sum(sum[1]), .cout(c2));
    fa fa2 (.a(a[2]), .b(b[2]), .cin(c2),  .sum(sum[2]), .cout(c3));
    fa fa3 (.a(a[3]), .b(b[3]), .cin(c3),  .sum(sum[3]), .cout(Cout));
endmodule


