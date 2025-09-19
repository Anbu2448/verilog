module consecutive_0(
    input clk,
    input rst,
    input din,
    output reg y);
     parameter s0=3'b000,
              s1=3'b001,
              s2=3'b010,
              s3=3'b011,
              s4=3'b100,
              s5=3'b101,
              s6=3'b110;
              
       reg[2:0]state,next_state;
    always@(*)begin
    case(state)
      s0: begin
        if(din==1)
        next_state=s1;
        else
        next_state=s4;
      end
      
      s1: begin
        if(din==1)
        next_state=s2;
        else
        next_state=s4;
      end
        
      s2: begin
        if(din==1)
        next_state=s3;
        else
        next_state=s4;
      end  
      
      s3: begin
        if(din==1)
        next_state=s3;
        else
        next_state=s4;
      end
        
      s4: begin
      if(din==1)
      next_state=s1;
      else
      next_state=s5;
     end
     
     s5: begin
     if(din==1)
     next_state=s1;
     else
     next_state=s6;
   end
   
   s6: begin
    if(din==1)
    next_state=s1;
    else
    next_state=s6;
  end
  default:next_state=s0;
  endcase
end
   
 always@(posedge clk or posedge rst)begin
 if(rst)
     state=s0;
     
 else
    state=next_state;
    end
    
    always @(*) begin
        if (state == s3 || state == s6)
            y = 1;
        else
            y = 0;
    end
endmodule
