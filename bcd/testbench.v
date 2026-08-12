`timescale 1ns/1ps

module testbench;

reg [3:0] A;
reg [3:0] B;
reg mode;

wire [3:0] result;
wire carry;
wire borrow;

bcd_adder_subtractor uut (
    .A(A),
    .B(B),
    .mode(mode),
    .result(result),
    .carry(carry),
    .borrow(borrow)
);

initial begin

    $display("---------------------------------------------");
    $display("       BCD ADDER AND SUBTRACTOR TEST");
    $display("---------------------------------------------");
    $display(" A   B   MODE   RESULT   CARRY   BORROW");
    $display("---------------------------------------------");

    // Addition
    mode = 0; A = 4; B = 3;
    #10;
    $display("%d   %d    ADD      %d       %b       %b",
             A, B, result, carry, borrow);

    mode = 0; A = 7; B = 5;
    #10;
    $display("%d   %d    ADD      %d       %b       %b",
             A, B, result, carry, borrow);

    mode = 0; A = 9; B = 8;
    #10;
    $display("%d   %d    ADD      %d       %b       %b",
             A, B, result, carry, borrow);

    // Subtraction
    mode = 1; A = 8; B = 3;
    #10;
    $display("%d   %d    SUB      %d       %b       %b",
             A, B, result, carry, borrow);

    mode = 1; A = 9; B = 4;
    #10;
    $display("%d   %d    SUB      %d       %b       %b",
             A, B, result, carry, borrow);

    mode = 1; A = 3; B = 7;
    #10;
    $display("%d   %d    SUB      %d       %b       %b",
             A, B, result, carry, borrow);

    mode = 1; A = 2; B = 9;
    #10;
    $display("%d   %d    SUB      %d       %b       %b",
             A, B, result, carry, borrow);

    $display("---------------------------------------------");

    $finish;

end

endmodule
