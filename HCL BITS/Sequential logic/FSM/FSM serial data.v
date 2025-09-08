module top_module(
    input clk,
    input in,
    input reset,         // synchronous reset
    output [7:0] out_byte,
    output done
);
    
    parameter BIT_START = 4'd0,
              BIT_B0    = 4'd1,
              BIT_B1    = 4'd2,
              BIT_B2    = 4'd3,
              BIT_B3    = 4'd4,
              BIT_B4    = 4'd5,
              BIT_B5    = 4'd6,
              BIT_B6    = 4'd7,
              BIT_B7    = 4'd8,
              BIT_STOP  = 4'd9,
              DONE      = 4'd10,
              ERROR     = 4'd11;

    reg [3:0] state, state_next;
    reg [7:0] data;

    always @(posedge clk) begin
        if (reset)
            state <= BIT_START;
        else
            state <= state_next;
    end

    // Combinational next-state logic
    always @(*) begin
        case (state)
            BIT_START:
                state_next = in ? BIT_START : BIT_B0;
            BIT_B0, BIT_B1, BIT_B2, BIT_B3, BIT_B4, BIT_B5, BIT_B6, BIT_B7:
                state_next = state + 1;
            BIT_STOP:
                state_next = in ? DONE : ERROR;
            DONE:
                state_next = in ? BIT_START : BIT_B0;
            ERROR:
                state_next = in ? BIT_START : ERROR;
            default:
                state_next = BIT_START;
        endcase
    end

    always @(posedge clk) begin
        if (state < BIT_STOP)
            data <= {in, data[7:1]};
    end

    assign out_byte = data;
    assign done     = (state == DONE);

endmodule
