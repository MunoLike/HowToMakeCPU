library IEEE;
use IEEE.std_logic_1164.all;

entity count10 is
    port(
        CLK:in std_logic;
        RST:in std_logic;
        COUNT:out std_logic_vector(3 downto 0)
    );

end count10;

