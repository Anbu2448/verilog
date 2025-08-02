`timescale 1ns / 1ps



module mux_2to1BO(a,b,c,s);
input a,b,s;
output c;
    assign c = s&a|s&b;
endmodule
