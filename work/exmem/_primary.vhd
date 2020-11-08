library verilog;
use verilog.vl_types.all;
entity exmem is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        memToReg        : in     vl_logic;
        regWrite        : in     vl_logic;
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        aluResult       : in     vl_logic_vector(31 downto 0);
        data2           : in     vl_logic_vector(31 downto 0);
        Regdst          : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(72 downto 0)
    );
end exmem;
