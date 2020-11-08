`timescale 1ns/1ns
module Adder(input[31:0] A, B, output wire[31:0] C);
  assign C = A+B;
endmodule

module pcAdder(input[31:0]PC, output wire[31:0] newPC);
  assign newPC = PC + 32'b00000000000000000000000000000100;
endmodule