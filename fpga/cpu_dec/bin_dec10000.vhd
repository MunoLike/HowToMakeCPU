library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity bin_dec10000 is
    port (
        BIN__IN   : in std_logic_vector(15 downto 0);
        DEC_OUT4  : out std_logic_vector(3 downto 0);
        REMINDER4 : out std_logic_vector(13 downto 0)
    );
end entity bin_dec10000;

architecture rtl of bin_dec10000 is
    signal CMP_INT : integer range 0 to 65535;
    signal REM_INT : integer range 0 to 65535;
begin

end architecture rtl;
