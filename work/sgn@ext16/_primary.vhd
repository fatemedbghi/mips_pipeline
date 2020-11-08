library verilog;
use verilog.vl_types.all;
entity sgnExt16 is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : out    vl_logic_vector(31 downto 0)
    );
end sgnExt16;
