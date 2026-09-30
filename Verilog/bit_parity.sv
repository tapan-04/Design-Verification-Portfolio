module bit_parity;

    bit [3:0] data;
    bit parity;

    initial begin
        data = 4'b1011;

        parity = ^data;

        $display("Data   = %b", data);
        $display("Parity = %b", parity);
    end

endmodule