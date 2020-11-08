`timescale 1ns/1ns
module sgnExt26(input[25:0] A, output[31:0] B);
  assign B = {6'b0, A};
endmodule

module sgnExt16(input[15:0] A, output[31:0] B);
  assign B = A[15]? {16'b1111111111111111,A} : {16'b0,A};
endmodule
