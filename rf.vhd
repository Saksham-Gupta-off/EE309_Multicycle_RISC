library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;


entity regfile is
  port (clock,enable: in std_logic;
	A1,A2,A3: in std_logic_vector(2 downto 0);
	WD3,PC_in: in std_logic_vector(15 downto 0);
	RD1,RD2,PC_out: out std_logic_vector(15 downto 0));
end entity ; -- regfile

architecture arch of regfile is

type regfiletype is array (7 downto 0) of std_logic_vector(15 downto 0);
signal reggfile: regfiletype;

begin
reggfile(7)<=PC_in;

a : process( clock,enable )
begin
if(falling_edge(clock) and enable='1') then --enable and falling edge for writing on to the register
	reggfile(conv_integer(A3))<=WD3;
	end if;
end process ; -- a

RD1<=reggfile(conv_integer(A1));
RD2<=reggfile(conv_integer(A2));

--if(rising_edge(clock)) then 
   PC_out<= reggfile(7);
  --end if;
	
end architecture ; -- arch
