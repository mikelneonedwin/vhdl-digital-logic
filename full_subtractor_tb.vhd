library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_subtractor_tb is
end full_subtractor_tb;

architecture testbench of full_subtractor_tb is

    --- register components
    component full_adder 
        port (
            x,y,z: in std_logic;
            d,b: out std_logic
        );
    end component;

    -- declare signals
    signal x_tb, y_tb, z_tb: std_logic := '0';
    signal d_tb, b_tb : std_logic;

begin

    -- initialize uut
    uut: full_subtractor 
        port map (
            x => x_tb,
            y => y_tb,
            z => z_tb,
            d => d_tb,
            b => b_tb
        );

    -- run process

    process
    begin

        wait for 100 ms;

        -- Test case 1
        x_tb <= '0'; y_tb <= '1'; z_tb <= '0';
        wait for 100 ms;

        -- Test case 2
        x_tb <= '0'; y_tb <= '1'; z_tb <= '1';
        wait for 100 ms;

        -- Test case 3
        x_tb <= '1'; y_tb <= '0'; z_tb <= '0';
        wait for 100 ms;

        -- Test case 4
        x_tb <= '1'; y_tb <= '1'; z_tb <= '1';
        wait for 100 ms;

        wait;

    end process;

end architecture;