module top_module(
    input clk,
    input reset,   // synchronous reset
    input in,
    output reg disc,
    output reg flag,
    output reg err
);

    reg [2:0] ones_count;  

    always @(posedge clk) begin
        if (reset) begin
            ones_count <= 3'd0;
            disc <= 1'b0;
            flag <= 1'b0;
            err  <= 1'b0;
        end
        else begin
           
            disc <= 1'b0;
            flag <= 1'b0;
            err  <= 1'b0;

            if (in) begin
              
                if (ones_count < 7)
                    ones_count <= ones_count + 1;
                else
                    ones_count <= 7; 

                if (ones_count >= 6)
                    err <= 1'b1;
            end
            else begin
           
                case (ones_count)
                    5: disc <= 1'b1;
                    6: flag <= 1'b1;   
                    default: ;     
                endcase
                ones_count <= 0;
            end
        end
    end

endmodule
