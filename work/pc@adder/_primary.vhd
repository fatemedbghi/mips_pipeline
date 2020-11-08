library verilog;
use verilog.vl_types.all;
entity pcAdder is
    port(
        PC              : in     vl_logic_vector(31 downto 0);
        newPC           : out    vl_logic_vector(31 downto 0)
    );
end pcAdder;
