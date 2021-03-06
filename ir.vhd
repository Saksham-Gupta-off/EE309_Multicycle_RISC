library ieee;
use ieee.std_logic_1164.all;

entity IRreg is
  port (enable:in std_logic;
  A: in std_logic_vector(15 downto 0);
  O: out std_logic_vector(15 downto 0));
end entity ; -- IRreg
architecture arch of IRreg is
begin
pro : process( enable,A )
begin
  if(enable='1') then  --enable=1 only for instructions
    O<=A; 
  end if;
end process ; -- pro
end architecture ; -- arch

