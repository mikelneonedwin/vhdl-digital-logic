library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity boolean_function_tb is
end boolean_function_tb;

architecture testbench of boolean_function_tb is
    
    component boolean_function
        port (
            x, y: in std_logic;
            z: out std_logic
        );
    end component;

    signal x_tb, y_tb : std_logic := '0';
    signal z_tb: std_logic;

begin 
    uut: boolean_function 
        port map (
            x => x_tb,
            y => y_tb,
            z => z_tb
        );

    process
    begin
        
        wait for 100 ms;

        -- Test Case: 1 x=0, y=0
        x_tb <= '0'; y_tb <= '0';
        wait for 100 ms;

        -- Test Case: 2 x=0, y=1
        x_tb <= '0'; y_tb <= '1';
        wait for 100 ms;

        -- Test Case: 3 x=1, y=0
        x_tb <= '1'; y_tb <= '0';
        wait for 100 ms;

        -- Test Case: 4 x=1, y=1
        x_tb <= '1'; y_tb <= '1';
        wait for 100 ms;

        -- End simulation
        wait;
    end process;


end architecture;