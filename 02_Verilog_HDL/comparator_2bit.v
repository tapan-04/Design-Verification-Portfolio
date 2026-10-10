module comparator_2bit(
    input [1:0] A, B,
    output A_greater,
    output A_equal,
    output A_smaller
);

assign A_greater = (A > B);
assign A_equal   = (A == B);
assign A_smaller = (A < B);

endmodule