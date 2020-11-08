`timescale 1ns/1ns
module DataPath(input clk,rst,pcwrite,ifidwrite,regwrite,regdst,alusrc,memwrite,memread,memtoreg,nop, ifflush,
  input[1:0]pcsrc,fw1,fw2,input[2:0]aluop,
  output wire[63:0] ifId, output wire[121:0] idEx, output wire[72:0] exMem, output wire[70:0] memWb,output wire equal);
  
  wire[31:0] pc,instadd,inst,newPC,sgn1out,shlout,beqwire,sgn2out,sh2out,writeData,regData1,regData2,
  aluresult,f1out,f2out,alumuxout,readdata;
  wire[4:0] regdstout;
  
  pcReg pcreg(clk, rst, pcwrite, pc, instadd);
  instMem instmem(instadd, inst);
  pcAdder pcadder(instadd, newPC);
  ifid IFID(clk, rst,ifidwrite,ifflush,newPC,inst,ifId);
  sgnExt16 sgnex1(ifId[15:0],sgn1out);
  shl2 shl(sgn1out,shlout);
  Adder adder(ifId[63:32],shlout,beqwire);
  sgnExt26 sgnex2(ifId[25:0],sgn2out);
  shl2 sh2(sgn2out,sh2out);
  ThreeBitMux pcmux(pcsrc,newPC,beqwire,sh2out,pc);
  regFile regfile(clk,memWb[69],ifId[25:21],ifId[20:16],memWb[4:0],writeData,regData1,regData2,equal);
  idex IDEX(clk,rst,nop,memtoreg,regwrite,memwrite,memread,pcsrc,alusrc,aluop,regdst,regData1,regData2,sgn1out,ifId[20:16],ifId[15:11],ifId[25:21],idEx);
  ThreeBitMux FW1(fw1,idEx[110:79],writeData,exMem[68:37],f1out);
  ThreeBitMux FW2(fw2,idEx[78:47],writeData,exMem[68:37],f2out);
  AluMux alumux(idEx[115],f2out,idEx[46:15],alumuxout);
  alu ALU(f1out,alumuxout,idEx[114:112],aluresult);
  RegDstMUX regdstmux(idEx[111],idEx[14:10],idEx[9:5],regdstout);
  exmem EXMEM(clk,rst,idEx[121],idEx[120],idEx[119],idEx[118],aluresult,f2out,regdstout,exMem);
  dataMem datamem(exMem[68:37],exMem[36:5],exMem[69],exMem[70],clk,readdata);
  memwb MEMWB(clk,rst,exMem[72],exMem[71],readdata,exMem[68:37],exMem[4:0],memWb);
  MemToRegMux memtoregmux(memWb[70],memWb[36:5],memWb[68:37],writeData);
  
endmodule