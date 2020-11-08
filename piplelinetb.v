module TB();
  reg clk = 0;
  reg rst;
  PipeLine pipe(clk,rst);
  always #50 clk = ~clk;
  initial begin
    rst = 1;
    #100 
    rst = 0;
    #200000;
    $stop;
  end
endmodule  