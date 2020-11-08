library verilog;
use verilog.vl_types.all;
entity forwarder is
    port(
        emrw            : in     vl_logic;
        mwrw            : in     vl_logic;
        emrd            : in     vl_logic_vector(4 downto 0);
        iers            : in     vl_logic_vector(4 downto 0);
        iert            : in     vl_logic_vector(4 downto 0);
        mwrd            : in     vl_logic_vector(4 downto 0);
        fwA             : out    vl_logic_vector(1 downto 0);
        fwB             : out    vl_logic_vector(1 downto 0)
    );
end forwarder;
