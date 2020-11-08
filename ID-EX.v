`timescale 1ns/1ns
module idex(input clk, rst,nop,memToReg,regWrite,memWrite,memRead,input[1:0] pcSrc,input aluSrc,
  input[2:0] aluOp,input RegDst,input[31:0]data1,data2,data3,input[4:0]rt,rd,rs, output reg[121:0] out);
  always@(posedge clk, posedge rst)begin
    if(rst) out <= 122'b0;
    else begin
      if (nop) out <= {memToReg,regWrite,memWrite,memRead,pcSrc,aluSrc,aluOp,RegDst,data1,data2,data3,rt,rd,rs};
      else out <= {11'b0,data1,data2,data3,rt,rd,rs};
    end
  end
endmodule