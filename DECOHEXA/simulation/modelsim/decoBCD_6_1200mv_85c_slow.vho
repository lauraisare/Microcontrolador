-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/22/2024 23:23:01"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoBCD IS
    PORT (
	IA : IN std_logic_vector(3 DOWNTO 0);
	F : OUT std_logic_vector(6 DOWNTO 0)
	);
END decoBCD;

-- Design Ports Information
-- F[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoBCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(6 DOWNTO 0);
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \IA[3]~input_o\ : std_logic;
SIGNAL \IA[2]~input_o\ : std_logic;
SIGNAL \IA[1]~input_o\ : std_logic;
SIGNAL \IA[0]~input_o\ : std_logic;
SIGNAL \F~0_combout\ : std_logic;
SIGNAL \F~1_combout\ : std_logic;
SIGNAL \F~2_combout\ : std_logic;
SIGNAL \F~3_combout\ : std_logic;
SIGNAL \F~4_combout\ : std_logic;
SIGNAL \F~5_combout\ : std_logic;
SIGNAL \F~6_combout\ : std_logic;
SIGNAL \ALT_INV_F~2_combout\ : std_logic;

BEGIN

ww_IA <= IA;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_F~2_combout\ <= NOT \F~2_combout\;

-- Location: IOOBUF_X0_Y10_N9
\F[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\F[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\F[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_F~2_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\F[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~3_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\F[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~4_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\F[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~5_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\F[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~6_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\IA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA(3),
	o => \IA[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\IA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA(2),
	o => \IA[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\IA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA(1),
	o => \IA[1]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\IA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA(0),
	o => \IA[0]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\F~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~0_combout\ = (\IA[3]~input_o\ & (\IA[0]~input_o\ & (\IA[2]~input_o\ $ (\IA[1]~input_o\)))) # (!\IA[3]~input_o\ & ((\IA[2]~input_o\ & ((!\IA[0]~input_o\))) # (!\IA[2]~input_o\ & (!\IA[1]~input_o\ & \IA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\F~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~1_combout\ = (\IA[3]~input_o\ & ((\IA[0]~input_o\ & ((\IA[1]~input_o\))) # (!\IA[0]~input_o\ & (\IA[2]~input_o\)))) # (!\IA[3]~input_o\ & (\IA[2]~input_o\ & (\IA[1]~input_o\ $ (\IA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~1_combout\);

-- Location: LCCOMB_X1_Y13_N20
\F~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~2_combout\ = (\IA[3]~input_o\ & (((!\IA[1]~input_o\ & \IA[0]~input_o\)) # (!\IA[2]~input_o\))) # (!\IA[3]~input_o\ & ((\IA[2]~input_o\) # ((\IA[0]~input_o\) # (!\IA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~2_combout\);

-- Location: LCCOMB_X1_Y13_N6
\F~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~3_combout\ = (\IA[0]~input_o\ & ((\IA[2]~input_o\ $ (!\IA[1]~input_o\)))) # (!\IA[0]~input_o\ & ((\IA[3]~input_o\ & (!\IA[2]~input_o\ & \IA[1]~input_o\)) # (!\IA[3]~input_o\ & (\IA[2]~input_o\ & !\IA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~3_combout\);

-- Location: LCCOMB_X1_Y13_N16
\F~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~4_combout\ = (\IA[1]~input_o\ & (!\IA[3]~input_o\ & ((\IA[0]~input_o\)))) # (!\IA[1]~input_o\ & ((\IA[2]~input_o\ & (!\IA[3]~input_o\)) # (!\IA[2]~input_o\ & ((\IA[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~4_combout\);

-- Location: LCCOMB_X1_Y13_N10
\F~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~5_combout\ = (\IA[2]~input_o\ & (\IA[0]~input_o\ & (\IA[3]~input_o\ $ (\IA[1]~input_o\)))) # (!\IA[2]~input_o\ & (!\IA[3]~input_o\ & ((\IA[1]~input_o\) # (\IA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~5_combout\);

-- Location: LCCOMB_X1_Y13_N12
\F~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F~6_combout\ = (\IA[0]~input_o\ & (!\IA[3]~input_o\ & (\IA[2]~input_o\ $ (!\IA[1]~input_o\)))) # (!\IA[0]~input_o\ & (!\IA[1]~input_o\ & (\IA[3]~input_o\ $ (!\IA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA[3]~input_o\,
	datab => \IA[2]~input_o\,
	datac => \IA[1]~input_o\,
	datad => \IA[0]~input_o\,
	combout => \F~6_combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;
END structure;


