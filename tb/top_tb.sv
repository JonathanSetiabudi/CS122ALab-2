`include "src/top.sv"
`timescale 1ns/1ps

module top_tb;
logic clk;
logic [3:0] bcd;
logic [6:0] seg7;

top uut
(
    // .clk(clk)
    /** add additional signals */
    .bcd(bcd),
    .seg7(seg7)
);

localparam CLK_PERIOD = 100;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("build/top.vcd");
    $dumpvars(0, top_tb);
end

initial begin
    clk<=1'b1;
    #(CLK_PERIOD*3);
    // testbench logic goes below
        bcd <= 4'b0000; #(CLK_PERIOD);
        bcd <= 4'b0001; #(CLK_PERIOD);
        bcd <= 4'b0010; #(CLK_PERIOD);
        bcd <= 4'b0011; #(CLK_PERIOD);
        bcd <= 4'b0100; #(CLK_PERIOD);
        bcd <= 4'b0101; #(CLK_PERIOD);
        bcd <= 4'b0110; #(CLK_PERIOD);
        bcd <= 4'b0111; #(CLK_PERIOD);
        bcd <= 4'b1000; #(CLK_PERIOD);
        bcd <= 4'b1001; #(CLK_PERIOD);
        bcd <= 4'b1010; #(CLK_PERIOD);
        bcd <= 4'b1011; #(CLK_PERIOD);
        bcd <= 4'b1100; #(CLK_PERIOD);
        bcd <= 4'b1101; #(CLK_PERIOD);
        bcd <= 4'b1110; #(CLK_PERIOD);
        bcd <= 4'b1111; #(CLK_PERIOD);
    $finish;
end

endmodule
`default_nettype wire