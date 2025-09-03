module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z 
); 
	 reg [7:0] Q;

    // Correct 8-bit shift register
    always @(posedge clk) begin
        if (enable) begin
            Q[0] <= S;              // Serial in
            Q[1] <= Q[0];
            Q[2] <= Q[1];
            Q[3] <= Q[2];
            Q[4] <= Q[3];
            Q[5] <= Q[4];
            Q[6] <= Q[5];
            Q[7] <= Q[6];
        end
    end

    // Random access (3-to-8 mux)
    assign Z = Q[{A,B,C}];

endmodule
