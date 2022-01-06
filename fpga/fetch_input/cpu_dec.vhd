library IEEE;
use IEEE.std_logic_1164.all;

entity cpu_dec is
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
end entity cpu_dec;

architecture rtl of cpu_dec is

    component cpu15
        port (
            CLK      : in std_logic;
            RESET_N  : in std_logic;
            IO65_IN  : in std_logic_vector(15 downto 0);
            IO64_OUT : out std_logic_vector(15 downto 0)
        );
    end component;

    component bin_dec10000
        port (
            BIN_IN    : in std_logic_vector(15 downto 0);
            DEC_OUT4  : out std_logic_vector(3 downto 0);
            REMINDER4 : out std_logic_vector(13 downto 0)
        );
    end component;

    component bin_dec1000
        port (
            BIN_IN3   : in std_logic_vector(13 downto 0);
            DEC_OUT3  : out std_logic_vector(3 downto 0);
            REMINDER3 : out std_logic_vector(9 downto 0)
        );
    end component;

    component bin_dec100
        port (
            BIN_IN2   : in std_logic_vector(9 downto 0);
            DEC_OUT2  : out std_logic_vector(3 downto 0);
            REMINDER2 : out std_logic_vector(6 downto 0)
        );
    end component;

    component bin_dec10
        port (
            BIN_IN1   : in std_logic_vector(6 downto 0);
            DEC_OUT1  : out std_logic_vector(3 downto 0);
            REMINDER1 : out std_logic_vector(3 downto 0)
        );
    end component;

    component dec_7seg
        port (
            DIN  : in std_logic_vector(3 downto 0);
            SEG7 : out std_logic_vector(7 downto 0)
        );
    end component;

    signal IO64_OUT_TP : std_logic_vector(15 downto 0);
    signal DEC_OUT4    : std_logic_vector(3 downto 0);
    signal DEC_OUT3    : std_logic_vector(3 downto 0);
    signal DEC_OUT2    : std_logic_vector(3 downto 0);
    signal DEC_OUT1    : std_logic_vector(3 downto 0);
    signal DEC_OUT0    : std_logic_vector(3 downto 0);
    signal REMINDER4   : std_logic_vector(13 downto 0);
    signal REMINDER3   : std_logic_vector(9 downto 0);
    signal REMINDER2   : std_logic_vector(6 downto 0);

begin
    C1 : cpu15
    port map(
        CLK      => CLK,
        RESET_N  => RESET_N,
        IO65_IN  => IO65_IN and "0000001111111111",
        IO64_OUT => IO64_OUT_TP
    );

    C2 : bin_dec10000
    port map(
        BIN_IN    => IO64_OUT_TP,
        DEC_OUT4  => DEC_OUT4,
        REMINDER4 => REMINDER4
    );

    C3 : bin_dec1000
    port map(
        BIN_IN3   => REMINDER4,
        DEC_OUT3  => DEC_OUT3,
        REMINDER3 => REMINDER3
    );

    C4 : bin_dec100
    port map(
        BIN_IN2   => REMINDER3,
        DEC_OUT2  => DEC_OUT2,
        REMINDER2 => REMINDER2
    );

    C5 : bin_dec10
    port map(
        BIN_IN1   => REMINDER2,
        DEC_OUT1  => DEC_OUT1,
        REMINDER1 => DEC_OUT0
    );

    C6 : dec_7seg
    port map(
        DIN  => DEC_OUT4,
        SEG7 => HEX4
    );

    C7 : dec_7seg
    port map(
        DIN  => DEC_OUT3,
        SEG7 => HEX3
    );

    C8 : dec_7seg
    port map(
        DIN  => DEC_OUT2,
        SEG7 => HEX2
    );

    C9 : dec_7seg
    port map(
        DIN  => DEC_OUT1,
        SEG7 => HEX1
    );

    C10 : dec_7seg
    port map(
        DIN  => DEC_OUT0,
        SEG7 => HEX0
    );

    IO64_OUT <= IO64_OUT_TP;
end architecture rtl;
