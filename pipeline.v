`timescale 1ns/1ns
module PipeLine(input clk,rst);
  
  wire pcwrite,ifidwrite,regwrite,regdst,alusrc,memwrite,memread,memtoreg,equal,nop,ifflush;
  wire [1:0]pcsrc,fw1,fw2;
  wire [2:0]aluop;
  wire[63:0] ifId;
  wire[121:0] idEx;
  wire[72:0] exMem;
  wire[70:0] memWb;
  
  DataPath dp(clk,rst,pcwrite,ifidwrite,regwrite,regdst,alusrc,memwrite,memread,memtoreg,nop,ifflush,pcsrc,fw1,fw2,aluop,ifId,idEx,exMem,memWb,equal);
  controller c(ifId[31:26],regdst,regwrite,memread,memwrite,memtoreg,alusrc);
  aluController ac(ifId[31:26],ifId[5:0], equal,aluop,pcsrc,ifflush);

  forwarder fu(exMem[71],memWb[69],exMem[4:0],idEx[4:0],idEx[14:10],memWb[4:0],fw1,fw2);

  hazarder hu(idEx[118],idEx[14:10],ifId[25:21],ifId[20:16],nop,ifidwrite,pcwrite);
    
endmodule