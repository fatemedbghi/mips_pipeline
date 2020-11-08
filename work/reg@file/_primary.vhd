library verilog;
use verilog.vl_types.all;
entity regFile is
    port(
        clk             : in     vl_logic;
        regWrite        : in     vl_logic;
        readReg1        : in     vl_logic_vector(4 downto 0);
        readReg2        : in     vl_logic_vector(4 downto 0);
        writeReg        : in     vl_logic_vector(4 downto 0);
        writeData       : in     vl_logic_vector(31 downto 0);
        regData1        : out    vl_logic_vector(31 downto 0);
        regData2        : out    vl_logic_vector(31 downto 0);
        equal           : out    vl_logic
    );
end regFile;
