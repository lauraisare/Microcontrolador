library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
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
end memory;

architecture memory_arch of memory is

component output_ports
	port	(clock   : in std_logic;
			 address : in std_logic_vector(7 downto 0);
			 data_in : in std_logic_vector(7 downto 0);
			 writen      : in std_logic;
			 reset   : in std_logic;
			 port_out_00: out std_logic_vector(7 downto 0);
			 port_out_01: out std_logic_vector(7 downto 0));
end component;


component rw_96x8_sync
	port	(clock   : in std_logic;
			 address : in std_logic_vector(7 downto 0);
			 data_in : in std_logic_vector(7 downto 0);
			 writen      : in std_logic;
			 data_out: out std_logic_vector(7 downto 0));
end component;

component rom_128x8_sync 
	port 
	(clock: in std_logic;
	 address	: in std_logic_vector(7 downto 0);
	 data_out: out std_logic_vector(7 downto 0));

end component;

	signal rom_data_out: std_logic_vector(7 downto 0);
	signal rw_data_out: std_logic_vector(7 downto 0);
	
	
begin
	
	MUX1 : process (address, rom_data_out, rw_data_out,
						 port_in_00, port_in_01)

	begin
		if ( (to_integer(unsigned(address)) >= 0) and
				(to_integer(unsigned(address)) <= 127)) then
			data_out <= rom_data_out;
			
		elsif ( (to_integer(unsigned(address)) >= 128) and
					(to_integer(unsigned(address)) <= 223)) then
			data_out <= rw_data_out;
			
		elsif (address = x"F0") then data_out <= port_in_00;
		elsif (address = x"F1") then data_out <= port_in_01;
		
		else data_out <= x"00";
		
		end if;
	end process;
	
	
	A0: output_ports port map (clock => clock, address => address, data_in => data_in, writen => writen, reset => reset, port_out_00 => port_out_00, 
									  port_out_01 => port_out_01);
									  
	A1: rw_96x8_sync port map (clock => clock, address => address, data_in => data_in, writen => writen, data_out => rw_data_out);
	A2: rom_128x8_sync port map (clock => clock, address => address, data_out => rom_data_out);
			
		
end memory_arch;