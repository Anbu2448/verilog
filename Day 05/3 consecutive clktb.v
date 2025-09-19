module tb_consecutive_0;

reg clk;
reg rst;
reg din;
wire y;

consecutive_0 dut (.clk(clk),.rst(rst),.din(din),.y(y));

initial clk = 0;
always #5 clk = ~clk;

initial begin
   
        rst = 1;#10;
        rst = 0; din = 0 ;#10;
        din = 0 ;#10;
        din = 1 ;#10;
        din = 1 ;#10;
        din = 1 ;#10;
        din = 0 ;#10;
        din = 0 ;#10;
        din = 1 ;#10;
        din = 1 ;#10;
        din = 1 ;#10;
    $finish;
end

endmodule
    
  
