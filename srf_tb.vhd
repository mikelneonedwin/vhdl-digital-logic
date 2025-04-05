library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

  use std.textio.all;

entity srf_tb is
end entity;

architecture sim of srf_tb is

  component srf
    port (
      s, r, clk, rst : in  std_logic;
      q, qb          : out std_logic
    );
  end component;

  signal s_tb, r_tb  : std_logic := '0';
  signal clk_tb      : std_logic := '1';
  signal rst_tb      : std_logic := '0';
  signal q_tb, qb_tb : std_logic := '0';

begin

  uut: srf
    port map (
      s   => s_tb,
      r   => r_tb,
      clk => clk_tb,
      rst => rst_tb,
      q   => q_tb,
      qb  => qb_tb
    );

  process
  begin

    wait for 100 ms;

    -- Test case 1
    s_tb <= '0';
    r_tb <= '0';
    wait for 100 ms;

    -- Test case 2
    s_tb <= '0';
    r_tb <= '1';
    wait for 100 ms;

    -- Test case 3
    s_tb <= '0';
    r_tb <= '1';
    wait for 100 ms;

    -- Test case 4
    s_tb <= '1';
    r_tb <= '0';
    wait for 100 ms;

    -- Test case 5
    s_tb <= '1';
    r_tb <= '0';
    wait for 100 ms;

    -- Test case 6
    s_tb <= '1';
    r_tb <= '1';
    wait for 100 ms;

    wait;

  end process;

end architecture;
