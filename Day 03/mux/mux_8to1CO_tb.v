`timescale 1ns / 1ps

module mux_8to1CO_tb;
reg [7:0] i;
reg [2:0] s;
wire y;

mux_8to1CO uut(.i(i), .s(s), .y(y));
initial begin
    $display("s | i[7:0] | y"); 
    s = 3'b000; 
    #10; 
    s = 3'b001; 
    #10;  
    s = 3'b010; 
    #10; 
    s = 3'b011; 
    #10; 
    s = 3'b101; 
    #10; 
    s = 3'b110; 
    #10; 
    s = 3'b111; 
    $finish;
    end
 endmodule 