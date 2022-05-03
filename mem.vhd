library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;


entity memory is
  port (clock,enable: in std_logic;
	adrs,data_ld: in std_logic_vector(15 downto 0);
	instr_data: out std_logic_vector(15 downto 0));
end entity ; 

architecture arch of memory is

type memorytype is array (32767 downto 0) of std_logic_vector(15 downto 0);
signal mem: memorytype;

begin
b : process( clock,enable )
begin
if(rising_edge(clock) and enable='1') then --enable and rising edge for writing on to the register
	mem(conv_integer(adrs))<=data_ld;
	end if;
end process ; -- a

instr_data<=mem(conv_integer(adrs));

end architecture ; -- arch
