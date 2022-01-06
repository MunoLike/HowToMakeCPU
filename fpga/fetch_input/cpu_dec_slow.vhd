library IEEE;
use IEEE.std_logic_1164.all;

entity cpu_dec_slow is
    port (
        CLK      : in std_logic;
        RESET_N  : in std_logic;
        IO65_IN  : in std_logic_vector(15 downto 0);
        IO64_OUT : out std_logic_vector(15 downto 0);
        HEX4     : out std_logic_vector(7 downto 0);
        HEX3     : out std_logic_vector(7 downto 0);
        HEX2     : out std_logic_vector(7 downto 0);
        HEX1     : out std_logic_vector(7 downto 0);
        HEX0     : out std_logic_vector(7 downto 0)
    );
end entity cpu_dec_slow;

architecture rtl of cpu_dec_slow is
    component clk_down
        port (
            CLK_IN  : in std_logic;
            CLK_OUT : out std_logic
        );
    end component;

    component cpu_dec
        port (
            CLK      : in std_logic;
            RESET_N  : in std_logic;
            IO65_IN  : in std_logic_vector(15 downto 0);
            IO64_OUT : out std_logic_vector(15 downto 0);
            HEX4     : out std_logic_vector(7 downto 0);
            HEX3     : out std_logic_vector(7 downto 0);
            HEX2     : out std_logic_vector(7 downto 0);
            HEX1     : out std_logic_vector(7 downto 0);
            HEX0     : out std_logic_vector(7 downto 0)
        );
    end component;

    signal CLK_SLOW : std_logic;

begin
    C1 : clk_down
    port map(
        CLK_IN  => CLK,
        CLK_OUT => CLK_SLOW
    );

    C2:cpu_dec
    port map(
        CLK => CLK_SLOW,
        RESET_N => RESET_N,
        IO65_IN => IO65_IN,
        HEX4 => HEX4,
        HEX3 => HEX3,
        HEX2 => HEX2,
        HEX1 => HEX1,
        HEX0 => HEX0
    );
end architecture rtl;
