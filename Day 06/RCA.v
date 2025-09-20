module full_adder (
    input  a, b, cin,
    output sum, cout
);
    assign {cout, sum} = a + b + cin;  
endmodule


module RCA #(parameter N = 8) (
    input  [N-1:0] a, b,
    input          cin,
    output [N-1:0] sum,
    output         cout
);
    wire [N:0] c;
    assign c[0] = cin;

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin 
          full_adder FA (.a(a[i]), .b(b[i]), .cin(c[i]),
                         .sum(sum[i]), .cout(c[i+1])               
            );
        end
    endgenerate
    assign cout = c[N];
endmodule

        
