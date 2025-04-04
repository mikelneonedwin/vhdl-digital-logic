library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_2bit_tb is
end comparator_2bit_tb;

architecture sim of comparator_2bit_tb is

    --- register components
    component comparator_2bit
        port (
            a:in std_logic_vector(1 downto 0) ;
            b:in std_logic_vector(1 downto 0) ;
            a_equal_b:out std_logic ;
            a_greater_b:out std_logic ;
            a_less_b:out std_logic
        );
    end component;

    --- declare signals
    signal a_tb, b_tb : std_logic_vector(1 downto 0) := "00";
    signal a_equal_b_tb, a_greater_b_tb, a_less_b_tb : std_logic := '0';

begin

    uut: comparator_2bit 
        port map (
            a => a_tb,
            b => b_tb,
            a_equal_b => a_equal_b_tb,
            a_greater_b => a_greater_b_tb,
            a_less_b => a_less_b_tb
        );

        process
        begin

            wait for 100 ms;

            -- Test case 1
            a_tb <= "01"; b_tb <= "00";
            wait for 100 ms;

            -- Test case 2
            a_tb <= "01"; b_tb <= "01";
            wait for 100 ms;

            -- Test case 3
            a_tb <= "10"; b_tb <= "01";
            wait for 100 ms;

            -- Test case 4
            a_tb <= "01"; b_tb <= "11";
            wait for 100 ms;
            
            wait;

        end process;

end architecture;