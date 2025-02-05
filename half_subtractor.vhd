library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_subtractor is
    port (
        x, y : in std_logic;
        d,b: out std_logic
    );
end half_subtractor;

architecture dataflow of half_subtractor is

begin

    d <= x or y;
    b <= (not x) and y;

end architecture;