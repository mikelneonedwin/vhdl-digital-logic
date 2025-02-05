library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_gates_tb is
end entity;

architecture testbench of logic_gates_tb is

    -- Component declaration for the unit under test (UUT)
    component logic_gates
        port (
            a, b : in std_logic;
            c, d, e, f, g, h, i : out std_logic
        );
    end component;

    -- Test signals
    signal a_tb, b_tb : std_logic := '0';
    signal c_tb, d_tb, e_tb, f_tb, g_tb, h_tb, i_tb : std_logic;

begin
    -- Instantiate the UUT
    uut: logic_gates
        port map (
            a => a_tb,
            b => b_tb,
            c => c_tb,
            d => d_tb,
            e => e_tb,
            f => f_tb,
            g => g_tb,
            h => h_tb,
            i => i_tb
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
