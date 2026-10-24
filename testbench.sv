
module testbench;

    reg clk;
    reg reset;
    wire [3:0] count;

    sync_counter dut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Generate a clock with a 10 ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        $monitor("Time=%0t | reset=%b | count=%d | binary=%b",
                 $time, reset, count, count);

        reset = 1;
        #10;
        reset = 0;

        #180;
        $finish;
    end

endmodule
