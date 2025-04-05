library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity decoder24 is
  port (
    EN : in  std_logic;
    A  : in  std_logic_vector(1 downto 0);
    B  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of decoder24 is

begin
  process (EN, A)
  begin
    if (EN = '1') then
      case A is
        when "00" => B <= "0001";
        when "01" => B <= "0010";
        when "10" => B <= "0100";
        when "11" => B <= "1000";
        when others => B <= "0000";
      end case;
    else
      B <= "1111";
    end if;
  end process;

end architecture;
