module bit_shift_register;

    reg clk;
    reg reset;
    reg [3:0] data;

    initial begin
        clk = 0;
        reset = 1;
        data = 4'b1011;

        #5 reset = 0;

        repeat (4) begin
            #5 clk = ~clk;
            #5 clk = ~clk;

            if (!reset)
                data = {data[2:0], 1'b0};

            $display("Time=%0t  Data=%b", $time, data);
        end
    end

endmodule