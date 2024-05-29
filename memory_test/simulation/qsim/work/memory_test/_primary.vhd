library verilog;
use verilog.vl_types.all;
entity memory_test is
    port(
        clock           : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        writen          : in     vl_logic;
        port_in_00      : in     vl_logic_vector(7 downto 0);
        port_in_01      : in     vl_logic_vector(7 downto 0);
        port_out_00     : out    vl_logic_vector(7 downto 0);
        port_out_01     : out    vl_logic_vector(7 downto 0);
        display_data1   : out    vl_logic_vector(6 downto 0);
        display_data2   : out    vl_logic_vector(6 downto 0);
        display_address1: out    vl_logic_vector(6 downto 0);
        display_address2: out    vl_logic_vector(6 downto 0)
    );
end memory_test;
