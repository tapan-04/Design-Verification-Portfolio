module barrel_shifter (
    input  [3:0] data,
    input        direction,
    input  [1:0] shift,
    output [3:0] result
);

assign result = direction ? (data >> shift) : (data << shift);

endmodule