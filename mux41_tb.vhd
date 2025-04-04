library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;

entity mux41_tb is
end mux41_tb;

architecture sim of mux41_tb is

    -- declare components
    component mux41 
        port (
            S: in std_logic_vector(1 downto 0);
            I: in std_logic_vector(3 downto 0);
            Y: out std_logic 
        ); 
    end component;

    -- signals
    signal S_tb : std_logic_vector(1 downto 0) := "00";
    signal I_tb : std_logic_vector(3 downto 0) := "0000";
    signal Y_tb : std_logic := '0';

begin

    --- initialize uut
    uut: mux41 
        port map (
            S => S_tb,
            I => I_tb,
            Y => Y_tb
        );
        
    process
    begin

        wait for 100 ms;

        -- Test case 1
        S_tb <= "00"; I_tb <= "0101";
        wait for 100 ms;

        -- -- Test case 2
        S_tb <= "01"; I_tb <= "0001";
        wait for 100 ms;

        -- -- Test case 3
        S_tb <= "10"; I_tb <= "0001";
        wait for 100 ms;

        -- -- Test case 4
        S_tb <= "11"; I_tb <= "1001";
        wait for 100 ms;

        wait;

    end process;

end architecture;