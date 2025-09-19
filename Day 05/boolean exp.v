module boolean_expr (
    input A, B, C, D, E,
    output Y
);

    wire notB, notC, notD;
    wire term1, term2, term3, term4;
    wire or1, or2, and1;
    wire or3, or4;

    not #(4) n1(notB, B);
    not #(4) n2(notC, C);
    not #(4) n3(notD, D);

    or  #(2) o1(or1, A, B);
    or  #(2) o2(term1, or1, C);

    and #(3) a1(and1, A, B);
    and #(3) a2(term2, and1, E);

    and #(3) a3(term3, notB, C);

    and #(3) a4(term4, C, notD);

    or  #(2) o3(or3, term1, term2);
    or  #(2) o4(or4, term3, term4);
    or  #(2) o5(Y, or3, or4);

endmodule
