module even_parity_checker(
    input [3:0] data,
    output even_parity
);

assign even_parity = ~^data;

endmodule