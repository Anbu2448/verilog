module top_module (
    input clk,
    input reset,
    output [3:1] ena,
    output [15:0] q
);
    reg [3:0] q0, q1, q2, q3;
    assign q = {q3, q2, q1, q0};
    assign ena[1] = (q0 == 4'd9);
    assign ena[2] = (q0 == 4'd9) && (q1 == 4'd9);
    assign ena[3] = (q0 == 4'd9) && (q1 == 4'd9) && (q2 == 4'd9);
    always @(posedge clk) begin
        if (reset)
            q0 <= 4'd0;
        else
            q0 <= (q0 == 4'd9) ? 4'd0 : q0 + 1;
    end
    always @(posedge clk) begin
        if (reset)
            q1 <= 4'd0;
        else if (ena[1])
            q1 <= (q1 == 4'd9) ? 4'd0 : q1 + 1;
    end
    always @(posedge clk) begin
        if (reset)
            q2 <= 4'd0;
        else if (ena[2])
            q2 <= (q2 == 4'd9) ? 4'd0 : q2 + 1;
    end
    always @(posedge clk) begin
        if (reset)
            q3 <= 4'd0;
        else if (ena[3])
            q3 <= (q3 == 4'd9) ? 4'd0 : q3 + 1;
    end

endmodule
