module forever_flag;

  reg clk;
  reg run;  

  initial begin
    clk = 0;
    run = 1;

    forever begin
      if (run) begin
        #5 clk = ~clk;   
      end else begin
        $display("Forever loop stopped at time %0t", $time);
        disable fork;   
      end
    end
  end

  initial begin
    #50 run = 0; 
  end
endmodule

