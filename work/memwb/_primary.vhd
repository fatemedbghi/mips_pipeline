library verilog;
use verilog.vl_types.all;
entity memwb is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        memToReg        : in     vl_logic;
        regWrite        : in     vl_logic;
        readData        : in     vl_logic_vector(31 downto 0);
        aluResult       : in     vl_logic_vector(31 downto 0);
        Regdst          : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(70 downto 0)
    );
end memwb;
