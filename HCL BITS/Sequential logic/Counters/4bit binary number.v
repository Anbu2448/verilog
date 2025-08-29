module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
     always @(posedge clk) begin
        if (reset)
            q <= 4'h0000;         // Reset counter to 0
        else
            q <= q + 1'h1;        // Increment counter (wraps automatically after 15)
    end

endmodule
