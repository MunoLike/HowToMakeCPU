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

-- DATE "01/05/2022 11:17:35"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu15 IS
    PORT (
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	IO65_IN : IN std_logic_vector(15 DOWNTO 0);
	IO64_OUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END cpu15;

-- Design Ports Information
-- IO64_OUT[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[12]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[14]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[15]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[11]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[12]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \C1|CLK_EX~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|CLK_DC~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|CLK_WB~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|CLK_FT~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \C1|COUNT[0]~1_combout\ : std_logic;
SIGNAL \C1|COUNT[1]~0_combout\ : std_logic;
SIGNAL \C1|Mux2~0_combout\ : std_logic;
SIGNAL \C1|CLK_WB~q\ : std_logic;
SIGNAL \C1|CLK_WB~clkctrl_outclk\ : std_logic;
SIGNAL \C1|Mux2~1_combout\ : std_logic;
SIGNAL \C1|CLK_EX~q\ : std_logic;
SIGNAL \C1|CLK_EX~clkctrl_outclk\ : std_logic;
SIGNAL \C1|Mux2~2_combout\ : std_logic;
SIGNAL \C1|CLK_DC~q\ : std_logic;
SIGNAL \C1|CLK_DC~clkctrl_outclk\ : std_logic;
SIGNAL \C1|Mux0~0_combout\ : std_logic;
SIGNAL \C1|CLK_FT~q\ : std_logic;
SIGNAL \C1|CLK_FT~clkctrl_outclk\ : std_logic;
SIGNAL \C2|Mux8~0_combout\ : std_logic;
SIGNAL \C2|Mux1~0_combout\ : std_logic;
SIGNAL \C2|Mux3~0_combout\ : std_logic;
SIGNAL \C2|Mux2~0_combout\ : std_logic;
SIGNAL \C7|Mux3~0_combout\ : std_logic;
SIGNAL \C2|Mux0~0_combout\ : std_logic;
SIGNAL \C3|OP_CODE[3]~feeder_combout\ : std_logic;
SIGNAL \C7|Mux26~0_combout\ : std_logic;
SIGNAL \C2|Mux7~0_combout\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \C8|REG_2[4]~feeder_combout\ : std_logic;
SIGNAL \C7|Mux16~0_combout\ : std_logic;
SIGNAL \C7|REG_WEN~feeder_combout\ : std_logic;
SIGNAL \C7|REG_WEN~q\ : std_logic;
SIGNAL \C2|Mux5~0_combout\ : std_logic;
SIGNAL \C4|N_REG_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \C4|N_REG_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[14]~0_combout\ : std_logic;
SIGNAL \C8|REG_0[12]~1_combout\ : std_logic;
SIGNAL \C8|REG_1[4]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_1[14]~0_combout\ : std_logic;
SIGNAL \C4|Mux11~0_combout\ : std_logic;
SIGNAL \C4|Mux11~1_combout\ : std_logic;
SIGNAL \C7|Mux42~0_combout\ : std_logic;
SIGNAL \C7|RAM_IN[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_5[4]~feeder_combout\ : std_logic;
SIGNAL \C2|Mux6~0_combout\ : std_logic;
SIGNAL \C7|RAM_WEN~q\ : std_logic;
SIGNAL \C9|RAM_0[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_5[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_7[4]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_4[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_6[4]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[0]~0_combout\ : std_logic;
SIGNAL \C6|Mux11~0_combout\ : std_logic;
SIGNAL \C6|Mux11~1_combout\ : std_logic;
SIGNAL \C9|RAM_3[4]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_2[4]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[0]~0_combout\ : std_logic;
SIGNAL \C9|RAM_0[0]~1_combout\ : std_logic;
SIGNAL \C9|RAM_1[4]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[0]~0_combout\ : std_logic;
SIGNAL \C6|Mux11~2_combout\ : std_logic;
SIGNAL \C6|Mux11~3_combout\ : std_logic;
SIGNAL \C6|Mux11~4_combout\ : std_logic;
SIGNAL \IO65_IN[4]~input_o\ : std_logic;
SIGNAL \C6|RAM_OUT[2]~0_combout\ : std_logic;
SIGNAL \C6|RAM_OUT[2]~1_combout\ : std_logic;
SIGNAL \C7|PC[0]~3_combout\ : std_logic;
SIGNAL \C7|PC[4]~8_combout\ : std_logic;
SIGNAL \C8|REG_1[3]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[3]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux12~0_combout\ : std_logic;
SIGNAL \C5|Mux12~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[3]~11_combout\ : std_logic;
SIGNAL \C8|REG_1[1]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[1]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[1]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux14~0_combout\ : std_logic;
SIGNAL \C5|Mux14~1_combout\ : std_logic;
SIGNAL \C7|Mux14~0_combout\ : std_logic;
SIGNAL \C7|Mux14~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[1]~0_combout\ : std_logic;
SIGNAL \C7|REG_IN[3]~12_combout\ : std_logic;
SIGNAL \C7|RAM_IN[1]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[1]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[1]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[1]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux14~0_combout\ : std_logic;
SIGNAL \C6|Mux14~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[1]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[1]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[1]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux14~2_combout\ : std_logic;
SIGNAL \C6|Mux14~3_combout\ : std_logic;
SIGNAL \C6|Mux14~4_combout\ : std_logic;
SIGNAL \IO65_IN[1]~input_o\ : std_logic;
SIGNAL \C7|Add0~5_combout\ : std_logic;
SIGNAL \C7|Mux15~5_combout\ : std_logic;
SIGNAL \C7|Mux15~4_combout\ : std_logic;
SIGNAL \C7|Add0~2_cout\ : std_logic;
SIGNAL \C7|Add0~3_combout\ : std_logic;
SIGNAL \C7|Mux15~3_combout\ : std_logic;
SIGNAL \C7|Mux15~6_combout\ : std_logic;
SIGNAL \C9|RAM_7[0]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[0]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux15~0_combout\ : std_logic;
SIGNAL \C9|RAM_5[0]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux15~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[0]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[0]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[0]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux15~2_combout\ : std_logic;
SIGNAL \C6|Mux15~3_combout\ : std_logic;
SIGNAL \C6|Mux15~4_combout\ : std_logic;
SIGNAL \IO65_IN[0]~input_o\ : std_logic;
SIGNAL \C7|Mux15~0_combout\ : std_logic;
SIGNAL \C7|Mux15~1_combout\ : std_logic;
SIGNAL \C7|Mux15~2_combout\ : std_logic;
SIGNAL \C7|Mux15~7_combout\ : std_logic;
SIGNAL \C8|REG_0~0_combout\ : std_logic;
SIGNAL \C8|REG_1[0]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_3[0]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_3[1]~0_combout\ : std_logic;
SIGNAL \C8|REG_0[0]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[0]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux15~0_combout\ : std_logic;
SIGNAL \C5|Mux15~1_combout\ : std_logic;
SIGNAL \C7|Add0~0_combout\ : std_logic;
SIGNAL \C7|Add0~4\ : std_logic;
SIGNAL \C7|Add0~6_combout\ : std_logic;
SIGNAL \C7|Mux14~2_combout\ : std_logic;
SIGNAL \C7|Mux14~3_combout\ : std_logic;
SIGNAL \C7|REG_IN[3]~13_combout\ : std_logic;
SIGNAL \C7|REG_IN[1]~14_combout\ : std_logic;
SIGNAL \C8|REG_0~2_combout\ : std_logic;
SIGNAL \C8|REG_3[1]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux14~0_combout\ : std_logic;
SIGNAL \C4|Mux14~1_combout\ : std_logic;
SIGNAL \C7|Mux13~0_combout\ : std_logic;
SIGNAL \C8|REG_1[2]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux13~0_combout\ : std_logic;
SIGNAL \C5|Mux13~1_combout\ : std_logic;
SIGNAL \C7|Mux13~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[2]~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[2]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[2]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux13~2_combout\ : std_logic;
SIGNAL \C9|RAM_3[2]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux13~3_combout\ : std_logic;
SIGNAL \C9|RAM_5[2]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[2]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[2]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux13~0_combout\ : std_logic;
SIGNAL \C6|Mux13~1_combout\ : std_logic;
SIGNAL \C6|Mux13~4_combout\ : std_logic;
SIGNAL \IO65_IN[2]~input_o\ : std_logic;
SIGNAL \C7|Add0~8_combout\ : std_logic;
SIGNAL \C7|Add0~7\ : std_logic;
SIGNAL \C7|Add0~9_combout\ : std_logic;
SIGNAL \C7|Mux13~2_combout\ : std_logic;
SIGNAL \C7|Mux13~3_combout\ : std_logic;
SIGNAL \C8|REG_0~3_combout\ : std_logic;
SIGNAL \C8|REG_3[2]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux13~0_combout\ : std_logic;
SIGNAL \C4|Mux13~1_combout\ : std_logic;
SIGNAL \C7|Mux12~0_combout\ : std_logic;
SIGNAL \C7|Mux12~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[3]~2_combout\ : std_logic;
SIGNAL \C7|RAM_IN[3]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[3]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[3]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux12~0_combout\ : std_logic;
SIGNAL \C9|RAM_5[3]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux12~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[3]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[3]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[3]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux12~2_combout\ : std_logic;
SIGNAL \C6|Mux12~3_combout\ : std_logic;
SIGNAL \C6|Mux12~4_combout\ : std_logic;
SIGNAL \IO65_IN[3]~input_o\ : std_logic;
SIGNAL \C7|Add0~11_combout\ : std_logic;
SIGNAL \C7|Add0~10\ : std_logic;
SIGNAL \C7|Add0~12_combout\ : std_logic;
SIGNAL \C7|Mux12~2_combout\ : std_logic;
SIGNAL \C7|Mux12~3_combout\ : std_logic;
SIGNAL \C8|REG_0~4_combout\ : std_logic;
SIGNAL \C4|Mux12~0_combout\ : std_logic;
SIGNAL \C4|Mux12~1_combout\ : std_logic;
SIGNAL \C7|Mux11~0_combout\ : std_logic;
SIGNAL \C7|Mux11~1_combout\ : std_logic;
SIGNAL \C7|RAM_IN[7]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[7]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[7]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[7]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux8~0_combout\ : std_logic;
SIGNAL \C6|Mux8~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[7]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[7]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[7]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux8~2_combout\ : std_logic;
SIGNAL \C6|Mux8~3_combout\ : std_logic;
SIGNAL \C6|Mux8~4_combout\ : std_logic;
SIGNAL \IO65_IN[7]~input_o\ : std_logic;
SIGNAL \C8|REG_1[7]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[7]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[7]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux8~0_combout\ : std_logic;
SIGNAL \C5|Mux8~1_combout\ : std_logic;
SIGNAL \C7|Mux8~0_combout\ : std_logic;
SIGNAL \C7|Mux8~1_combout\ : std_logic;
SIGNAL \C7|Mux7~0_combout\ : std_logic;
SIGNAL \C8|REG_1[8]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[8]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[8]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux7~0_combout\ : std_logic;
SIGNAL \C5|Mux7~1_combout\ : std_logic;
SIGNAL \C7|Mux7~1_combout\ : std_logic;
SIGNAL \C7|Mux3~5_combout\ : std_logic;
SIGNAL \C7|Mux3~6_combout\ : std_logic;
SIGNAL \C8|REG_3[12]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_1[12]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[12]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux3~0_combout\ : std_logic;
SIGNAL \C5|Mux3~1_combout\ : std_logic;
SIGNAL \C8|REG_1[14]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[14]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[14]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux1~0_combout\ : std_logic;
SIGNAL \C5|Mux1~1_combout\ : std_logic;
SIGNAL \C7|Mux1~0_combout\ : std_logic;
SIGNAL \C7|Mux1~1_combout\ : std_logic;
SIGNAL \C7|Mux0~3_combout\ : std_logic;
SIGNAL \C7|Mux0~4_combout\ : std_logic;
SIGNAL \C8|REG_1[15]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[15]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[15]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux0~0_combout\ : std_logic;
SIGNAL \C5|Mux0~1_combout\ : std_logic;
SIGNAL \C7|Add0~47_combout\ : std_logic;
SIGNAL \C7|Add0~44_combout\ : std_logic;
SIGNAL \C8|REG_1[13]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[13]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux2~0_combout\ : std_logic;
SIGNAL \C5|Mux2~1_combout\ : std_logic;
SIGNAL \C7|Add0~41_combout\ : std_logic;
SIGNAL \C7|Add0~38_combout\ : std_logic;
SIGNAL \C8|REG_0[11]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[11]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux4~0_combout\ : std_logic;
SIGNAL \C8|REG_1[11]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux4~1_combout\ : std_logic;
SIGNAL \C7|Add0~35_combout\ : std_logic;
SIGNAL \C8|REG_1[10]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[10]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux5~0_combout\ : std_logic;
SIGNAL \C5|Mux5~1_combout\ : std_logic;
SIGNAL \C7|Add0~32_combout\ : std_logic;
SIGNAL \C8|REG_3[9]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_0[9]~feeder_combout\ : std_logic;
SIGNAL \C8|REG_2[9]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux6~0_combout\ : std_logic;
SIGNAL \C5|Mux6~1_combout\ : std_logic;
SIGNAL \C7|Add0~29_combout\ : std_logic;
SIGNAL \C7|Add0~26_combout\ : std_logic;
SIGNAL \C7|Add0~23_combout\ : std_logic;
SIGNAL \C8|REG_1[6]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux9~0_combout\ : std_logic;
SIGNAL \C8|REG_3[6]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux9~1_combout\ : std_logic;
SIGNAL \C7|Add0~20_combout\ : std_logic;
SIGNAL \C8|REG_3[5]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux10~0_combout\ : std_logic;
SIGNAL \C5|Mux10~1_combout\ : std_logic;
SIGNAL \C7|Add0~17_combout\ : std_logic;
SIGNAL \C7|Add0~14_combout\ : std_logic;
SIGNAL \C7|Add0~13\ : std_logic;
SIGNAL \C7|Add0~16\ : std_logic;
SIGNAL \C7|Add0~19\ : std_logic;
SIGNAL \C7|Add0~22\ : std_logic;
SIGNAL \C7|Add0~25\ : std_logic;
SIGNAL \C7|Add0~28\ : std_logic;
SIGNAL \C7|Add0~31\ : std_logic;
SIGNAL \C7|Add0~34\ : std_logic;
SIGNAL \C7|Add0~37\ : std_logic;
SIGNAL \C7|Add0~40\ : std_logic;
SIGNAL \C7|Add0~43\ : std_logic;
SIGNAL \C7|Add0~46\ : std_logic;
SIGNAL \C7|Add0~48_combout\ : std_logic;
SIGNAL \C7|Mux0~2_combout\ : std_logic;
SIGNAL \C7|Mux0~5_combout\ : std_logic;
SIGNAL \C7|RAM_IN[15]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[15]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[15]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[15]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux0~0_combout\ : std_logic;
SIGNAL \C6|Mux0~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[15]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[15]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[15]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux0~2_combout\ : std_logic;
SIGNAL \C6|Mux0~3_combout\ : std_logic;
SIGNAL \C6|Mux0~4_combout\ : std_logic;
SIGNAL \IO65_IN[15]~input_o\ : std_logic;
SIGNAL \C7|Mux0~0_combout\ : std_logic;
SIGNAL \C7|Mux0~1_combout\ : std_logic;
SIGNAL \C7|Mux0~6_combout\ : std_logic;
SIGNAL \C8|REG_0~16_combout\ : std_logic;
SIGNAL \C8|REG_3[15]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux0~0_combout\ : std_logic;
SIGNAL \C4|Mux0~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[14]~10_combout\ : std_logic;
SIGNAL \C7|RAM_IN[14]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[14]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[14]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[14]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux1~2_combout\ : std_logic;
SIGNAL \C6|Mux1~3_combout\ : std_logic;
SIGNAL \C9|RAM_7[14]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[14]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[14]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux1~0_combout\ : std_logic;
SIGNAL \C6|Mux1~1_combout\ : std_logic;
SIGNAL \C6|Mux1~4_combout\ : std_logic;
SIGNAL \IO65_IN[14]~input_o\ : std_logic;
SIGNAL \C7|Add0~45_combout\ : std_logic;
SIGNAL \C7|Mux1~2_combout\ : std_logic;
SIGNAL \C7|Mux1~3_combout\ : std_logic;
SIGNAL \C8|REG_0~15_combout\ : std_logic;
SIGNAL \C8|REG_3[14]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux1~0_combout\ : std_logic;
SIGNAL \C4|Mux1~1_combout\ : std_logic;
SIGNAL \C7|Mux2~0_combout\ : std_logic;
SIGNAL \C7|Mux2~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[13]~9_combout\ : std_logic;
SIGNAL \C7|RAM_IN[13]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[13]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[13]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[13]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux2~2_combout\ : std_logic;
SIGNAL \C6|Mux2~3_combout\ : std_logic;
SIGNAL \C9|RAM_7[13]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[13]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[13]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux2~0_combout\ : std_logic;
SIGNAL \C6|Mux2~1_combout\ : std_logic;
SIGNAL \C6|Mux2~4_combout\ : std_logic;
SIGNAL \IO65_IN[13]~input_o\ : std_logic;
SIGNAL \C7|Add0~42_combout\ : std_logic;
SIGNAL \C7|Mux2~2_combout\ : std_logic;
SIGNAL \C7|Mux2~3_combout\ : std_logic;
SIGNAL \C8|REG_0~14_combout\ : std_logic;
SIGNAL \C8|REG_3[13]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux2~0_combout\ : std_logic;
SIGNAL \C4|Mux2~1_combout\ : std_logic;
SIGNAL \C7|Mux3~3_combout\ : std_logic;
SIGNAL \C7|Add0~39_combout\ : std_logic;
SIGNAL \C7|Mux3~4_combout\ : std_logic;
SIGNAL \C7|Mux3~7_combout\ : std_logic;
SIGNAL \C7|RAM_IN[12]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[12]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[12]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux3~2_combout\ : std_logic;
SIGNAL \C9|RAM_3[12]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux3~3_combout\ : std_logic;
SIGNAL \C9|RAM_5[12]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[12]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[12]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux3~0_combout\ : std_logic;
SIGNAL \C6|Mux3~1_combout\ : std_logic;
SIGNAL \C6|Mux3~4_combout\ : std_logic;
SIGNAL \IO65_IN[12]~input_o\ : std_logic;
SIGNAL \C7|Mux3~1_combout\ : std_logic;
SIGNAL \C7|Mux3~2_combout\ : std_logic;
SIGNAL \C7|Mux3~8_combout\ : std_logic;
SIGNAL \C8|REG_0~13_combout\ : std_logic;
SIGNAL \C8|REG_2[12]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux3~0_combout\ : std_logic;
SIGNAL \C4|Mux3~1_combout\ : std_logic;
SIGNAL \C7|Mux4~0_combout\ : std_logic;
SIGNAL \C7|Mux4~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[11]~8_combout\ : std_logic;
SIGNAL \C7|RAM_IN[11]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[11]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[11]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[11]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux4~2_combout\ : std_logic;
SIGNAL \C6|Mux4~3_combout\ : std_logic;
SIGNAL \C9|RAM_5[11]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[11]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[11]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux4~0_combout\ : std_logic;
SIGNAL \C6|Mux4~1_combout\ : std_logic;
SIGNAL \C6|Mux4~4_combout\ : std_logic;
SIGNAL \IO65_IN[11]~input_o\ : std_logic;
SIGNAL \C7|Add0~36_combout\ : std_logic;
SIGNAL \C7|Mux4~2_combout\ : std_logic;
SIGNAL \C7|Mux4~3_combout\ : std_logic;
SIGNAL \C8|REG_0~12_combout\ : std_logic;
SIGNAL \C8|REG_3[11]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux4~0_combout\ : std_logic;
SIGNAL \C4|Mux4~1_combout\ : std_logic;
SIGNAL \C7|Mux5~0_combout\ : std_logic;
SIGNAL \C7|Mux5~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[10]~7_combout\ : std_logic;
SIGNAL \C7|RAM_IN[10]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[10]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[10]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[10]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux5~2_combout\ : std_logic;
SIGNAL \C6|Mux5~3_combout\ : std_logic;
SIGNAL \C9|RAM_7[10]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[10]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[10]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux5~0_combout\ : std_logic;
SIGNAL \C6|Mux5~1_combout\ : std_logic;
SIGNAL \C6|Mux5~4_combout\ : std_logic;
SIGNAL \IO65_IN[10]~input_o\ : std_logic;
SIGNAL \C7|Add0~33_combout\ : std_logic;
SIGNAL \C7|Mux5~2_combout\ : std_logic;
SIGNAL \C7|Mux5~3_combout\ : std_logic;
SIGNAL \C8|REG_0~11_combout\ : std_logic;
SIGNAL \C8|REG_3[10]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux5~0_combout\ : std_logic;
SIGNAL \C4|Mux5~1_combout\ : std_logic;
SIGNAL \C7|Mux6~0_combout\ : std_logic;
SIGNAL \C7|Mux6~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[9]~6_combout\ : std_logic;
SIGNAL \C7|RAM_IN[9]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[9]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[9]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[9]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux6~2_combout\ : std_logic;
SIGNAL \C6|Mux6~3_combout\ : std_logic;
SIGNAL \C9|RAM_5[9]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[9]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[9]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux6~0_combout\ : std_logic;
SIGNAL \C6|Mux6~1_combout\ : std_logic;
SIGNAL \C6|Mux6~4_combout\ : std_logic;
SIGNAL \IO65_IN[9]~input_o\ : std_logic;
SIGNAL \C7|Add0~30_combout\ : std_logic;
SIGNAL \C7|Mux6~2_combout\ : std_logic;
SIGNAL \C7|Mux6~3_combout\ : std_logic;
SIGNAL \C8|REG_0~10_combout\ : std_logic;
SIGNAL \C8|REG_1[9]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux6~0_combout\ : std_logic;
SIGNAL \C4|Mux6~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[8]~5_combout\ : std_logic;
SIGNAL \C7|RAM_IN[8]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[8]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[8]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[8]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux7~2_combout\ : std_logic;
SIGNAL \C6|Mux7~3_combout\ : std_logic;
SIGNAL \C9|RAM_5[8]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[8]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[8]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux7~0_combout\ : std_logic;
SIGNAL \C6|Mux7~1_combout\ : std_logic;
SIGNAL \C6|Mux7~4_combout\ : std_logic;
SIGNAL \IO65_IN[8]~input_o\ : std_logic;
SIGNAL \C7|Add0~27_combout\ : std_logic;
SIGNAL \C7|Mux7~2_combout\ : std_logic;
SIGNAL \C7|Mux7~3_combout\ : std_logic;
SIGNAL \C8|REG_0~9_combout\ : std_logic;
SIGNAL \C4|Mux7~0_combout\ : std_logic;
SIGNAL \C4|Mux7~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[7]~16_combout\ : std_logic;
SIGNAL \C7|Add0~24_combout\ : std_logic;
SIGNAL \C7|REG_IN[7]~15_combout\ : std_logic;
SIGNAL \C7|Mux8~2_combout\ : std_logic;
SIGNAL \C7|Mux8~3_combout\ : std_logic;
SIGNAL \C7|Mux8~4_combout\ : std_logic;
SIGNAL \C8|REG_0~8_combout\ : std_logic;
SIGNAL \C4|Mux8~0_combout\ : std_logic;
SIGNAL \C4|Mux8~1_combout\ : std_logic;
SIGNAL \C7|Mux9~0_combout\ : std_logic;
SIGNAL \C7|Mux9~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[6]~4_combout\ : std_logic;
SIGNAL \C9|RAM_5[6]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_7[6]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[6]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux9~0_combout\ : std_logic;
SIGNAL \C6|Mux9~1_combout\ : std_logic;
SIGNAL \C9|RAM_2[6]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_3[6]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[6]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux9~2_combout\ : std_logic;
SIGNAL \C6|Mux9~3_combout\ : std_logic;
SIGNAL \C6|Mux9~4_combout\ : std_logic;
SIGNAL \IO65_IN[6]~input_o\ : std_logic;
SIGNAL \C7|Add0~21_combout\ : std_logic;
SIGNAL \C7|Mux9~2_combout\ : std_logic;
SIGNAL \C7|Mux9~3_combout\ : std_logic;
SIGNAL \C8|REG_0~7_combout\ : std_logic;
SIGNAL \C4|Mux9~0_combout\ : std_logic;
SIGNAL \C4|Mux9~1_combout\ : std_logic;
SIGNAL \C7|Mux10~0_combout\ : std_logic;
SIGNAL \C7|Mux10~1_combout\ : std_logic;
SIGNAL \C7|REG_IN[5]~3_combout\ : std_logic;
SIGNAL \C7|RAM_IN[5]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_6[5]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux10~0_combout\ : std_logic;
SIGNAL \C9|RAM_7[5]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_5[5]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux10~1_combout\ : std_logic;
SIGNAL \C9|RAM_3[5]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_2[5]~feeder_combout\ : std_logic;
SIGNAL \C9|RAM_1[5]~feeder_combout\ : std_logic;
SIGNAL \C6|Mux10~2_combout\ : std_logic;
SIGNAL \C6|Mux10~3_combout\ : std_logic;
SIGNAL \C6|Mux10~4_combout\ : std_logic;
SIGNAL \IO65_IN[5]~input_o\ : std_logic;
SIGNAL \C7|Add0~18_combout\ : std_logic;
SIGNAL \C7|Mux10~2_combout\ : std_logic;
SIGNAL \C7|Mux10~3_combout\ : std_logic;
SIGNAL \C8|REG_0~6_combout\ : std_logic;
SIGNAL \C8|REG_1[5]~feeder_combout\ : std_logic;
SIGNAL \C4|Mux10~0_combout\ : std_logic;
SIGNAL \C4|Mux10~1_combout\ : std_logic;
SIGNAL \C7|Add0~15_combout\ : std_logic;
SIGNAL \C7|Mux11~2_combout\ : std_logic;
SIGNAL \C7|Mux11~3_combout\ : std_logic;
SIGNAL \C7|Mux11~4_combout\ : std_logic;
SIGNAL \C8|REG_0~5_combout\ : std_logic;
SIGNAL \C8|REG_3[4]~feeder_combout\ : std_logic;
SIGNAL \C5|Mux11~0_combout\ : std_logic;
SIGNAL \C5|Mux11~1_combout\ : std_logic;
SIGNAL \C7|Mux26~3_combout\ : std_logic;
SIGNAL \C7|Mux26~2_combout\ : std_logic;
SIGNAL \C7|Mux26~5_combout\ : std_logic;
SIGNAL \C7|Mux26~6_combout\ : std_logic;
SIGNAL \C7|Mux26~8_combout\ : std_logic;
SIGNAL \C7|Mux26~7_combout\ : std_logic;
SIGNAL \C7|Mux26~9_combout\ : std_logic;
SIGNAL \C7|Mux26~1_combout\ : std_logic;
SIGNAL \C7|Mux26~4_combout\ : std_logic;
SIGNAL \C7|Mux26~10_combout\ : std_logic;
SIGNAL \C7|Mux26~11_combout\ : std_logic;
SIGNAL \C7|CMP_FLAG~q\ : std_logic;
SIGNAL \C7|PC[0]~0_combout\ : std_logic;
SIGNAL \C7|PC[0]~1_combout\ : std_logic;
SIGNAL \C7|Add2~1\ : std_logic;
SIGNAL \C7|Add2~3\ : std_logic;
SIGNAL \C7|Add2~5\ : std_logic;
SIGNAL \C7|Add2~6_combout\ : std_logic;
SIGNAL \C7|PC~6_combout\ : std_logic;
SIGNAL \C7|PC[0]~4_combout\ : std_logic;
SIGNAL \C2|Mux11~0_combout\ : std_logic;
SIGNAL \C3|OP_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \C7|Add2~0_combout\ : std_logic;
SIGNAL \C7|PC~5_combout\ : std_logic;
SIGNAL \C2|Mux10~0_combout\ : std_logic;
SIGNAL \C3|OP_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \C7|Add2~2_combout\ : std_logic;
SIGNAL \C7|PC~2_combout\ : std_logic;
SIGNAL \C2|Mux9~0_combout\ : std_logic;
SIGNAL \C3|OP_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \C7|Add2~4_combout\ : std_logic;
SIGNAL \C7|PC~7_combout\ : std_logic;
SIGNAL \C2|Mux4~0_combout\ : std_logic;
SIGNAL \C4|Mux15~0_combout\ : std_logic;
SIGNAL \C4|Mux15~1_combout\ : std_logic;
SIGNAL \C7|RAM_IN[0]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[0]~0_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[0]~1_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[9]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[10]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[11]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[12]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[13]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[14]~feeder_combout\ : std_logic;
SIGNAL \C9|IO64_OUT[15]~feeder_combout\ : std_logic;
SIGNAL \C7|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C6|RAM_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_6\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C1|COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C4|REG_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C7|REG_IN\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|IO64_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|PROM_OUT\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \C7|RAM_IN\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C3|OP_CODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C8|REG_2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C8|REG_1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C8|REG_0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C8|REG_3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C3|OP_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C4|N_REG_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C5|REG_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C9|RAM_3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET_N~input_o\ : std_logic;

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

\C1|CLK_EX~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|CLK_EX~q\);

\C1|CLK_DC~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|CLK_DC~q\);

\C1|CLK_WB~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|CLK_WB~q\);

\C1|CLK_FT~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|CLK_FT~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET_N~input_o\ <= NOT \RESET_N~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
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

-- Location: IOOBUF_X46_Y54_N2
\IO64_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(0),
	devoe => ww_devoe,
	o => \IO64_OUT[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\IO64_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(1),
	devoe => ww_devoe,
	o => \IO64_OUT[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\IO64_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(2),
	devoe => ww_devoe,
	o => \IO64_OUT[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\IO64_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(3),
	devoe => ww_devoe,
	o => \IO64_OUT[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\IO64_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(4),
	devoe => ww_devoe,
	o => \IO64_OUT[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\IO64_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(5),
	devoe => ww_devoe,
	o => \IO64_OUT[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\IO64_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(6),
	devoe => ww_devoe,
	o => \IO64_OUT[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\IO64_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(7),
	devoe => ww_devoe,
	o => \IO64_OUT[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\IO64_OUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(8),
	devoe => ww_devoe,
	o => \IO64_OUT[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\IO64_OUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(9),
	devoe => ww_devoe,
	o => \IO64_OUT[9]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\IO64_OUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(10),
	devoe => ww_devoe,
	o => \IO64_OUT[10]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\IO64_OUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(11),
	devoe => ww_devoe,
	o => \IO64_OUT[11]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\IO64_OUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(12),
	devoe => ww_devoe,
	o => \IO64_OUT[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\IO64_OUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(13),
	devoe => ww_devoe,
	o => \IO64_OUT[13]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\IO64_OUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(14),
	devoe => ww_devoe,
	o => \IO64_OUT[14]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\IO64_OUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C9|IO64_OUT\(15),
	devoe => ww_devoe,
	o => \IO64_OUT[15]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N26
\C1|COUNT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|COUNT[0]~1_combout\ = !\C1|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|COUNT\(0),
	combout => \C1|COUNT[0]~1_combout\);

-- Location: FF_X1_Y38_N27
\C1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|COUNT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(0));

-- Location: LCCOMB_X1_Y38_N28
\C1|COUNT[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|COUNT[1]~0_combout\ = \C1|COUNT\(1) $ (\C1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|COUNT\(1),
	datad => \C1|COUNT\(0),
	combout => \C1|COUNT[1]~0_combout\);

-- Location: FF_X1_Y38_N29
\C1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|COUNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(1));

-- Location: LCCOMB_X1_Y38_N30
\C1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux2~0_combout\ = (\C1|COUNT\(1) & \C1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|COUNT\(1),
	datad => \C1|COUNT\(0),
	combout => \C1|Mux2~0_combout\);

-- Location: FF_X1_Y38_N31
\C1|CLK_WB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|CLK_WB~q\);

-- Location: CLKCTRL_G3
\C1|CLK_WB~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|CLK_WB~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|CLK_WB~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N18
\C1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux2~1_combout\ = (!\C1|COUNT\(0) & \C1|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|COUNT\(0),
	datad => \C1|COUNT\(1),
	combout => \C1|Mux2~1_combout\);

-- Location: FF_X1_Y38_N19
\C1|CLK_EX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|CLK_EX~q\);

-- Location: CLKCTRL_G4
\C1|CLK_EX~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|CLK_EX~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|CLK_EX~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N16
\C1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux2~2_combout\ = (\C1|COUNT\(0) & !\C1|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|COUNT\(0),
	datad => \C1|COUNT\(1),
	combout => \C1|Mux2~2_combout\);

-- Location: FF_X1_Y38_N17
\C1|CLK_DC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|CLK_DC~q\);

-- Location: CLKCTRL_G2
\C1|CLK_DC~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|CLK_DC~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|CLK_DC~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N14
\C1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux0~0_combout\ = (!\C1|COUNT\(0) & !\C1|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|COUNT\(0),
	datad => \C1|COUNT\(1),
	combout => \C1|Mux0~0_combout\);

-- Location: FF_X1_Y38_N15
\C1|CLK_FT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|CLK_FT~q\);

-- Location: CLKCTRL_G1
\C1|CLK_FT~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|CLK_FT~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|CLK_FT~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y32_N24
\C2|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux8~0_combout\ = (\C7|PC\(2) & ((\C7|PC\(1) & (\C7|PC\(0) & !\C7|PC\(3))) # (!\C7|PC\(1) & ((\C7|PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(1),
	datab => \C7|PC\(0),
	datac => \C7|PC\(2),
	datad => \C7|PC\(3),
	combout => \C2|Mux8~0_combout\);

-- Location: FF_X41_Y32_N25
\C2|PROM_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(3));

-- Location: FF_X38_Y36_N31
\C3|OP_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	asdata => \C2|PROM_OUT\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_DATA\(3));

-- Location: LCCOMB_X40_Y32_N8
\C2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux1~0_combout\ = (\C7|PC\(3) & ((\C7|PC\(1) & ((!\C7|PC\(0)))) # (!\C7|PC\(1) & (\C7|PC\(2) & \C7|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(2),
	datab => \C7|PC\(3),
	datac => \C7|PC\(1),
	datad => \C7|PC\(0),
	combout => \C2|Mux1~0_combout\);

-- Location: FF_X40_Y32_N9
\C2|PROM_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(13));

-- Location: FF_X39_Y35_N29
\C3|OP_CODE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	asdata => \C2|PROM_OUT\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_CODE\(2));

-- Location: LCCOMB_X40_Y32_N10
\C2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux3~0_combout\ = (\C7|PC\(2) & (((!\C7|PC\(0))))) # (!\C7|PC\(2) & ((\C7|PC\(3) & (!\C7|PC\(1))) # (!\C7|PC\(3) & ((!\C7|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(2),
	datab => \C7|PC\(3),
	datac => \C7|PC\(1),
	datad => \C7|PC\(0),
	combout => \C2|Mux3~0_combout\);

-- Location: FF_X40_Y32_N11
\C2|PROM_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(11));

-- Location: FF_X38_Y37_N11
\C3|OP_CODE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	asdata => \C2|PROM_OUT\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_CODE\(0));

-- Location: LCCOMB_X40_Y32_N2
\C2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux2~0_combout\ = (\C7|PC\(3) & ((\C7|PC\(2) & ((!\C7|PC\(0)))) # (!\C7|PC\(2) & (\C7|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(2),
	datab => \C7|PC\(3),
	datac => \C7|PC\(1),
	datad => \C7|PC\(0),
	combout => \C2|Mux2~0_combout\);

-- Location: FF_X40_Y32_N3
\C2|PROM_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(12));

-- Location: FF_X38_Y37_N1
\C3|OP_CODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	asdata => \C2|PROM_OUT\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_CODE\(1));

-- Location: LCCOMB_X39_Y35_N0
\C7|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~0_combout\ = (\C3|OP_CODE\(1)) # ((\C3|OP_CODE\(2) & !\C3|OP_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(2),
	datac => \C3|OP_CODE\(0),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y32_N28
\C2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux0~0_combout\ = ((\C7|PC\(1) & ((!\C7|PC\(2)) # (!\C7|PC\(0)))) # (!\C7|PC\(1) & ((\C7|PC\(2))))) # (!\C7|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(0),
	datab => \C7|PC\(3),
	datac => \C7|PC\(1),
	datad => \C7|PC\(2),
	combout => \C2|Mux0~0_combout\);

-- Location: FF_X40_Y32_N29
\C2|PROM_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(14));

-- Location: LCCOMB_X39_Y32_N2
\C3|OP_CODE[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|OP_CODE[3]~feeder_combout\ = \C2|PROM_OUT\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|PROM_OUT\(14),
	combout => \C3|OP_CODE[3]~feeder_combout\);

-- Location: FF_X39_Y32_N3
\C3|OP_CODE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C3|OP_CODE[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_CODE\(3));

-- Location: LCCOMB_X39_Y35_N10
\C7|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~0_combout\ = (\C3|OP_CODE\(3) & (\C3|OP_CODE\(1) & (!\C3|OP_CODE\(0) & !\C3|OP_CODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(3),
	datab => \C3|OP_CODE\(1),
	datac => \C3|OP_CODE\(0),
	datad => \C3|OP_CODE\(2),
	combout => \C7|Mux26~0_combout\);

-- Location: LCCOMB_X41_Y32_N26
\C2|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux7~0_combout\ = (!\C7|PC\(2) & (\C7|PC\(3) & (\C7|PC\(1) $ (!\C7|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(1),
	datab => \C7|PC\(0),
	datac => \C7|PC\(2),
	datad => \C7|PC\(3),
	combout => \C2|Mux7~0_combout\);

-- Location: FF_X41_Y32_N27
\C2|PROM_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(5));

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X40_Y38_N0
\C8|REG_2[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[4]~feeder_combout\ = \C8|REG_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~5_combout\,
	combout => \C8|REG_2[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y36_N6
\C7|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux16~0_combout\ = ((!\C3|OP_CODE\(1) & ((\C3|OP_CODE\(0)) # (!\C3|OP_CODE\(2))))) # (!\C3|OP_CODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(3),
	datab => \C3|OP_CODE\(0),
	datac => \C3|OP_CODE\(1),
	datad => \C3|OP_CODE\(2),
	combout => \C7|Mux16~0_combout\);

-- Location: LCCOMB_X42_Y37_N30
\C7|REG_WEN~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_WEN~feeder_combout\ = \C7|Mux16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|Mux16~0_combout\,
	combout => \C7|REG_WEN~feeder_combout\);

-- Location: FF_X42_Y37_N31
\C7|REG_WEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_WEN~feeder_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_WEN~q\);

-- Location: LCCOMB_X40_Y32_N22
\C2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux5~0_combout\ = (\C7|PC\(1) & !\C7|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|PC\(1),
	datad => \C7|PC\(3),
	combout => \C2|Mux5~0_combout\);

-- Location: FF_X40_Y32_N23
\C2|PROM_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(8));

-- Location: LCCOMB_X41_Y37_N4
\C4|N_REG_OUT[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|N_REG_OUT[0]~feeder_combout\ = \C2|PROM_OUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|PROM_OUT\(8),
	combout => \C4|N_REG_OUT[0]~feeder_combout\);

-- Location: FF_X41_Y37_N5
\C4|N_REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|N_REG_OUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|N_REG_OUT\(0));

-- Location: LCCOMB_X41_Y37_N18
\C4|N_REG_OUT[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|N_REG_OUT[1]~feeder_combout\ = \C2|PROM_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|PROM_OUT\(9),
	combout => \C4|N_REG_OUT[1]~feeder_combout\);

-- Location: FF_X41_Y37_N19
\C4|N_REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|N_REG_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|N_REG_OUT\(1));

-- Location: LCCOMB_X41_Y37_N0
\C8|REG_2[14]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[14]~0_combout\ = ((\C7|REG_WEN~q\ & (!\C4|N_REG_OUT\(0) & \C4|N_REG_OUT\(1)))) # (!\RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_WEN~q\,
	datab => \RESET_N~input_o\,
	datac => \C4|N_REG_OUT\(0),
	datad => \C4|N_REG_OUT\(1),
	combout => \C8|REG_2[14]~0_combout\);

-- Location: FF_X40_Y38_N1
\C8|REG_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[4]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(4));

-- Location: LCCOMB_X41_Y37_N24
\C8|REG_0[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[12]~1_combout\ = ((\C7|REG_WEN~q\ & (!\C4|N_REG_OUT\(1) & !\C4|N_REG_OUT\(0)))) # (!\RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_WEN~q\,
	datab => \RESET_N~input_o\,
	datac => \C4|N_REG_OUT\(1),
	datad => \C4|N_REG_OUT\(0),
	combout => \C8|REG_0[12]~1_combout\);

-- Location: FF_X38_Y38_N27
\C8|REG_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~5_combout\,
	sload => VCC,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(4));

-- Location: LCCOMB_X41_Y38_N4
\C8|REG_1[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[4]~feeder_combout\ = \C8|REG_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~5_combout\,
	combout => \C8|REG_1[4]~feeder_combout\);

-- Location: LCCOMB_X41_Y37_N14
\C8|REG_1[14]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[14]~0_combout\ = ((\C7|REG_WEN~q\ & (!\C4|N_REG_OUT\(1) & \C4|N_REG_OUT\(0)))) # (!\RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_WEN~q\,
	datab => \RESET_N~input_o\,
	datac => \C4|N_REG_OUT\(1),
	datad => \C4|N_REG_OUT\(0),
	combout => \C8|REG_1[14]~0_combout\);

-- Location: FF_X41_Y38_N5
\C8|REG_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[4]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(4));

-- Location: LCCOMB_X38_Y38_N16
\C4|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux11~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(4)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(4),
	datab => \C2|PROM_OUT\(9),
	datac => \C8|REG_1\(4),
	datad => \C2|PROM_OUT\(8),
	combout => \C4|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y38_N0
\C4|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux11~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux11~0_combout\ & ((\C8|REG_3\(4)))) # (!\C4|Mux11~0_combout\ & (\C8|REG_2\(4))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_2\(4),
	datab => \C8|REG_3\(4),
	datac => \C2|PROM_OUT\(9),
	datad => \C4|Mux11~0_combout\,
	combout => \C4|Mux11~1_combout\);

-- Location: FF_X38_Y38_N1
\C4|REG_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(4));

-- Location: LCCOMB_X39_Y35_N18
\C7|Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux42~0_combout\ = (\C3|OP_CODE\(3) & (\C3|OP_CODE\(1) & (!\C3|OP_CODE\(0) & \C3|OP_CODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(3),
	datab => \C3|OP_CODE\(1),
	datac => \C3|OP_CODE\(0),
	datad => \C3|OP_CODE\(2),
	combout => \C7|Mux42~0_combout\);

-- Location: LCCOMB_X40_Y35_N24
\C7|RAM_IN[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[0]~0_combout\ = (\RESET_N~input_o\ & \C7|Mux42~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET_N~input_o\,
	datad => \C7|Mux42~0_combout\,
	combout => \C7|RAM_IN[0]~0_combout\);

-- Location: FF_X39_Y35_N13
\C7|RAM_IN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	asdata => \C4|REG_OUT\(4),
	sload => VCC,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(4));

-- Location: LCCOMB_X41_Y35_N6
\C9|RAM_5[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(4),
	combout => \C9|RAM_5[4]~feeder_combout\);

-- Location: LCCOMB_X41_Y32_N22
\C2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux6~0_combout\ = (!\C7|PC\(2) & (\C7|PC\(3) & ((\C7|PC\(1)) # (\C7|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(1),
	datab => \C7|PC\(0),
	datac => \C7|PC\(2),
	datad => \C7|PC\(3),
	combout => \C2|Mux6~0_combout\);

-- Location: FF_X41_Y32_N23
\C2|PROM_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(6));

-- Location: FF_X41_Y32_N21
\C7|RAM_WEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	asdata => \C7|Mux42~0_combout\,
	sload => VCC,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_WEN~q\);

-- Location: LCCOMB_X41_Y32_N16
\C9|RAM_0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_0[0]~0_combout\ = (!\C2|PROM_OUT\(5) & (!\C2|PROM_OUT\(3) & (!\C2|PROM_OUT\(6) & \C7|RAM_WEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C2|PROM_OUT\(3),
	datac => \C2|PROM_OUT\(6),
	datad => \C7|RAM_WEN~q\,
	combout => \C9|RAM_0[0]~0_combout\);

-- Location: LCCOMB_X41_Y35_N2
\C9|RAM_5[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[0]~0_combout\ = (\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_5[0]~0_combout\);

-- Location: FF_X41_Y35_N7
\C9|RAM_5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[4]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(4));

-- Location: LCCOMB_X43_Y35_N0
\C9|RAM_7[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(4),
	combout => \C9|RAM_7[4]~feeder_combout\);

-- Location: LCCOMB_X41_Y32_N12
\C9|RAM_7[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[0]~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1) & (\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_7[0]~0_combout\);

-- Location: FF_X43_Y35_N1
\C9|RAM_7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[4]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(4));

-- Location: LCCOMB_X42_Y32_N10
\C9|RAM_4[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_4[0]~0_combout\ = (!\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(2) & (\C9|RAM_0[0]~0_combout\ & !\C2|PROM_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(2),
	datac => \C9|RAM_0[0]~0_combout\,
	datad => \C2|PROM_OUT\(1),
	combout => \C9|RAM_4[0]~0_combout\);

-- Location: FF_X41_Y34_N15
\C9|RAM_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(4),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(4));

-- Location: LCCOMB_X41_Y34_N12
\C9|RAM_6[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(4),
	combout => \C9|RAM_6[4]~feeder_combout\);

-- Location: LCCOMB_X41_Y32_N30
\C9|RAM_6[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[0]~0_combout\ = (!\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1) & (\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_6[0]~0_combout\);

-- Location: FF_X41_Y34_N13
\C9|RAM_6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[4]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(4));

-- Location: LCCOMB_X41_Y34_N14
\C6|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux11~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(4))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(4),
	datad => \C9|RAM_6\(4),
	combout => \C6|Mux11~0_combout\);

-- Location: LCCOMB_X42_Y35_N14
\C6|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux11~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux11~0_combout\ & ((\C9|RAM_7\(4)))) # (!\C6|Mux11~0_combout\ & (\C9|RAM_5\(4))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_5\(4),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(4),
	datad => \C6|Mux11~0_combout\,
	combout => \C6|Mux11~1_combout\);

-- Location: LCCOMB_X42_Y35_N8
\C9|RAM_3[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(4),
	combout => \C9|RAM_3[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y35_N30
\C9|RAM_3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[0]~0_combout\ = (\C2|PROM_OUT\(1) & (\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_3[0]~0_combout\);

-- Location: FF_X42_Y35_N9
\C9|RAM_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[4]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(4));

-- Location: LCCOMB_X40_Y35_N20
\C9|RAM_2[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(4),
	combout => \C9|RAM_2[4]~feeder_combout\);

-- Location: LCCOMB_X41_Y32_N18
\C9|RAM_2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[0]~0_combout\ = (!\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_2[0]~0_combout\);

-- Location: FF_X40_Y35_N21
\C9|RAM_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[4]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(4));

-- Location: LCCOMB_X41_Y32_N14
\C9|RAM_0[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_0[0]~1_combout\ = (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_0[0]~1_combout\);

-- Location: FF_X42_Y33_N3
\C9|RAM_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(4),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(4));

-- Location: LCCOMB_X42_Y33_N12
\C9|RAM_1[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(4),
	combout => \C9|RAM_1[4]~feeder_combout\);

-- Location: LCCOMB_X41_Y32_N4
\C9|RAM_1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[0]~0_combout\ = (\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(2) & \C9|RAM_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|RAM_0[0]~0_combout\,
	combout => \C9|RAM_1[0]~0_combout\);

-- Location: FF_X42_Y33_N13
\C9|RAM_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[4]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(4));

-- Location: LCCOMB_X42_Y33_N2
\C6|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux11~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(4))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(4),
	datad => \C9|RAM_1\(4),
	combout => \C6|Mux11~2_combout\);

-- Location: LCCOMB_X42_Y35_N18
\C6|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux11~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux11~2_combout\ & (\C9|RAM_3\(4))) # (!\C6|Mux11~2_combout\ & ((\C9|RAM_2\(4)))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C9|RAM_3\(4),
	datac => \C9|RAM_2\(4),
	datad => \C6|Mux11~2_combout\,
	combout => \C6|Mux11~3_combout\);

-- Location: LCCOMB_X42_Y35_N0
\C6|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux11~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux11~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux11~1_combout\,
	datad => \C6|Mux11~3_combout\,
	combout => \C6|Mux11~4_combout\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X41_Y32_N10
\C6|RAM_OUT[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|RAM_OUT[2]~0_combout\ = (\C2|PROM_OUT\(6) & (((\C2|PROM_OUT\(2)) # (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(2),
	datac => \C2|PROM_OUT\(6),
	datad => \C2|PROM_OUT\(1),
	combout => \C6|RAM_OUT[2]~0_combout\);

-- Location: LCCOMB_X41_Y32_N20
\C6|RAM_OUT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|RAM_OUT[2]~1_combout\ = (!\C2|PROM_OUT\(5) & (!\C2|PROM_OUT\(3) & !\C6|RAM_OUT[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C2|PROM_OUT\(3),
	datad => \C6|RAM_OUT[2]~0_combout\,
	combout => \C6|RAM_OUT[2]~1_combout\);

-- Location: FF_X42_Y35_N1
\C6|RAM_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux11~4_combout\,
	asdata => \IO65_IN[4]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(4));

-- Location: LCCOMB_X38_Y34_N14
\C7|PC[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC[0]~3_combout\ = (\C3|OP_CODE\(3) & \C3|OP_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(3),
	datad => \C3|OP_CODE\(0),
	combout => \C7|PC[0]~3_combout\);

-- Location: LCCOMB_X38_Y35_N14
\C7|PC[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC[4]~8_combout\ = (\C3|OP_CODE\(1)) # (\C3|OP_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C3|OP_CODE\(0),
	combout => \C7|PC[4]~8_combout\);

-- Location: LCCOMB_X40_Y37_N0
\C8|REG_1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[3]~feeder_combout\ = \C8|REG_0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~4_combout\,
	combout => \C8|REG_1[3]~feeder_combout\);

-- Location: FF_X40_Y37_N1
\C8|REG_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[3]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(3));

-- Location: FF_X39_Y38_N31
\C8|REG_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~4_combout\,
	sload => VCC,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(3));

-- Location: LCCOMB_X40_Y38_N28
\C8|REG_2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[3]~feeder_combout\ = \C8|REG_0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~4_combout\,
	combout => \C8|REG_2[3]~feeder_combout\);

-- Location: FF_X40_Y38_N29
\C8|REG_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[3]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(3));

-- Location: LCCOMB_X39_Y38_N16
\C5|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux12~0_combout\ = (\C2|PROM_OUT\(6) & (((\C2|PROM_OUT\(5)) # (\C8|REG_2\(3))))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(3) & (!\C2|PROM_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(3),
	datab => \C2|PROM_OUT\(6),
	datac => \C2|PROM_OUT\(5),
	datad => \C8|REG_2\(3),
	combout => \C5|Mux12~0_combout\);

-- Location: LCCOMB_X39_Y38_N4
\C5|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux12~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux12~0_combout\ & (\C8|REG_3\(3))) # (!\C5|Mux12~0_combout\ & ((\C8|REG_1\(3)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_3\(3),
	datac => \C8|REG_1\(3),
	datad => \C5|Mux12~0_combout\,
	combout => \C5|Mux12~1_combout\);

-- Location: FF_X39_Y38_N5
\C5|REG_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(3));

-- Location: LCCOMB_X39_Y36_N24
\C7|REG_IN[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[3]~11_combout\ = (\C3|OP_CODE\(1) & ((\C3|OP_CODE\(2)) # (!\C3|OP_CODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(0),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(1),
	combout => \C7|REG_IN[3]~11_combout\);

-- Location: LCCOMB_X40_Y37_N12
\C8|REG_1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[1]~feeder_combout\ = \C8|REG_0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~2_combout\,
	combout => \C8|REG_1[1]~feeder_combout\);

-- Location: FF_X40_Y37_N13
\C8|REG_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[1]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(1));

-- Location: LCCOMB_X37_Y37_N22
\C8|REG_2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[1]~feeder_combout\ = \C8|REG_0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~2_combout\,
	combout => \C8|REG_2[1]~feeder_combout\);

-- Location: FF_X37_Y37_N23
\C8|REG_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[1]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(1));

-- Location: LCCOMB_X41_Y37_N2
\C8|REG_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[1]~feeder_combout\ = \C8|REG_0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~2_combout\,
	combout => \C8|REG_0[1]~feeder_combout\);

-- Location: FF_X41_Y37_N3
\C8|REG_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[1]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(1));

-- Location: LCCOMB_X37_Y37_N16
\C5|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux14~0_combout\ = (\C2|PROM_OUT\(5) & (((\C2|PROM_OUT\(6))))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & (\C8|REG_2\(1))) # (!\C2|PROM_OUT\(6) & ((\C8|REG_0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_2\(1),
	datab => \C2|PROM_OUT\(5),
	datac => \C2|PROM_OUT\(6),
	datad => \C8|REG_0\(1),
	combout => \C5|Mux14~0_combout\);

-- Location: LCCOMB_X37_Y37_N24
\C5|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux14~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux14~0_combout\ & (\C8|REG_3\(1))) # (!\C5|Mux14~0_combout\ & ((\C8|REG_1\(1)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(1),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_1\(1),
	datad => \C5|Mux14~0_combout\,
	combout => \C5|Mux14~1_combout\);

-- Location: FF_X37_Y37_N25
\C5|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(1));

-- Location: LCCOMB_X38_Y35_N20
\C7|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux14~0_combout\ = (\C7|Mux3~0_combout\ & (((\C7|PC[4]~8_combout\)))) # (!\C7|Mux3~0_combout\ & ((\C7|PC[4]~8_combout\ & (\C4|REG_OUT\(0))) # (!\C7|PC[4]~8_combout\ & ((\C5|REG_OUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \C4|REG_OUT\(0),
	datac => \C7|PC[4]~8_combout\,
	datad => \C5|REG_OUT\(1),
	combout => \C7|Mux14~0_combout\);

-- Location: LCCOMB_X38_Y34_N18
\C7|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux14~1_combout\ = (\C7|Mux3~0_combout\ & ((\C5|REG_OUT\(1) & ((\C4|REG_OUT\(1)) # (!\C7|Mux14~0_combout\))) # (!\C5|REG_OUT\(1) & (\C4|REG_OUT\(1) & !\C7|Mux14~0_combout\)))) # (!\C7|Mux3~0_combout\ & (((\C7|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(1),
	datab => \C4|REG_OUT\(1),
	datac => \C7|Mux3~0_combout\,
	datad => \C7|Mux14~0_combout\,
	combout => \C7|Mux14~1_combout\);

-- Location: LCCOMB_X38_Y34_N28
\C7|REG_IN[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[1]~0_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(2))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~11_combout\,
	datab => \C4|REG_OUT\(2),
	datad => \C7|Mux14~1_combout\,
	combout => \C7|REG_IN[1]~0_combout\);

-- Location: LCCOMB_X38_Y35_N6
\C7|REG_IN[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[3]~12_combout\ = (\C3|OP_CODE\(3) & ((\C3|OP_CODE\(2)) # (!\C3|OP_CODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_CODE\(2),
	datac => \C3|OP_CODE\(0),
	datad => \C3|OP_CODE\(3),
	combout => \C7|REG_IN[3]~12_combout\);

-- Location: LCCOMB_X40_Y35_N10
\C7|RAM_IN[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[1]~feeder_combout\ = \C4|REG_OUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(1),
	combout => \C7|RAM_IN[1]~feeder_combout\);

-- Location: FF_X40_Y35_N11
\C7|RAM_IN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[1]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(1));

-- Location: LCCOMB_X41_Y35_N12
\C9|RAM_5[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(1),
	combout => \C9|RAM_5[1]~feeder_combout\);

-- Location: FF_X41_Y35_N13
\C9|RAM_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[1]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(1));

-- Location: LCCOMB_X42_Y31_N2
\C9|RAM_7[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(1),
	combout => \C9|RAM_7[1]~feeder_combout\);

-- Location: FF_X42_Y31_N3
\C9|RAM_7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[1]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(1));

-- Location: FF_X41_Y34_N27
\C9|RAM_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(1),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(1));

-- Location: LCCOMB_X41_Y34_N28
\C9|RAM_6[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(1),
	combout => \C9|RAM_6[1]~feeder_combout\);

-- Location: FF_X41_Y34_N29
\C9|RAM_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[1]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(1));

-- Location: LCCOMB_X41_Y34_N26
\C6|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux14~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(1))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(1),
	datad => \C9|RAM_6\(1),
	combout => \C6|Mux14~0_combout\);

-- Location: LCCOMB_X42_Y32_N22
\C6|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux14~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux14~0_combout\ & ((\C9|RAM_7\(1)))) # (!\C6|Mux14~0_combout\ & (\C9|RAM_5\(1))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_5\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(1),
	datad => \C6|Mux14~0_combout\,
	combout => \C6|Mux14~1_combout\);

-- Location: LCCOMB_X42_Y31_N0
\C9|RAM_2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(1),
	combout => \C9|RAM_2[1]~feeder_combout\);

-- Location: FF_X42_Y31_N1
\C9|RAM_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[1]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(1));

-- Location: LCCOMB_X42_Y35_N28
\C9|RAM_3[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(1),
	combout => \C9|RAM_3[1]~feeder_combout\);

-- Location: FF_X42_Y35_N29
\C9|RAM_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[1]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(1));

-- Location: FF_X42_Y34_N3
\C9|RAM_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(1),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(1));

-- Location: LCCOMB_X42_Y34_N0
\C9|RAM_1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(1),
	combout => \C9|RAM_1[1]~feeder_combout\);

-- Location: FF_X42_Y34_N1
\C9|RAM_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[1]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(1));

-- Location: LCCOMB_X42_Y34_N2
\C6|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux14~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(1))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(1),
	datad => \C9|RAM_1\(1),
	combout => \C6|Mux14~2_combout\);

-- Location: LCCOMB_X42_Y32_N28
\C6|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux14~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux14~2_combout\ & ((\C9|RAM_3\(1)))) # (!\C6|Mux14~2_combout\ & (\C9|RAM_2\(1))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C9|RAM_2\(1),
	datac => \C9|RAM_3\(1),
	datad => \C6|Mux14~2_combout\,
	combout => \C6|Mux14~3_combout\);

-- Location: LCCOMB_X42_Y32_N18
\C6|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux14~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux14~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|Mux14~1_combout\,
	datab => \C2|PROM_OUT\(2),
	datad => \C6|Mux14~3_combout\,
	combout => \C6|Mux14~4_combout\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: FF_X42_Y32_N19
\C6|RAM_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux14~4_combout\,
	asdata => \IO65_IN[1]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(1));

-- Location: LCCOMB_X38_Y37_N12
\C7|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~5_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(1),
	combout => \C7|Add0~5_combout\);

-- Location: LCCOMB_X40_Y36_N10
\C7|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~5_combout\ = (\C4|REG_OUT\(0) & (!\C3|OP_CODE\(1) & (\C3|OP_CODE\(2)))) # (!\C4|REG_OUT\(0) & (\C3|OP_CODE\(0) & (\C3|OP_CODE\(1) $ (\C3|OP_CODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C4|REG_OUT\(0),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux15~5_combout\);

-- Location: LCCOMB_X40_Y36_N20
\C7|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~4_combout\ = (\C3|OP_CODE\(2) & ((\C3|OP_CODE\(1)) # ((\C4|REG_OUT\(0) & !\C3|OP_CODE\(0))))) # (!\C3|OP_CODE\(2) & (\C3|OP_CODE\(1) $ (((\C3|OP_CODE\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C4|REG_OUT\(0),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux15~4_combout\);

-- Location: LCCOMB_X38_Y37_N16
\C7|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~2_cout\ = CARRY(!\C3|OP_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_CODE\(0),
	datad => VCC,
	cout => \C7|Add0~2_cout\);

-- Location: LCCOMB_X38_Y37_N18
\C7|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~3_combout\ = (\C7|Add0~0_combout\ & ((\C4|REG_OUT\(0) & (\C7|Add0~2_cout\ & VCC)) # (!\C4|REG_OUT\(0) & (!\C7|Add0~2_cout\)))) # (!\C7|Add0~0_combout\ & ((\C4|REG_OUT\(0) & (!\C7|Add0~2_cout\)) # (!\C4|REG_OUT\(0) & ((\C7|Add0~2_cout\) # 
-- (GND)))))
-- \C7|Add0~4\ = CARRY((\C7|Add0~0_combout\ & (!\C4|REG_OUT\(0) & !\C7|Add0~2_cout\)) # (!\C7|Add0~0_combout\ & ((!\C7|Add0~2_cout\) # (!\C4|REG_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~0_combout\,
	datab => \C4|REG_OUT\(0),
	datad => VCC,
	cin => \C7|Add0~2_cout\,
	combout => \C7|Add0~3_combout\,
	cout => \C7|Add0~4\);

-- Location: LCCOMB_X40_Y36_N18
\C7|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~3_combout\ = (\C3|OP_CODE\(2) & (\C4|REG_OUT\(1))) # (!\C3|OP_CODE\(2) & ((\C7|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_CODE\(2),
	datac => \C4|REG_OUT\(1),
	datad => \C7|Add0~3_combout\,
	combout => \C7|Mux15~3_combout\);

-- Location: LCCOMB_X40_Y36_N4
\C7|Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~6_combout\ = (\C7|Mux15~5_combout\ & (\C7|Mux15~4_combout\)) # (!\C7|Mux15~5_combout\ & ((\C7|Mux15~4_combout\ & ((\C7|Mux15~3_combout\))) # (!\C7|Mux15~4_combout\ & (\C5|REG_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux15~5_combout\,
	datab => \C7|Mux15~4_combout\,
	datac => \C5|REG_OUT\(0),
	datad => \C7|Mux15~3_combout\,
	combout => \C7|Mux15~6_combout\);

-- Location: LCCOMB_X42_Y31_N4
\C9|RAM_7[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(0),
	combout => \C9|RAM_7[0]~feeder_combout\);

-- Location: FF_X42_Y31_N5
\C9|RAM_7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[0]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(0));

-- Location: FF_X41_Y34_N23
\C9|RAM_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(0),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(0));

-- Location: LCCOMB_X41_Y34_N24
\C9|RAM_6[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(0),
	combout => \C9|RAM_6[0]~feeder_combout\);

-- Location: FF_X41_Y34_N25
\C9|RAM_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[0]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(0));

-- Location: LCCOMB_X41_Y34_N22
\C6|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux15~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(0))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(0),
	datad => \C9|RAM_6\(0),
	combout => \C6|Mux15~0_combout\);

-- Location: LCCOMB_X41_Y35_N26
\C9|RAM_5[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(0),
	combout => \C9|RAM_5[0]~feeder_combout\);

-- Location: FF_X41_Y35_N27
\C9|RAM_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[0]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(0));

-- Location: LCCOMB_X42_Y32_N16
\C6|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux15~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux15~0_combout\ & (\C9|RAM_7\(0))) # (!\C6|Mux15~0_combout\ & ((\C9|RAM_5\(0)))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_7\(0),
	datab => \C2|PROM_OUT\(0),
	datac => \C6|Mux15~0_combout\,
	datad => \C9|RAM_5\(0),
	combout => \C6|Mux15~1_combout\);

-- Location: LCCOMB_X42_Y32_N6
\C9|RAM_2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(0),
	combout => \C9|RAM_2[0]~feeder_combout\);

-- Location: FF_X42_Y32_N7
\C9|RAM_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[0]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(0));

-- Location: LCCOMB_X42_Y35_N10
\C9|RAM_3[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(0),
	combout => \C9|RAM_3[0]~feeder_combout\);

-- Location: FF_X42_Y35_N11
\C9|RAM_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[0]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(0));

-- Location: FF_X40_Y34_N19
\C9|RAM_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(0),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(0));

-- Location: LCCOMB_X40_Y34_N24
\C9|RAM_1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(0),
	combout => \C9|RAM_1[0]~feeder_combout\);

-- Location: FF_X40_Y34_N25
\C9|RAM_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[0]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(0));

-- Location: LCCOMB_X40_Y34_N18
\C6|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux15~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(0))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(0),
	datad => \C9|RAM_1\(0),
	combout => \C6|Mux15~2_combout\);

-- Location: LCCOMB_X42_Y32_N20
\C6|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux15~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux15~2_combout\ & ((\C9|RAM_3\(0)))) # (!\C6|Mux15~2_combout\ & (\C9|RAM_2\(0))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_3\(0),
	datad => \C6|Mux15~2_combout\,
	combout => \C6|Mux15~3_combout\);

-- Location: LCCOMB_X42_Y32_N8
\C6|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux15~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux15~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux15~1_combout\,
	datad => \C6|Mux15~3_combout\,
	combout => \C6|Mux15~4_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X42_Y32_N9
\C6|RAM_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux15~4_combout\,
	asdata => \IO65_IN[0]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(0));

-- Location: LCCOMB_X40_Y36_N12
\C7|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~0_combout\ = (\C3|OP_CODE\(0) & ((\C3|OP_CODE\(2) & ((\C6|RAM_OUT\(0)))) # (!\C3|OP_CODE\(2) & (\C4|REG_OUT\(0))))) # (!\C3|OP_CODE\(0) & (((\C3|OP_CODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(0),
	datab => \C3|OP_CODE\(0),
	datac => \C3|OP_CODE\(2),
	datad => \C6|RAM_OUT\(0),
	combout => \C7|Mux15~0_combout\);

-- Location: LCCOMB_X40_Y36_N6
\C7|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~1_combout\ = (\C7|Mux15~0_combout\ & ((\C3|OP_CODE\(0)) # ((\C7|REG_IN\(0))))) # (!\C7|Mux15~0_combout\ & (!\C3|OP_CODE\(0) & (\C3|OP_DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux15~0_combout\,
	datab => \C3|OP_CODE\(0),
	datac => \C3|OP_DATA\(0),
	datad => \C7|REG_IN\(0),
	combout => \C7|Mux15~1_combout\);

-- Location: LCCOMB_X40_Y36_N0
\C7|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~2_combout\ = (\C3|OP_CODE\(3) & ((\C3|OP_CODE\(1) & (\C7|REG_IN\(0))) # (!\C3|OP_CODE\(1) & ((\C7|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C7|REG_IN\(0),
	datac => \C3|OP_CODE\(3),
	datad => \C7|Mux15~1_combout\,
	combout => \C7|Mux15~2_combout\);

-- Location: LCCOMB_X40_Y36_N28
\C7|Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux15~7_combout\ = (\C7|Mux15~2_combout\) # ((!\C3|OP_CODE\(3) & \C7|Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_CODE\(3),
	datac => \C7|Mux15~6_combout\,
	datad => \C7|Mux15~2_combout\,
	combout => \C7|Mux15~7_combout\);

-- Location: FF_X40_Y36_N29
\C7|REG_IN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|Mux15~7_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(0));

-- Location: LCCOMB_X40_Y38_N24
\C8|REG_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~0_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_N~input_o\,
	datad => \C7|REG_IN\(0),
	combout => \C8|REG_0~0_combout\);

-- Location: LCCOMB_X41_Y38_N24
\C8|REG_1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[0]~feeder_combout\ = \C8|REG_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~0_combout\,
	combout => \C8|REG_1[0]~feeder_combout\);

-- Location: FF_X41_Y38_N25
\C8|REG_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[0]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(0));

-- Location: LCCOMB_X40_Y38_N2
\C8|REG_3[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[0]~feeder_combout\ = \C8|REG_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~0_combout\,
	combout => \C8|REG_3[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y37_N26
\C8|REG_3[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[1]~0_combout\ = ((\C7|REG_WEN~q\ & (\C4|N_REG_OUT\(1) & \C4|N_REG_OUT\(0)))) # (!\RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_WEN~q\,
	datab => \C4|N_REG_OUT\(1),
	datac => \C4|N_REG_OUT\(0),
	datad => \RESET_N~input_o\,
	combout => \C8|REG_3[1]~0_combout\);

-- Location: FF_X40_Y38_N3
\C8|REG_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[0]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(0));

-- Location: LCCOMB_X41_Y38_N10
\C8|REG_0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[0]~feeder_combout\ = \C8|REG_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~0_combout\,
	combout => \C8|REG_0[0]~feeder_combout\);

-- Location: FF_X41_Y38_N11
\C8|REG_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[0]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(0));

-- Location: LCCOMB_X40_Y38_N20
\C8|REG_2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[0]~feeder_combout\ = \C8|REG_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~0_combout\,
	combout => \C8|REG_2[0]~feeder_combout\);

-- Location: FF_X40_Y38_N21
\C8|REG_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[0]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(0));

-- Location: LCCOMB_X37_Y38_N20
\C5|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux15~0_combout\ = (\C2|PROM_OUT\(6) & (((\C2|PROM_OUT\(5)) # (\C8|REG_2\(0))))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(0) & (!\C2|PROM_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(0),
	datab => \C2|PROM_OUT\(6),
	datac => \C2|PROM_OUT\(5),
	datad => \C8|REG_2\(0),
	combout => \C5|Mux15~0_combout\);

-- Location: LCCOMB_X37_Y38_N8
\C5|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux15~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux15~0_combout\ & ((\C8|REG_3\(0)))) # (!\C5|Mux15~0_combout\ & (\C8|REG_1\(0))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_1\(0),
	datac => \C8|REG_3\(0),
	datad => \C5|Mux15~0_combout\,
	combout => \C5|Mux15~1_combout\);

-- Location: FF_X37_Y38_N9
\C5|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(0));

-- Location: LCCOMB_X38_Y37_N10
\C7|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~0_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(0),
	combout => \C7|Add0~0_combout\);

-- Location: LCCOMB_X38_Y37_N20
\C7|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~6_combout\ = ((\C7|Add0~5_combout\ $ (\C4|REG_OUT\(1) $ (!\C7|Add0~4\)))) # (GND)
-- \C7|Add0~7\ = CARRY((\C7|Add0~5_combout\ & ((\C4|REG_OUT\(1)) # (!\C7|Add0~4\))) # (!\C7|Add0~5_combout\ & (\C4|REG_OUT\(1) & !\C7|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~5_combout\,
	datab => \C4|REG_OUT\(1),
	datad => VCC,
	cin => \C7|Add0~4\,
	combout => \C7|Add0~6_combout\,
	cout => \C7|Add0~7\);

-- Location: LCCOMB_X38_Y34_N12
\C7|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux14~2_combout\ = (\C7|REG_IN[3]~12_combout\ & (((\C7|PC[0]~3_combout\)))) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\ & (\C4|REG_OUT\(1))) # (!\C7|PC[0]~3_combout\ & ((\C7|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C4|REG_OUT\(1),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Add0~6_combout\,
	combout => \C7|Mux14~2_combout\);

-- Location: LCCOMB_X38_Y34_N22
\C7|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux14~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux14~2_combout\ & ((\C6|RAM_OUT\(1)))) # (!\C7|Mux14~2_combout\ & (\C3|OP_DATA\(1))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C3|OP_DATA\(1),
	datac => \C6|RAM_OUT\(1),
	datad => \C7|Mux14~2_combout\,
	combout => \C7|Mux14~3_combout\);

-- Location: LCCOMB_X39_Y35_N2
\C7|REG_IN[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[3]~13_combout\ = (\C3|OP_CODE\(3)) # ((!\C3|OP_CODE\(2) & (\C3|OP_CODE\(1) $ (\C3|OP_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(3),
	datab => \C3|OP_CODE\(1),
	datac => \C3|OP_CODE\(0),
	datad => \C3|OP_CODE\(2),
	combout => \C7|REG_IN[3]~13_combout\);

-- Location: LCCOMB_X39_Y34_N22
\C7|REG_IN[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[1]~14_combout\ = (\RESET_N~input_o\ & ((!\C3|OP_CODE\(3)) # (!\C7|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \RESET_N~input_o\,
	datac => \C3|OP_CODE\(3),
	combout => \C7|REG_IN[1]~14_combout\);

-- Location: FF_X38_Y34_N29
\C7|REG_IN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[1]~0_combout\,
	asdata => \C7|Mux14~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(1));

-- Location: LCCOMB_X38_Y34_N20
\C8|REG_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~2_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(1),
	combout => \C8|REG_0~2_combout\);

-- Location: LCCOMB_X40_Y37_N14
\C8|REG_3[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[1]~feeder_combout\ = \C8|REG_0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~2_combout\,
	combout => \C8|REG_3[1]~feeder_combout\);

-- Location: FF_X40_Y37_N15
\C8|REG_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[1]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(1));

-- Location: LCCOMB_X37_Y37_N12
\C4|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux14~0_combout\ = (\C2|PROM_OUT\(9) & ((\C8|REG_2\(1)) # ((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & (((!\C2|PROM_OUT\(8) & \C8|REG_0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_2\(1),
	datab => \C2|PROM_OUT\(9),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_0\(1),
	combout => \C4|Mux14~0_combout\);

-- Location: LCCOMB_X37_Y37_N28
\C4|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux14~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux14~0_combout\ & (\C8|REG_3\(1))) # (!\C4|Mux14~0_combout\ & ((\C8|REG_1\(1)))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(1),
	datab => \C8|REG_1\(1),
	datac => \C2|PROM_OUT\(8),
	datad => \C4|Mux14~0_combout\,
	combout => \C4|Mux14~1_combout\);

-- Location: FF_X37_Y37_N29
\C4|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(1));

-- Location: LCCOMB_X39_Y35_N26
\C7|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux13~0_combout\ = (\C7|Mux3~0_combout\ & (\C4|REG_OUT\(2))) # (!\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(2),
	datab => \C4|REG_OUT\(1),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux13~0_combout\);

-- Location: LCCOMB_X40_Y37_N28
\C8|REG_1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[2]~feeder_combout\ = \C8|REG_0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~3_combout\,
	combout => \C8|REG_1[2]~feeder_combout\);

-- Location: FF_X40_Y37_N29
\C8|REG_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[2]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(2));

-- Location: FF_X39_Y37_N31
\C8|REG_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~3_combout\,
	sload => VCC,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(2));

-- Location: FF_X38_Y37_N5
\C8|REG_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~3_combout\,
	sload => VCC,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(2));

-- Location: LCCOMB_X39_Y37_N24
\C5|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux13~0_combout\ = (\C2|PROM_OUT\(5) & (((\C2|PROM_OUT\(6))))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & ((\C8|REG_2\(2)))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(2),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_2\(2),
	datad => \C2|PROM_OUT\(6),
	combout => \C5|Mux13~0_combout\);

-- Location: LCCOMB_X39_Y37_N26
\C5|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux13~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux13~0_combout\ & (\C8|REG_3\(2))) # (!\C5|Mux13~0_combout\ & ((\C8|REG_1\(2)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(2),
	datab => \C8|REG_1\(2),
	datac => \C2|PROM_OUT\(5),
	datad => \C5|Mux13~0_combout\,
	combout => \C5|Mux13~1_combout\);

-- Location: FF_X39_Y37_N27
\C5|REG_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(2));

-- Location: LCCOMB_X39_Y35_N24
\C7|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux13~1_combout\ = (\C7|Mux13~0_combout\ & ((\C5|REG_OUT\(2)) # (\C7|PC[4]~8_combout\ $ (\C7|Mux3~0_combout\)))) # (!\C7|Mux13~0_combout\ & (!\C7|PC[4]~8_combout\ & ((\C5|REG_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC[4]~8_combout\,
	datab => \C7|Mux3~0_combout\,
	datac => \C7|Mux13~0_combout\,
	datad => \C5|REG_OUT\(2),
	combout => \C7|Mux13~1_combout\);

-- Location: LCCOMB_X38_Y34_N10
\C7|REG_IN[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[2]~1_combout\ = (\C7|REG_IN[3]~11_combout\ & ((\C4|REG_OUT\(3)))) # (!\C7|REG_IN[3]~11_combout\ & (\C7|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux13~1_combout\,
	datab => \C4|REG_OUT\(3),
	datad => \C7|REG_IN[3]~11_combout\,
	combout => \C7|REG_IN[2]~1_combout\);

-- Location: FF_X39_Y35_N5
\C7|RAM_IN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	asdata => \C4|REG_OUT\(2),
	sload => VCC,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(2));

-- Location: LCCOMB_X42_Y32_N12
\C9|RAM_2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(2),
	combout => \C9|RAM_2[2]~feeder_combout\);

-- Location: FF_X42_Y32_N13
\C9|RAM_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[2]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(2));

-- Location: FF_X42_Y33_N31
\C9|RAM_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(2),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(2));

-- Location: LCCOMB_X42_Y33_N28
\C9|RAM_1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(2),
	combout => \C9|RAM_1[2]~feeder_combout\);

-- Location: FF_X42_Y33_N29
\C9|RAM_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[2]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(2));

-- Location: LCCOMB_X42_Y33_N30
\C6|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux13~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(2))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(2),
	datad => \C9|RAM_1\(2),
	combout => \C6|Mux13~2_combout\);

-- Location: LCCOMB_X42_Y35_N22
\C9|RAM_3[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(2),
	combout => \C9|RAM_3[2]~feeder_combout\);

-- Location: FF_X42_Y35_N23
\C9|RAM_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[2]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(2));

-- Location: LCCOMB_X42_Y32_N26
\C6|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux13~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux13~2_combout\ & ((\C9|RAM_3\(2)))) # (!\C6|Mux13~2_combout\ & (\C9|RAM_2\(2))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(2),
	datab => \C2|PROM_OUT\(1),
	datac => \C6|Mux13~2_combout\,
	datad => \C9|RAM_3\(2),
	combout => \C6|Mux13~3_combout\);

-- Location: LCCOMB_X41_Y35_N14
\C9|RAM_5[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(2),
	combout => \C9|RAM_5[2]~feeder_combout\);

-- Location: FF_X41_Y35_N15
\C9|RAM_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[2]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(2));

-- Location: LCCOMB_X42_Y31_N14
\C9|RAM_7[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(2),
	combout => \C9|RAM_7[2]~feeder_combout\);

-- Location: FF_X42_Y31_N15
\C9|RAM_7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[2]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(2));

-- Location: FF_X41_Y34_N19
\C9|RAM_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(2),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(2));

-- Location: LCCOMB_X41_Y34_N16
\C9|RAM_6[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(2),
	combout => \C9|RAM_6[2]~feeder_combout\);

-- Location: FF_X41_Y34_N17
\C9|RAM_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[2]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(2));

-- Location: LCCOMB_X41_Y34_N18
\C6|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux13~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(2))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(2),
	datad => \C9|RAM_6\(2),
	combout => \C6|Mux13~0_combout\);

-- Location: LCCOMB_X42_Y32_N2
\C6|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux13~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux13~0_combout\ & ((\C9|RAM_7\(2)))) # (!\C6|Mux13~0_combout\ & (\C9|RAM_5\(2))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_5\(2),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(2),
	datad => \C6|Mux13~0_combout\,
	combout => \C6|Mux13~1_combout\);

-- Location: LCCOMB_X42_Y32_N24
\C6|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux13~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux13~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|Mux13~3_combout\,
	datab => \C2|PROM_OUT\(2),
	datad => \C6|Mux13~1_combout\,
	combout => \C6|Mux13~4_combout\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: FF_X42_Y32_N25
\C6|RAM_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux13~4_combout\,
	asdata => \IO65_IN[2]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(2));

-- Location: LCCOMB_X38_Y37_N6
\C7|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~8_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(2),
	combout => \C7|Add0~8_combout\);

-- Location: LCCOMB_X38_Y37_N22
\C7|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~9_combout\ = (\C7|Add0~8_combout\ & ((\C4|REG_OUT\(2) & (\C7|Add0~7\ & VCC)) # (!\C4|REG_OUT\(2) & (!\C7|Add0~7\)))) # (!\C7|Add0~8_combout\ & ((\C4|REG_OUT\(2) & (!\C7|Add0~7\)) # (!\C4|REG_OUT\(2) & ((\C7|Add0~7\) # (GND)))))
-- \C7|Add0~10\ = CARRY((\C7|Add0~8_combout\ & (!\C4|REG_OUT\(2) & !\C7|Add0~7\)) # (!\C7|Add0~8_combout\ & ((!\C7|Add0~7\) # (!\C4|REG_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~8_combout\,
	datab => \C4|REG_OUT\(2),
	datad => VCC,
	cin => \C7|Add0~7\,
	combout => \C7|Add0~9_combout\,
	cout => \C7|Add0~10\);

-- Location: LCCOMB_X37_Y37_N8
\C7|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux13~2_combout\ = (\C7|REG_IN[3]~12_combout\ & (((\C7|PC[0]~3_combout\)))) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\ & (\C4|REG_OUT\(2))) # (!\C7|PC[0]~3_combout\ & ((\C7|Add0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(2),
	datab => \C7|REG_IN[3]~12_combout\,
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Add0~9_combout\,
	combout => \C7|Mux13~2_combout\);

-- Location: LCCOMB_X38_Y34_N4
\C7|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux13~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux13~2_combout\ & (\C6|RAM_OUT\(2))) # (!\C7|Mux13~2_combout\ & ((\C3|OP_DATA\(2)))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C6|RAM_OUT\(2),
	datac => \C3|OP_DATA\(2),
	datad => \C7|Mux13~2_combout\,
	combout => \C7|Mux13~3_combout\);

-- Location: FF_X38_Y34_N11
\C7|REG_IN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[2]~1_combout\,
	asdata => \C7|Mux13~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(2));

-- Location: LCCOMB_X39_Y37_N14
\C8|REG_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~3_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(2),
	combout => \C8|REG_0~3_combout\);

-- Location: LCCOMB_X40_Y37_N26
\C8|REG_3[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[2]~feeder_combout\ = \C8|REG_0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~3_combout\,
	combout => \C8|REG_3[2]~feeder_combout\);

-- Location: FF_X40_Y37_N27
\C8|REG_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[2]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(2));

-- Location: LCCOMB_X39_Y37_N16
\C4|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux13~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(2)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(2),
	datab => \C2|PROM_OUT\(9),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_1\(2),
	combout => \C4|Mux13~0_combout\);

-- Location: LCCOMB_X39_Y37_N8
\C4|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux13~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux13~0_combout\ & (\C8|REG_3\(2))) # (!\C4|Mux13~0_combout\ & ((\C8|REG_2\(2)))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(2),
	datab => \C2|PROM_OUT\(9),
	datac => \C8|REG_2\(2),
	datad => \C4|Mux13~0_combout\,
	combout => \C4|Mux13~1_combout\);

-- Location: FF_X39_Y37_N9
\C4|REG_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(2));

-- Location: LCCOMB_X38_Y35_N16
\C7|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux12~0_combout\ = (\C7|PC[4]~8_combout\ & (((\C4|REG_OUT\(2)) # (\C7|Mux3~0_combout\)))) # (!\C7|PC[4]~8_combout\ & (\C5|REG_OUT\(3) & ((!\C7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(3),
	datab => \C7|PC[4]~8_combout\,
	datac => \C4|REG_OUT\(2),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux12~0_combout\);

-- Location: LCCOMB_X38_Y35_N30
\C7|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux12~1_combout\ = (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(3) & ((\C5|REG_OUT\(3)) # (!\C7|Mux12~0_combout\))) # (!\C4|REG_OUT\(3) & (!\C7|Mux12~0_combout\ & \C5|REG_OUT\(3))))) # (!\C7|Mux3~0_combout\ & (((\C7|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \C4|REG_OUT\(3),
	datac => \C7|Mux12~0_combout\,
	datad => \C5|REG_OUT\(3),
	combout => \C7|Mux12~1_combout\);

-- Location: LCCOMB_X38_Y34_N24
\C7|REG_IN[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[3]~2_combout\ = (\C7|REG_IN[3]~11_combout\ & ((\C4|REG_OUT\(4)))) # (!\C7|REG_IN[3]~11_combout\ & (\C7|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux12~1_combout\,
	datab => \C4|REG_OUT\(4),
	datad => \C7|REG_IN[3]~11_combout\,
	combout => \C7|REG_IN[3]~2_combout\);

-- Location: LCCOMB_X39_Y35_N30
\C7|RAM_IN[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[3]~feeder_combout\ = \C4|REG_OUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C4|REG_OUT\(3),
	combout => \C7|RAM_IN[3]~feeder_combout\);

-- Location: FF_X39_Y35_N31
\C7|RAM_IN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[3]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(3));

-- Location: LCCOMB_X42_Y31_N20
\C9|RAM_7[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(3),
	combout => \C9|RAM_7[3]~feeder_combout\);

-- Location: FF_X42_Y31_N21
\C9|RAM_7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[3]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(3));

-- Location: FF_X41_Y34_N3
\C9|RAM_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(3),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(3));

-- Location: LCCOMB_X41_Y34_N20
\C9|RAM_6[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(3),
	combout => \C9|RAM_6[3]~feeder_combout\);

-- Location: FF_X41_Y34_N21
\C9|RAM_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[3]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(3));

-- Location: LCCOMB_X41_Y34_N2
\C6|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux12~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(3))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(3),
	datad => \C9|RAM_6\(3),
	combout => \C6|Mux12~0_combout\);

-- Location: LCCOMB_X41_Y35_N20
\C9|RAM_5[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(3),
	combout => \C9|RAM_5[3]~feeder_combout\);

-- Location: FF_X41_Y35_N21
\C9|RAM_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[3]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(3));

-- Location: LCCOMB_X42_Y32_N4
\C6|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux12~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux12~0_combout\ & (\C9|RAM_7\(3))) # (!\C6|Mux12~0_combout\ & ((\C9|RAM_5\(3)))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_7\(3),
	datab => \C2|PROM_OUT\(0),
	datac => \C6|Mux12~0_combout\,
	datad => \C9|RAM_5\(3),
	combout => \C6|Mux12~1_combout\);

-- Location: LCCOMB_X42_Y32_N30
\C9|RAM_2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(3),
	combout => \C9|RAM_2[3]~feeder_combout\);

-- Location: FF_X42_Y32_N31
\C9|RAM_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[3]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(3));

-- Location: LCCOMB_X42_Y35_N20
\C9|RAM_3[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(3),
	combout => \C9|RAM_3[3]~feeder_combout\);

-- Location: FF_X42_Y35_N21
\C9|RAM_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[3]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(3));

-- Location: FF_X40_Y34_N23
\C9|RAM_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(3),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(3));

-- Location: LCCOMB_X40_Y34_N12
\C9|RAM_1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(3),
	combout => \C9|RAM_1[3]~feeder_combout\);

-- Location: FF_X40_Y34_N13
\C9|RAM_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[3]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(3));

-- Location: LCCOMB_X40_Y34_N22
\C6|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux12~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(3))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(3),
	datad => \C9|RAM_1\(3),
	combout => \C6|Mux12~2_combout\);

-- Location: LCCOMB_X42_Y32_N0
\C6|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux12~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux12~2_combout\ & ((\C9|RAM_3\(3)))) # (!\C6|Mux12~2_combout\ & (\C9|RAM_2\(3))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(3),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_3\(3),
	datad => \C6|Mux12~2_combout\,
	combout => \C6|Mux12~3_combout\);

-- Location: LCCOMB_X42_Y32_N14
\C6|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux12~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux12~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux12~1_combout\,
	datad => \C6|Mux12~3_combout\,
	combout => \C6|Mux12~4_combout\);

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: FF_X42_Y32_N15
\C6|RAM_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux12~4_combout\,
	asdata => \IO65_IN[3]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(3));

-- Location: LCCOMB_X38_Y37_N8
\C7|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~11_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(3),
	combout => \C7|Add0~11_combout\);

-- Location: LCCOMB_X38_Y37_N24
\C7|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~12_combout\ = ((\C4|REG_OUT\(3) $ (\C7|Add0~11_combout\ $ (!\C7|Add0~10\)))) # (GND)
-- \C7|Add0~13\ = CARRY((\C4|REG_OUT\(3) & ((\C7|Add0~11_combout\) # (!\C7|Add0~10\))) # (!\C4|REG_OUT\(3) & (\C7|Add0~11_combout\ & !\C7|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(3),
	datab => \C7|Add0~11_combout\,
	datad => VCC,
	cin => \C7|Add0~10\,
	combout => \C7|Add0~12_combout\,
	cout => \C7|Add0~13\);

-- Location: LCCOMB_X38_Y34_N2
\C7|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux12~2_combout\ = (\C7|REG_IN[3]~12_combout\ & (((\C7|PC[0]~3_combout\)))) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\ & (\C4|REG_OUT\(3))) # (!\C7|PC[0]~3_combout\ & ((\C7|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C4|REG_OUT\(3),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Add0~12_combout\,
	combout => \C7|Mux12~2_combout\);

-- Location: LCCOMB_X38_Y34_N8
\C7|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux12~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux12~2_combout\ & (\C6|RAM_OUT\(3))) # (!\C7|Mux12~2_combout\ & ((\C3|OP_DATA\(3)))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C6|RAM_OUT\(3),
	datac => \C3|OP_DATA\(3),
	datad => \C7|Mux12~2_combout\,
	combout => \C7|Mux12~3_combout\);

-- Location: FF_X38_Y34_N25
\C7|REG_IN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[3]~2_combout\,
	asdata => \C7|Mux12~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(3));

-- Location: LCCOMB_X39_Y34_N20
\C8|REG_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~4_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET_N~input_o\,
	datad => \C7|REG_IN\(3),
	combout => \C8|REG_0~4_combout\);

-- Location: FF_X40_Y38_N19
\C8|REG_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~4_combout\,
	sload => VCC,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(3));

-- Location: LCCOMB_X39_Y38_N0
\C4|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux12~0_combout\ = (\C2|PROM_OUT\(8) & (((\C2|PROM_OUT\(9))))) # (!\C2|PROM_OUT\(8) & ((\C2|PROM_OUT\(9) & ((\C8|REG_2\(3)))) # (!\C2|PROM_OUT\(9) & (\C8|REG_0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(3),
	datab => \C2|PROM_OUT\(8),
	datac => \C2|PROM_OUT\(9),
	datad => \C8|REG_2\(3),
	combout => \C4|Mux12~0_combout\);

-- Location: LCCOMB_X39_Y38_N24
\C4|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux12~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux12~0_combout\ & (\C8|REG_3\(3))) # (!\C4|Mux12~0_combout\ & ((\C8|REG_1\(3)))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(3),
	datab => \C2|PROM_OUT\(8),
	datac => \C8|REG_1\(3),
	datad => \C4|Mux12~0_combout\,
	combout => \C4|Mux12~1_combout\);

-- Location: FF_X39_Y38_N25
\C4|REG_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(3));

-- Location: LCCOMB_X39_Y35_N28
\C7|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux11~0_combout\ = (\C7|Mux3~0_combout\ & (\C4|REG_OUT\(4))) # (!\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(4),
	datab => \C4|REG_OUT\(3),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux11~0_combout\);

-- Location: LCCOMB_X39_Y35_N22
\C7|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux11~1_combout\ = (\C7|Mux11~0_combout\ & ((\C5|REG_OUT\(4)) # (\C7|PC[4]~8_combout\ $ (\C7|Mux3~0_combout\)))) # (!\C7|Mux11~0_combout\ & (!\C7|PC[4]~8_combout\ & (\C5|REG_OUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC[4]~8_combout\,
	datab => \C7|Mux11~0_combout\,
	datac => \C5|REG_OUT\(4),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux11~1_combout\);

-- Location: LCCOMB_X40_Y35_N26
\C7|RAM_IN[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[7]~feeder_combout\ = \C4|REG_OUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(7),
	combout => \C7|RAM_IN[7]~feeder_combout\);

-- Location: FF_X40_Y35_N27
\C7|RAM_IN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[7]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(7));

-- Location: LCCOMB_X41_Y31_N0
\C9|RAM_7[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(7),
	combout => \C9|RAM_7[7]~feeder_combout\);

-- Location: FF_X41_Y31_N1
\C9|RAM_7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[7]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(7));

-- Location: LCCOMB_X41_Y35_N22
\C9|RAM_5[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(7),
	combout => \C9|RAM_5[7]~feeder_combout\);

-- Location: FF_X41_Y35_N23
\C9|RAM_5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[7]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(7));

-- Location: FF_X41_Y34_N11
\C9|RAM_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(7),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(7));

-- Location: LCCOMB_X41_Y34_N4
\C9|RAM_6[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(7),
	combout => \C9|RAM_6[7]~feeder_combout\);

-- Location: FF_X41_Y34_N5
\C9|RAM_6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[7]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(7));

-- Location: LCCOMB_X41_Y34_N10
\C6|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux8~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(7))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(7),
	datad => \C9|RAM_6\(7),
	combout => \C6|Mux8~0_combout\);

-- Location: LCCOMB_X41_Y33_N10
\C6|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux8~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux8~0_combout\ & (\C9|RAM_7\(7))) # (!\C6|Mux8~0_combout\ & ((\C9|RAM_5\(7)))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_7\(7),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_5\(7),
	datad => \C6|Mux8~0_combout\,
	combout => \C6|Mux8~1_combout\);

-- Location: LCCOMB_X41_Y33_N12
\C9|RAM_2[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(7),
	combout => \C9|RAM_2[7]~feeder_combout\);

-- Location: FF_X41_Y33_N13
\C9|RAM_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[7]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(7));

-- Location: LCCOMB_X42_Y35_N6
\C9|RAM_3[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(7),
	combout => \C9|RAM_3[7]~feeder_combout\);

-- Location: FF_X42_Y35_N7
\C9|RAM_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[7]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(7));

-- Location: FF_X40_Y34_N31
\C9|RAM_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(7),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(7));

-- Location: LCCOMB_X40_Y34_N20
\C9|RAM_1[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(7),
	combout => \C9|RAM_1[7]~feeder_combout\);

-- Location: FF_X40_Y34_N21
\C9|RAM_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[7]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(7));

-- Location: LCCOMB_X40_Y34_N30
\C6|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux8~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(7))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(7),
	datad => \C9|RAM_1\(7),
	combout => \C6|Mux8~2_combout\);

-- Location: LCCOMB_X41_Y33_N18
\C6|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux8~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux8~2_combout\ & ((\C9|RAM_3\(7)))) # (!\C6|Mux8~2_combout\ & (\C9|RAM_2\(7))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(7),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_3\(7),
	datad => \C6|Mux8~2_combout\,
	combout => \C6|Mux8~3_combout\);

-- Location: LCCOMB_X41_Y33_N28
\C6|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux8~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux8~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|Mux8~1_combout\,
	datab => \C2|PROM_OUT\(2),
	datad => \C6|Mux8~3_combout\,
	combout => \C6|Mux8~4_combout\);

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: FF_X41_Y33_N29
\C6|RAM_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux8~4_combout\,
	asdata => \IO65_IN[7]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(7));

-- Location: LCCOMB_X40_Y37_N6
\C8|REG_1[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[7]~feeder_combout\ = \C8|REG_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~8_combout\,
	combout => \C8|REG_1[7]~feeder_combout\);

-- Location: FF_X40_Y37_N7
\C8|REG_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[7]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(7));

-- Location: LCCOMB_X39_Y38_N22
\C8|REG_0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[7]~feeder_combout\ = \C8|REG_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~8_combout\,
	combout => \C8|REG_0[7]~feeder_combout\);

-- Location: FF_X39_Y38_N23
\C8|REG_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[7]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(7));

-- Location: LCCOMB_X40_Y38_N4
\C8|REG_2[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[7]~feeder_combout\ = \C8|REG_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~8_combout\,
	combout => \C8|REG_2[7]~feeder_combout\);

-- Location: FF_X40_Y38_N5
\C8|REG_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[7]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(7));

-- Location: LCCOMB_X39_Y38_N6
\C5|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux8~0_combout\ = (\C2|PROM_OUT\(6) & (((\C2|PROM_OUT\(5)) # (\C8|REG_2\(7))))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(7) & (!\C2|PROM_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(7),
	datab => \C2|PROM_OUT\(6),
	datac => \C2|PROM_OUT\(5),
	datad => \C8|REG_2\(7),
	combout => \C5|Mux8~0_combout\);

-- Location: LCCOMB_X39_Y38_N26
\C5|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux8~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux8~0_combout\ & (\C8|REG_3\(7))) # (!\C5|Mux8~0_combout\ & ((\C8|REG_1\(7)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_3\(7),
	datac => \C8|REG_1\(7),
	datad => \C5|Mux8~0_combout\,
	combout => \C5|Mux8~1_combout\);

-- Location: FF_X39_Y38_N27
\C5|REG_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(7));

-- Location: LCCOMB_X38_Y35_N18
\C7|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux8~0_combout\ = (\C7|PC[4]~8_combout\ & (((\C4|REG_OUT\(6)) # (\C7|Mux3~0_combout\)))) # (!\C7|PC[4]~8_combout\ & (\C5|REG_OUT\(7) & ((!\C7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(7),
	datab => \C4|REG_OUT\(6),
	datac => \C7|PC[4]~8_combout\,
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux8~0_combout\);

-- Location: LCCOMB_X38_Y35_N12
\C7|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux8~1_combout\ = (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(7) & ((\C5|REG_OUT\(7)) # (!\C7|Mux8~0_combout\))) # (!\C4|REG_OUT\(7) & (\C5|REG_OUT\(7) & !\C7|Mux8~0_combout\)))) # (!\C7|Mux3~0_combout\ & (((\C7|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \C4|REG_OUT\(7),
	datac => \C5|REG_OUT\(7),
	datad => \C7|Mux8~0_combout\,
	combout => \C7|Mux8~1_combout\);

-- Location: LCCOMB_X38_Y38_N26
\C7|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux7~0_combout\ = (\C7|Mux3~0_combout\ & (\C4|REG_OUT\(8))) # (!\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(8),
	datab => \C4|REG_OUT\(7),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux7~0_combout\);

-- Location: LCCOMB_X41_Y38_N18
\C8|REG_1[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[8]~feeder_combout\ = \C8|REG_0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~9_combout\,
	combout => \C8|REG_1[8]~feeder_combout\);

-- Location: FF_X41_Y38_N19
\C8|REG_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[8]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(8));

-- Location: LCCOMB_X40_Y38_N8
\C8|REG_2[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[8]~feeder_combout\ = \C8|REG_0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~9_combout\,
	combout => \C8|REG_2[8]~feeder_combout\);

-- Location: FF_X40_Y38_N9
\C8|REG_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[8]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(8));

-- Location: LCCOMB_X41_Y38_N20
\C8|REG_0[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[8]~feeder_combout\ = \C8|REG_0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~9_combout\,
	combout => \C8|REG_0[8]~feeder_combout\);

-- Location: FF_X41_Y38_N21
\C8|REG_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[8]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(8));

-- Location: LCCOMB_X39_Y38_N28
\C5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux7~0_combout\ = (\C2|PROM_OUT\(5) & (\C2|PROM_OUT\(6))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & (\C8|REG_2\(8))) # (!\C2|PROM_OUT\(6) & ((\C8|REG_0\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C2|PROM_OUT\(6),
	datac => \C8|REG_2\(8),
	datad => \C8|REG_0\(8),
	combout => \C5|Mux7~0_combout\);

-- Location: LCCOMB_X39_Y38_N8
\C5|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux7~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux7~0_combout\ & ((\C8|REG_3\(8)))) # (!\C5|Mux7~0_combout\ & (\C8|REG_1\(8))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_1\(8),
	datac => \C8|REG_3\(8),
	datad => \C5|Mux7~0_combout\,
	combout => \C5|Mux7~1_combout\);

-- Location: FF_X39_Y38_N9
\C5|REG_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(8));

-- Location: LCCOMB_X38_Y38_N20
\C7|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux7~1_combout\ = (\C7|Mux7~0_combout\ & ((\C5|REG_OUT\(8)) # (\C7|PC[4]~8_combout\ $ (\C7|Mux3~0_combout\)))) # (!\C7|Mux7~0_combout\ & (!\C7|PC[4]~8_combout\ & (\C5|REG_OUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC[4]~8_combout\,
	datab => \C7|Mux7~0_combout\,
	datac => \C5|REG_OUT\(8),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux7~1_combout\);

-- Location: LCCOMB_X42_Y36_N22
\C7|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~5_combout\ = (\C3|OP_CODE\(1) & (((\C3|OP_CODE\(2)) # (!\C3|OP_CODE\(0))))) # (!\C3|OP_CODE\(1) & ((\C3|OP_CODE\(0)) # ((\C4|REG_OUT\(12) & \C3|OP_CODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C4|REG_OUT\(12),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux3~5_combout\);

-- Location: LCCOMB_X42_Y36_N16
\C7|Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~6_combout\ = (\C3|OP_CODE\(1) & (!\C4|REG_OUT\(12) & (!\C3|OP_CODE\(2) & \C3|OP_CODE\(0)))) # (!\C3|OP_CODE\(1) & (\C4|REG_OUT\(12) & (\C3|OP_CODE\(2) & !\C3|OP_CODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C4|REG_OUT\(12),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux3~6_combout\);

-- Location: LCCOMB_X40_Y37_N22
\C8|REG_3[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[12]~feeder_combout\ = \C8|REG_0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~13_combout\,
	combout => \C8|REG_3[12]~feeder_combout\);

-- Location: FF_X40_Y37_N23
\C8|REG_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[12]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(12));

-- Location: LCCOMB_X40_Y37_N20
\C8|REG_1[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[12]~feeder_combout\ = \C8|REG_0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~13_combout\,
	combout => \C8|REG_1[12]~feeder_combout\);

-- Location: FF_X40_Y37_N21
\C8|REG_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[12]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(12));

-- Location: LCCOMB_X41_Y37_N28
\C8|REG_0[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[12]~feeder_combout\ = \C8|REG_0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~13_combout\,
	combout => \C8|REG_0[12]~feeder_combout\);

-- Location: FF_X41_Y37_N29
\C8|REG_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[12]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(12));

-- Location: LCCOMB_X37_Y37_N10
\C5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux3~0_combout\ = (\C2|PROM_OUT\(5) & (((\C2|PROM_OUT\(6))))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & (\C8|REG_2\(12))) # (!\C2|PROM_OUT\(6) & ((\C8|REG_0\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_2\(12),
	datab => \C2|PROM_OUT\(5),
	datac => \C2|PROM_OUT\(6),
	datad => \C8|REG_0\(12),
	combout => \C5|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y37_N6
\C5|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux3~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux3~0_combout\ & (\C8|REG_3\(12))) # (!\C5|Mux3~0_combout\ & ((\C8|REG_1\(12)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_3\(12),
	datac => \C8|REG_1\(12),
	datad => \C5|Mux3~0_combout\,
	combout => \C5|Mux3~1_combout\);

-- Location: FF_X37_Y37_N7
\C5|REG_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(12));

-- Location: LCCOMB_X40_Y37_N16
\C8|REG_1[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[14]~feeder_combout\ = \C8|REG_0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~15_combout\,
	combout => \C8|REG_1[14]~feeder_combout\);

-- Location: FF_X40_Y37_N17
\C8|REG_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[14]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(14));

-- Location: LCCOMB_X42_Y36_N8
\C8|REG_2[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[14]~feeder_combout\ = \C8|REG_0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~15_combout\,
	combout => \C8|REG_2[14]~feeder_combout\);

-- Location: FF_X42_Y36_N9
\C8|REG_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[14]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(14));

-- Location: LCCOMB_X41_Y37_N20
\C8|REG_0[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[14]~feeder_combout\ = \C8|REG_0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~15_combout\,
	combout => \C8|REG_0[14]~feeder_combout\);

-- Location: FF_X41_Y37_N21
\C8|REG_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[14]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(14));

-- Location: LCCOMB_X41_Y36_N18
\C5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux1~0_combout\ = (\C2|PROM_OUT\(5) & (\C2|PROM_OUT\(6))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & (\C8|REG_2\(14))) # (!\C2|PROM_OUT\(6) & ((\C8|REG_0\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C2|PROM_OUT\(6),
	datac => \C8|REG_2\(14),
	datad => \C8|REG_0\(14),
	combout => \C5|Mux1~0_combout\);

-- Location: LCCOMB_X41_Y36_N26
\C5|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux1~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux1~0_combout\ & (\C8|REG_3\(14))) # (!\C5|Mux1~0_combout\ & ((\C8|REG_1\(14)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(14),
	datab => \C8|REG_1\(14),
	datac => \C2|PROM_OUT\(5),
	datad => \C5|Mux1~0_combout\,
	combout => \C5|Mux1~1_combout\);

-- Location: FF_X41_Y36_N27
\C5|REG_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(14));

-- Location: LCCOMB_X41_Y36_N2
\C7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux1~0_combout\ = (\C7|PC[4]~8_combout\ & (((\C4|REG_OUT\(13)) # (\C7|Mux3~0_combout\)))) # (!\C7|PC[4]~8_combout\ & (\C5|REG_OUT\(14) & ((!\C7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(14),
	datab => \C4|REG_OUT\(13),
	datac => \C7|PC[4]~8_combout\,
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y36_N2
\C7|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux1~1_combout\ = (\C7|Mux1~0_combout\ & (((\C4|REG_OUT\(14) & \C5|REG_OUT\(14))) # (!\C7|Mux3~0_combout\))) # (!\C7|Mux1~0_combout\ & (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(14)) # (\C5|REG_OUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux1~0_combout\,
	datab => \C4|REG_OUT\(14),
	datac => \C7|Mux3~0_combout\,
	datad => \C5|REG_OUT\(14),
	combout => \C7|Mux1~1_combout\);

-- Location: LCCOMB_X42_Y36_N18
\C7|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~3_combout\ = (\C3|OP_CODE\(1) & ((\C3|OP_CODE\(2) & (\C4|REG_OUT\(15) & \C3|OP_CODE\(0))) # (!\C3|OP_CODE\(2) & ((!\C3|OP_CODE\(0)))))) # (!\C3|OP_CODE\(1) & ((\C3|OP_CODE\(0)) # ((\C4|REG_OUT\(15) & \C3|OP_CODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C4|REG_OUT\(15),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux0~3_combout\);

-- Location: LCCOMB_X39_Y36_N0
\C7|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~4_combout\ = (\C3|OP_CODE\(2) & ((\C3|OP_CODE\(1)) # ((\C4|REG_OUT\(15) & !\C3|OP_CODE\(0))))) # (!\C3|OP_CODE\(2) & (!\C4|REG_OUT\(15) & (\C3|OP_CODE\(0) & \C3|OP_CODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(2),
	datab => \C4|REG_OUT\(15),
	datac => \C3|OP_CODE\(0),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Mux0~4_combout\);

-- Location: LCCOMB_X42_Y37_N28
\C8|REG_1[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[15]~feeder_combout\ = \C8|REG_0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~16_combout\,
	combout => \C8|REG_1[15]~feeder_combout\);

-- Location: FF_X42_Y37_N29
\C8|REG_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[15]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(15));

-- Location: LCCOMB_X41_Y37_N30
\C8|REG_0[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[15]~feeder_combout\ = \C8|REG_0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~16_combout\,
	combout => \C8|REG_0[15]~feeder_combout\);

-- Location: FF_X41_Y37_N31
\C8|REG_0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[15]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(15));

-- Location: LCCOMB_X42_Y36_N2
\C8|REG_2[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[15]~feeder_combout\ = \C8|REG_0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~16_combout\,
	combout => \C8|REG_2[15]~feeder_combout\);

-- Location: FF_X42_Y36_N3
\C8|REG_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[15]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(15));

-- Location: LCCOMB_X41_Y36_N0
\C5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux0~0_combout\ = (\C2|PROM_OUT\(5) & (\C2|PROM_OUT\(6))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & ((\C8|REG_2\(15)))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C2|PROM_OUT\(6),
	datac => \C8|REG_0\(15),
	datad => \C8|REG_2\(15),
	combout => \C5|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y36_N16
\C5|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux0~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux0~0_combout\ & (\C8|REG_3\(15))) # (!\C5|Mux0~0_combout\ & ((\C8|REG_1\(15)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_3\(15),
	datac => \C8|REG_1\(15),
	datad => \C5|Mux0~0_combout\,
	combout => \C5|Mux0~1_combout\);

-- Location: FF_X41_Y36_N17
\C5|REG_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(15));

-- Location: LCCOMB_X41_Y36_N24
\C7|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~47_combout\ = \C5|REG_OUT\(15) $ (\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C5|REG_OUT\(15),
	datac => \C3|OP_CODE\(1),
	combout => \C7|Add0~47_combout\);

-- Location: LCCOMB_X39_Y36_N20
\C7|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~44_combout\ = \C5|REG_OUT\(14) $ (\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C5|REG_OUT\(14),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Add0~44_combout\);

-- Location: LCCOMB_X41_Y38_N14
\C8|REG_1[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[13]~feeder_combout\ = \C8|REG_0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~14_combout\,
	combout => \C8|REG_1[13]~feeder_combout\);

-- Location: FF_X41_Y38_N15
\C8|REG_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[13]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(13));

-- Location: FF_X37_Y38_N17
\C8|REG_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~14_combout\,
	sload => VCC,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(13));

-- Location: LCCOMB_X41_Y38_N8
\C8|REG_0[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[13]~feeder_combout\ = \C8|REG_0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~14_combout\,
	combout => \C8|REG_0[13]~feeder_combout\);

-- Location: FF_X41_Y38_N9
\C8|REG_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[13]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(13));

-- Location: LCCOMB_X37_Y38_N0
\C5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux2~0_combout\ = (\C2|PROM_OUT\(6) & ((\C8|REG_2\(13)) # ((\C2|PROM_OUT\(5))))) # (!\C2|PROM_OUT\(6) & (((!\C2|PROM_OUT\(5) & \C8|REG_0\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(6),
	datab => \C8|REG_2\(13),
	datac => \C2|PROM_OUT\(5),
	datad => \C8|REG_0\(13),
	combout => \C5|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y38_N30
\C5|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux2~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux2~0_combout\ & (\C8|REG_3\(13))) # (!\C5|Mux2~0_combout\ & ((\C8|REG_1\(13)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(13),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_1\(13),
	datad => \C5|Mux2~0_combout\,
	combout => \C5|Mux2~1_combout\);

-- Location: FF_X37_Y38_N31
\C5|REG_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(13));

-- Location: LCCOMB_X37_Y38_N16
\C7|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~41_combout\ = \C5|REG_OUT\(13) $ (\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(13),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Add0~41_combout\);

-- Location: LCCOMB_X37_Y37_N30
\C7|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~38_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(12),
	combout => \C7|Add0~38_combout\);

-- Location: LCCOMB_X38_Y38_N4
\C8|REG_0[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[11]~feeder_combout\ = \C8|REG_0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~12_combout\,
	combout => \C8|REG_0[11]~feeder_combout\);

-- Location: FF_X38_Y38_N5
\C8|REG_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[11]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(11));

-- Location: LCCOMB_X37_Y38_N14
\C8|REG_2[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[11]~feeder_combout\ = \C8|REG_0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~12_combout\,
	combout => \C8|REG_2[11]~feeder_combout\);

-- Location: FF_X37_Y38_N15
\C8|REG_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[11]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(11));

-- Location: LCCOMB_X38_Y38_N8
\C5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux4~0_combout\ = (\C2|PROM_OUT\(6) & ((\C2|PROM_OUT\(5)) # ((\C8|REG_2\(11))))) # (!\C2|PROM_OUT\(6) & (!\C2|PROM_OUT\(5) & (\C8|REG_0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(6),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_0\(11),
	datad => \C8|REG_2\(11),
	combout => \C5|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y38_N28
\C8|REG_1[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[11]~feeder_combout\ = \C8|REG_0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~12_combout\,
	combout => \C8|REG_1[11]~feeder_combout\);

-- Location: FF_X42_Y38_N29
\C8|REG_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[11]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(11));

-- Location: LCCOMB_X38_Y38_N30
\C5|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux4~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux4~0_combout\ & (\C8|REG_3\(11))) # (!\C5|Mux4~0_combout\ & ((\C8|REG_1\(11)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_3\(11),
	datac => \C5|Mux4~0_combout\,
	datad => \C8|REG_1\(11),
	combout => \C5|Mux4~1_combout\);

-- Location: FF_X38_Y38_N31
\C5|REG_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(11));

-- Location: LCCOMB_X38_Y37_N2
\C7|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~35_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(11),
	combout => \C7|Add0~35_combout\);

-- Location: LCCOMB_X41_Y38_N22
\C8|REG_1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[10]~feeder_combout\ = \C8|REG_0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~11_combout\,
	combout => \C8|REG_1[10]~feeder_combout\);

-- Location: FF_X41_Y38_N23
\C8|REG_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[10]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(10));

-- Location: LCCOMB_X41_Y38_N16
\C8|REG_0[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[10]~feeder_combout\ = \C8|REG_0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~11_combout\,
	combout => \C8|REG_0[10]~feeder_combout\);

-- Location: FF_X41_Y38_N17
\C8|REG_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[10]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(10));

-- Location: FF_X40_Y38_N25
\C8|REG_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~11_combout\,
	sload => VCC,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(10));

-- Location: LCCOMB_X38_Y38_N6
\C5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux5~0_combout\ = (\C2|PROM_OUT\(6) & ((\C2|PROM_OUT\(5)) # ((\C8|REG_2\(10))))) # (!\C2|PROM_OUT\(6) & (!\C2|PROM_OUT\(5) & (\C8|REG_0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(6),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_0\(10),
	datad => \C8|REG_2\(10),
	combout => \C5|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y38_N24
\C5|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux5~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux5~0_combout\ & (\C8|REG_3\(10))) # (!\C5|Mux5~0_combout\ & ((\C8|REG_1\(10)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(10),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_1\(10),
	datad => \C5|Mux5~0_combout\,
	combout => \C5|Mux5~1_combout\);

-- Location: FF_X38_Y38_N25
\C5|REG_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(10));

-- Location: LCCOMB_X38_Y38_N2
\C7|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~32_combout\ = \C5|REG_OUT\(10) $ (\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C5|REG_OUT\(10),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Add0~32_combout\);

-- Location: LCCOMB_X40_Y38_N6
\C8|REG_3[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[9]~feeder_combout\ = \C8|REG_0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~10_combout\,
	combout => \C8|REG_3[9]~feeder_combout\);

-- Location: FF_X40_Y38_N7
\C8|REG_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[9]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(9));

-- Location: LCCOMB_X41_Y38_N12
\C8|REG_0[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0[9]~feeder_combout\ = \C8|REG_0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~10_combout\,
	combout => \C8|REG_0[9]~feeder_combout\);

-- Location: FF_X41_Y38_N13
\C8|REG_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_0[9]~feeder_combout\,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(9));

-- Location: LCCOMB_X40_Y38_N12
\C8|REG_2[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[9]~feeder_combout\ = \C8|REG_0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~10_combout\,
	combout => \C8|REG_2[9]~feeder_combout\);

-- Location: FF_X40_Y38_N13
\C8|REG_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[9]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(9));

-- Location: LCCOMB_X37_Y38_N10
\C5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux6~0_combout\ = (\C2|PROM_OUT\(5) & (\C2|PROM_OUT\(6))) # (!\C2|PROM_OUT\(5) & ((\C2|PROM_OUT\(6) & ((\C8|REG_2\(9)))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C2|PROM_OUT\(6),
	datac => \C8|REG_0\(9),
	datad => \C8|REG_2\(9),
	combout => \C5|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y38_N22
\C5|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux6~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux6~0_combout\ & ((\C8|REG_3\(9)))) # (!\C5|Mux6~0_combout\ & (\C8|REG_1\(9))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_1\(9),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_3\(9),
	datad => \C5|Mux6~0_combout\,
	combout => \C5|Mux6~1_combout\);

-- Location: FF_X37_Y38_N23
\C5|REG_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(9));

-- Location: LCCOMB_X37_Y38_N6
\C7|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~29_combout\ = \C5|REG_OUT\(9) $ (\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C5|REG_OUT\(9),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Add0~29_combout\);

-- Location: LCCOMB_X39_Y38_N18
\C7|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~26_combout\ = \C5|REG_OUT\(8) $ (\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C5|REG_OUT\(8),
	datad => \C3|OP_CODE\(1),
	combout => \C7|Add0~26_combout\);

-- Location: LCCOMB_X39_Y36_N10
\C7|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~23_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(7),
	combout => \C7|Add0~23_combout\);

-- Location: LCCOMB_X40_Y37_N18
\C8|REG_1[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[6]~feeder_combout\ = \C8|REG_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~7_combout\,
	combout => \C8|REG_1[6]~feeder_combout\);

-- Location: FF_X40_Y37_N19
\C8|REG_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[6]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(6));

-- Location: FF_X39_Y37_N15
\C8|REG_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~7_combout\,
	sload => VCC,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(6));

-- Location: LCCOMB_X39_Y37_N4
\C5|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux9~0_combout\ = (\C2|PROM_OUT\(6) & ((\C2|PROM_OUT\(5)) # ((\C8|REG_2\(6))))) # (!\C2|PROM_OUT\(6) & (!\C2|PROM_OUT\(5) & (\C8|REG_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(6),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_0\(6),
	datad => \C8|REG_2\(6),
	combout => \C5|Mux9~0_combout\);

-- Location: LCCOMB_X40_Y37_N24
\C8|REG_3[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[6]~feeder_combout\ = \C8|REG_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~7_combout\,
	combout => \C8|REG_3[6]~feeder_combout\);

-- Location: FF_X40_Y37_N25
\C8|REG_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[6]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(6));

-- Location: LCCOMB_X39_Y37_N22
\C5|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux9~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux9~0_combout\ & ((\C8|REG_3\(6)))) # (!\C5|Mux9~0_combout\ & (\C8|REG_1\(6))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_1\(6),
	datab => \C2|PROM_OUT\(5),
	datac => \C5|Mux9~0_combout\,
	datad => \C8|REG_3\(6),
	combout => \C5|Mux9~1_combout\);

-- Location: FF_X39_Y37_N23
\C5|REG_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(6));

-- Location: LCCOMB_X38_Y37_N4
\C7|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~20_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(6),
	combout => \C7|Add0~20_combout\);

-- Location: LCCOMB_X40_Y37_N8
\C8|REG_3[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[5]~feeder_combout\ = \C8|REG_0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~6_combout\,
	combout => \C8|REG_3[5]~feeder_combout\);

-- Location: FF_X40_Y37_N9
\C8|REG_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[5]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(5));

-- Location: FF_X39_Y37_N11
\C8|REG_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~6_combout\,
	sload => VCC,
	ena => \C8|REG_0[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_0\(5));

-- Location: FF_X38_Y37_N3
\C8|REG_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~6_combout\,
	sload => VCC,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(5));

-- Location: LCCOMB_X39_Y37_N18
\C5|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux10~0_combout\ = (\C2|PROM_OUT\(6) & (((\C2|PROM_OUT\(5)) # (\C8|REG_2\(5))))) # (!\C2|PROM_OUT\(6) & (\C8|REG_0\(5) & (!\C2|PROM_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(5),
	datab => \C2|PROM_OUT\(6),
	datac => \C2|PROM_OUT\(5),
	datad => \C8|REG_2\(5),
	combout => \C5|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y37_N28
\C5|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux10~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux10~0_combout\ & ((\C8|REG_3\(5)))) # (!\C5|Mux10~0_combout\ & (\C8|REG_1\(5))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_1\(5),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_3\(5),
	datad => \C5|Mux10~0_combout\,
	combout => \C5|Mux10~1_combout\);

-- Location: FF_X39_Y37_N29
\C5|REG_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(5));

-- Location: LCCOMB_X38_Y37_N0
\C7|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~17_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(5),
	combout => \C7|Add0~17_combout\);

-- Location: LCCOMB_X39_Y37_N2
\C7|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~14_combout\ = \C3|OP_CODE\(1) $ (\C5|REG_OUT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|OP_CODE\(1),
	datad => \C5|REG_OUT\(4),
	combout => \C7|Add0~14_combout\);

-- Location: LCCOMB_X38_Y37_N26
\C7|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~15_combout\ = (\C7|Add0~14_combout\ & ((\C4|REG_OUT\(4) & (\C7|Add0~13\ & VCC)) # (!\C4|REG_OUT\(4) & (!\C7|Add0~13\)))) # (!\C7|Add0~14_combout\ & ((\C4|REG_OUT\(4) & (!\C7|Add0~13\)) # (!\C4|REG_OUT\(4) & ((\C7|Add0~13\) # (GND)))))
-- \C7|Add0~16\ = CARRY((\C7|Add0~14_combout\ & (!\C4|REG_OUT\(4) & !\C7|Add0~13\)) # (!\C7|Add0~14_combout\ & ((!\C7|Add0~13\) # (!\C4|REG_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~14_combout\,
	datab => \C4|REG_OUT\(4),
	datad => VCC,
	cin => \C7|Add0~13\,
	combout => \C7|Add0~15_combout\,
	cout => \C7|Add0~16\);

-- Location: LCCOMB_X38_Y37_N28
\C7|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~18_combout\ = ((\C4|REG_OUT\(5) $ (\C7|Add0~17_combout\ $ (!\C7|Add0~16\)))) # (GND)
-- \C7|Add0~19\ = CARRY((\C4|REG_OUT\(5) & ((\C7|Add0~17_combout\) # (!\C7|Add0~16\))) # (!\C4|REG_OUT\(5) & (\C7|Add0~17_combout\ & !\C7|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(5),
	datab => \C7|Add0~17_combout\,
	datad => VCC,
	cin => \C7|Add0~16\,
	combout => \C7|Add0~18_combout\,
	cout => \C7|Add0~19\);

-- Location: LCCOMB_X38_Y37_N30
\C7|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~21_combout\ = (\C4|REG_OUT\(6) & ((\C7|Add0~20_combout\ & (\C7|Add0~19\ & VCC)) # (!\C7|Add0~20_combout\ & (!\C7|Add0~19\)))) # (!\C4|REG_OUT\(6) & ((\C7|Add0~20_combout\ & (!\C7|Add0~19\)) # (!\C7|Add0~20_combout\ & ((\C7|Add0~19\) # (GND)))))
-- \C7|Add0~22\ = CARRY((\C4|REG_OUT\(6) & (!\C7|Add0~20_combout\ & !\C7|Add0~19\)) # (!\C4|REG_OUT\(6) & ((!\C7|Add0~19\) # (!\C7|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(6),
	datab => \C7|Add0~20_combout\,
	datad => VCC,
	cin => \C7|Add0~19\,
	combout => \C7|Add0~21_combout\,
	cout => \C7|Add0~22\);

-- Location: LCCOMB_X38_Y36_N0
\C7|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~24_combout\ = ((\C4|REG_OUT\(7) $ (\C7|Add0~23_combout\ $ (!\C7|Add0~22\)))) # (GND)
-- \C7|Add0~25\ = CARRY((\C4|REG_OUT\(7) & ((\C7|Add0~23_combout\) # (!\C7|Add0~22\))) # (!\C4|REG_OUT\(7) & (\C7|Add0~23_combout\ & !\C7|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(7),
	datab => \C7|Add0~23_combout\,
	datad => VCC,
	cin => \C7|Add0~22\,
	combout => \C7|Add0~24_combout\,
	cout => \C7|Add0~25\);

-- Location: LCCOMB_X38_Y36_N2
\C7|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~27_combout\ = (\C7|Add0~26_combout\ & ((\C4|REG_OUT\(8) & (\C7|Add0~25\ & VCC)) # (!\C4|REG_OUT\(8) & (!\C7|Add0~25\)))) # (!\C7|Add0~26_combout\ & ((\C4|REG_OUT\(8) & (!\C7|Add0~25\)) # (!\C4|REG_OUT\(8) & ((\C7|Add0~25\) # (GND)))))
-- \C7|Add0~28\ = CARRY((\C7|Add0~26_combout\ & (!\C4|REG_OUT\(8) & !\C7|Add0~25\)) # (!\C7|Add0~26_combout\ & ((!\C7|Add0~25\) # (!\C4|REG_OUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~26_combout\,
	datab => \C4|REG_OUT\(8),
	datad => VCC,
	cin => \C7|Add0~25\,
	combout => \C7|Add0~27_combout\,
	cout => \C7|Add0~28\);

-- Location: LCCOMB_X38_Y36_N4
\C7|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~30_combout\ = ((\C7|Add0~29_combout\ $ (\C4|REG_OUT\(9) $ (!\C7|Add0~28\)))) # (GND)
-- \C7|Add0~31\ = CARRY((\C7|Add0~29_combout\ & ((\C4|REG_OUT\(9)) # (!\C7|Add0~28\))) # (!\C7|Add0~29_combout\ & (\C4|REG_OUT\(9) & !\C7|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~29_combout\,
	datab => \C4|REG_OUT\(9),
	datad => VCC,
	cin => \C7|Add0~28\,
	combout => \C7|Add0~30_combout\,
	cout => \C7|Add0~31\);

-- Location: LCCOMB_X38_Y36_N6
\C7|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~33_combout\ = (\C4|REG_OUT\(10) & ((\C7|Add0~32_combout\ & (\C7|Add0~31\ & VCC)) # (!\C7|Add0~32_combout\ & (!\C7|Add0~31\)))) # (!\C4|REG_OUT\(10) & ((\C7|Add0~32_combout\ & (!\C7|Add0~31\)) # (!\C7|Add0~32_combout\ & ((\C7|Add0~31\) # (GND)))))
-- \C7|Add0~34\ = CARRY((\C4|REG_OUT\(10) & (!\C7|Add0~32_combout\ & !\C7|Add0~31\)) # (!\C4|REG_OUT\(10) & ((!\C7|Add0~31\) # (!\C7|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(10),
	datab => \C7|Add0~32_combout\,
	datad => VCC,
	cin => \C7|Add0~31\,
	combout => \C7|Add0~33_combout\,
	cout => \C7|Add0~34\);

-- Location: LCCOMB_X38_Y36_N8
\C7|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~36_combout\ = ((\C4|REG_OUT\(11) $ (\C7|Add0~35_combout\ $ (!\C7|Add0~34\)))) # (GND)
-- \C7|Add0~37\ = CARRY((\C4|REG_OUT\(11) & ((\C7|Add0~35_combout\) # (!\C7|Add0~34\))) # (!\C4|REG_OUT\(11) & (\C7|Add0~35_combout\ & !\C7|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(11),
	datab => \C7|Add0~35_combout\,
	datad => VCC,
	cin => \C7|Add0~34\,
	combout => \C7|Add0~36_combout\,
	cout => \C7|Add0~37\);

-- Location: LCCOMB_X38_Y36_N10
\C7|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~39_combout\ = (\C7|Add0~38_combout\ & ((\C4|REG_OUT\(12) & (\C7|Add0~37\ & VCC)) # (!\C4|REG_OUT\(12) & (!\C7|Add0~37\)))) # (!\C7|Add0~38_combout\ & ((\C4|REG_OUT\(12) & (!\C7|Add0~37\)) # (!\C4|REG_OUT\(12) & ((\C7|Add0~37\) # (GND)))))
-- \C7|Add0~40\ = CARRY((\C7|Add0~38_combout\ & (!\C4|REG_OUT\(12) & !\C7|Add0~37\)) # (!\C7|Add0~38_combout\ & ((!\C7|Add0~37\) # (!\C4|REG_OUT\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~38_combout\,
	datab => \C4|REG_OUT\(12),
	datad => VCC,
	cin => \C7|Add0~37\,
	combout => \C7|Add0~39_combout\,
	cout => \C7|Add0~40\);

-- Location: LCCOMB_X38_Y36_N12
\C7|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~42_combout\ = ((\C4|REG_OUT\(13) $ (\C7|Add0~41_combout\ $ (!\C7|Add0~40\)))) # (GND)
-- \C7|Add0~43\ = CARRY((\C4|REG_OUT\(13) & ((\C7|Add0~41_combout\) # (!\C7|Add0~40\))) # (!\C4|REG_OUT\(13) & (\C7|Add0~41_combout\ & !\C7|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(13),
	datab => \C7|Add0~41_combout\,
	datad => VCC,
	cin => \C7|Add0~40\,
	combout => \C7|Add0~42_combout\,
	cout => \C7|Add0~43\);

-- Location: LCCOMB_X38_Y36_N14
\C7|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~45_combout\ = (\C7|Add0~44_combout\ & ((\C4|REG_OUT\(14) & (\C7|Add0~43\ & VCC)) # (!\C4|REG_OUT\(14) & (!\C7|Add0~43\)))) # (!\C7|Add0~44_combout\ & ((\C4|REG_OUT\(14) & (!\C7|Add0~43\)) # (!\C4|REG_OUT\(14) & ((\C7|Add0~43\) # (GND)))))
-- \C7|Add0~46\ = CARRY((\C7|Add0~44_combout\ & (!\C4|REG_OUT\(14) & !\C7|Add0~43\)) # (!\C7|Add0~44_combout\ & ((!\C7|Add0~43\) # (!\C4|REG_OUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Add0~44_combout\,
	datab => \C4|REG_OUT\(14),
	datad => VCC,
	cin => \C7|Add0~43\,
	combout => \C7|Add0~45_combout\,
	cout => \C7|Add0~46\);

-- Location: LCCOMB_X38_Y36_N16
\C7|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add0~48_combout\ = \C4|REG_OUT\(15) $ (\C7|Add0~46\ $ (!\C7|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(15),
	datad => \C7|Add0~47_combout\,
	cin => \C7|Add0~46\,
	combout => \C7|Add0~48_combout\);

-- Location: LCCOMB_X38_Y36_N28
\C7|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~2_combout\ = (\C3|OP_CODE\(2) & (\C4|REG_OUT\(14))) # (!\C3|OP_CODE\(2) & ((\C7|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C4|REG_OUT\(14),
	datac => \C3|OP_CODE\(2),
	datad => \C7|Add0~48_combout\,
	combout => \C7|Mux0~2_combout\);

-- Location: LCCOMB_X38_Y36_N26
\C7|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~5_combout\ = (\C7|Mux0~3_combout\ & ((\C7|Mux0~4_combout\) # ((\C7|Mux0~2_combout\)))) # (!\C7|Mux0~3_combout\ & (!\C7|Mux0~4_combout\ & (\C5|REG_OUT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux0~3_combout\,
	datab => \C7|Mux0~4_combout\,
	datac => \C5|REG_OUT\(15),
	datad => \C7|Mux0~2_combout\,
	combout => \C7|Mux0~5_combout\);

-- Location: LCCOMB_X40_Y35_N14
\C7|RAM_IN[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[15]~feeder_combout\ = \C4|REG_OUT\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(15),
	combout => \C7|RAM_IN[15]~feeder_combout\);

-- Location: FF_X40_Y35_N15
\C7|RAM_IN[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[15]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(15));

-- Location: LCCOMB_X41_Y35_N24
\C9|RAM_5[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(15),
	combout => \C9|RAM_5[15]~feeder_combout\);

-- Location: FF_X41_Y35_N25
\C9|RAM_5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[15]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(15));

-- Location: LCCOMB_X43_Y35_N16
\C9|RAM_7[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(15),
	combout => \C9|RAM_7[15]~feeder_combout\);

-- Location: FF_X43_Y35_N17
\C9|RAM_7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[15]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(15));

-- Location: FF_X43_Y32_N19
\C9|RAM_4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(15),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(15));

-- Location: LCCOMB_X43_Y32_N4
\C9|RAM_6[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(15),
	combout => \C9|RAM_6[15]~feeder_combout\);

-- Location: FF_X43_Y32_N5
\C9|RAM_6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[15]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(15));

-- Location: LCCOMB_X43_Y32_N18
\C6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux0~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(15)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(15),
	datad => \C9|RAM_6\(15),
	combout => \C6|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y34_N28
\C6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux0~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux0~0_combout\ & ((\C9|RAM_7\(15)))) # (!\C6|Mux0~0_combout\ & (\C9|RAM_5\(15))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_5\(15),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(15),
	datad => \C6|Mux0~0_combout\,
	combout => \C6|Mux0~1_combout\);

-- Location: LCCOMB_X43_Y33_N26
\C9|RAM_2[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(15),
	combout => \C9|RAM_2[15]~feeder_combout\);

-- Location: FF_X43_Y33_N27
\C9|RAM_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[15]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(15));

-- Location: LCCOMB_X42_Y35_N12
\C9|RAM_3[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(15),
	combout => \C9|RAM_3[15]~feeder_combout\);

-- Location: FF_X42_Y35_N13
\C9|RAM_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[15]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(15));

-- Location: FF_X42_Y33_N23
\C9|RAM_0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(15),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(15));

-- Location: LCCOMB_X42_Y33_N20
\C9|RAM_1[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(15),
	combout => \C9|RAM_1[15]~feeder_combout\);

-- Location: FF_X42_Y33_N21
\C9|RAM_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[15]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(15));

-- Location: LCCOMB_X42_Y33_N22
\C6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux0~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(15))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(15),
	datad => \C9|RAM_1\(15),
	combout => \C6|Mux0~2_combout\);

-- Location: LCCOMB_X43_Y34_N10
\C6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux0~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux0~2_combout\ & ((\C9|RAM_3\(15)))) # (!\C6|Mux0~2_combout\ & (\C9|RAM_2\(15))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(15),
	datab => \C9|RAM_3\(15),
	datac => \C2|PROM_OUT\(1),
	datad => \C6|Mux0~2_combout\,
	combout => \C6|Mux0~3_combout\);

-- Location: LCCOMB_X43_Y34_N30
\C6|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux0~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux0~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux0~1_combout\,
	datad => \C6|Mux0~3_combout\,
	combout => \C6|Mux0~4_combout\);

-- Location: IOIBUF_X24_Y0_N1
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

-- Location: FF_X43_Y34_N31
\C6|RAM_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux0~4_combout\,
	asdata => \IO65_IN[15]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(15));

-- Location: LCCOMB_X42_Y36_N4
\C7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~0_combout\ = (\C3|OP_CODE\(2) & (\C6|RAM_OUT\(15) & ((\C3|OP_CODE\(0))))) # (!\C3|OP_CODE\(2) & (((\C4|REG_OUT\(15) & !\C3|OP_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|RAM_OUT\(15),
	datab => \C4|REG_OUT\(15),
	datac => \C3|OP_CODE\(2),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y36_N28
\C7|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~1_combout\ = (\C3|OP_CODE\(1) & (\C7|Mux3~0_combout\ & ((\C7|REG_IN\(15))))) # (!\C3|OP_CODE\(1) & ((\C7|Mux0~0_combout\) # ((\C7|Mux3~0_combout\ & \C7|REG_IN\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \C7|Mux3~0_combout\,
	datac => \C7|Mux0~0_combout\,
	datad => \C7|REG_IN\(15),
	combout => \C7|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y36_N18
\C7|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux0~6_combout\ = (\C3|OP_CODE\(3) & ((\C7|Mux0~1_combout\))) # (!\C3|OP_CODE\(3) & (\C7|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_CODE\(3),
	datac => \C7|Mux0~5_combout\,
	datad => \C7|Mux0~1_combout\,
	combout => \C7|Mux0~6_combout\);

-- Location: FF_X37_Y36_N19
\C7|REG_IN[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|Mux0~6_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(15));

-- Location: LCCOMB_X41_Y36_N10
\C8|REG_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~16_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(15),
	combout => \C8|REG_0~16_combout\);

-- Location: LCCOMB_X41_Y36_N14
\C8|REG_3[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[15]~feeder_combout\ = \C8|REG_0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~16_combout\,
	combout => \C8|REG_3[15]~feeder_combout\);

-- Location: FF_X41_Y36_N15
\C8|REG_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[15]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(15));

-- Location: LCCOMB_X41_Y36_N28
\C4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux0~0_combout\ = (\C2|PROM_OUT\(8) & (\C2|PROM_OUT\(9))) # (!\C2|PROM_OUT\(8) & ((\C2|PROM_OUT\(9) & ((\C8|REG_2\(15)))) # (!\C2|PROM_OUT\(9) & (\C8|REG_0\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C2|PROM_OUT\(9),
	datac => \C8|REG_0\(15),
	datad => \C8|REG_2\(15),
	combout => \C4|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y36_N6
\C4|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux0~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux0~0_combout\ & (\C8|REG_3\(15))) # (!\C4|Mux0~0_combout\ & ((\C8|REG_1\(15)))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C8|REG_3\(15),
	datac => \C8|REG_1\(15),
	datad => \C4|Mux0~0_combout\,
	combout => \C4|Mux0~1_combout\);

-- Location: FF_X41_Y36_N7
\C4|REG_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(15));

-- Location: LCCOMB_X39_Y36_N18
\C7|REG_IN[14]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[14]~10_combout\ = (\C7|REG_IN[3]~11_combout\ & ((\C4|REG_OUT\(15)))) # (!\C7|REG_IN[3]~11_combout\ & (\C7|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux1~1_combout\,
	datab => \C4|REG_OUT\(15),
	datad => \C7|REG_IN[3]~11_combout\,
	combout => \C7|REG_IN[14]~10_combout\);

-- Location: LCCOMB_X40_Y35_N8
\C7|RAM_IN[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[14]~feeder_combout\ = \C4|REG_OUT\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C4|REG_OUT\(14),
	combout => \C7|RAM_IN[14]~feeder_combout\);

-- Location: FF_X40_Y35_N9
\C7|RAM_IN[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[14]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(14));

-- Location: LCCOMB_X43_Y33_N0
\C9|RAM_2[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(14),
	combout => \C9|RAM_2[14]~feeder_combout\);

-- Location: FF_X43_Y33_N1
\C9|RAM_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[14]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(14));

-- Location: LCCOMB_X42_Y35_N26
\C9|RAM_3[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(14),
	combout => \C9|RAM_3[14]~feeder_combout\);

-- Location: FF_X42_Y35_N27
\C9|RAM_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[14]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(14));

-- Location: FF_X42_Y34_N21
\C9|RAM_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(14),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(14));

-- Location: LCCOMB_X42_Y34_N10
\C9|RAM_1[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(14),
	combout => \C9|RAM_1[14]~feeder_combout\);

-- Location: FF_X42_Y34_N11
\C9|RAM_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[14]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(14));

-- Location: LCCOMB_X42_Y34_N20
\C6|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux1~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(14))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(14),
	datad => \C9|RAM_1\(14),
	combout => \C6|Mux1~2_combout\);

-- Location: LCCOMB_X43_Y34_N26
\C6|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux1~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux1~2_combout\ & ((\C9|RAM_3\(14)))) # (!\C6|Mux1~2_combout\ & (\C9|RAM_2\(14))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C9|RAM_2\(14),
	datac => \C9|RAM_3\(14),
	datad => \C6|Mux1~2_combout\,
	combout => \C6|Mux1~3_combout\);

-- Location: LCCOMB_X42_Y31_N26
\C9|RAM_7[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(14),
	combout => \C9|RAM_7[14]~feeder_combout\);

-- Location: FF_X42_Y31_N27
\C9|RAM_7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[14]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(14));

-- Location: LCCOMB_X43_Y35_N6
\C9|RAM_5[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(14),
	combout => \C9|RAM_5[14]~feeder_combout\);

-- Location: FF_X43_Y35_N7
\C9|RAM_5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[14]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(14));

-- Location: FF_X43_Y32_N7
\C9|RAM_4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(14),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(14));

-- Location: LCCOMB_X43_Y32_N8
\C9|RAM_6[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(14),
	combout => \C9|RAM_6[14]~feeder_combout\);

-- Location: FF_X43_Y32_N9
\C9|RAM_6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[14]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(14));

-- Location: LCCOMB_X43_Y32_N6
\C6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux1~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(14)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(14),
	datad => \C9|RAM_6\(14),
	combout => \C6|Mux1~0_combout\);

-- Location: LCCOMB_X43_Y34_N16
\C6|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux1~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux1~0_combout\ & (\C9|RAM_7\(14))) # (!\C6|Mux1~0_combout\ & ((\C9|RAM_5\(14)))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_7\(14),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_5\(14),
	datad => \C6|Mux1~0_combout\,
	combout => \C6|Mux1~1_combout\);

-- Location: LCCOMB_X43_Y34_N4
\C6|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux1~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux1~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|Mux1~3_combout\,
	datab => \C2|PROM_OUT\(2),
	datad => \C6|Mux1~1_combout\,
	combout => \C6|Mux1~4_combout\);

-- Location: IOIBUF_X20_Y0_N15
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

-- Location: FF_X43_Y34_N5
\C6|RAM_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux1~4_combout\,
	asdata => \IO65_IN[14]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(14));

-- Location: FF_X38_Y36_N21
\C3|OP_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	asdata => \C2|PROM_OUT\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_DATA\(6));

-- Location: LCCOMB_X38_Y36_N20
\C7|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux1~2_combout\ = (\C7|REG_IN[3]~12_combout\ & (\C7|PC[0]~3_combout\)) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\ & (\C3|OP_DATA\(6))) # (!\C7|PC[0]~3_combout\ & ((\C7|Add0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C7|PC[0]~3_combout\,
	datac => \C3|OP_DATA\(6),
	datad => \C7|Add0~45_combout\,
	combout => \C7|Mux1~2_combout\);

-- Location: LCCOMB_X39_Y36_N30
\C7|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux1~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux1~2_combout\ & (\C6|RAM_OUT\(14))) # (!\C7|Mux1~2_combout\ & ((\C4|REG_OUT\(14)))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C6|RAM_OUT\(14),
	datac => \C4|REG_OUT\(14),
	datad => \C7|Mux1~2_combout\,
	combout => \C7|Mux1~3_combout\);

-- Location: FF_X39_Y36_N19
\C7|REG_IN[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[14]~10_combout\,
	asdata => \C7|Mux1~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(14));

-- Location: LCCOMB_X40_Y36_N14
\C8|REG_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~15_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_N~input_o\,
	datad => \C7|REG_IN\(14),
	combout => \C8|REG_0~15_combout\);

-- Location: LCCOMB_X41_Y36_N22
\C8|REG_3[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[14]~feeder_combout\ = \C8|REG_0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~15_combout\,
	combout => \C8|REG_3[14]~feeder_combout\);

-- Location: FF_X41_Y36_N23
\C8|REG_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[14]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(14));

-- Location: LCCOMB_X41_Y36_N12
\C4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux1~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(14)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(9),
	datab => \C8|REG_0\(14),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_1\(14),
	combout => \C4|Mux1~0_combout\);

-- Location: LCCOMB_X41_Y36_N20
\C4|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux1~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux1~0_combout\ & (\C8|REG_3\(14))) # (!\C4|Mux1~0_combout\ & ((\C8|REG_2\(14)))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(14),
	datab => \C2|PROM_OUT\(9),
	datac => \C8|REG_2\(14),
	datad => \C4|Mux1~0_combout\,
	combout => \C4|Mux1~1_combout\);

-- Location: FF_X41_Y36_N21
\C4|REG_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(14));

-- Location: LCCOMB_X40_Y36_N30
\C7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux2~0_combout\ = (\C7|Mux3~0_combout\ & (\C4|REG_OUT\(13))) # (!\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C4|REG_OUT\(13),
	datac => \C7|Mux3~0_combout\,
	datad => \C4|REG_OUT\(12),
	combout => \C7|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y36_N16
\C7|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux2~1_combout\ = (\C5|REG_OUT\(13) & (((\C7|Mux2~0_combout\) # (!\C7|PC[4]~8_combout\)))) # (!\C5|REG_OUT\(13) & (\C7|Mux2~0_combout\ & (\C7|Mux3~0_combout\ $ (\C7|PC[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(13),
	datab => \C7|Mux3~0_combout\,
	datac => \C7|Mux2~0_combout\,
	datad => \C7|PC[4]~8_combout\,
	combout => \C7|Mux2~1_combout\);

-- Location: LCCOMB_X39_Y36_N12
\C7|REG_IN[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[13]~9_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(14))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(14),
	datab => \C7|REG_IN[3]~11_combout\,
	datad => \C7|Mux2~1_combout\,
	combout => \C7|REG_IN[13]~9_combout\);

-- Location: FF_X39_Y34_N25
\C3|OP_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	asdata => \C2|PROM_OUT\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_DATA\(5));

-- Location: LCCOMB_X40_Y35_N30
\C7|RAM_IN[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[13]~feeder_combout\ = \C4|REG_OUT\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C4|REG_OUT\(13),
	combout => \C7|RAM_IN[13]~feeder_combout\);

-- Location: FF_X40_Y35_N31
\C7|RAM_IN[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[13]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(13));

-- Location: LCCOMB_X43_Y34_N2
\C9|RAM_3[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(13),
	combout => \C9|RAM_3[13]~feeder_combout\);

-- Location: FF_X43_Y34_N3
\C9|RAM_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[13]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(13));

-- Location: LCCOMB_X43_Y33_N22
\C9|RAM_2[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(13),
	combout => \C9|RAM_2[13]~feeder_combout\);

-- Location: FF_X43_Y33_N23
\C9|RAM_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[13]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(13));

-- Location: FF_X40_Y34_N11
\C9|RAM_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(13),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(13));

-- Location: LCCOMB_X40_Y34_N16
\C9|RAM_1[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(13),
	combout => \C9|RAM_1[13]~feeder_combout\);

-- Location: FF_X40_Y34_N17
\C9|RAM_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[13]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(13));

-- Location: LCCOMB_X40_Y34_N10
\C6|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux2~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(13))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(13),
	datad => \C9|RAM_1\(13),
	combout => \C6|Mux2~2_combout\);

-- Location: LCCOMB_X44_Y34_N8
\C6|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux2~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux2~2_combout\ & (\C9|RAM_3\(13))) # (!\C6|Mux2~2_combout\ & ((\C9|RAM_2\(13)))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_3\(13),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_2\(13),
	datad => \C6|Mux2~2_combout\,
	combout => \C6|Mux2~3_combout\);

-- Location: LCCOMB_X43_Y35_N12
\C9|RAM_7[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(13),
	combout => \C9|RAM_7[13]~feeder_combout\);

-- Location: FF_X43_Y35_N13
\C9|RAM_7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[13]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(13));

-- Location: LCCOMB_X43_Y35_N18
\C9|RAM_5[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(13),
	combout => \C9|RAM_5[13]~feeder_combout\);

-- Location: FF_X43_Y35_N19
\C9|RAM_5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[13]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(13));

-- Location: FF_X43_Y32_N11
\C9|RAM_4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(13),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(13));

-- Location: LCCOMB_X43_Y32_N0
\C9|RAM_6[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(13),
	combout => \C9|RAM_6[13]~feeder_combout\);

-- Location: FF_X43_Y32_N1
\C9|RAM_6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[13]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(13));

-- Location: LCCOMB_X43_Y32_N10
\C6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux2~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(13)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(13),
	datad => \C9|RAM_6\(13),
	combout => \C6|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y34_N18
\C6|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux2~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux2~0_combout\ & (\C9|RAM_7\(13))) # (!\C6|Mux2~0_combout\ & ((\C9|RAM_5\(13)))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_7\(13),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_5\(13),
	datad => \C6|Mux2~0_combout\,
	combout => \C6|Mux2~1_combout\);

-- Location: LCCOMB_X44_Y34_N12
\C6|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux2~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux2~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux2~3_combout\,
	datad => \C6|Mux2~1_combout\,
	combout => \C6|Mux2~4_combout\);

-- Location: IOIBUF_X22_Y0_N1
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

-- Location: FF_X44_Y34_N13
\C6|RAM_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux2~4_combout\,
	asdata => \IO65_IN[13]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(13));

-- Location: LCCOMB_X38_Y36_N22
\C7|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux2~2_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\) # ((\C4|REG_OUT\(13))))) # (!\C7|REG_IN[3]~12_combout\ & (!\C7|PC[0]~3_combout\ & ((\C7|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C7|PC[0]~3_combout\,
	datac => \C4|REG_OUT\(13),
	datad => \C7|Add0~42_combout\,
	combout => \C7|Mux2~2_combout\);

-- Location: LCCOMB_X39_Y36_N26
\C7|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux2~3_combout\ = (\C7|PC[0]~3_combout\ & ((\C7|Mux2~2_combout\ & ((\C6|RAM_OUT\(13)))) # (!\C7|Mux2~2_combout\ & (\C3|OP_DATA\(5))))) # (!\C7|PC[0]~3_combout\ & (((\C7|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_DATA\(5),
	datab => \C7|PC[0]~3_combout\,
	datac => \C6|RAM_OUT\(13),
	datad => \C7|Mux2~2_combout\,
	combout => \C7|Mux2~3_combout\);

-- Location: FF_X39_Y36_N13
\C7|REG_IN[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[13]~9_combout\,
	asdata => \C7|Mux2~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(13));

-- Location: LCCOMB_X40_Y38_N10
\C8|REG_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~14_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_N~input_o\,
	datad => \C7|REG_IN\(13),
	combout => \C8|REG_0~14_combout\);

-- Location: LCCOMB_X42_Y38_N30
\C8|REG_3[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[13]~feeder_combout\ = \C8|REG_0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|REG_0~14_combout\,
	combout => \C8|REG_3[13]~feeder_combout\);

-- Location: FF_X42_Y38_N31
\C8|REG_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[13]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(13));

-- Location: LCCOMB_X37_Y38_N2
\C4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux2~0_combout\ = (\C2|PROM_OUT\(8) & (((\C2|PROM_OUT\(9))))) # (!\C2|PROM_OUT\(8) & ((\C2|PROM_OUT\(9) & (\C8|REG_2\(13))) # (!\C2|PROM_OUT\(9) & ((\C8|REG_0\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C8|REG_2\(13),
	datac => \C2|PROM_OUT\(9),
	datad => \C8|REG_0\(13),
	combout => \C4|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y38_N4
\C4|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux2~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux2~0_combout\ & (\C8|REG_3\(13))) # (!\C4|Mux2~0_combout\ & ((\C8|REG_1\(13)))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(13),
	datab => \C2|PROM_OUT\(8),
	datac => \C8|REG_1\(13),
	datad => \C4|Mux2~0_combout\,
	combout => \C4|Mux2~1_combout\);

-- Location: FF_X37_Y38_N5
\C4|REG_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(13));

-- Location: LCCOMB_X41_Y36_N4
\C7|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~3_combout\ = (\C3|OP_CODE\(1) & ((\C4|REG_OUT\(13)))) # (!\C3|OP_CODE\(1) & (\C4|REG_OUT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datac => \C4|REG_OUT\(11),
	datad => \C4|REG_OUT\(13),
	combout => \C7|Mux3~3_combout\);

-- Location: LCCOMB_X42_Y36_N20
\C7|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~4_combout\ = (\C3|OP_CODE\(2) & (\C7|Mux3~3_combout\)) # (!\C3|OP_CODE\(2) & ((\C7|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_CODE\(2),
	datac => \C7|Mux3~3_combout\,
	datad => \C7|Add0~39_combout\,
	combout => \C7|Mux3~4_combout\);

-- Location: LCCOMB_X42_Y36_N14
\C7|Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~7_combout\ = (\C7|Mux3~5_combout\ & ((\C7|Mux3~6_combout\) # ((\C7|Mux3~4_combout\)))) # (!\C7|Mux3~5_combout\ & (!\C7|Mux3~6_combout\ & (\C5|REG_OUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~5_combout\,
	datab => \C7|Mux3~6_combout\,
	datac => \C5|REG_OUT\(12),
	datad => \C7|Mux3~4_combout\,
	combout => \C7|Mux3~7_combout\);

-- Location: LCCOMB_X40_Y35_N4
\C7|RAM_IN[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[12]~feeder_combout\ = \C4|REG_OUT\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C4|REG_OUT\(12),
	combout => \C7|RAM_IN[12]~feeder_combout\);

-- Location: FF_X40_Y35_N5
\C7|RAM_IN[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[12]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(12));

-- Location: LCCOMB_X41_Y33_N30
\C9|RAM_2[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(12),
	combout => \C9|RAM_2[12]~feeder_combout\);

-- Location: FF_X41_Y33_N31
\C9|RAM_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[12]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(12));

-- Location: LCCOMB_X42_Y33_N14
\C9|RAM_1[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(12),
	combout => \C9|RAM_1[12]~feeder_combout\);

-- Location: FF_X42_Y33_N15
\C9|RAM_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[12]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(12));

-- Location: FF_X42_Y33_N5
\C9|RAM_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(12),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(12));

-- Location: LCCOMB_X42_Y33_N4
\C6|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux3~2_combout\ = (\C2|PROM_OUT\(0) & ((\C9|RAM_1\(12)) # ((\C2|PROM_OUT\(1))))) # (!\C2|PROM_OUT\(0) & (((\C9|RAM_0\(12) & !\C2|PROM_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C9|RAM_1\(12),
	datac => \C9|RAM_0\(12),
	datad => \C2|PROM_OUT\(1),
	combout => \C6|Mux3~2_combout\);

-- Location: LCCOMB_X42_Y35_N16
\C9|RAM_3[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(12),
	combout => \C9|RAM_3[12]~feeder_combout\);

-- Location: FF_X42_Y35_N17
\C9|RAM_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[12]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(12));

-- Location: LCCOMB_X42_Y33_N18
\C6|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux3~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux3~2_combout\ & ((\C9|RAM_3\(12)))) # (!\C6|Mux3~2_combout\ & (\C9|RAM_2\(12))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C9|RAM_2\(12),
	datac => \C6|Mux3~2_combout\,
	datad => \C9|RAM_3\(12),
	combout => \C6|Mux3~3_combout\);

-- Location: LCCOMB_X41_Y35_N4
\C9|RAM_5[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(12),
	combout => \C9|RAM_5[12]~feeder_combout\);

-- Location: FF_X41_Y35_N5
\C9|RAM_5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[12]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(12));

-- Location: LCCOMB_X41_Y35_N30
\C9|RAM_7[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(12),
	combout => \C9|RAM_7[12]~feeder_combout\);

-- Location: FF_X41_Y35_N31
\C9|RAM_7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[12]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(12));

-- Location: FF_X43_Y32_N27
\C9|RAM_4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(12),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(12));

-- Location: LCCOMB_X43_Y32_N12
\C9|RAM_6[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(12),
	combout => \C9|RAM_6[12]~feeder_combout\);

-- Location: FF_X43_Y32_N13
\C9|RAM_6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[12]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(12));

-- Location: LCCOMB_X43_Y32_N26
\C6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux3~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(12)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(12),
	datad => \C9|RAM_6\(12),
	combout => \C6|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y33_N24
\C6|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux3~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux3~0_combout\ & ((\C9|RAM_7\(12)))) # (!\C6|Mux3~0_combout\ & (\C9|RAM_5\(12))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C9|RAM_5\(12),
	datac => \C9|RAM_7\(12),
	datad => \C6|Mux3~0_combout\,
	combout => \C6|Mux3~1_combout\);

-- Location: LCCOMB_X41_Y33_N8
\C6|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux3~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux3~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux3~3_combout\,
	datad => \C6|Mux3~1_combout\,
	combout => \C6|Mux3~4_combout\);

-- Location: IOIBUF_X31_Y0_N29
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

-- Location: FF_X41_Y33_N9
\C6|RAM_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux3~4_combout\,
	asdata => \IO65_IN[12]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(12));

-- Location: LCCOMB_X42_Y36_N12
\C7|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~1_combout\ = (\C3|OP_CODE\(2) & (\C6|RAM_OUT\(12) & ((\C3|OP_CODE\(0))))) # (!\C3|OP_CODE\(2) & (((\C4|REG_OUT\(12) & !\C3|OP_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|RAM_OUT\(12),
	datab => \C3|OP_CODE\(2),
	datac => \C4|REG_OUT\(12),
	datad => \C3|OP_CODE\(0),
	combout => \C7|Mux3~1_combout\);

-- Location: LCCOMB_X42_Y36_N10
\C7|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~2_combout\ = (\C7|Mux3~0_combout\ & ((\C7|REG_IN\(12)) # ((\C7|Mux3~1_combout\ & !\C3|OP_CODE\(1))))) # (!\C7|Mux3~0_combout\ & (\C7|Mux3~1_combout\ & (!\C3|OP_CODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \C7|Mux3~1_combout\,
	datac => \C3|OP_CODE\(1),
	datad => \C7|REG_IN\(12),
	combout => \C7|Mux3~2_combout\);

-- Location: LCCOMB_X42_Y36_N0
\C7|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux3~8_combout\ = (\C3|OP_CODE\(3) & ((\C7|Mux3~2_combout\))) # (!\C3|OP_CODE\(3) & (\C7|Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(3),
	datac => \C7|Mux3~7_combout\,
	datad => \C7|Mux3~2_combout\,
	combout => \C7|Mux3~8_combout\);

-- Location: FF_X42_Y36_N1
\C7|REG_IN[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|Mux3~8_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(12));

-- Location: LCCOMB_X41_Y37_N22
\C8|REG_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~13_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET_N~input_o\,
	datad => \C7|REG_IN\(12),
	combout => \C8|REG_0~13_combout\);

-- Location: LCCOMB_X37_Y37_N2
\C8|REG_2[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_2[12]~feeder_combout\ = \C8|REG_0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~13_combout\,
	combout => \C8|REG_2[12]~feeder_combout\);

-- Location: FF_X37_Y37_N3
\C8|REG_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_2[12]~feeder_combout\,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(12));

-- Location: LCCOMB_X41_Y37_N10
\C4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux3~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(12)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(9),
	datab => \C8|REG_0\(12),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_1\(12),
	combout => \C4|Mux3~0_combout\);

-- Location: LCCOMB_X41_Y37_N8
\C4|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux3~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux3~0_combout\ & ((\C8|REG_3\(12)))) # (!\C4|Mux3~0_combout\ & (\C8|REG_2\(12))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_2\(12),
	datab => \C8|REG_3\(12),
	datac => \C2|PROM_OUT\(9),
	datad => \C4|Mux3~0_combout\,
	combout => \C4|Mux3~1_combout\);

-- Location: FF_X41_Y37_N9
\C4|REG_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(12));

-- Location: LCCOMB_X42_Y38_N18
\C7|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux4~0_combout\ = (\C7|PC[4]~8_combout\ & ((\C4|REG_OUT\(10)) # ((\C7|Mux3~0_combout\)))) # (!\C7|PC[4]~8_combout\ & (((\C5|REG_OUT\(11) & !\C7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(10),
	datab => \C7|PC[4]~8_combout\,
	datac => \C5|REG_OUT\(11),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y38_N8
\C7|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux4~1_combout\ = (\C7|Mux4~0_combout\ & (((\C4|REG_OUT\(11) & \C5|REG_OUT\(11))) # (!\C7|Mux3~0_combout\))) # (!\C7|Mux4~0_combout\ & (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(11)) # (\C5|REG_OUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(11),
	datab => \C7|Mux4~0_combout\,
	datac => \C5|REG_OUT\(11),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux4~1_combout\);

-- Location: LCCOMB_X39_Y36_N22
\C7|REG_IN[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[11]~8_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(12))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(12),
	datab => \C7|REG_IN[3]~11_combout\,
	datad => \C7|Mux4~1_combout\,
	combout => \C7|REG_IN[11]~8_combout\);

-- Location: LCCOMB_X40_Y35_N2
\C7|RAM_IN[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[11]~feeder_combout\ = \C4|REG_OUT\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(11),
	combout => \C7|RAM_IN[11]~feeder_combout\);

-- Location: FF_X40_Y35_N3
\C7|RAM_IN[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[11]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(11));

-- Location: LCCOMB_X43_Y34_N6
\C9|RAM_3[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(11),
	combout => \C9|RAM_3[11]~feeder_combout\);

-- Location: FF_X43_Y34_N7
\C9|RAM_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[11]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(11));

-- Location: LCCOMB_X42_Y31_N16
\C9|RAM_2[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(11),
	combout => \C9|RAM_2[11]~feeder_combout\);

-- Location: FF_X42_Y31_N17
\C9|RAM_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[11]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(11));

-- Location: FF_X40_Y34_N15
\C9|RAM_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(11),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(11));

-- Location: LCCOMB_X40_Y34_N0
\C9|RAM_1[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(11),
	combout => \C9|RAM_1[11]~feeder_combout\);

-- Location: FF_X40_Y34_N1
\C9|RAM_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[11]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(11));

-- Location: LCCOMB_X40_Y34_N14
\C6|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux4~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(11))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(11),
	datad => \C9|RAM_1\(11),
	combout => \C6|Mux4~2_combout\);

-- Location: LCCOMB_X43_Y34_N12
\C6|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux4~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux4~2_combout\ & (\C9|RAM_3\(11))) # (!\C6|Mux4~2_combout\ & ((\C9|RAM_2\(11)))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_3\(11),
	datab => \C9|RAM_2\(11),
	datac => \C2|PROM_OUT\(1),
	datad => \C6|Mux4~2_combout\,
	combout => \C6|Mux4~3_combout\);

-- Location: LCCOMB_X43_Y35_N24
\C9|RAM_5[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(11),
	combout => \C9|RAM_5[11]~feeder_combout\);

-- Location: FF_X43_Y35_N25
\C9|RAM_5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[11]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(11));

-- Location: LCCOMB_X42_Y31_N6
\C9|RAM_7[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(11),
	combout => \C9|RAM_7[11]~feeder_combout\);

-- Location: FF_X42_Y31_N7
\C9|RAM_7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[11]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(11));

-- Location: FF_X43_Y32_N3
\C9|RAM_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(11),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(11));

-- Location: LCCOMB_X43_Y32_N24
\C9|RAM_6[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(11),
	combout => \C9|RAM_6[11]~feeder_combout\);

-- Location: FF_X43_Y32_N25
\C9|RAM_6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[11]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(11));

-- Location: LCCOMB_X43_Y32_N2
\C6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux4~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(11)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(11),
	datad => \C9|RAM_6\(11),
	combout => \C6|Mux4~0_combout\);

-- Location: LCCOMB_X43_Y34_N24
\C6|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux4~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux4~0_combout\ & ((\C9|RAM_7\(11)))) # (!\C6|Mux4~0_combout\ & (\C9|RAM_5\(11))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C9|RAM_5\(11),
	datac => \C9|RAM_7\(11),
	datad => \C6|Mux4~0_combout\,
	combout => \C6|Mux4~1_combout\);

-- Location: LCCOMB_X43_Y34_N22
\C6|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux4~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux4~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|Mux4~3_combout\,
	datab => \C2|PROM_OUT\(2),
	datad => \C6|Mux4~1_combout\,
	combout => \C6|Mux4~4_combout\);

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: FF_X43_Y34_N23
\C6|RAM_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux4~4_combout\,
	asdata => \IO65_IN[11]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(11));

-- Location: LCCOMB_X38_Y36_N30
\C7|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux4~2_combout\ = (\C7|REG_IN[3]~12_combout\ & (\C7|PC[0]~3_combout\)) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\ & (\C3|OP_DATA\(3))) # (!\C7|PC[0]~3_combout\ & ((\C7|Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C7|PC[0]~3_combout\,
	datac => \C3|OP_DATA\(3),
	datad => \C7|Add0~36_combout\,
	combout => \C7|Mux4~2_combout\);

-- Location: LCCOMB_X39_Y36_N4
\C7|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux4~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux4~2_combout\ & (\C6|RAM_OUT\(11))) # (!\C7|Mux4~2_combout\ & ((\C4|REG_OUT\(11)))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C6|RAM_OUT\(11),
	datac => \C4|REG_OUT\(11),
	datad => \C7|Mux4~2_combout\,
	combout => \C7|Mux4~3_combout\);

-- Location: FF_X39_Y36_N23
\C7|REG_IN[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[11]~8_combout\,
	asdata => \C7|Mux4~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(11));

-- Location: LCCOMB_X39_Y38_N2
\C8|REG_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~12_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(11),
	combout => \C8|REG_0~12_combout\);

-- Location: LCCOMB_X40_Y38_N16
\C8|REG_3[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[11]~feeder_combout\ = \C8|REG_0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~12_combout\,
	combout => \C8|REG_3[11]~feeder_combout\);

-- Location: FF_X40_Y38_N17
\C8|REG_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[11]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(11));

-- Location: LCCOMB_X38_Y38_N14
\C4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux4~0_combout\ = (\C2|PROM_OUT\(8) & (((\C2|PROM_OUT\(9))))) # (!\C2|PROM_OUT\(8) & ((\C2|PROM_OUT\(9) & ((\C8|REG_2\(11)))) # (!\C2|PROM_OUT\(9) & (\C8|REG_0\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C8|REG_0\(11),
	datac => \C2|PROM_OUT\(9),
	datad => \C8|REG_2\(11),
	combout => \C4|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y38_N28
\C4|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux4~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux4~0_combout\ & (\C8|REG_3\(11))) # (!\C4|Mux4~0_combout\ & ((\C8|REG_1\(11)))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C8|REG_3\(11),
	datac => \C4|Mux4~0_combout\,
	datad => \C8|REG_1\(11),
	combout => \C4|Mux4~1_combout\);

-- Location: FF_X38_Y38_N29
\C4|REG_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(11));

-- Location: LCCOMB_X42_Y38_N2
\C7|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux5~0_combout\ = (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(10)))) # (!\C7|Mux3~0_combout\ & (\C4|REG_OUT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C4|REG_OUT\(9),
	datac => \C4|REG_OUT\(10),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y38_N12
\C7|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux5~1_combout\ = (\C7|Mux5~0_combout\ & ((\C5|REG_OUT\(10)) # (\C7|Mux3~0_combout\ $ (\C7|PC[4]~8_combout\)))) # (!\C7|Mux5~0_combout\ & (((\C5|REG_OUT\(10) & !\C7|PC[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \C7|Mux5~0_combout\,
	datac => \C5|REG_OUT\(10),
	datad => \C7|PC[4]~8_combout\,
	combout => \C7|Mux5~1_combout\);

-- Location: LCCOMB_X39_Y36_N16
\C7|REG_IN[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[10]~7_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(11))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(11),
	datab => \C7|REG_IN[3]~11_combout\,
	datad => \C7|Mux5~1_combout\,
	combout => \C7|REG_IN[10]~7_combout\);

-- Location: LCCOMB_X40_Y35_N12
\C7|RAM_IN[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[10]~feeder_combout\ = \C4|REG_OUT\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C4|REG_OUT\(10),
	combout => \C7|RAM_IN[10]~feeder_combout\);

-- Location: FF_X40_Y35_N13
\C7|RAM_IN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[10]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(10));

-- Location: LCCOMB_X43_Y34_N0
\C9|RAM_3[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(10),
	combout => \C9|RAM_3[10]~feeder_combout\);

-- Location: FF_X43_Y34_N1
\C9|RAM_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[10]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(10));

-- Location: LCCOMB_X42_Y31_N24
\C9|RAM_2[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(10),
	combout => \C9|RAM_2[10]~feeder_combout\);

-- Location: FF_X42_Y31_N25
\C9|RAM_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[10]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(10));

-- Location: FF_X42_Y34_N9
\C9|RAM_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(10),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(10));

-- Location: LCCOMB_X42_Y34_N26
\C9|RAM_1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(10),
	combout => \C9|RAM_1[10]~feeder_combout\);

-- Location: FF_X42_Y34_N27
\C9|RAM_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[10]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(10));

-- Location: LCCOMB_X42_Y34_N8
\C6|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux5~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(10))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(10),
	datad => \C9|RAM_1\(10),
	combout => \C6|Mux5~2_combout\);

-- Location: LCCOMB_X43_Y34_N14
\C6|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux5~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux5~2_combout\ & (\C9|RAM_3\(10))) # (!\C6|Mux5~2_combout\ & ((\C9|RAM_2\(10)))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C9|RAM_3\(10),
	datac => \C9|RAM_2\(10),
	datad => \C6|Mux5~2_combout\,
	combout => \C6|Mux5~3_combout\);

-- Location: LCCOMB_X42_Y31_N18
\C9|RAM_7[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(10),
	combout => \C9|RAM_7[10]~feeder_combout\);

-- Location: FF_X42_Y31_N19
\C9|RAM_7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[10]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(10));

-- Location: LCCOMB_X43_Y35_N30
\C9|RAM_5[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(10),
	combout => \C9|RAM_5[10]~feeder_combout\);

-- Location: FF_X43_Y35_N31
\C9|RAM_5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[10]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(10));

-- Location: FF_X43_Y32_N23
\C9|RAM_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(10),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(10));

-- Location: LCCOMB_X43_Y32_N28
\C9|RAM_6[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(10),
	combout => \C9|RAM_6[10]~feeder_combout\);

-- Location: FF_X43_Y32_N29
\C9|RAM_6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[10]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(10));

-- Location: LCCOMB_X43_Y32_N22
\C6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux5~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(10)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(10),
	datad => \C9|RAM_6\(10),
	combout => \C6|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y34_N18
\C6|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux5~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux5~0_combout\ & (\C9|RAM_7\(10))) # (!\C6|Mux5~0_combout\ & ((\C9|RAM_5\(10)))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_7\(10),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_5\(10),
	datad => \C6|Mux5~0_combout\,
	combout => \C6|Mux5~1_combout\);

-- Location: LCCOMB_X43_Y34_N20
\C6|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux5~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux5~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux5~3_combout\,
	datad => \C6|Mux5~1_combout\,
	combout => \C6|Mux5~4_combout\);

-- Location: IOIBUF_X31_Y0_N22
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

-- Location: FF_X43_Y34_N21
\C6|RAM_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux5~4_combout\,
	asdata => \IO65_IN[10]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(10));

-- Location: LCCOMB_X37_Y36_N0
\C7|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux5~2_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C4|REG_OUT\(10)) # ((\C7|PC[0]~3_combout\)))) # (!\C7|REG_IN[3]~12_combout\ & (((!\C7|PC[0]~3_combout\ & \C7|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(10),
	datab => \C7|REG_IN[3]~12_combout\,
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Add0~33_combout\,
	combout => \C7|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y36_N14
\C7|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux5~3_combout\ = (\C7|PC[0]~3_combout\ & ((\C7|Mux5~2_combout\ & (\C6|RAM_OUT\(10))) # (!\C7|Mux5~2_combout\ & ((\C3|OP_DATA\(2)))))) # (!\C7|PC[0]~3_combout\ & (((\C7|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|RAM_OUT\(10),
	datab => \C3|OP_DATA\(2),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Mux5~2_combout\,
	combout => \C7|Mux5~3_combout\);

-- Location: FF_X39_Y36_N17
\C7|REG_IN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[10]~7_combout\,
	asdata => \C7|Mux5~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(10));

-- Location: LCCOMB_X40_Y38_N18
\C8|REG_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~11_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_N~input_o\,
	datad => \C7|REG_IN\(10),
	combout => \C8|REG_0~11_combout\);

-- Location: LCCOMB_X40_Y38_N14
\C8|REG_3[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[10]~feeder_combout\ = \C8|REG_0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~11_combout\,
	combout => \C8|REG_3[10]~feeder_combout\);

-- Location: FF_X40_Y38_N15
\C8|REG_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[10]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(10));

-- Location: LCCOMB_X38_Y38_N18
\C4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux5~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(10)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(10),
	datab => \C2|PROM_OUT\(9),
	datac => \C8|REG_1\(10),
	datad => \C2|PROM_OUT\(8),
	combout => \C4|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y38_N22
\C4|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux5~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux5~0_combout\ & (\C8|REG_3\(10))) # (!\C4|Mux5~0_combout\ & ((\C8|REG_2\(10)))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(10),
	datab => \C8|REG_2\(10),
	datac => \C2|PROM_OUT\(9),
	datad => \C4|Mux5~0_combout\,
	combout => \C4|Mux5~1_combout\);

-- Location: FF_X38_Y38_N23
\C4|REG_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(10));

-- Location: LCCOMB_X40_Y36_N26
\C7|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux6~0_combout\ = (\C7|Mux3~0_combout\ & (((\C7|PC[4]~8_combout\)))) # (!\C7|Mux3~0_combout\ & ((\C7|PC[4]~8_combout\ & (\C4|REG_OUT\(8))) # (!\C7|PC[4]~8_combout\ & ((\C5|REG_OUT\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(8),
	datab => \C5|REG_OUT\(9),
	datac => \C7|Mux3~0_combout\,
	datad => \C7|PC[4]~8_combout\,
	combout => \C7|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y36_N24
\C7|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux6~1_combout\ = (\C7|Mux6~0_combout\ & (((\C4|REG_OUT\(9) & \C5|REG_OUT\(9))) # (!\C7|Mux3~0_combout\))) # (!\C7|Mux6~0_combout\ & (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(9)) # (\C5|REG_OUT\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux6~0_combout\,
	datab => \C4|REG_OUT\(9),
	datac => \C7|Mux3~0_combout\,
	datad => \C5|REG_OUT\(9),
	combout => \C7|Mux6~1_combout\);

-- Location: LCCOMB_X39_Y36_N2
\C7|REG_IN[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[9]~6_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(10))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(10),
	datab => \C7|REG_IN[3]~11_combout\,
	datad => \C7|Mux6~1_combout\,
	combout => \C7|REG_IN[9]~6_combout\);

-- Location: LCCOMB_X40_Y35_N6
\C7|RAM_IN[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[9]~feeder_combout\ = \C4|REG_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(9),
	combout => \C7|RAM_IN[9]~feeder_combout\);

-- Location: FF_X40_Y35_N7
\C7|RAM_IN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[9]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(9));

-- Location: LCCOMB_X41_Y33_N6
\C9|RAM_2[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(9),
	combout => \C9|RAM_2[9]~feeder_combout\);

-- Location: FF_X41_Y33_N7
\C9|RAM_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[9]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(9));

-- Location: LCCOMB_X42_Y35_N2
\C9|RAM_3[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(9),
	combout => \C9|RAM_3[9]~feeder_combout\);

-- Location: FF_X42_Y35_N3
\C9|RAM_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[9]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(9));

-- Location: FF_X40_Y34_N3
\C9|RAM_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(9),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(9));

-- Location: LCCOMB_X40_Y34_N28
\C9|RAM_1[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(9),
	combout => \C9|RAM_1[9]~feeder_combout\);

-- Location: FF_X40_Y34_N29
\C9|RAM_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[9]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(9));

-- Location: LCCOMB_X40_Y34_N2
\C6|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux6~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(9))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(9),
	datad => \C9|RAM_1\(9),
	combout => \C6|Mux6~2_combout\);

-- Location: LCCOMB_X41_Y33_N0
\C6|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux6~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux6~2_combout\ & ((\C9|RAM_3\(9)))) # (!\C6|Mux6~2_combout\ & (\C9|RAM_2\(9))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(9),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_3\(9),
	datad => \C6|Mux6~2_combout\,
	combout => \C6|Mux6~3_combout\);

-- Location: LCCOMB_X41_Y35_N28
\C9|RAM_5[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(9),
	combout => \C9|RAM_5[9]~feeder_combout\);

-- Location: FF_X41_Y35_N29
\C9|RAM_5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[9]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(9));

-- Location: LCCOMB_X41_Y35_N18
\C9|RAM_7[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(9),
	combout => \C9|RAM_7[9]~feeder_combout\);

-- Location: FF_X41_Y35_N19
\C9|RAM_7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[9]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(9));

-- Location: FF_X43_Y32_N15
\C9|RAM_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(9),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(9));

-- Location: LCCOMB_X43_Y32_N20
\C9|RAM_6[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(9),
	combout => \C9|RAM_6[9]~feeder_combout\);

-- Location: FF_X43_Y32_N21
\C9|RAM_6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[9]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(9));

-- Location: LCCOMB_X43_Y32_N14
\C6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux6~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(9)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(9),
	datad => \C9|RAM_6\(9),
	combout => \C6|Mux6~0_combout\);

-- Location: LCCOMB_X41_Y33_N24
\C6|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux6~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux6~0_combout\ & ((\C9|RAM_7\(9)))) # (!\C6|Mux6~0_combout\ & (\C9|RAM_5\(9))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C9|RAM_5\(9),
	datac => \C9|RAM_7\(9),
	datad => \C6|Mux6~0_combout\,
	combout => \C6|Mux6~1_combout\);

-- Location: LCCOMB_X41_Y33_N22
\C6|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux6~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux6~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux6~3_combout\,
	datad => \C6|Mux6~1_combout\,
	combout => \C6|Mux6~4_combout\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: FF_X41_Y33_N23
\C6|RAM_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux6~4_combout\,
	asdata => \IO65_IN[9]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(9));

-- Location: LCCOMB_X38_Y36_N24
\C7|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux6~2_combout\ = (\C7|PC[0]~3_combout\ & ((\C3|OP_DATA\(1)) # ((\C7|REG_IN[3]~12_combout\)))) # (!\C7|PC[0]~3_combout\ & (((\C7|Add0~30_combout\ & !\C7|REG_IN[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_DATA\(1),
	datab => \C7|PC[0]~3_combout\,
	datac => \C7|Add0~30_combout\,
	datad => \C7|REG_IN[3]~12_combout\,
	combout => \C7|Mux6~2_combout\);

-- Location: LCCOMB_X39_Y36_N14
\C7|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux6~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux6~2_combout\ & ((\C6|RAM_OUT\(9)))) # (!\C7|Mux6~2_combout\ & (\C4|REG_OUT\(9))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C4|REG_OUT\(9),
	datac => \C6|RAM_OUT\(9),
	datad => \C7|Mux6~2_combout\,
	combout => \C7|Mux6~3_combout\);

-- Location: FF_X39_Y36_N3
\C7|REG_IN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[9]~6_combout\,
	asdata => \C7|Mux6~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(9));

-- Location: LCCOMB_X40_Y38_N30
\C8|REG_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~10_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_N~input_o\,
	datad => \C7|REG_IN\(9),
	combout => \C8|REG_0~10_combout\);

-- Location: LCCOMB_X41_Y38_N2
\C8|REG_1[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[9]~feeder_combout\ = \C8|REG_0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~10_combout\,
	combout => \C8|REG_1[9]~feeder_combout\);

-- Location: FF_X41_Y38_N3
\C8|REG_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[9]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(9));

-- Location: LCCOMB_X37_Y38_N12
\C4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux6~0_combout\ = (\C2|PROM_OUT\(8) & (((\C2|PROM_OUT\(9))))) # (!\C2|PROM_OUT\(8) & ((\C2|PROM_OUT\(9) & ((\C8|REG_2\(9)))) # (!\C2|PROM_OUT\(9) & (\C8|REG_0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C8|REG_0\(9),
	datac => \C2|PROM_OUT\(9),
	datad => \C8|REG_2\(9),
	combout => \C4|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y38_N26
\C4|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux6~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux6~0_combout\ & ((\C8|REG_3\(9)))) # (!\C4|Mux6~0_combout\ & (\C8|REG_1\(9))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_1\(9),
	datab => \C8|REG_3\(9),
	datac => \C2|PROM_OUT\(8),
	datad => \C4|Mux6~0_combout\,
	combout => \C4|Mux6~1_combout\);

-- Location: FF_X37_Y38_N27
\C4|REG_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(9));

-- Location: LCCOMB_X39_Y36_N28
\C7|REG_IN[8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[8]~5_combout\ = (\C7|REG_IN[3]~11_combout\ & ((\C4|REG_OUT\(9)))) # (!\C7|REG_IN[3]~11_combout\ & (\C7|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux7~1_combout\,
	datab => \C4|REG_OUT\(9),
	datad => \C7|REG_IN[3]~11_combout\,
	combout => \C7|REG_IN[8]~5_combout\);

-- Location: LCCOMB_X40_Y35_N28
\C7|RAM_IN[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[8]~feeder_combout\ = \C4|REG_OUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(8),
	combout => \C7|RAM_IN[8]~feeder_combout\);

-- Location: FF_X40_Y35_N29
\C7|RAM_IN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[8]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(8));

-- Location: LCCOMB_X43_Y33_N6
\C9|RAM_2[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|RAM_2[8]~feeder_combout\);

-- Location: FF_X43_Y33_N7
\C9|RAM_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[8]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(8));

-- Location: LCCOMB_X42_Y35_N4
\C9|RAM_3[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|RAM_3[8]~feeder_combout\);

-- Location: FF_X42_Y35_N5
\C9|RAM_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[8]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(8));

-- Location: FF_X42_Y33_N11
\C9|RAM_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(8),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(8));

-- Location: LCCOMB_X42_Y33_N16
\C9|RAM_1[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|RAM_1[8]~feeder_combout\);

-- Location: FF_X42_Y33_N17
\C9|RAM_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[8]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(8));

-- Location: LCCOMB_X42_Y33_N10
\C6|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux7~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(8))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(8),
	datad => \C9|RAM_1\(8),
	combout => \C6|Mux7~2_combout\);

-- Location: LCCOMB_X43_Y33_N4
\C6|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux7~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux7~2_combout\ & ((\C9|RAM_3\(8)))) # (!\C6|Mux7~2_combout\ & (\C9|RAM_2\(8))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(8),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_3\(8),
	datad => \C6|Mux7~2_combout\,
	combout => \C6|Mux7~3_combout\);

-- Location: LCCOMB_X43_Y35_N26
\C9|RAM_5[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|RAM_5[8]~feeder_combout\);

-- Location: FF_X43_Y35_N27
\C9|RAM_5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[8]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(8));

-- Location: LCCOMB_X43_Y35_N20
\C9|RAM_7[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|RAM_7[8]~feeder_combout\);

-- Location: FF_X43_Y35_N21
\C9|RAM_7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[8]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(8));

-- Location: FF_X43_Y32_N31
\C9|RAM_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(8),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(8));

-- Location: LCCOMB_X43_Y32_N16
\C9|RAM_6[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|RAM_6[8]~feeder_combout\);

-- Location: FF_X43_Y32_N17
\C9|RAM_6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[8]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(8));

-- Location: LCCOMB_X43_Y32_N30
\C6|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux7~0_combout\ = (\C2|PROM_OUT\(0) & (\C2|PROM_OUT\(1))) # (!\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1) & ((\C9|RAM_6\(8)))) # (!\C2|PROM_OUT\(1) & (\C9|RAM_4\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_4\(8),
	datad => \C9|RAM_6\(8),
	combout => \C6|Mux7~0_combout\);

-- Location: LCCOMB_X44_Y33_N18
\C6|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux7~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux7~0_combout\ & ((\C9|RAM_7\(8)))) # (!\C6|Mux7~0_combout\ & (\C9|RAM_5\(8))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_5\(8),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(8),
	datad => \C6|Mux7~0_combout\,
	combout => \C6|Mux7~1_combout\);

-- Location: LCCOMB_X44_Y33_N20
\C6|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux7~4_combout\ = (\C2|PROM_OUT\(2) & ((\C6|Mux7~1_combout\))) # (!\C2|PROM_OUT\(2) & (\C6|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux7~3_combout\,
	datad => \C6|Mux7~1_combout\,
	combout => \C6|Mux7~4_combout\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: FF_X44_Y33_N21
\C6|RAM_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux7~4_combout\,
	asdata => \IO65_IN[8]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(8));

-- Location: LCCOMB_X38_Y36_N18
\C7|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux7~2_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C4|REG_OUT\(8)) # ((\C7|PC[0]~3_combout\)))) # (!\C7|REG_IN[3]~12_combout\ & (((!\C7|PC[0]~3_combout\ & \C7|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C4|REG_OUT\(8),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Add0~27_combout\,
	combout => \C7|Mux7~2_combout\);

-- Location: LCCOMB_X39_Y36_N8
\C7|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux7~3_combout\ = (\C7|PC[0]~3_combout\ & ((\C7|Mux7~2_combout\ & (\C6|RAM_OUT\(8))) # (!\C7|Mux7~2_combout\ & ((\C3|OP_DATA\(0)))))) # (!\C7|PC[0]~3_combout\ & (((\C7|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|RAM_OUT\(8),
	datab => \C3|OP_DATA\(0),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Mux7~2_combout\,
	combout => \C7|Mux7~3_combout\);

-- Location: FF_X39_Y36_N29
\C7|REG_IN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[8]~5_combout\,
	asdata => \C7|Mux7~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(8));

-- Location: LCCOMB_X40_Y38_N22
\C8|REG_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~9_combout\ = (\C7|REG_IN\(8) & \RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|REG_IN\(8),
	datad => \RESET_N~input_o\,
	combout => \C8|REG_0~9_combout\);

-- Location: FF_X40_Y38_N31
\C8|REG_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~9_combout\,
	sload => VCC,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(8));

-- Location: LCCOMB_X39_Y38_N10
\C4|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux7~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(8)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(8),
	datab => \C2|PROM_OUT\(9),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_1\(8),
	combout => \C4|Mux7~0_combout\);

-- Location: LCCOMB_X39_Y38_N12
\C4|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux7~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux7~0_combout\ & (\C8|REG_3\(8))) # (!\C4|Mux7~0_combout\ & ((\C8|REG_2\(8)))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_3\(8),
	datab => \C2|PROM_OUT\(9),
	datac => \C8|REG_2\(8),
	datad => \C4|Mux7~0_combout\,
	combout => \C4|Mux7~1_combout\);

-- Location: FF_X39_Y38_N13
\C4|REG_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(8));

-- Location: LCCOMB_X38_Y35_N26
\C7|REG_IN[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[7]~16_combout\ = (\C3|OP_CODE\(3)) # ((\C3|OP_CODE\(1) & \C3|OP_CODE\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(3),
	datac => \C3|OP_CODE\(1),
	datad => \C3|OP_CODE\(2),
	combout => \C7|REG_IN[7]~16_combout\);

-- Location: LCCOMB_X38_Y35_N0
\C7|REG_IN[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[7]~15_combout\ = (\C3|OP_CODE\(3) & (\C3|OP_CODE\(0))) # (!\C3|OP_CODE\(3) & (!\C3|OP_CODE\(2) & (\C3|OP_CODE\(0) $ (\C3|OP_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(0),
	datab => \C3|OP_CODE\(2),
	datac => \C3|OP_CODE\(1),
	datad => \C3|OP_CODE\(3),
	combout => \C7|REG_IN[7]~15_combout\);

-- Location: LCCOMB_X38_Y35_N2
\C7|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux8~2_combout\ = (\C7|REG_IN[7]~16_combout\ & (\C4|REG_OUT\(7) & ((\C7|REG_IN[7]~15_combout\)))) # (!\C7|REG_IN[7]~16_combout\ & (((\C7|Add0~24_combout\) # (!\C7|REG_IN[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[7]~16_combout\,
	datab => \C4|REG_OUT\(7),
	datac => \C7|Add0~24_combout\,
	datad => \C7|REG_IN[7]~15_combout\,
	combout => \C7|Mux8~2_combout\);

-- Location: LCCOMB_X38_Y35_N28
\C7|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux8~3_combout\ = (\C7|REG_IN[3]~13_combout\ & (((\C7|Mux8~2_combout\)))) # (!\C7|REG_IN[3]~13_combout\ & ((\C7|Mux8~2_combout\ & (\C7|Mux8~1_combout\)) # (!\C7|Mux8~2_combout\ & ((\C4|REG_OUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux8~1_combout\,
	datab => \C7|REG_IN[3]~13_combout\,
	datac => \C4|REG_OUT\(8),
	datad => \C7|Mux8~2_combout\,
	combout => \C7|Mux8~3_combout\);

-- Location: LCCOMB_X38_Y35_N8
\C7|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux8~4_combout\ = (\C3|OP_CODE\(2) & ((\C7|PC[0]~3_combout\ & (\C6|RAM_OUT\(7))) # (!\C7|PC[0]~3_combout\ & ((\C7|Mux8~3_combout\))))) # (!\C3|OP_CODE\(2) & (((\C7|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|RAM_OUT\(7),
	datab => \C3|OP_CODE\(2),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Mux8~3_combout\,
	combout => \C7|Mux8~4_combout\);

-- Location: FF_X38_Y35_N9
\C7|REG_IN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|Mux8~4_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(7));

-- Location: LCCOMB_X39_Y35_N8
\C8|REG_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~8_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET_N~input_o\,
	datad => \C7|REG_IN\(7),
	combout => \C8|REG_0~8_combout\);

-- Location: FF_X40_Y38_N11
\C8|REG_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~8_combout\,
	sload => VCC,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(7));

-- Location: LCCOMB_X39_Y38_N20
\C4|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux8~0_combout\ = (\C2|PROM_OUT\(8) & (((\C2|PROM_OUT\(9))))) # (!\C2|PROM_OUT\(8) & ((\C2|PROM_OUT\(9) & ((\C8|REG_2\(7)))) # (!\C2|PROM_OUT\(9) & (\C8|REG_0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(7),
	datab => \C2|PROM_OUT\(8),
	datac => \C2|PROM_OUT\(9),
	datad => \C8|REG_2\(7),
	combout => \C4|Mux8~0_combout\);

-- Location: LCCOMB_X39_Y38_N14
\C4|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux8~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux8~0_combout\ & (\C8|REG_3\(7))) # (!\C4|Mux8~0_combout\ & ((\C8|REG_1\(7)))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(8),
	datab => \C8|REG_3\(7),
	datac => \C8|REG_1\(7),
	datad => \C4|Mux8~0_combout\,
	combout => \C4|Mux8~1_combout\);

-- Location: FF_X39_Y38_N15
\C4|REG_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(7));

-- Location: LCCOMB_X39_Y35_N6
\C7|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux9~0_combout\ = (\C7|Mux3~0_combout\ & ((\C4|REG_OUT\(6)))) # (!\C7|Mux3~0_combout\ & (\C4|REG_OUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C4|REG_OUT\(5),
	datac => \C4|REG_OUT\(6),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux9~0_combout\);

-- Location: LCCOMB_X38_Y35_N24
\C7|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux9~1_combout\ = (\C5|REG_OUT\(6) & (((\C7|Mux9~0_combout\) # (!\C7|PC[4]~8_combout\)))) # (!\C5|REG_OUT\(6) & (\C7|Mux9~0_combout\ & (\C7|Mux3~0_combout\ $ (\C7|PC[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datab => \C7|PC[4]~8_combout\,
	datac => \C5|REG_OUT\(6),
	datad => \C7|Mux9~0_combout\,
	combout => \C7|Mux9~1_combout\);

-- Location: LCCOMB_X38_Y34_N16
\C7|REG_IN[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[6]~4_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(7))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~11_combout\,
	datab => \C4|REG_OUT\(7),
	datad => \C7|Mux9~1_combout\,
	combout => \C7|REG_IN[6]~4_combout\);

-- Location: FF_X39_Y35_N27
\C7|RAM_IN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	asdata => \C4|REG_OUT\(6),
	sload => VCC,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(6));

-- Location: LCCOMB_X41_Y35_N10
\C9|RAM_5[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(6),
	combout => \C9|RAM_5[6]~feeder_combout\);

-- Location: FF_X41_Y35_N11
\C9|RAM_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[6]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(6));

-- Location: LCCOMB_X41_Y35_N0
\C9|RAM_7[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(6),
	combout => \C9|RAM_7[6]~feeder_combout\);

-- Location: FF_X41_Y35_N1
\C9|RAM_7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[6]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(6));

-- Location: FF_X41_Y34_N7
\C9|RAM_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(6),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(6));

-- Location: LCCOMB_X41_Y34_N8
\C9|RAM_6[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(6),
	combout => \C9|RAM_6[6]~feeder_combout\);

-- Location: FF_X41_Y34_N9
\C9|RAM_6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[6]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(6));

-- Location: LCCOMB_X41_Y34_N6
\C6|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux9~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(6))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(6),
	datad => \C9|RAM_6\(6),
	combout => \C6|Mux9~0_combout\);

-- Location: LCCOMB_X41_Y33_N16
\C6|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux9~1_combout\ = (\C2|PROM_OUT\(0) & ((\C6|Mux9~0_combout\ & ((\C9|RAM_7\(6)))) # (!\C6|Mux9~0_combout\ & (\C9|RAM_5\(6))))) # (!\C2|PROM_OUT\(0) & (((\C6|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_5\(6),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(6),
	datad => \C6|Mux9~0_combout\,
	combout => \C6|Mux9~1_combout\);

-- Location: LCCOMB_X41_Y33_N26
\C9|RAM_2[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(6),
	combout => \C9|RAM_2[6]~feeder_combout\);

-- Location: FF_X41_Y33_N27
\C9|RAM_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[6]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(6));

-- Location: LCCOMB_X42_Y35_N24
\C9|RAM_3[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(6),
	combout => \C9|RAM_3[6]~feeder_combout\);

-- Location: FF_X42_Y35_N25
\C9|RAM_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[6]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(6));

-- Location: FF_X42_Y34_N5
\C9|RAM_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(6),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(6));

-- Location: LCCOMB_X42_Y34_N6
\C9|RAM_1[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(6),
	combout => \C9|RAM_1[6]~feeder_combout\);

-- Location: FF_X42_Y34_N7
\C9|RAM_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[6]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(6));

-- Location: LCCOMB_X42_Y34_N4
\C6|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux9~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(6))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(6),
	datad => \C9|RAM_1\(6),
	combout => \C6|Mux9~2_combout\);

-- Location: LCCOMB_X41_Y33_N20
\C6|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux9~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux9~2_combout\ & ((\C9|RAM_3\(6)))) # (!\C6|Mux9~2_combout\ & (\C9|RAM_2\(6))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|RAM_2\(6),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_3\(6),
	datad => \C6|Mux9~2_combout\,
	combout => \C6|Mux9~3_combout\);

-- Location: LCCOMB_X41_Y33_N2
\C6|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux9~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux9~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux9~1_combout\,
	datad => \C6|Mux9~3_combout\,
	combout => \C6|Mux9~4_combout\);

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: FF_X41_Y33_N3
\C6|RAM_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux9~4_combout\,
	asdata => \IO65_IN[6]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(6));

-- Location: LCCOMB_X38_Y34_N0
\C7|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux9~2_combout\ = (\C7|REG_IN[3]~12_combout\ & (((\C7|PC[0]~3_combout\)))) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|PC[0]~3_combout\ & (\C4|REG_OUT\(6))) # (!\C7|PC[0]~3_combout\ & ((\C7|Add0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C4|REG_OUT\(6),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Add0~21_combout\,
	combout => \C7|Mux9~2_combout\);

-- Location: LCCOMB_X38_Y34_N26
\C7|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux9~3_combout\ = (\C7|REG_IN[3]~12_combout\ & ((\C7|Mux9~2_combout\ & ((\C6|RAM_OUT\(6)))) # (!\C7|Mux9~2_combout\ & (\C3|OP_DATA\(6))))) # (!\C7|REG_IN[3]~12_combout\ & (((\C7|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[3]~12_combout\,
	datab => \C3|OP_DATA\(6),
	datac => \C6|RAM_OUT\(6),
	datad => \C7|Mux9~2_combout\,
	combout => \C7|Mux9~3_combout\);

-- Location: FF_X38_Y34_N17
\C7|REG_IN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[6]~4_combout\,
	asdata => \C7|Mux9~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(6));

-- Location: LCCOMB_X39_Y37_N10
\C8|REG_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~7_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(6),
	combout => \C8|REG_0~7_combout\);

-- Location: FF_X38_Y37_N13
\C8|REG_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C8|REG_0~7_combout\,
	sload => VCC,
	ena => \C8|REG_2[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_2\(6));

-- Location: LCCOMB_X39_Y37_N0
\C4|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux9~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(6)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(9),
	datab => \C8|REG_0\(6),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_1\(6),
	combout => \C4|Mux9~0_combout\);

-- Location: LCCOMB_X39_Y37_N20
\C4|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux9~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux9~0_combout\ & ((\C8|REG_3\(6)))) # (!\C4|Mux9~0_combout\ & (\C8|REG_2\(6))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_2\(6),
	datab => \C8|REG_3\(6),
	datac => \C2|PROM_OUT\(9),
	datad => \C4|Mux9~0_combout\,
	combout => \C4|Mux9~1_combout\);

-- Location: FF_X39_Y37_N21
\C4|REG_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(6));

-- Location: LCCOMB_X39_Y35_N14
\C7|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux10~0_combout\ = (\C7|PC[4]~8_combout\ & (((\C4|REG_OUT\(4)) # (\C7|Mux3~0_combout\)))) # (!\C7|PC[4]~8_combout\ & (\C5|REG_OUT\(5) & ((!\C7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC[4]~8_combout\,
	datab => \C5|REG_OUT\(5),
	datac => \C4|REG_OUT\(4),
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y35_N20
\C7|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux10~1_combout\ = (\C7|Mux10~0_combout\ & (((\C5|REG_OUT\(5) & \C4|REG_OUT\(5))) # (!\C7|Mux3~0_combout\))) # (!\C7|Mux10~0_combout\ & (\C7|Mux3~0_combout\ & ((\C5|REG_OUT\(5)) # (\C4|REG_OUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(5),
	datab => \C4|REG_OUT\(5),
	datac => \C7|Mux10~0_combout\,
	datad => \C7|Mux3~0_combout\,
	combout => \C7|Mux10~1_combout\);

-- Location: LCCOMB_X38_Y34_N6
\C7|REG_IN[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|REG_IN[5]~3_combout\ = (\C7|REG_IN[3]~11_combout\ & (\C4|REG_OUT\(6))) # (!\C7|REG_IN[3]~11_combout\ & ((\C7|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(6),
	datab => \C7|Mux10~1_combout\,
	datad => \C7|REG_IN[3]~11_combout\,
	combout => \C7|REG_IN[5]~3_combout\);

-- Location: LCCOMB_X40_Y35_N16
\C7|RAM_IN[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[5]~feeder_combout\ = \C4|REG_OUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C4|REG_OUT\(5),
	combout => \C7|RAM_IN[5]~feeder_combout\);

-- Location: FF_X40_Y35_N17
\C7|RAM_IN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[5]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(5));

-- Location: FF_X41_Y34_N31
\C9|RAM_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(5),
	sload => VCC,
	ena => \C9|RAM_4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_4\(5));

-- Location: LCCOMB_X41_Y34_N0
\C9|RAM_6[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_6[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(5),
	combout => \C9|RAM_6[5]~feeder_combout\);

-- Location: FF_X41_Y34_N1
\C9|RAM_6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_6[5]~feeder_combout\,
	ena => \C9|RAM_6[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_6\(5));

-- Location: LCCOMB_X41_Y34_N30
\C6|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux10~0_combout\ = (\C2|PROM_OUT\(1) & ((\C2|PROM_OUT\(0)) # ((\C9|RAM_6\(5))))) # (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(0) & (\C9|RAM_4\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_4\(5),
	datad => \C9|RAM_6\(5),
	combout => \C6|Mux10~0_combout\);

-- Location: LCCOMB_X42_Y31_N10
\C9|RAM_7[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_7[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(5),
	combout => \C9|RAM_7[5]~feeder_combout\);

-- Location: FF_X42_Y31_N11
\C9|RAM_7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_7[5]~feeder_combout\,
	ena => \C9|RAM_7[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_7\(5));

-- Location: LCCOMB_X41_Y35_N16
\C9|RAM_5[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_5[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(5),
	combout => \C9|RAM_5[5]~feeder_combout\);

-- Location: FF_X41_Y35_N17
\C9|RAM_5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_5[5]~feeder_combout\,
	ena => \C9|RAM_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_5\(5));

-- Location: LCCOMB_X41_Y33_N14
\C6|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux10~1_combout\ = (\C6|Mux10~0_combout\ & (((\C9|RAM_7\(5))) # (!\C2|PROM_OUT\(0)))) # (!\C6|Mux10~0_combout\ & (\C2|PROM_OUT\(0) & ((\C9|RAM_5\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|Mux10~0_combout\,
	datab => \C2|PROM_OUT\(0),
	datac => \C9|RAM_7\(5),
	datad => \C9|RAM_5\(5),
	combout => \C6|Mux10~1_combout\);

-- Location: LCCOMB_X43_Y34_N8
\C9|RAM_3[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_3[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(5),
	combout => \C9|RAM_3[5]~feeder_combout\);

-- Location: FF_X43_Y34_N9
\C9|RAM_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_3[5]~feeder_combout\,
	ena => \C9|RAM_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_3\(5));

-- Location: LCCOMB_X42_Y31_N28
\C9|RAM_2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_2[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(5),
	combout => \C9|RAM_2[5]~feeder_combout\);

-- Location: FF_X42_Y31_N29
\C9|RAM_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_2[5]~feeder_combout\,
	ena => \C9|RAM_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_2\(5));

-- Location: FF_X42_Y34_N19
\C9|RAM_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	asdata => \C7|RAM_IN\(5),
	sload => VCC,
	ena => \C9|RAM_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_0\(5));

-- Location: LCCOMB_X42_Y34_N28
\C9|RAM_1[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|RAM_1[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(5),
	combout => \C9|RAM_1[5]~feeder_combout\);

-- Location: FF_X42_Y34_N29
\C9|RAM_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|RAM_1[5]~feeder_combout\,
	ena => \C9|RAM_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|RAM_1\(5));

-- Location: LCCOMB_X42_Y34_N18
\C6|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux10~2_combout\ = (\C2|PROM_OUT\(0) & ((\C2|PROM_OUT\(1)) # ((\C9|RAM_1\(5))))) # (!\C2|PROM_OUT\(0) & (!\C2|PROM_OUT\(1) & (\C9|RAM_0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(0),
	datab => \C2|PROM_OUT\(1),
	datac => \C9|RAM_0\(5),
	datad => \C9|RAM_1\(5),
	combout => \C6|Mux10~2_combout\);

-- Location: LCCOMB_X42_Y34_N24
\C6|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux10~3_combout\ = (\C2|PROM_OUT\(1) & ((\C6|Mux10~2_combout\ & (\C9|RAM_3\(5))) # (!\C6|Mux10~2_combout\ & ((\C9|RAM_2\(5)))))) # (!\C2|PROM_OUT\(1) & (((\C6|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(1),
	datab => \C9|RAM_3\(5),
	datac => \C9|RAM_2\(5),
	datad => \C6|Mux10~2_combout\,
	combout => \C6|Mux10~3_combout\);

-- Location: LCCOMB_X41_Y33_N4
\C6|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C6|Mux10~4_combout\ = (\C2|PROM_OUT\(2) & (\C6|Mux10~1_combout\)) # (!\C2|PROM_OUT\(2) & ((\C6|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(2),
	datab => \C6|Mux10~1_combout\,
	datad => \C6|Mux10~3_combout\,
	combout => \C6|Mux10~4_combout\);

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: FF_X41_Y33_N5
\C6|RAM_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C6|Mux10~4_combout\,
	asdata => \IO65_IN[5]~input_o\,
	sload => \C2|PROM_OUT\(6),
	ena => \C6|RAM_OUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C6|RAM_OUT\(5));

-- Location: LCCOMB_X39_Y34_N24
\C7|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux10~2_combout\ = (\C7|PC[0]~3_combout\ & (\C7|REG_IN[3]~12_combout\)) # (!\C7|PC[0]~3_combout\ & ((\C7|REG_IN[3]~12_combout\ & (\C3|OP_DATA\(5))) # (!\C7|REG_IN[3]~12_combout\ & ((\C7|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC[0]~3_combout\,
	datab => \C7|REG_IN[3]~12_combout\,
	datac => \C3|OP_DATA\(5),
	datad => \C7|Add0~18_combout\,
	combout => \C7|Mux10~2_combout\);

-- Location: LCCOMB_X38_Y34_N30
\C7|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux10~3_combout\ = (\C7|PC[0]~3_combout\ & ((\C7|Mux10~2_combout\ & ((\C6|RAM_OUT\(5)))) # (!\C7|Mux10~2_combout\ & (\C4|REG_OUT\(5))))) # (!\C7|PC[0]~3_combout\ & (((\C7|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(5),
	datab => \C7|PC[0]~3_combout\,
	datac => \C6|RAM_OUT\(5),
	datad => \C7|Mux10~2_combout\,
	combout => \C7|Mux10~3_combout\);

-- Location: FF_X38_Y34_N7
\C7|REG_IN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|REG_IN[5]~3_combout\,
	asdata => \C7|Mux10~3_combout\,
	sload => \C7|REG_IN[3]~13_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(5));

-- Location: LCCOMB_X39_Y37_N30
\C8|REG_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~6_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(5),
	combout => \C8|REG_0~6_combout\);

-- Location: LCCOMB_X40_Y37_N30
\C8|REG_1[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_1[5]~feeder_combout\ = \C8|REG_0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~6_combout\,
	combout => \C8|REG_1[5]~feeder_combout\);

-- Location: FF_X40_Y37_N31
\C8|REG_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_1[5]~feeder_combout\,
	ena => \C8|REG_1[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_1\(5));

-- Location: LCCOMB_X39_Y37_N12
\C4|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux10~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8)) # (\C8|REG_2\(5))))) # (!\C2|PROM_OUT\(9) & (\C8|REG_0\(5) & (!\C2|PROM_OUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(5),
	datab => \C2|PROM_OUT\(9),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_2\(5),
	combout => \C4|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y37_N6
\C4|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux10~1_combout\ = (\C2|PROM_OUT\(8) & ((\C4|Mux10~0_combout\ & ((\C8|REG_3\(5)))) # (!\C4|Mux10~0_combout\ & (\C8|REG_1\(5))))) # (!\C2|PROM_OUT\(8) & (((\C4|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_1\(5),
	datab => \C2|PROM_OUT\(8),
	datac => \C8|REG_3\(5),
	datad => \C4|Mux10~0_combout\,
	combout => \C4|Mux10~1_combout\);

-- Location: FF_X39_Y37_N7
\C4|REG_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(5));

-- Location: LCCOMB_X38_Y37_N14
\C7|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux11~2_combout\ = (\C7|REG_IN[7]~15_combout\ & ((\C7|REG_IN[7]~16_combout\ & (\C4|REG_OUT\(4))) # (!\C7|REG_IN[7]~16_combout\ & ((\C7|Add0~15_combout\))))) # (!\C7|REG_IN[7]~15_combout\ & (((!\C7|REG_IN[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|REG_IN[7]~15_combout\,
	datab => \C4|REG_OUT\(4),
	datac => \C7|Add0~15_combout\,
	datad => \C7|REG_IN[7]~16_combout\,
	combout => \C7|Mux11~2_combout\);

-- Location: LCCOMB_X39_Y35_N16
\C7|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux11~3_combout\ = (\C7|REG_IN[3]~13_combout\ & (((\C7|Mux11~2_combout\)))) # (!\C7|REG_IN[3]~13_combout\ & ((\C7|Mux11~2_combout\ & (\C7|Mux11~1_combout\)) # (!\C7|Mux11~2_combout\ & ((\C4|REG_OUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux11~1_combout\,
	datab => \C4|REG_OUT\(5),
	datac => \C7|REG_IN[3]~13_combout\,
	datad => \C7|Mux11~2_combout\,
	combout => \C7|Mux11~3_combout\);

-- Location: LCCOMB_X38_Y35_N10
\C7|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux11~4_combout\ = (\C3|OP_CODE\(2) & ((\C7|PC[0]~3_combout\ & (\C6|RAM_OUT\(4))) # (!\C7|PC[0]~3_combout\ & ((\C7|Mux11~3_combout\))))) # (!\C3|OP_CODE\(2) & (((\C7|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|RAM_OUT\(4),
	datab => \C3|OP_CODE\(2),
	datac => \C7|PC[0]~3_combout\,
	datad => \C7|Mux11~3_combout\,
	combout => \C7|Mux11~4_combout\);

-- Location: FF_X38_Y35_N11
\C7|REG_IN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|Mux11~4_combout\,
	ena => \C7|REG_IN[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|REG_IN\(4));

-- Location: LCCOMB_X39_Y38_N30
\C8|REG_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_0~5_combout\ = (\RESET_N~input_o\ & \C7|REG_IN\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datad => \C7|REG_IN\(4),
	combout => \C8|REG_0~5_combout\);

-- Location: LCCOMB_X40_Y38_N26
\C8|REG_3[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C8|REG_3[4]~feeder_combout\ = \C8|REG_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C8|REG_0~5_combout\,
	combout => \C8|REG_3[4]~feeder_combout\);

-- Location: FF_X40_Y38_N27
\C8|REG_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C8|REG_3[4]~feeder_combout\,
	ena => \C8|REG_3[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C8|REG_3\(4));

-- Location: LCCOMB_X38_Y38_N10
\C5|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux11~0_combout\ = (\C2|PROM_OUT\(6) & ((\C2|PROM_OUT\(5)) # ((\C8|REG_2\(4))))) # (!\C2|PROM_OUT\(6) & (!\C2|PROM_OUT\(5) & (\C8|REG_0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(6),
	datab => \C2|PROM_OUT\(5),
	datac => \C8|REG_0\(4),
	datad => \C8|REG_2\(4),
	combout => \C5|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y38_N12
\C5|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C5|Mux11~1_combout\ = (\C2|PROM_OUT\(5) & ((\C5|Mux11~0_combout\ & (\C8|REG_3\(4))) # (!\C5|Mux11~0_combout\ & ((\C8|REG_1\(4)))))) # (!\C2|PROM_OUT\(5) & (((\C5|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C8|REG_3\(4),
	datac => \C8|REG_1\(4),
	datad => \C5|Mux11~0_combout\,
	combout => \C5|Mux11~1_combout\);

-- Location: FF_X38_Y38_N13
\C5|REG_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C5|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C5|REG_OUT\(4));

-- Location: LCCOMB_X39_Y35_N12
\C7|Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~3_combout\ = (\C5|REG_OUT\(4) & (\C4|REG_OUT\(4) & (\C5|REG_OUT\(5) $ (!\C4|REG_OUT\(5))))) # (!\C5|REG_OUT\(4) & (!\C4|REG_OUT\(4) & (\C5|REG_OUT\(5) $ (!\C4|REG_OUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(4),
	datab => \C5|REG_OUT\(5),
	datac => \C4|REG_OUT\(4),
	datad => \C4|REG_OUT\(5),
	combout => \C7|Mux26~3_combout\);

-- Location: LCCOMB_X39_Y35_N4
\C7|Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~2_combout\ = (\C5|REG_OUT\(3) & (\C4|REG_OUT\(3) & (\C4|REG_OUT\(2) $ (!\C5|REG_OUT\(2))))) # (!\C5|REG_OUT\(3) & (!\C4|REG_OUT\(3) & (\C4|REG_OUT\(2) $ (!\C5|REG_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(3),
	datab => \C4|REG_OUT\(3),
	datac => \C4|REG_OUT\(2),
	datad => \C5|REG_OUT\(2),
	combout => \C7|Mux26~2_combout\);

-- Location: LCCOMB_X38_Y35_N4
\C7|Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~5_combout\ = (\C5|REG_OUT\(7) & (\C4|REG_OUT\(7) & (\C4|REG_OUT\(6) $ (!\C5|REG_OUT\(6))))) # (!\C5|REG_OUT\(7) & (!\C4|REG_OUT\(7) & (\C4|REG_OUT\(6) $ (!\C5|REG_OUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(7),
	datab => \C4|REG_OUT\(7),
	datac => \C4|REG_OUT\(6),
	datad => \C5|REG_OUT\(6),
	combout => \C7|Mux26~5_combout\);

-- Location: LCCOMB_X37_Y38_N28
\C7|Mux26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~6_combout\ = (\C5|REG_OUT\(9) & (\C4|REG_OUT\(9) & (\C5|REG_OUT\(8) $ (!\C4|REG_OUT\(8))))) # (!\C5|REG_OUT\(9) & (!\C4|REG_OUT\(9) & (\C5|REG_OUT\(8) $ (!\C4|REG_OUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(9),
	datab => \C5|REG_OUT\(8),
	datac => \C4|REG_OUT\(9),
	datad => \C4|REG_OUT\(8),
	combout => \C7|Mux26~6_combout\);

-- Location: LCCOMB_X41_Y37_N12
\C7|Mux26~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~8_combout\ = (\C5|REG_OUT\(12) & (\C4|REG_OUT\(12) & (\C5|REG_OUT\(13) $ (!\C4|REG_OUT\(13))))) # (!\C5|REG_OUT\(12) & (!\C4|REG_OUT\(12) & (\C5|REG_OUT\(13) $ (!\C4|REG_OUT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(12),
	datab => \C5|REG_OUT\(13),
	datac => \C4|REG_OUT\(13),
	datad => \C4|REG_OUT\(12),
	combout => \C7|Mux26~8_combout\);

-- Location: LCCOMB_X42_Y38_N20
\C7|Mux26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~7_combout\ = (\C4|REG_OUT\(10) & (\C5|REG_OUT\(10) & (\C5|REG_OUT\(11) $ (!\C4|REG_OUT\(11))))) # (!\C4|REG_OUT\(10) & (!\C5|REG_OUT\(10) & (\C5|REG_OUT\(11) $ (!\C4|REG_OUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(10),
	datab => \C5|REG_OUT\(10),
	datac => \C5|REG_OUT\(11),
	datad => \C4|REG_OUT\(11),
	combout => \C7|Mux26~7_combout\);

-- Location: LCCOMB_X41_Y35_N8
\C7|Mux26~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~9_combout\ = (\C7|Mux26~5_combout\ & (\C7|Mux26~6_combout\ & (\C7|Mux26~8_combout\ & \C7|Mux26~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux26~5_combout\,
	datab => \C7|Mux26~6_combout\,
	datac => \C7|Mux26~8_combout\,
	datad => \C7|Mux26~7_combout\,
	combout => \C7|Mux26~9_combout\);

-- Location: LCCOMB_X40_Y35_N22
\C7|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~1_combout\ = (\C5|REG_OUT\(0) & (\C4|REG_OUT\(0) & (\C4|REG_OUT\(1) $ (!\C5|REG_OUT\(1))))) # (!\C5|REG_OUT\(0) & (!\C4|REG_OUT\(0) & (\C4|REG_OUT\(1) $ (!\C5|REG_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|REG_OUT\(0),
	datab => \C4|REG_OUT\(0),
	datac => \C4|REG_OUT\(1),
	datad => \C5|REG_OUT\(1),
	combout => \C7|Mux26~1_combout\);

-- Location: LCCOMB_X41_Y36_N8
\C7|Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~4_combout\ = (\C4|REG_OUT\(15) & (\C5|REG_OUT\(15) & (\C4|REG_OUT\(14) $ (!\C5|REG_OUT\(14))))) # (!\C4|REG_OUT\(15) & (!\C5|REG_OUT\(15) & (\C4|REG_OUT\(14) $ (!\C5|REG_OUT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|REG_OUT\(15),
	datab => \C4|REG_OUT\(14),
	datac => \C5|REG_OUT\(14),
	datad => \C5|REG_OUT\(15),
	combout => \C7|Mux26~4_combout\);

-- Location: LCCOMB_X40_Y35_N18
\C7|Mux26~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~10_combout\ = (\C7|Mux26~2_combout\ & (\C7|Mux26~9_combout\ & (\C7|Mux26~1_combout\ & \C7|Mux26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux26~2_combout\,
	datab => \C7|Mux26~9_combout\,
	datac => \C7|Mux26~1_combout\,
	datad => \C7|Mux26~4_combout\,
	combout => \C7|Mux26~10_combout\);

-- Location: LCCOMB_X39_Y32_N28
\C7|Mux26~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Mux26~11_combout\ = (\C7|Mux26~0_combout\ & (\C7|Mux26~3_combout\ & ((\C7|Mux26~10_combout\)))) # (!\C7|Mux26~0_combout\ & (((\C7|CMP_FLAG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux26~0_combout\,
	datab => \C7|Mux26~3_combout\,
	datac => \C7|CMP_FLAG~q\,
	datad => \C7|Mux26~10_combout\,
	combout => \C7|Mux26~11_combout\);

-- Location: FF_X39_Y32_N29
\C7|CMP_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|Mux26~11_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|CMP_FLAG~q\);

-- Location: LCCOMB_X39_Y32_N24
\C7|PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC[0]~0_combout\ = (\C3|OP_CODE\(1) & ((!\C7|CMP_FLAG~q\) # (!\C3|OP_CODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(0),
	datac => \C3|OP_CODE\(1),
	datad => \C7|CMP_FLAG~q\,
	combout => \C7|PC[0]~0_combout\);

-- Location: LCCOMB_X40_Y32_N4
\C7|PC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC[0]~1_combout\ = ((\C7|PC[0]~0_combout\) # (!\C3|OP_CODE\(3))) # (!\C7|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|Mux3~0_combout\,
	datac => \C3|OP_CODE\(3),
	datad => \C7|PC[0]~0_combout\,
	combout => \C7|PC[0]~1_combout\);

-- Location: LCCOMB_X40_Y32_N14
\C7|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add2~0_combout\ = \C7|PC\(0) $ (VCC)
-- \C7|Add2~1\ = CARRY(\C7|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(0),
	datad => VCC,
	combout => \C7|Add2~0_combout\,
	cout => \C7|Add2~1\);

-- Location: LCCOMB_X40_Y32_N16
\C7|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add2~2_combout\ = (\C7|PC\(1) & (!\C7|Add2~1\)) # (!\C7|PC\(1) & ((\C7|Add2~1\) # (GND)))
-- \C7|Add2~3\ = CARRY((!\C7|Add2~1\) # (!\C7|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(1),
	datad => VCC,
	cin => \C7|Add2~1\,
	combout => \C7|Add2~2_combout\,
	cout => \C7|Add2~3\);

-- Location: LCCOMB_X40_Y32_N18
\C7|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add2~4_combout\ = (\C7|PC\(2) & (\C7|Add2~3\ $ (GND))) # (!\C7|PC\(2) & (!\C7|Add2~3\ & VCC))
-- \C7|Add2~5\ = CARRY((\C7|PC\(2) & !\C7|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(2),
	datad => VCC,
	cin => \C7|Add2~3\,
	combout => \C7|Add2~4_combout\,
	cout => \C7|Add2~5\);

-- Location: LCCOMB_X40_Y32_N20
\C7|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|Add2~6_combout\ = \C7|Add2~5\ $ (\C7|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C7|PC\(3),
	cin => \C7|Add2~5\,
	combout => \C7|Add2~6_combout\);

-- Location: LCCOMB_X40_Y32_N24
\C7|PC~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC~6_combout\ = (\C7|PC[0]~1_combout\ & ((\C7|Add2~6_combout\))) # (!\C7|PC[0]~1_combout\ & (\C3|OP_DATA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_DATA\(3),
	datac => \C7|PC[0]~1_combout\,
	datad => \C7|Add2~6_combout\,
	combout => \C7|PC~6_combout\);

-- Location: LCCOMB_X40_Y36_N8
\C7|PC[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC[0]~4_combout\ = (((!\C7|PC[0]~3_combout\) # (!\C3|OP_CODE\(2))) # (!\RESET_N~input_o\)) # (!\C3|OP_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_CODE\(1),
	datab => \RESET_N~input_o\,
	datac => \C3|OP_CODE\(2),
	datad => \C7|PC[0]~3_combout\,
	combout => \C7|PC[0]~4_combout\);

-- Location: FF_X40_Y32_N25
\C7|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|PC~6_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C7|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|PC\(3));

-- Location: LCCOMB_X41_Y32_N6
\C2|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux11~0_combout\ = (\C7|PC\(0) & (!\C7|PC\(3) & (!\C7|PC\(2) & \C7|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(0),
	datab => \C7|PC\(3),
	datac => \C7|PC\(2),
	datad => \C7|PC\(1),
	combout => \C2|Mux11~0_combout\);

-- Location: FF_X41_Y32_N7
\C2|PROM_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(0));

-- Location: LCCOMB_X40_Y36_N22
\C3|OP_DATA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|OP_DATA[0]~feeder_combout\ = \C2|PROM_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|PROM_OUT\(0),
	combout => \C3|OP_DATA[0]~feeder_combout\);

-- Location: FF_X40_Y36_N23
\C3|OP_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C3|OP_DATA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_DATA\(0));

-- Location: LCCOMB_X40_Y32_N26
\C7|PC~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC~5_combout\ = (\C7|PC[0]~1_combout\ & ((\C7|Add2~0_combout\))) # (!\C7|PC[0]~1_combout\ & (\C3|OP_DATA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_DATA\(0),
	datac => \C7|PC[0]~1_combout\,
	datad => \C7|Add2~0_combout\,
	combout => \C7|PC~5_combout\);

-- Location: FF_X40_Y32_N27
\C7|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|PC~5_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C7|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|PC\(0));

-- Location: LCCOMB_X41_Y32_N2
\C2|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux10~0_combout\ = (\C7|PC\(2) & ((\C7|PC\(1) & (\C7|PC\(0) & !\C7|PC\(3))) # (!\C7|PC\(1) & (!\C7|PC\(0) & \C7|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(1),
	datab => \C7|PC\(0),
	datac => \C7|PC\(2),
	datad => \C7|PC\(3),
	combout => \C2|Mux10~0_combout\);

-- Location: FF_X41_Y32_N3
\C2|PROM_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(1));

-- Location: LCCOMB_X40_Y33_N30
\C3|OP_DATA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|OP_DATA[1]~feeder_combout\ = \C2|PROM_OUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|PROM_OUT\(1),
	combout => \C3|OP_DATA[1]~feeder_combout\);

-- Location: FF_X40_Y33_N31
\C3|OP_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C3|OP_DATA[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_DATA\(1));

-- Location: LCCOMB_X40_Y32_N12
\C7|PC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC~2_combout\ = (\C7|PC[0]~1_combout\ & ((\C7|Add2~2_combout\))) # (!\C7|PC[0]~1_combout\ & (\C3|OP_DATA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|OP_DATA\(1),
	datac => \C7|PC[0]~1_combout\,
	datad => \C7|Add2~2_combout\,
	combout => \C7|PC~2_combout\);

-- Location: FF_X40_Y32_N13
\C7|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|PC~2_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C7|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|PC\(1));

-- Location: LCCOMB_X41_Y32_N8
\C2|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux9~0_combout\ = (!\C7|PC\(1) & (\C7|PC\(2) & (!\C7|PC\(0) & \C7|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(1),
	datab => \C7|PC\(2),
	datac => \C7|PC\(0),
	datad => \C7|PC\(3),
	combout => \C2|Mux9~0_combout\);

-- Location: FF_X41_Y32_N9
\C2|PROM_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(2));

-- Location: LCCOMB_X37_Y36_N24
\C3|OP_DATA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|OP_DATA[2]~feeder_combout\ = \C2|PROM_OUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|PROM_OUT\(2),
	combout => \C3|OP_DATA[2]~feeder_combout\);

-- Location: FF_X37_Y36_N25
\C3|OP_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C3|OP_DATA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|OP_DATA\(2));

-- Location: LCCOMB_X40_Y32_N6
\C7|PC~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|PC~7_combout\ = (\C7|PC[0]~1_combout\ & ((\C7|Add2~4_combout\))) # (!\C7|PC[0]~1_combout\ & (\C3|OP_DATA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|OP_DATA\(2),
	datac => \C7|PC[0]~1_combout\,
	datad => \C7|Add2~4_combout\,
	combout => \C7|PC~7_combout\);

-- Location: FF_X40_Y32_N7
\C7|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|PC~7_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C7|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|PC\(2));

-- Location: LCCOMB_X40_Y32_N0
\C2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Mux4~0_combout\ = (\C7|PC\(2) & (!\C7|PC\(3))) # (!\C7|PC\(2) & (\C7|PC\(3) & (\C7|PC\(1) $ (!\C7|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|PC\(2),
	datab => \C7|PC\(3),
	datac => \C7|PC\(1),
	datad => \C7|PC\(0),
	combout => \C2|Mux4~0_combout\);

-- Location: FF_X40_Y32_N1
\C2|PROM_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_FT~clkctrl_outclk\,
	d => \C2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|PROM_OUT\(9));

-- Location: LCCOMB_X37_Y38_N18
\C4|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux15~0_combout\ = (\C2|PROM_OUT\(9) & (((\C2|PROM_OUT\(8))))) # (!\C2|PROM_OUT\(9) & ((\C2|PROM_OUT\(8) & ((\C8|REG_1\(0)))) # (!\C2|PROM_OUT\(8) & (\C8|REG_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|REG_0\(0),
	datab => \C2|PROM_OUT\(9),
	datac => \C2|PROM_OUT\(8),
	datad => \C8|REG_1\(0),
	combout => \C4|Mux15~0_combout\);

-- Location: LCCOMB_X37_Y38_N24
\C4|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|Mux15~1_combout\ = (\C2|PROM_OUT\(9) & ((\C4|Mux15~0_combout\ & ((\C8|REG_3\(0)))) # (!\C4|Mux15~0_combout\ & (\C8|REG_2\(0))))) # (!\C2|PROM_OUT\(9) & (((\C4|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(9),
	datab => \C8|REG_2\(0),
	datac => \C8|REG_3\(0),
	datad => \C4|Mux15~0_combout\,
	combout => \C4|Mux15~1_combout\);

-- Location: FF_X37_Y38_N25
\C4|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_DC~clkctrl_outclk\,
	d => \C4|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|REG_OUT\(0));

-- Location: LCCOMB_X40_Y35_N0
\C7|RAM_IN[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C7|RAM_IN[0]~feeder_combout\ = \C4|REG_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C4|REG_OUT\(0),
	combout => \C7|RAM_IN[0]~feeder_combout\);

-- Location: FF_X40_Y35_N1
\C7|RAM_IN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_EX~clkctrl_outclk\,
	d => \C7|RAM_IN[0]~feeder_combout\,
	ena => \C7|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C7|RAM_IN\(0));

-- Location: LCCOMB_X40_Y33_N0
\C9|IO64_OUT[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[0]~feeder_combout\ = \C7|RAM_IN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(0),
	combout => \C9|IO64_OUT[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y32_N28
\C9|IO64_OUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[0]~0_combout\ = (!\C2|PROM_OUT\(5) & (\C7|RAM_WEN~q\ & (!\C2|PROM_OUT\(3) & !\C2|PROM_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(5),
	datab => \C7|RAM_WEN~q\,
	datac => \C2|PROM_OUT\(3),
	datad => \C2|PROM_OUT\(0),
	combout => \C9|IO64_OUT[0]~0_combout\);

-- Location: LCCOMB_X41_Y32_N0
\C9|IO64_OUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[0]~1_combout\ = (\C2|PROM_OUT\(6) & (!\C2|PROM_OUT\(1) & (!\C2|PROM_OUT\(2) & \C9|IO64_OUT[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|PROM_OUT\(6),
	datab => \C2|PROM_OUT\(1),
	datac => \C2|PROM_OUT\(2),
	datad => \C9|IO64_OUT[0]~0_combout\,
	combout => \C9|IO64_OUT[0]~1_combout\);

-- Location: FF_X40_Y33_N1
\C9|IO64_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[0]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(0));

-- Location: LCCOMB_X40_Y33_N6
\C9|IO64_OUT[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[1]~feeder_combout\ = \C7|RAM_IN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(1),
	combout => \C9|IO64_OUT[1]~feeder_combout\);

-- Location: FF_X40_Y33_N7
\C9|IO64_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[1]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(1));

-- Location: LCCOMB_X40_Y33_N8
\C9|IO64_OUT[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[2]~feeder_combout\ = \C7|RAM_IN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(2),
	combout => \C9|IO64_OUT[2]~feeder_combout\);

-- Location: FF_X40_Y33_N9
\C9|IO64_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[2]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(2));

-- Location: LCCOMB_X40_Y33_N10
\C9|IO64_OUT[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[3]~feeder_combout\ = \C7|RAM_IN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(3),
	combout => \C9|IO64_OUT[3]~feeder_combout\);

-- Location: FF_X40_Y33_N11
\C9|IO64_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[3]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(3));

-- Location: LCCOMB_X40_Y33_N16
\C9|IO64_OUT[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[4]~feeder_combout\ = \C7|RAM_IN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(4),
	combout => \C9|IO64_OUT[4]~feeder_combout\);

-- Location: FF_X40_Y33_N17
\C9|IO64_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[4]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(4));

-- Location: LCCOMB_X40_Y33_N26
\C9|IO64_OUT[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[5]~feeder_combout\ = \C7|RAM_IN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(5),
	combout => \C9|IO64_OUT[5]~feeder_combout\);

-- Location: FF_X40_Y33_N27
\C9|IO64_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[5]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(5));

-- Location: LCCOMB_X40_Y33_N24
\C9|IO64_OUT[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[6]~feeder_combout\ = \C7|RAM_IN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(6),
	combout => \C9|IO64_OUT[6]~feeder_combout\);

-- Location: FF_X40_Y33_N25
\C9|IO64_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[6]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(6));

-- Location: LCCOMB_X40_Y33_N14
\C9|IO64_OUT[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[7]~feeder_combout\ = \C7|RAM_IN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(7),
	combout => \C9|IO64_OUT[7]~feeder_combout\);

-- Location: FF_X40_Y33_N15
\C9|IO64_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[7]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(7));

-- Location: LCCOMB_X40_Y33_N12
\C9|IO64_OUT[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[8]~feeder_combout\ = \C7|RAM_IN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(8),
	combout => \C9|IO64_OUT[8]~feeder_combout\);

-- Location: FF_X40_Y33_N13
\C9|IO64_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[8]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(8));

-- Location: LCCOMB_X43_Y33_N16
\C9|IO64_OUT[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[9]~feeder_combout\ = \C7|RAM_IN\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(9),
	combout => \C9|IO64_OUT[9]~feeder_combout\);

-- Location: FF_X43_Y33_N17
\C9|IO64_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[9]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(9));

-- Location: LCCOMB_X40_Y33_N18
\C9|IO64_OUT[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[10]~feeder_combout\ = \C7|RAM_IN\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(10),
	combout => \C9|IO64_OUT[10]~feeder_combout\);

-- Location: FF_X40_Y33_N19
\C9|IO64_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[10]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(10));

-- Location: LCCOMB_X40_Y33_N4
\C9|IO64_OUT[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[11]~feeder_combout\ = \C7|RAM_IN\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(11),
	combout => \C9|IO64_OUT[11]~feeder_combout\);

-- Location: FF_X40_Y33_N5
\C9|IO64_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[11]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(11));

-- Location: LCCOMB_X43_Y33_N18
\C9|IO64_OUT[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[12]~feeder_combout\ = \C7|RAM_IN\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(12),
	combout => \C9|IO64_OUT[12]~feeder_combout\);

-- Location: FF_X43_Y33_N19
\C9|IO64_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[12]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(12));

-- Location: LCCOMB_X40_Y33_N22
\C9|IO64_OUT[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[13]~feeder_combout\ = \C7|RAM_IN\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(13),
	combout => \C9|IO64_OUT[13]~feeder_combout\);

-- Location: FF_X40_Y33_N23
\C9|IO64_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[13]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(13));

-- Location: LCCOMB_X40_Y33_N28
\C9|IO64_OUT[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[14]~feeder_combout\ = \C7|RAM_IN\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C7|RAM_IN\(14),
	combout => \C9|IO64_OUT[14]~feeder_combout\);

-- Location: FF_X40_Y33_N29
\C9|IO64_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[14]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(14));

-- Location: LCCOMB_X43_Y33_N24
\C9|IO64_OUT[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C9|IO64_OUT[15]~feeder_combout\ = \C7|RAM_IN\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|RAM_IN\(15),
	combout => \C9|IO64_OUT[15]~feeder_combout\);

-- Location: FF_X43_Y33_N25
\C9|IO64_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|CLK_WB~clkctrl_outclk\,
	d => \C9|IO64_OUT[15]~feeder_combout\,
	ena => \C9|IO64_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C9|IO64_OUT\(15));

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


