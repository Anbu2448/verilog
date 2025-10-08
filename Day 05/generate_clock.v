`timescale 1ns / 1ps
module generate_clock (
    input clk_50MHz,
    input reset_n,
    output reg  clk_100Hz
);
    parameter integer div_count = 250_000;
    reg [18:0] counter;  
    always @(posedge clk_50MHz or negedge reset_n) begin
        if (!reset_n) begin
         counter   <= 0;
         clk_100Hz <= 0;
        end else begin
         if (counter == div_count-1) begin
            counter   <= 0;
             clk_100Hz <= ~clk_100Hz; 
        end else begin
               counter <= counter + 1;
            end
        end
    end
endmodule
