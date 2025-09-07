module top_module(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output done); //
	parameter B1 = 2'b00,  // waiting for message start (byte 1)
              B2 = 2'b01,  // received byte 1, waiting for byte 2
              B3 = 2'b10,  // received byte 2, waiting for byte 3
              D  = 2'b11;  // done, signal one cycle

    reg [1:0] state, next_state;

	 always @(*) begin
        case (state)
            B1: next_state = in[3] ? B2 : B1;
            B2: next_state = B3;
            B3: next_state = D;
            D:  next_state = in[3] ? B2 : B1;
            default: next_state = B1;
        endcase
    end

 	 always @(posedge clk) begin
        if (reset)
            state <= B1;
        else
            state <= next_state;
    end
   
    assign done = (state == D);
endmodule
