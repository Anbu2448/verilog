module top_module (
input  clk,
input  reset,      // Synchronous reset
output reg shift_ena
);

    reg state, next_state;
    reg [2:0] count;

    always @(posedge clk) begin
        if (reset) begin
            state <= 1;
            count <= 1;
        end else begin
            state <= next_state;
            count <= count + 1;
        end
    end

    always @(*) begin
        case (state)
            0: begin
                next_state = 0;
                shift_ena   = 0;
            end
            1: begin
                if (count < 5) begin
                    next_state = 1;
                    shift_ena   = 1;
                end else begin
                    next_state = 0;
                    shift_ena   = 0;
                end
            end
        endcase
    end
endmodule
