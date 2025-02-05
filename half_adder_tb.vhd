library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity half_adder_tb is
end half_adder_tb;

architecture testbench of half_adder_tb is

    component half_adder
        port (
            a,b: in std_logic;
            s,c: out std_logic
        );
    end component;

    signal a_tb, b_tb : std_logic := '0';
    signal s_tb, c_tb : std_logic;

begin

    uut: half_adder
        port map (
            a => a_tb,
            b => b_tb,
            s => s_tb,
            c => c_tb
        );
    
    process
    begin

        wait for 100 ms;

        -- Test Case 1: a=0, b=0
        a_tb <= '0'; b_tb <= '0';
        wait for 100 ms;

        -- Test Case 2: a=0, b=1
        a_tb <= '0'; b_tb <= '1';
        wait for 100 ms; 

        -- Test Case 3: a=1, b=0
        a_tb <= '1'; b_tb <= '0';
        wait for 100 ms;

        -- Test Case 4: a=1, b=1
        a_tb <= '1'; b_tb <= '1';
        wait for 100 ms;

        wait;
    end process;


end architecture;