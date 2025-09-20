module race_fixed;
  reg clk,a,b,c;
  initial begin
    clk=0; a=0; b=0;
    #5 a=1; b=1;
  end
  always #10 clk=~clk;
  always @(posedge clk) begin
    c <= a&b;
    $display("time=%0t, c=%d", $time, c);
  end
  always @(posedge clk) begin
    a <= 0;
    b <= 0;
  end
endmodule
