library verilog;
use verilog.vl_types.all;
entity ThreeBitMux is
    port(
        sel             : in     vl_logic_vector(1 downto 0);
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        C               : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end ThreeBitMux;
