`timescale 1ns/1ps
module random_number (
    input  wire clk,
    input  wire reset_n,
    output reg signed [7:0] rand_num
);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            rand_num <= 0;
        else
            rand_num <= $random % 100; 
    end

endmodule

