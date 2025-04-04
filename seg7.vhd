library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.std_logic_arith.all ;
    use ieee.std_logic_unsigned.all ;

entity seg7 is
  port (
    bcd: in std_logic_vector(3 downto 0) ; -- BCD input
    seven_seg: out std_logic_vector(1 to 7) -- 7-segment output
  );
end seg7 ; 

architecture arch of seg7 is

begin
    process(bcd)
    begin
        case bcd is
            when "0000" => seven_seg <= "1111110";
            when "0001" => seven_seg <= "0110000";
            when "0010" => seven_seg <= "1101101";
            when "0011" => seven_seg <= "1111001";
            when "0100" => seven_seg <= "0110011";
            when "0101" => seven_seg <= "1011011";
            when "0110" => seven_seg <= "1011111";
            when "0111" => seven_seg <= "1110000";
            when "1000" => seven_seg <= "1111111";
            when "1001" => seven_seg <= "1110011";
            when others => seven_seg <= "-------"; -- default case
        end case;
        end process;

end architecture;