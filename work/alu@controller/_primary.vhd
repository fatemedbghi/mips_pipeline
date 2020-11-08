library verilog;
use verilog.vl_types.all;
entity aluController is
    port(
        Opcode          : in     vl_logic_vector(5 downto 0);
        Func            : in     vl_logic_vector(5 downto 0);
        Zero            : in     vl_logic;
        ALUOp           : out    vl_logic_vector(2 downto 0);
        PCSrc           : out    vl_logic_vector(1 downto 0);
        ifflush         : out    vl_logic
    );
end aluController;
