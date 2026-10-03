module alu_4bit (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire [2:0] sel,
    output reg  [3:0] result,
    output reg        carry
);

always @(*) begin
    carry = 1'b0;

    case (sel)
        3'b000: {carry, result} = a + b; // Addition
        3'b001: {carry, result} = a - b; // Subtraction
        3'b010: result = a & b;          // AND
        3'b011: result = a | b;          // OR
        3'b100: result = a ^ b;          // XOR
        3'b101: result = ~a;             // NOT
        3'b110: result = a << 1;         // Left shift
        3'b111: result = a >> 1;         // Right shift
        default: result = 4'b0000;
    endcase
end

endmodule