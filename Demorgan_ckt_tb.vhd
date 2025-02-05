library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Demorgan_ckt_tb is
end Demorgan_ckt_tb;

architecture testbench of Demorgan_ckt_tb is

    -- Component declaration
    component Demorgan_ckt
        port (
            a,b : in std_logic;
            and_not, not_or, or_not, not_and : out std_logic
        );

    end component;

    -- Test signals
    signal a_tb, b_tb : std_logic := '0';
    signal and_not_tb, not_or_tb, or_not_tb, not_and_tb : std_logic;

begin

    -- Instantiate the UUT
    uut: Demorgan_ckt 
        port map (
            a => a_tb,
            b => b_tb,
            and_not => and_not_tb,
            not_or => not_or_tb,
            or_not => or_not_tb,
            not_and => not_and_tb
        );
    
    -- Stimulus process
    process
    begin 

        wait for 100 ms;

        -- Test Case 1: a=0, b=0 (0-100 ms)
        a_tb <= '0'; b_tb <= '0';
        wait for 100 ms;

        -- Test Case 2: a=0, b=1 (100-200 ms)
        a_tb <= '0'; b_tb <= '1';
        wait for 100 ms;

        -- Test Case 3: a=1, b=0 (200-300 ms)
        a_tb <= '1'; b_tb <= '0';
        wait for 100 ms;

        -- Test Case 4: a=1, b=1 (300-400 ms)
        a_tb <= '1'; b_tb <= '1';
        wait for 100 ms;

        -- End simulation
        wait;
    end process;

end architecture;