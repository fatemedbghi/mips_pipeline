library verilog;
use verilog.vl_types.all;
entity idex is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        nop             : in     vl_logic;
        memToReg        : in     vl_logic;
        regWrite        : in     vl_logic;
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        pcSrc           : in     vl_logic_vector(1 downto 0);
        aluSrc          : in     vl_logic;
        aluOp           : in     vl_logic_vector(2 downto 0);
        RegDst          : in     vl_logic;
        data1           : in     vl_logic_vector(31 downto 0);
        data2           : in     vl_logic_vector(31 downto 0);
        data3           : in     vl_logic_vector(31 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(121 downto 0)
    );
end idex;
