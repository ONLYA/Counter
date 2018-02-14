--A simple demo on VHDL Structure
library ieee;
use ieee.std_logic_1664.all;

entity hello is
port (a : in std_logic;
	b:out std_logic);
end hello;

architecture behave of hello is
begin
b<=a;
end behave;

