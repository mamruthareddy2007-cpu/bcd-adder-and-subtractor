# BCD Adder and Subtractor

A Verilog HDL project that performs BCD addition and subtraction of two
single-digit BCD numbers.

## Operation

- `mode = 0` → BCD Addition
- `mode = 1` → BCD Subtraction

## Files

- `bcd_adder_subtractor.v` - Main Verilog code
- `testbench.v` - Testbench
- `output.txt` - Simulation output
- `README.md` - Project documentation

## Inputs

- `A[3:0]` - First BCD number
- `B[3:0]` - Second BCD number
- `mode` - Operation select

## Outputs

- `result[3:0]` - BCD result
- `carry` - Carry during addition
- `borrow` - Borrow during subtraction

## Example

Addition:

7 + 5 = 12

Subtraction:

8 - 3 = 5

## Simulation

Using Icarus Verilog:

```bash
iverilog -o simulation bcd_adder_subtractor.v testbench.v
vvp simulation
