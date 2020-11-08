`timescale 1ns/1ns
module ifid(input clk, rst,IfIdWrite,ifflush, input[31:0] pc, instruction, output reg[63:0] out);
  always@(posedge clk, posedge rst)begin
    if(rst) out <= 64'b0;
    else begin
      if (ifflush) out <= 64'b0;
      else if (IfIdWrite) out <= {pc,instruction};
    end
  end
endmodule