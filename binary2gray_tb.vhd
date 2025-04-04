library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity binary2gray_tb is
end binary2gray_tb;

architecture sim of binary2gray_tb is

    component binary2gray
        port (
            b : in std_logic_vector(3 downto 0);  -- 4-bit binary input
            g : out std_logic_vector(3 downto 0)  -- 4-bit gray output
        );
    end component;

    signal b_tb : std_logic_vector(3 downto 0) := "0000";
    signal g_tb : std_logic_vector(3 downto 0) := "0000";

begin

    uut: binary2gray 
        port map (
            b => b_tb,
            g => g_tb
        );

    process
    begin

        wait for 100 ms;

        -- Test case 1
        b_tb <= "0101";
        wait for 100 ms;

        -- Test case 2
        b_tb <= "0111";
        wait for 100 ms;

        -- Test case 3
        b_tb <= "1101";
        wait for 100 ms;

        -- Test case 4
        b_tb <= "1111";
        wait for 100 ms;

        wait;

    end process;

end architecture;