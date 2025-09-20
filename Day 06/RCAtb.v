module RCAtb();
  reg [7:0] a,b;
  reg cin;
  wire [7:0] sum;
  wire cout;
  
  RCA #(8) uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  initial begin
    $monitor ("time=%0t | a=%d | b=%d | cin=%d | sum=%d | cout=%d",
              $time, a, b, cin, sum, cout);
    
    a=8'd20; b=8'd10; cin=0; #10;
    a=8'd100; b=8'd200; cin=1; #10;
    a=8'd220; b=8'd150; cin=0; #10;
    a=8'd50; b=8'd100; cin=0; #10;
    #20;
  end
endmodule
