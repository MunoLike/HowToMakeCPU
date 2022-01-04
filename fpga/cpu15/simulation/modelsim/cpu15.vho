-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "01/04/2022 12:53:37"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu15 IS
    PORT (
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	IO65_IN : IN std_logic_vector(15 DOWNTO 0);
	IO64_OUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END cpu15;

-- Design Ports Information
-- CLK	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[9]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[10]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[12]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[14]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[15]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[8]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[12]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[13]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[14]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[15]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu15 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_IO65_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IO64_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \IO65_IN[0]~input_o\ : std_logic;
SIGNAL \IO65_IN[1]~input_o\ : std_logic;
SIGNAL \IO65_IN[2]~input_o\ : std_logic;
SIGNAL \IO65_IN[3]~input_o\ : std_logic;
SIGNAL \IO65_IN[4]~input_o\ : std_logic;
SIGNAL \IO65_IN[5]~input_o\ : std_logic;
SIGNAL \IO65_IN[6]~input_o\ : std_logic;
SIGNAL \IO65_IN[7]~input_o\ : std_logic;
SIGNAL \IO65_IN[8]~input_o\ : std_logic;
SIGNAL \IO65_IN[9]~input_o\ : std_logic;
SIGNAL \IO65_IN[10]~input_o\ : std_logic;
SIGNAL \IO65_IN[11]~input_o\ : std_logic;
SIGNAL \IO65_IN[12]~input_o\ : std_logic;
SIGNAL \IO65_IN[13]~input_o\ : std_logic;
SIGNAL \IO65_IN[14]~input_o\ : std_logic;
SIGNAL \IO65_IN[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \IO64_OUT[0]~output_o\ : std_logic;
SIGNAL \IO64_OUT[1]~output_o\ : std_logic;
SIGNAL \IO64_OUT[2]~output_o\ : std_logic;
SIGNAL \IO64_OUT[3]~output_o\ : std_logic;
SIGNAL \IO64_OUT[4]~output_o\ : std_logic;
SIGNAL \IO64_OUT[5]~output_o\ : std_logic;
SIGNAL \IO64_OUT[6]~output_o\ : std_logic;
SIGNAL \IO64_OUT[7]~output_o\ : std_logic;
SIGNAL \IO64_OUT[8]~output_o\ : std_logic;
SIGNAL \IO64_OUT[9]~output_o\ : std_logic;
SIGNAL \IO64_OUT[10]~output_o\ : std_logic;
SIGNAL \IO64_OUT[11]~output_o\ : std_logic;
SIGNAL \IO64_OUT[12]~output_o\ : std_logic;
SIGNAL \IO64_OUT[13]~output_o\ : std_logic;
SIGNAL \IO64_OUT[14]~output_o\ : std_logic;
SIGNAL \IO64_OUT[15]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RESET_N <= RESET_N;
ww_IO65_IN <= IO65_IN;
IO64_OUT <= ww_IO64_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y0_N30
\IO64_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\IO64_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\IO64_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\IO64_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\IO64_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\IO64_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\IO64_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\IO64_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\IO64_OUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\IO64_OUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[9]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\IO64_OUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[10]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\IO64_OUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[11]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\IO64_OUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[12]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\IO64_OUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\IO64_OUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\IO64_OUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IO64_OUT[15]~output_o\);

-- Location: IOIBUF_X78_Y37_N8
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X78_Y30_N15
\RESET_N~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_N,
	o => \RESET_N~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\IO65_IN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(0),
	o => \IO65_IN[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\IO65_IN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(1),
	o => \IO65_IN[1]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\IO65_IN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(2),
	o => \IO65_IN[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\IO65_IN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(3),
	o => \IO65_IN[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\IO65_IN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(4),
	o => \IO65_IN[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\IO65_IN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(5),
	o => \IO65_IN[5]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\IO65_IN[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(6),
	o => \IO65_IN[6]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\IO65_IN[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(7),
	o => \IO65_IN[7]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\IO65_IN[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(8),
	o => \IO65_IN[8]~input_o\);

-- Location: IOIBUF_X66_Y54_N1
\IO65_IN[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(9),
	o => \IO65_IN[9]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\IO65_IN[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(10),
	o => \IO65_IN[10]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\IO65_IN[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(11),
	o => \IO65_IN[11]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\IO65_IN[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(12),
	o => \IO65_IN[12]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\IO65_IN[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(13),
	o => \IO65_IN[13]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\IO65_IN[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(14),
	o => \IO65_IN[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\IO65_IN[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(15),
	o => \IO65_IN[15]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_IO64_OUT(0) <= \IO64_OUT[0]~output_o\;

ww_IO64_OUT(1) <= \IO64_OUT[1]~output_o\;

ww_IO64_OUT(2) <= \IO64_OUT[2]~output_o\;

ww_IO64_OUT(3) <= \IO64_OUT[3]~output_o\;

ww_IO64_OUT(4) <= \IO64_OUT[4]~output_o\;

ww_IO64_OUT(5) <= \IO64_OUT[5]~output_o\;

ww_IO64_OUT(6) <= \IO64_OUT[6]~output_o\;

ww_IO64_OUT(7) <= \IO64_OUT[7]~output_o\;

ww_IO64_OUT(8) <= \IO64_OUT[8]~output_o\;

ww_IO64_OUT(9) <= \IO64_OUT[9]~output_o\;

ww_IO64_OUT(10) <= \IO64_OUT[10]~output_o\;

ww_IO64_OUT(11) <= \IO64_OUT[11]~output_o\;

ww_IO64_OUT(12) <= \IO64_OUT[12]~output_o\;

ww_IO64_OUT(13) <= \IO64_OUT[13]~output_o\;

ww_IO64_OUT(14) <= \IO64_OUT[14]~output_o\;

ww_IO64_OUT(15) <= \IO64_OUT[15]~output_o\;
END structure;


