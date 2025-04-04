library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;

entity gray2binary_tb is
end gray2binary_tb;

architecture sim of gray2binary_tb is

    component gray2binary
        port (
            g: in std_logic_vector(3 downto 0);
            b: out std_logic_vector(3 downto 0)
        );
    end component;

    signal g_tb : std_logic_vector(3 downto 0) := "0000";
    signal b_tb : std_logic_vector(3 downto 0) := "0000";

begin

    uut: gray2binary 
        port map (
            g => g_tb,
            b => b_tb
        );

        process
        begin
            wait for 100 ms;

            -- Test case 1
            g_tb <= "0101";
            wait for 100 ms;

            -- Test case 2
            g_tb <= "0111";
            wait for 100 ms;

            -- Test case 3
            g_tb <= "1110";
            wait for 100 ms;

            -- Test case 4
            g_tb <= "1010";
            wait for 100 ms;
            
            wait;
        end process;

end architecture;