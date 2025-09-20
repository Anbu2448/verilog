module full_adder_paramtb;
  reg [7:0] a8,b8;
  reg cin8;
  wire [7:0] sum8;
  wire cout8;
  
  full_adder_param #(8) uut (.a(a8), .b(b8), .cin(cin8),
                           .sum(sum8), .cout(cout8));
  initial begin
    a8=10; b8=20; cin= 0;
  #5 $strobe("bit: time=%0t | a=%0d b=%0d cin=%b => sum=%0d cout=%b",
                   $time, a8, b8, cin8, sum8, cout8);
    a8=100; b8=200; cin8=1;
    #5 $strobe("bit: time=%0t | a=%0d b=%0d cin=%b => sum=%0d cout=%b",
                   $time, a8, b8, cin8, sum8, cout8);
    #10;
    $finish;
  end
endmodule
