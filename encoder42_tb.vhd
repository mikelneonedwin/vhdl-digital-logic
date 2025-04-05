library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

  use std.textio.all;

entity encoder42_tb is
end entity;

architecture sim of encoder42_tb is

  component encoder42
    port (
      EN : in  std_logic;
      A  : in  std_logic_vector(3 downto 0);
      B  : out std_logic_vector(1 downto 0)
    );
  end component;

  signal EN_tb : std_logic := '1';
  signal A_tb : std_logic_vector(3 downto 0);
  signal B_tb : std_logic_vector(1 downto 0);

begin

    uut: encoder42 port map(
        EN => EN_tb,
        A => A_tb,
        B => B_tb
    );

    process
    begin

        wait for 100 ms;

        -- Test case 1
        A_tb <= "0001";
        wait for 100 ms;

        -- Test case 2
        A_tb <= "0010";
        wait for 100 ms;

        -- Test case 3
        A_tb <= "0100";
        wait for 100 ms;

        -- Test case 4
        A_tb <= "1000";
        wait for 100 ms;

        wait;

    end process;


end architecture;
