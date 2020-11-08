`timescale 1ns/1ns
module RegDstMUX(input RegDst, input [4:0]A, input [4:0]B, output wire [4:0]out);
  assign out = RegDst?B:A;
endmodule

module MemToRegMux(input sel, input [31:0]A, input [31:0]B, output wire [31:0]out);
  assign out = sel?A:B;
endmodule

module AluMux(input sel, input [31:0]A, input [31:0]B, output wire [31:0]out);
  assign out = sel?B:A;
endmodule

module ThreeBitMux(input [1:0]sel, [31:0]A, [31:0]B, [31:0]C, output wire [31:0]out);
  assign out = sel[1]?(sel[0]?32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:C):(sel[0]?B:A);
endmodule