`timescale 1ns / 1ps

module halfadder_DF(a,b,sum,carry);
input a,b;
output sum,carry;
    assign s = a^b;
    assign c = a&b;
endmodule
