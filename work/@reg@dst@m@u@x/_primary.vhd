library verilog;
use verilog.vl_types.all;
entity RegDstMUX is
    port(
        RegDst          : in     vl_logic;
        A               : in     vl_logic_vector(4 downto 0);
        B               : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(4 downto 0)
    );
end RegDstMUX;
