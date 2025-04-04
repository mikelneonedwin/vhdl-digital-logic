library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;

entity seg7_tb is
end seg7_tb;

architecture sim of seg7_tb is

    component seg7
        port (
            bcd: in std_logic_vector(3 downto 0); -- BCD input
            seven_seg: out std_logic_vector(1 to 7) -- 7-segment output
        );
    end component;

    signal bcd_tb : std_logic_vector(3 downto 0) := "0000";
    signal seven_seg_tb : std_logic_vector(1 to 7) := "0000000";

begin


    uut: seg7 
        port map (
            bcd => bcd_tb,
            seven_seg => seven_seg_tb
        );

    process
    begin

        wait for 100 ms;

        -- Test case 1
        bcd_tb <= "0011";
        wait for 100 ms;

        -- Test case 2
        bcd_tb <= "0110";
        wait for 100 ms;

        -- Test case 3
        bcd_tb <= "1000";
        wait for 100 ms;

        -- Test case 4
        bcd_tb <= "1010";
        wait for 100 ms;

        -- -- Test case 5
        -- bcd_tb <= "0100";
        -- wait for 100 ms;

        -- -- Test case 6
        -- bcd_tb <= "0101";
        -- wait for 100 ms;

        -- -- Test case 7
        -- bcd_tb <= "0110";
        -- wait for 100 ms;

        -- -- Test case 8
        -- bcd_tb <= "0111";
        -- wait for 100 ms;

        -- -- Test case 9
        -- bcd_tb <= "1000";
        -- wait for 100 ms;

        -- -- Test case 10
        -- bcd_tb <= "1001";
        -- wait for 100 ms;

        wait;

    end process;

end architecture;