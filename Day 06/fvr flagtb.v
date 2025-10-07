module forever_flagtb;
  wire clk;
  forever_flag uut (.clk(clk));
  initial begin
    $dumpfile("forever_flag.vcd");   
    $dumpvars(0, tb_forever_flag);
    $monitor("Time=%0t | clk=%b", $time, clk);
    #100; 
    $finish;
  end
endmodule
