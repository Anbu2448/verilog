`timescale 1ns / 1ps

module generate_clocktb;
    reg clk_50MHz;
    reg reset_n;
    wire clk_100Hz;

generate_clock uut (
        .clk_50MHz(clk_50MHz),
        .reset_n(reset_n),
        .clk_100Hz(clk_100Hz)
    );
initial begin
     clk_50MHz = 0;
      forever #10 clk_50MHz = ~clk_50MHz; 
  end

    initial begin
       $monitor("Time = %0t | clk_50MHz = %b | reset_n = %b | clk_100Hz = %b", 
                  $time, clk_50MHz, reset_n, clk_100Hz);
        reset_n = 0;
        #10;            
        reset_n = 1;      
        #10;    
        $finish;
    end
endmodule
