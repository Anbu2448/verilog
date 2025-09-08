module top_module (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z ); 

    typedef enum logic [1:0] {S0=2'b00, S1=2'b01, S2=2'b10} state_t;
    state_t state, next_state;

    always @(*) begin
        next_state = state;   
        z = 0;               

        case (state)
            S0: begin
                if (x) next_state = S1;
                else   next_state = S0;
            end

            S1: begin
                if (x) next_state = S1;
                else   next_state = S2;
            end

            S2: begin
                if (x) begin
                    next_state = S1;
                    z = 1;   
                end
                else next_state = S0;
            end
        endcase
    end

    always @(posedge clk or negedge aresetn) begin
        if (!aresetn)
            state <= S0;
        else
            state <= next_state;
    end

endmodule
