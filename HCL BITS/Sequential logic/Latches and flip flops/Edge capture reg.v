module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
     reg [31:0] prev_in;
    wire [31:0] set;

    assign set = prev_in & ~in;

    always @(posedge clk) begin
        if (reset)
            out <= 32'b0;                 
        else
            out <= (out | set);    
        prev_in <= in;         
    end
endmodule
