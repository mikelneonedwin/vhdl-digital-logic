library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
    port (
        x,y,z: in std_logic;
        s,c: out std_logic
    );
end full_adder;

architecture dataflow of full_adder is

begin

    s <= (x xor y) xor z;
    c <= (x and y) or (y and z) or (z and x);

end architecture;