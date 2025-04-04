library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_subtractor is
    port (
        x,y,z: in std_logic;
        d,b: out std_logic
    );
end full_subtractor;

architecture dataflow of full_subtractor is

begin

    d <= (x or y) xor z;
    b <= ((not x) and y) or ((not x) and z) or (y and z);

end architecture;