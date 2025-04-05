library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

  use std.textio.all;

entity decoder24_tb is
end entity;

architecture sim of decoder24_tb is

  component decoder24
    port (

      EN : in  std_logic;
      A  : in  std_logic_vector(1 downto 0);
      B  : out std_logic_vector(3 downto 0)
    );
  end component;

  signal EN_tb : std_logic                    := '0';
  signal A_tb  : std_logic_vector(1 downto 0) := "00";
  signal B_tb  : std_logic_vector(3 downto 0) := "0000";

begin

  uut: decoder24
    port map (
      EN => EN_tb,
      A  => A_tb,
      B  => B_tb
    );

  process
  begin

    wait for 100 ms;

    -- Test case 1
    EN_tb <= '1';
    A_tb <= "00";
    wait for 100 ms;

    -- Test case 2
    EN_tb <= '1';
    A_tb <= "01";
    wait for 100 ms;

    -- Test case 3
    EN_tb <= '1';
    A_tb <= "10";
    wait for 100 ms;

    -- Test case 4
    EN_tb <= '1';
    A_tb <= "11";
    wait for 100 ms;

    wait;
  end process;

end architecture;
