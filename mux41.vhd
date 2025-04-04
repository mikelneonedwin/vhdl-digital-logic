library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux41 is
    port (
        S: in std_logic_vector(1 downto 0);
        I: in std_logic_vector(3 downto 0);
        Y: out std_logic 
    );
end mux41;

architecture rtl of mux41 is
begin
    process(S,I)
    begin
        if (S<="00") then Y <= I(0);
        elsif (S<="01") then Y <= I(1);
        elsif (S<="10") then Y <= I(2);
        else Y<=I(3);
        end if;
    end process;

end architecture;