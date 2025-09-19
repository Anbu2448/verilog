module priority_encoder (
    input  [7:0] din,
    output reg [2:0] dout,
    output reg valid
);

always @(*) begin
    valid = 1'b1;
    if (din[7]) 
      dout = 3'b111;  
     else if (din[6])
       dout = 3'b110;
      else if (din[5])
        dout = 3'b101;
       else if (din[4]) 
         dout = 3'b100;
        else if (din[3])
          dout = 3'b011;
         else if (din[2]) 
           dout = 3'b010;
          else if (din[1]) 
            dout = 3'b001;
           else if (din[0])
             dout = 3'b000;
            else begin
              dout  = 3'b000;
               valid = 1'b0;
            end
       end
endmodule

