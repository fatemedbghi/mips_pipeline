library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pcwrite         : in     vl_logic;
        ifidwrite       : in     vl_logic;
        regwrite        : in     vl_logic;
        regdst          : in     vl_logic;
        alusrc          : in     vl_logic;
        memwrite        : in     vl_logic;
        memread         : in     vl_logic;
        memtoreg        : in     vl_logic;
        nop             : in     vl_logic;
        ifflush         : in     vl_logic;
        pcsrc           : in     vl_logic_vector(1 downto 0);
        fw1             : in     vl_logic_vector(1 downto 0);
        fw2             : in     vl_logic_vector(1 downto 0);
        aluop           : in     vl_logic_vector(2 downto 0);
        ifId            : out    vl_logic_vector(63 downto 0);
        idEx            : out    vl_logic_vector(121 downto 0);
        exMem           : out    vl_logic_vector(72 downto 0);
        memWb           : out    vl_logic_vector(70 downto 0);
        equal           : out    vl_logic
    );
end DataPath;
