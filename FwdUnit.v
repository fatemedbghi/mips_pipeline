module forwarder(input emrw, mwrw, input[4:0] emrd, iers, iert, mwrd, output reg[1:0] fwA, fwB);
  always@(posedge emrd, iers, iert, mwrd, emrw, mwrw) begin
    fwA = 2'b0;
    fwB = 2'b0;
    if((emrw == 1) && (emrd == iers) && (emrd != 5'b0))
      fwA = 2'b10;
    else if((mwrw == 1) && (mwrd == iers) && (mwrd != 5'b0) && (fwA != 2'b10))
      fwA = 2'b01;
    if((emrw == 1) && (emrd == iert) && (emrd != 5'b0))
      fwB = 2'b10;
    else if((mwrw == 1) && (mwrd == iert) && (mwrd != 5'b0) && (fwB != 2'b10))
      fwB = 2'b01;
  end
endmodule
