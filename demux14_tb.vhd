library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

  use std.textio.all;

entity demux14_tb is
end entity;

architecture sim of demux14_tb is

  component demux14
    port (
      I : in  std_logic;
      S : in  std_logic_vector(1 downto 0);
      Y : out std_logic_vector(3 downto 0)
    );
  end component;

  signal I_tb : std_logic                    := '0';
  signal S_tb : std_logic_vector(1 downto 0) := "00";
  signal Y_tb : std_logic_vector(3 downto 0) := "0000";

begin

  uut: demux14
    port map (
      I => I_tb,
      S => S_tb,
      Y => Y_tb
    );

  process
  begin

    wait for 100 ms;

    -- Test case 1
    I_tb <= '1';
    S_tb <= "00";
    wait for 100 ms;

    -- Test case 2
    I_tb <= '1';
    S_tb <= "01";
    wait for 100 ms;

    -- Test case 3
    I_tb <= '1';
    S_tb <= "10";
    wait for 100 ms;

    -- Test case 4
    I_tb <= '1';
    S_tb <= "11";
    wait for 100 ms;

    wait;

  end process;

end architecture;
