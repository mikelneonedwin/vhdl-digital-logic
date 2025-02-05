library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_subtractor_tb is
end half_subtractor_tb;

architecture testbench of half_subtractor_tb is

    -- register components

    component half_subtractor
        port (
            x, y : in std_logic;
            d, b : out std_logic
        );
    end component;

    -- declare signals

    signal x_tb, y_tb : std_logic := '0';
    signal d_tb, b_tb : std_logic;

begin

    uut: half_subtractor 
        port map (
            x => x_tb,
            y => y_tb,
            d => d_tb,
            b => b_tb
        );

    -- run process

    process
    begin

        wait for 100 ms;

        -- Test case 1
        x_tb <= '0'; y_tb <= '0';
        wait for 100 ms;

        -- Test case 2
        x_tb <= '0'; y_tb <= '1';
        wait for 100 ms;
        

        -- Test case 3
        x_tb <= '1'; y_tb <= '0';
        wait for 100 ms;

        -- Test case 4
        x_tb <= '1'; y_tb <= '1';
        wait for 100 ms;

        wait;

    end process;

end architecture;