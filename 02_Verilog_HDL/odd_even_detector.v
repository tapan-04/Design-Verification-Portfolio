module odd_even_detector (
    input  [3:0] num,
    output       even,
    output       odd
);

assign even = ~num[0];
assign odd  = num[0];

endmodule