library verilog;
use verilog.vl_types.all;
entity hazarder is
    port(
        iemr            : in     vl_logic;
        ierd            : in     vl_logic_vector(4 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        nop             : out    vl_logic;
        ifidw           : out    vl_logic;
        pcw             : out    vl_logic
    );
end hazarder;
