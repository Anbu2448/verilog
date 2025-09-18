`timescale 1ns / 1ps


module moore_overlap(
  input clk,
  input reset,
  input din,
  output reg detected
);
  
  reg[2:0] state,next_state;
  
  parameter s0 = 3'd0;
  parameter s1 = 3'd1;
  parameter s2 = 3'd2;
  parameter s3 = 3'd3;
  parameter s4 = 3'd4;
  parameter s5 = 3'd5;
  
  always @(posedge clk or posedge reset) begin
      if(reset)
      state <= s0;
    else 
      state <= next_state;
  end
   
 always @(*) begin
 case (state)
      s0:next_state = (din) ? s1:s0;
      s1:next_state = (din) ? s1:s2;
      s2:next_state = (din) ? s3:s0;
      s3:next_state = (din) ? s4:s2;
      s4:next_state = (din) ? s1:s5;
      s5:next_state = (din) ? s1:s2;
      endcase
   end 
  
  always @(*) begin
  case (state)
    din:detected = 1;
    default:detected = 0;
    endcase
  end 
endmodule

