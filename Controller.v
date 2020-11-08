`timescale 1ns/1ns
module controller(input [5:0]Opcode, output reg RegDst, RegWrite, MemRead, MemWrite, MemToReg, ALUSrc);
 
  always @(Opcode) begin
   
    {RegDst, RegWrite, MemRead, MemWrite, MemToReg, ALUSrc} = 6'b0;
  
    if (Opcode == 6'b000000) begin
      RegWrite = 1'b1;
      RegDst = 1'b1;
      MemToReg = 1'b1;
    end
    
    if (Opcode == 6'b001000) begin
      RegWrite = 1'b1;
      ALUSrc = 1'b1;
      MemToReg = 1'b1;
    end
    
    if (Opcode == 6'b001100) begin
      RegWrite = 1'b1;
      ALUSrc = 1'b1;
      MemToReg = 1'b1;
    end
    
    if (Opcode == 6'b100011) begin
      RegWrite = 1'b1;
      ALUSrc = 1'b1;
      MemRead = 1'b1;  
    end
    
    if (Opcode == 6'b101011) begin
      ALUSrc = 1'b1;
      MemWrite = 1'b1;
    end
    
  end
 
endmodule 
