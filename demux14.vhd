library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity demux14 is
  port (
    I : in  std_logic;
    S : in  std_logic_vector(1 downto 0);
    Y : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of demux14 is

begin
  process (I, s)
  begin
    if (S <= "00") then
      Y(3) <= '0';
      Y(2) <= '0';
      Y(1) <= '0';
      Y(0) <= I;
    elsif (S <= "01") then
      Y(3) <= '0';
      Y(2) <= '0';
      Y(1) <= I;
      Y(0) <= '0';
    elsif (S <= "10") then
      Y(3) <= '0';
      Y(2) <= I;
      Y(1) <= '0';
      Y(0) <= '0';
    else
      Y(3) <= I;
      Y(2) <= '0';
      Y(1) <= '0';
      Y(0) <= '0';
    end if;
  end process;

end architecture;
