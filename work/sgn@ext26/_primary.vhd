library verilog;
use verilog.vl_types.all;
entity sgnExt26 is
    port(
        A               : in     vl_logic_vector(25 downto 0);
        B               : out    vl_logic_vector(31 downto 0)
    );
end sgnExt26;
