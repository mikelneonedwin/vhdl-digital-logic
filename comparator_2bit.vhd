library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity comparator_2bit is
  port (
    a:in std_logic_vector(1 downto 0) ;
    b:in std_logic_vector(1 downto 0) ;
    a_equal_b:out std_logic ;
    a_greater_b:out std_logic ;
    a_less_b:out std_logic
  ) ;
end comparator_2bit ; 

architecture arch of comparator_2bit is

begin
    a_equal_b <= '1' when (a = b) else '0' ;
    a_greater_b <= '1' when (a > b) else '0' ;
    a_less_b <= '1' when (a < b) else '0' ;

end architecture ;