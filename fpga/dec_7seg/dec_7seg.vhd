library IEEE;
use IEEE.std_logic_1164.all;
entity dec_7seg is
    port (
        DIN  : in std_logic_vector(3 downto 0);
        SEG7 : out std_logic_vector(7 downto 0)--DE10-Lite can control float-point dot led. This is the difference between DE0-CV board and this one.
    );
end dec_7seg;

architecture RTL of dec_7seg is

begin
    process (DIN)
    begin
        case DIN is
            when "0000" => SEG7 <= "11000000";
            when "0001" => SEG7 <= "11111001";
            when "0010" => SEG7 <= "10100100";
            when "0011" => SEG7 <= "10110000";
            when "0100" => SEG7 <= "10011001";
            when "0101" => SEG7 <= "10010010";
            when "0110" => SEG7 <= "10000010";
            when "0111" => SEG7 <= "11111000";
            when "1000" => SEG7 <= "10000000";
            when "1001" => SEG7 <= "10010000";
            when others => SEG7 <= "11111111";
        end case;
    end process;
end RTL; -- RTL
