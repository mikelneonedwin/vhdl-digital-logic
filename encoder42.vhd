library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity encoder42 is
  port (
    EN : in  std_logic;
    A  : in  std_logic_vector(3 downto 0);
    B  : out std_logic_vector(1 downto 0)
  );
end entity;

architecture rtl of encoder42 is

begin
  process (EN, A)
  begin
    if (EN = '1') then
      case A is
        when "0001" => B <= "00";
        when "0010" => B <= "01";
        when "0100" => B <= "10";
        when "1000" => B <= "11";
        when others => B <= "00";
      end case;
    else
      B <= "11";
    end if;
  end process;

end architecture;
