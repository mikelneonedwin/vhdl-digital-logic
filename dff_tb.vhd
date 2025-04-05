library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

  use std.textio.all;

entity dff_tb is
end entity;

architecture sim of dff_tb is

  component dff
    port (
      D, CLK, RST : in  std_logic;
      Q           : out std_logic
    );
  end component;

  signal D_tb, CLK_tb, RST_tb, Q_tb : std_logic := '0';

begin

  uut: dff
    port map (
      D   => D_tb,
      CLK => CLK_tb,
      RST => RST_tb,
      Q   => Q_tb
    );

  process
  begin

    wait for 100 ms;

    -- Test case 1
    D_tb <= '0';
    wait for 100 ms;

    -- Test case 2 
    D_tb <= '0';
    wait for 100 ms;

    -- Test case 3 
    D_tb <= '1';
    wait for 100 ms;

    -- Test case 4
    D_tb <= '1';
    wait for 100 ms;

    -- Test case 5
    D_tb <= '0';
    wait for 100 ms;

    wait;
  end process;

end architecture;
