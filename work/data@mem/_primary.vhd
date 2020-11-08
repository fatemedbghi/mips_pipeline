library verilog;
use verilog.vl_types.all;
entity dataMem is
    port(
        address         : in     vl_logic_vector(31 downto 0);
        writedata       : in     vl_logic_vector(31 downto 0);
        memRead         : in     vl_logic;
        memWrite        : in     vl_logic;
        clk             : in     vl_logic;
        readdata        : out    vl_logic_vector(31 downto 0)
    );
end dataMem;
