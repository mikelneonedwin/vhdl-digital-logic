library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity dff is
  port (
    D, CLK, RST : in  std_logic;
    Q           : out std_logic
  );
end entity;

architecture rtl of dff is

begin
  process (D, CLK, RST)
  begin
    if (RST = '1') then
      Q <= '0';
      -- elsif (rising_edge(CLK)) then
      -- TODO check how to simulate this properly
    else
      Q <= D;
    end if;
  end process;

end architecture;
