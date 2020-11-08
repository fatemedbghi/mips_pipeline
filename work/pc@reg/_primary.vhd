library verilog;
use verilog.vl_types.all;
entity pcReg is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pcwrite         : in     vl_logic;
        pc              : in     vl_logic_vector(31 downto 0);
        instadd         : out    vl_logic_vector(31 downto 0)
    );
end pcReg;
