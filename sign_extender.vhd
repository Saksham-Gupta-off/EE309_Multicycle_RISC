library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sixsxtnder is
	
	port (xin : in std_logic_vector(5 downto 0);
		 zout: out std_logic_vector(15 downto 0));

end entity;


architecture extend of sixsxtnder is
begin
zout(5 downto 0) <= xin;
f : for i in 6 to 15 generate
	zout(i) <= xin(5);
end generate ; -- f
end extend;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ninesxtnder is
	
	port (xin : in std_logic_vector(8 downto 0);
		 zout: out std_logic_vector(15 downto 0));

end entity;


architecture extend of ninesxtnder is
begin
zout(8 downto 0) <= xin;
f : for i in 9 to 15 generate
	zout(i) <= xin(8);
end generate ; -- f
end extend;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity msbxtnder is
	
	port (xin : in std_logic_vector(8 downto 0);
		 zout: out std_logic_vector(15 downto 0));

end entity;

architecture stretch of msbxtnder is
begin
	zout(7) <= xin(0);
	zout(8) <= xin(1);
	zout(9) <= xin(2);
	zout(10) <= xin(3);
	zout(11) <= xin(4);
	zout(12) <= xin(5);
	zout(13) <= xin(6);
	zout(14) <= xin(7);
	zout(15) <= xin(8);
	zout(6) <= '0';
	zout(5) <= '0';
	zout(4) <= '0';
	zout(2) <= '0';
	zout(3) <= '0';
	zout(1) <= '0';
	zout(0) <= '0';
end stretch;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity shifter is
	
	port (xin : in std_logic_vector(15 downto 0);
		 zout: out std_logic_vector(15 downto 0));

end entity;


architecture shifter1 of shifter is

begin
   zout(0) <= '0';
	zout(1) <= xin(0);
	zout(2) <= xin(1);
	zout(3) <= xin(2);
	zout(4) <= xin(3);
	zout(5) <= xin(4);
	zout(6) <= xin(5);
	zout(7) <= xin(6);
	zout(8) <= xin(7);
	zout(9) <= xin(8);
	zout(10) <= xin(9);
	zout(11) <= xin(10);
	zout(12) <= xin(11);
	zout(13) <= xin(12);
	zout(14) <= xin(13);
	zout(15) <= xin(14);
end shifter1;