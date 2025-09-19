module boolean_exprtb;
    reg A, B, C, D, E;
    wire Y;

  boolean_expr uut (.A(A), .B(B), .C(C), .D(D), .E(E), .Y(Y));
    initial begin
      $monitor("t=%0t | A=%b B=%b C=%b D=%b E=%b | Y=%b", $time, A, B, C, D, E, Y);
        A=0; B=0; C=0; D=0; E=0;
        #10 A=1;
        #10 B=1;
        #10 C=1;
        #10 D=1;
        #10 E=1;
        #10 A=0; B=0; C=1; D=1; E=0;
        $monitoroff;
        #50;
        $monitoron;
        #10 A=1; B=1; C=0; D=1; E=1;
        #10 A=0; B=1; C=1; D=0; E=1;

        #20 $finish;
    end

endmodule

