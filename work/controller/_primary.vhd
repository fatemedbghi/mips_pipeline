library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        Opcode          : in     vl_logic_vector(5 downto 0);
        RegDst          : out    vl_logic;
        RegWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemToReg        : out    vl_logic;
        ALUSrc          : out    vl_logic
    );
end controller;
