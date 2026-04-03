module top (
    /** Input Ports */
    input wire [3:0] bcd
    /** Output Ports */
    output logic [6:0] seg7
);

/** Logic */
wire a;
wire b;
wire c;
wire d;
wire e;
wire f;
wire g;

assign a = bcd == 4'b0 || bcd == 4'b0010 || bcd == 4'b0011 || bcd == 4'b0101 || bcd == 4'b0110 || bcd == 4'b0111 || bcd == 4'b1000 || bcd == 4'b1001 || bcd == 4'b1010 || bcd == 4'b1100 || bcd == 4'b1110 || bcd == 4'b1111;
assign b = bcd == 4'b0 || bcd == 4'b0001 || bcd == 4'b0010 || bcd == 4'b0011 || bcd == 4'b0100 || bcd == 4'b0111 || bcd == 4'b1000 || bcd == 4'b1001 || bcd == 4'b1010 || bcd == 4'b1101 || bcd == 4'b0011;
assign c = bcd == 4'b0 || bcd == 4'b0001 || bcd == 4'b0011 || bcd == 4'b0100 || bcd == 4'b0101 || bcd == 4'b0110 || bcd == 4'b0111 || bcd == 4'b1000 || bcd == 4'b1001 || bcd == 4'b1010 || bcd == 4'b1011 || bcd == 4'b1101;
assign d = bcd == 4'b0 || bcd == 4'b0010 || bcd == 4'b0011 || bcd == 4'b0101 || bcd == 4'b0110 || bcd == 4'b1000 || bcd == 4'b1001 || bcd == 4'b1011 || bcd == 4'b1100 || bcd == 4'b1101 || bcd == 4'b1110;
assign e = bcd == 4'b0 || bcd == 4'b0010 || bcd == 4'b0110 || bcd == 4'b1000 || bcd == 4'b1010 || bcd == 4'b1011 || bcd == 4'b1100 || bcd == 4'b1101 || bcd == 4'b1110 || bcd == 4'b1111;
assign f = bcd == 4'b0 || bcd == 4'b0100 || bcd == 4'b0101 || bcd == 4'b0110 || bcd == 4'b1000 || bcd == 4'b1001 || bcd == 4'b1010 || bcd == 4'b1011 || bcd == 4'b1100 || bcd == 4'b1110 || bcd == 4'b1111;
assign g = bcd == 4'b0010 || bcd == 4'b0011 || bcd == 4'b0100 || bcd == 4'b0101 || bcd == 4'b0110 || bcd == 4'b1000 || bcd == 4'b1001 || bcd == 4'b1010 || bcd == 4'b1011 || bcd == 4'b1101 || bcd == 4'b1110 || bcd == 4'b1111;

assign seg7[6] = g;
assign seg7[5] = f;
assign seg7[4] = e;
assign seg7[3] = d;
assign seg7[2] = c;
assign seg7[1] = b;
assign seg7[0] = a;

endmodule