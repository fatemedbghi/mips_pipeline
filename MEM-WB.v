`timescale 1ns/1ns
module memwb(input clk, rst,input memToReg,regWrite,
 input[31:0]readData,aluResult,input[4:0]Regdst, output reg[70:0] out);
  always@(posedge clk, posedge rst)begin
    if(rst) out <= 71'b0;
    else out <= {memToReg,regWrite,readData,aluResult,Regdst};
  end
endmodule