module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
	 reg [3:0] Q;

    always @(posedge clk) begin
        if (!resetn)
            Q <= 0;      
        else
            Q <= {Q[2:0], in}; 
    end

    assign out = Q[3];

endmodule
