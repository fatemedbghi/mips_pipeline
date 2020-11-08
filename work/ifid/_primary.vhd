library verilog;
use verilog.vl_types.all;
entity ifid is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        IfIdWrite       : in     vl_logic;
        ifflush         : in     vl_logic;
        pc              : in     vl_logic_vector(31 downto 0);
        instruction     : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end ifid;
