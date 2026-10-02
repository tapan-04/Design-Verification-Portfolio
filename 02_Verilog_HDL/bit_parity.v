module bit_parity;

    reg [3:0] data;
    reg parity;

    initial begin
        data = 4'b1011;

        parity = ^data;

        $display("Data   = %b", data);
        $display("Parity = %b", parity);
    end

endmodule