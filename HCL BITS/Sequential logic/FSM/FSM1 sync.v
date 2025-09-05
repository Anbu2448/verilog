module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;
    reg out;

    parameter A = 1'b0, B = 1'b1;
    reg present_state, next_state;
   
    always @(*) begin
        case (present_state)
            B: next_state = (in) ? B : A;  // From B: 1->B, 0->A
            A: next_state = (in) ? A : B;  // From A: 1->A, 0->B
            default: next_state = B;       // Safe default
        endcase
    end

    always @(posedge clk) begin
        if (reset)
            present_state <= B;  
        else
            present_state <= next_state;
    end

    // Moore output logic
    always @(*) begin
        case (present_state)
            B: out = 1;
            A: out = 0;
        endcase
    end

endmodule
