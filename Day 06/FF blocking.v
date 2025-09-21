module ff_blocking;
  reg clk;
  reg [7:0]a,b;
initial begin
  clk = 0;
  a = 8'hAA;
  b = 8'h55;
end
  always #10clk = ~clk;
  always @(posedge clk) begin
    a = b;
    b = a;
    $display("time=%0t, a=%h, b=%h",$time, a, b);
    $finish;
  end
endmodule
