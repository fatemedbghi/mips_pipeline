`timescale 1ns/1ns
module exmem(input clk, rst,input memToReg,regWrite,memWrite,memRead,
  input[31:0]aluResult,data2,input[4:0]Regdst, output reg[72:0] out);
  always@(posedge clk, posedge rst)begin
    if(rst) out <= 73'b0;
    else out <= {memToReg,regWrite,memWrite,memRead,aluResult,data2,Regdst};
  end
endmodule