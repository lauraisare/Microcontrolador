library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_test is
	port	(clock   : in std_logic;
			 address : in std_logic_vector(7 downto 0);
			 data_in : in std_logic_vector(7 downto 0);
			 reset   : in std_logic;
			 writen  : in std_logic;
			 port_in_00: in std_logic_vector(7 downto 0);
			 port_in_01: in std_logic_vector(7 downto 0);
			 port_out_00: out std_logic_vector(7 downto 0);
			 port_out_01: out std_logic_vector(7 downto 0);
			 display_data1: out std_logic_vector(6 downto 0);
			 display_data2: out std_logic_vector(6 downto 0);
			 display_address1: out std_logic_vector(6 downto 0);
			 display_address2: out std_logic_vector(6 downto 0));
end memory_test;

architecture memory_test_arch of memory_test is


component memory
	port	(clock   : in std_logic;
			 address : in std_logic_vector(7 downto 0);
			 data_in : in std_logic_vector(7 downto 0);
			 writen      : in std_logic;
			 reset   : in std_logic;
			 port_in_00: in std_logic_vector(7 downto 0);
			 port_in_01: in std_logic_vector(7 downto 0);
			 data_out : out std_logic_vector(7 downto 0);
			 port_out_00: out std_logic_vector(7 downto 0);
			 port_out_01: out std_logic_vector(7 downto 0));
end component;

component decoBCD 
	port
	(
		IA	: in std_logic_vector(3 downto 0);
		F:out std_logic_vector(6 downto 0));

end component;

	signal dataout1: std_logic_vector(7 downto 4);
	signal dataout2: std_logic_vector(3 downto 0);
	--signal address1: std_logic_vector(7 downto 4);
	--signal address2: std_logic_vector(3 downto 0);
	signal s_data_out: std_logic_vector(7 downto 0); 
	--signal s_address: std_logic_vector(7 downto 0);
	

begin

	A0: memory port map (clock => clock, address => address, data_in => data_in, writen => writen, reset => reset, port_in_00 => port_in_00,
								port_in_01 => port_in_01, data_out => s_data_out, port_out_00 => port_out_00, port_out_01 => port_out_01);
								
		dataout1 <= s_data_out(7 downto 4);
		dataout2 <= s_data_out(3 downto 0);
		--address1 <= address(7 downto 4);
		--address2 <= address(3 downto 0);
		
								
	 A1: decoBCD port map (IA => dataout1, F => display_data1);
    A2: decoBCD port map (IA => dataout2, F => display_data2);
    A3: decoBCD port map (IA => address(7 downto 4), F => display_address1);
    A4: decoBCD port map (IA => address(3 downto 0), F => display_address2);

	
		
end memory_test_arch;