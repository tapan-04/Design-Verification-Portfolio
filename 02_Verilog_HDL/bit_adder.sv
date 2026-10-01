module bit_adder;

    bit [3:0] a;
    bit [3:0] b;
    bit [4:0] result;

    initial begin
        a = 4'b0101;
        b = 4'b0011;

        result = a + b;

        $display("A      = %b", a);
        $display("B      = %b", b);
        $display("Result = %b", result);
    end

endmodule