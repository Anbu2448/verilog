module top_module (
    input clk,
    input reset,       // Synchronous reset
    input data,
    output reg start_shifting
);

    reg [2:0] state, next_state;
    parameter S0 = 3'b000,
              S1 = 3'b001,
              S2 = 3'b011,
              S3 = 3'b010,
              S4 = 3'b110;

    // State register (synchronous)
    always @(posedge clk) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next-state and output logic
    always @(*) begin
        case (state)
            S0: begin
                next_state = data ? S1 : S0;
                start_shifting = 0;
            end
            S1: begin
                next_state = data ? S2 : S0;
                start_shifting = 0;
            end
            S2: begin
                next_state = data ? S2 : S3;
                start_shifting = 0;
            end
            S3: begin
                next_state = data ? S4 : S0;
                start_shifting = 0;
            end
            S4: begin
                next_state = S4;
                start_shifting = 1;
            end
            default: begin
                next_state = S0;
                start_shifting = 0;
            end
        endcase
    end
endmodule

