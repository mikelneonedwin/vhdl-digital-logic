library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Demorgan_ckt is
    port (
        a,b: in std_logic;
        and_not,not_or,or_not,not_and: out std_logic
    );
end Demorgan_ckt;

architecture Demorgan_arch of Demorgan_ckt is

begin
    
    and_not <= not(a and b);
    not_or <= (not a) or (not b);
    or_not <= not(a or b);
    not_and <= (not a) and (not b);

end architecture;