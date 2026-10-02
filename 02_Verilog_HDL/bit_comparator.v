module bit_comparator;

    reg [3:0] a;
    reg [3:0] b;

    initial begin
        a = 4'b1010;
        b = 4'b1010;

        if (a == b)
            $display("A = B");
        else if (a > b)
            $display("A > B");
        else
            $display("A < B");

        a = 4'b1100;
        b = 4'b1001;

        if (a == b)
            $display("A = B");
        else if (a > b)
            $display("A > B");
        else
            $display("A < B");
    end

endmodule