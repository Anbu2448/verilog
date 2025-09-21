module rc;
  reg clk;
  reg [7:0]a,b;
initial begin
  clk = 0;
  a = 8'hAA;
  b = 8'h55;
end
  always #5clk = ~clk;
  always @(posedge clk) begin
    a = b;
    $display("time=%0t, b updated to a =%h",$time, a);
  end
   always @(posedge clk) begin
    b = a;
     $display("time=%0t, a updated to b =%h",$time, b);
     $finish;
   end
endmodule
