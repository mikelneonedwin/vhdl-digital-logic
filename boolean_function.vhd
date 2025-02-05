library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity boolean_function is
    port (
        x, y : in std_logic;
        z: out std_logic
    );
end boolean_function;

architecture boolean_function_arch of boolean_function is

begin

    z <= (x and y ) or (x and (not y));

end architecture;