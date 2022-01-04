library IEEE;
use IEEE.std_logic_1164.all;

entity reg_wb is
    port (
        CLK_WB  : in std_logic;
        RESET_N : in std_logic;
        N_REG   : in std_logic_vector(2 downto 0);
        REG_IN  : in std_logic_vector(15 downto 0);
        REG_WEN : in std_logic;
        REG_0   : out std_logic_vector(15 downto 0);
        REG_1   : out std_logic_vector(15 downto 0);
        REG_2   : out std_logic_vector(15 downto 0);
        REG_3   : out std_logic_vector(15 downto 0);
        REG_4   : out std_logic_vector(15 downto 0);
        REG_5   : out std_logic_vector(15 downto 0);
        REG_6   : out std_logic_vector(15 downto 0);
        REG_7   : out std_logic_vector(15 downto 0)
    );
end entity reg_wb;

architecture rtl of reg_wb is

begin

    process (CLK_WB)
    begin
        if (CLK_WB'event and CLK_WB = '1') then
            if (RESET_N = '1') then
                REG_0 <= (others => '0');
                REG_1 <= (others => '0');
                REG_2 <= (others => '0');
                REG_3 <= (others => '0');
                REG_4 <= (others => '0');
                REG_5 <= (others => '0');
                REG_6 <= (others => '0');
                REG_7 <= (others => '0');
            elsif (REG_WEN = '1') then
                case N_REG is
                    when "000"  => REG_0 <= REG_IN;
                    when "001"  => REG_1 <= REG_IN;
                    when "010"  => REG_2 <= REG_IN;
                    when "011"  => REG_3 <= REG_IN;
                    when "100"  => REG_4 <= REG_IN;
                    when "101"  => REG_5 <= REG_IN;
                    when "110"  => REG_6 <= REG_IN;
                    when "111"  => REG_7 <= REG_IN;
                    when others => null;
                end case;
            end if;
        end if;
    end process;

end architecture rtl;
