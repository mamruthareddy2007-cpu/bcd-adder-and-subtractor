

```verilog
module bcd_adder_subtractor (
    input  [3:0] A,
    input  [3:0] B,
    input        mode,
    output reg [3:0] result,
    output reg       carry,
    output reg       borrow
);

reg [4:0] temp;

always @(*) begin

    result = 4'b0000;
    carry  = 1'b0;
    borrow = 1'b0;
    temp   = 5'b00000;

    if (mode == 1'b0) begin
        // BCD Addition
        temp = A + B;

        if (temp > 9) begin
            temp = temp + 5'd6;
            carry = 1'b1;
        end

        result = temp[3:0];
    end

    else begin
        // BCD Subtraction
        if (A >= B) begin
            result = A - B;
            borrow = 1'b0;
        end
        else begin
            result = (A + 4'd10) - B;
            borrow = 1'b1;
        end
    end

end

endmodule
