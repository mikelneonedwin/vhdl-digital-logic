library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_gates is
    port (
        a,b:in std_logic;
        c,d,e,f,g,h,i:out std_logic
    );
end logic_gates;

architecture dataflow of logic_gates is

begin

    c <= a and b;
    d <= a or b;
    e <= not b;
    f <= a xor b;
    g <= a nand b;
    h <= a xnor b;
    i <= a nor b;

end architecture;