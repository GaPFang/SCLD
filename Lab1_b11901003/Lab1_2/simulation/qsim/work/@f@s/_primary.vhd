library verilog;
use verilog.vl_types.all;
entity FS is
    port(
        D               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        BOi             : in     vl_logic;
        BOo             : out    vl_logic
    );
end FS;
