`timescale 1ns / 1ps
module fulladder_DFtb;
reg a,b,c;
wire sum,carry;

fulladder_DF uut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
initial begin
    
    a=0;b=0;c=0;#10;
    a=0;b=0;c=1;#10;
    a=0;b=1;c=0;#10;
    a=0;b=1;c=1;#10;
    a=1;b=0;c=0;#10;
    a=1;b=0;c=1;#10;
    a=1;b=1;c=0;#10;
    a=1;b=1;c=1;#10;
    $finish;
    end
endmodule
