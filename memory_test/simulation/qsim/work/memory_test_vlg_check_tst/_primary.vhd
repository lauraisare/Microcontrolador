library verilog;
use verilog.vl_types.all;
entity memory_test_vlg_check_tst is
    port(
        display_address1: in     vl_logic_vector(6 downto 0);
        display_address2: in     vl_logic_vector(6 downto 0);
        display_data1   : in     vl_logic_vector(6 downto 0);
        display_data2   : in     vl_logic_vector(6 downto 0);
        port_out_00     : in     vl_logic_vector(7 downto 0);
        port_out_01     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end memory_test_vlg_check_tst;
