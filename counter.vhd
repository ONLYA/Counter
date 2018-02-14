library ieee;
use ieee.std_logic_1164.all;

entity counter is
port (clk : in std_logic;
      oupt: out std_logic);
end counter;

architecture behave of counter is
variable cnt : natural := 0;
signal temp : std_logic := 0;  --initialize the output
begin
process(clk)
begin
if rising_edge(clk) then
  cnt := cnt + 1;
  if cnt = 100_000 then
    cnt := 0;
    temp <= not temp;
  end if;
  oupt <= temp;
end if;
end process;
end behave;
