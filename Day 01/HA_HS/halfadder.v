`timescale 1ns / 1ps



module halfadder(sum,carry,a,b);
input a,b;
output sum,carry;
  xor x1(sum,a,b);
  and x2(carry,a,b);
endmodule
