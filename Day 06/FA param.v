module full_adder_param #(parameter N = 8)(
  input [N-1:0] a,b,
  input cin,
  output [N-1:0] sum,
  output cout
);
  assign {cout,sum} = a + b + cin;
endmodule
