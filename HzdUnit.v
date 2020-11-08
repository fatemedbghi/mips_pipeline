module hazarder(input iemr, input[4:0] ierd, rs, rt, output reg nop, ifidw, pcw);
  always@(iemr, ierd, rs, rt)begin
    {pcw, ifidw, nop} = 3'b111;
    if((iemr == 1) && ((ierd == rs) || (ierd == rt)))
      {pcw, ifidw, nop} = 3'b000;
  end
endmodule