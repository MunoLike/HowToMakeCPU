library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity fetch is
    port (
        CLK_FT   : in std_logic;
        P_COUNT  : in std_logic_vector(7 downto 0);
        PROM_OUT : out std_logic_vector(14 downto 0)
    );
end entity fetch;

architecture rtl of fetch is
    subtype WORD is std_logic_vector(14 downto 0);
    type MEMORY is array (0 to 15) of WORD;

    --1 to 10 adder
    constant MEM : MEMORY := (
        "100100000000000", --ldh reg0, 0
        "100000000000000", --ldl reg0, 0
        "100100100000000", --ldh reg1, 0
        "100000100000001", --ldl reg1, 1
        "100101000000000", --ldh reg2, 0
        "100001000000000", --ldl reg2, 0
        "110101101000001", --ld reg3, 65d
        "000101000100000", --add reg2, reg1
        "000100001000000", --add reg0, reg2
        "111000001000000", --st reg0, 64
        "101001001100000", --cmp reg2, reg3
        "101100000001101", --je 13
        "110000000000111", --jmp 7
        "111100000000000", --hlt
        "000000000000000",  --nop
        "000000000000000"  --nop
    );
begin

    process (CLK_FT)
    begin
        if (CLK_FT'event and CLK_FT = '1') then
            PROM_OUT <= MEM(conv_integer(P_COUNT(3 downto 0)));
        end if;
    end process;

end architecture rtl;
