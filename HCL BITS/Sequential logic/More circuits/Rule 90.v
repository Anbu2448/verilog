module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q 
); 
    reg [511:0] next_q;
    integer i;

    always @(*) begin
        next_q[0]   = q[1];      
        next_q[511] = q[510];    
        for (i = 1; i < 511; i = i + 1) begin
            next_q[i] = q[i-1] ^ q[i+1];
        end
    end

    always @(posedge clk) begin
        if (load)
            q <= data;
        else
            q <= next_q;
    end

endmodule
