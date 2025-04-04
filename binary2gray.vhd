library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity binary2gray is
  port (
    b : in std_logic_vector(3 downto 0) ;  -- 4-bit binary input
    g : out std_logic_vector(3 downto 0)  -- 4-bit gray output
  ) ;
end binary2gray ; 

architecture arch of binary2gray is

begin

    g(3) <= b(3) ;  -- MSB remains the same
    g(2) <= b(3) xor b(2) ;  -- XOR of MSB and next bit
    g(1) <= b(2) xor b(1) ;  -- XOR of next two bits
    g(0) <= b(1) xor b(0) ;  -- XOR of last two bits

end architecture ;