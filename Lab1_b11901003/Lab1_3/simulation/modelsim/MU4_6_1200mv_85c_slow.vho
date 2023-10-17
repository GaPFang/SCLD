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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/15/2022 14:16:34"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MU4 IS
    PORT (
	M : OUT std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0)
	);
END MU4;

-- Design Ports Information
-- M[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MU4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_M : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \M[7]~output_o\ : std_logic;
SIGNAL \M[6]~output_o\ : std_logic;
SIGNAL \M[5]~output_o\ : std_logic;
SIGNAL \M[4]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst2|inst~combout\ : std_logic;
SIGNAL \inst5|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst3|inst~combout\ : std_logic;
SIGNAL \inst5|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst5|inst1|inst1|inst~combout\ : std_logic;
SIGNAL \inst6|inst|inst2|inst~combout\ : std_logic;
SIGNAL \inst6|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst6|inst2|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst6|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst6|inst1|inst1|inst~combout\ : std_logic;
SIGNAL \inst9|inst|inst2|inst~combout\ : std_logic;
SIGNAL \inst9|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst9|inst2|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst3|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst9|inst3|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst9|inst3|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst9|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst9|inst1|inst1|inst~combout\ : std_logic;
SIGNAL \inst9|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst6|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst5|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst|inst~combout\ : std_logic;

BEGIN

M <= ww_M;
ww_B <= B;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y31_N9
\M[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|inst4|inst~0_combout\,
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\M[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|inst1|inst~0_combout\,
	devoe => ww_devoe,
	o => \M[6]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\M[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\M[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\M[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst|inst|inst~combout\,
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\M[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|inst|inst~combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\M[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst|inst|inst~combout\,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\M[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst~combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOIBUF_X33_Y16_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X14_Y21_N22
\inst|inst3|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~combout\ = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|inst3|inst~combout\);

-- Location: IOIBUF_X12_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X14_Y21_N10
\inst|inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~combout\ = (\A[2]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst2|inst~combout\);

-- Location: IOIBUF_X24_Y31_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X14_Y21_N0
\inst5|inst|inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst2|inst~combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5|inst|inst2|inst~combout\);

-- Location: LCCOMB_X14_Y21_N12
\inst5|inst1|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst4|inst~0_combout\ = (\inst|inst2|inst~combout\ & ((\inst5|inst|inst2|inst~combout\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\inst|inst2|inst~combout\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \inst5|inst|inst2|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst~combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst5|inst|inst2|inst~combout\,
	combout => \inst5|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X14_Y21_N16
\inst5|inst2|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst4|inst~0_combout\ = (\inst|inst3|inst~combout\ & ((\inst5|inst1|inst4|inst~0_combout\) # ((\A[2]~input_o\ & \B[1]~input_o\)))) # (!\inst|inst3|inst~combout\ & (\A[2]~input_o\ & (\B[1]~input_o\ & \inst5|inst1|inst4|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst~combout\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst5|inst1|inst4|inst~0_combout\,
	combout => \inst5|inst2|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N18
\inst5|inst3|inst3|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst3|inst~combout\ = (\B[1]~input_o\ & (\inst5|inst2|inst4|inst~0_combout\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst5|inst2|inst4|inst~0_combout\,
	datac => \A[3]~input_o\,
	combout => \inst5|inst3|inst3|inst~combout\);

-- Location: LCCOMB_X14_Y21_N24
\inst5|inst2|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst1|inst~combout\ = \inst|inst3|inst~combout\ $ (\inst5|inst1|inst4|inst~0_combout\ $ (((\A[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst~combout\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst5|inst1|inst4|inst~0_combout\,
	combout => \inst5|inst2|inst1|inst~combout\);

-- Location: LCCOMB_X14_Y21_N18
\inst5|inst1|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst1|inst~combout\ = \inst|inst2|inst~combout\ $ (\inst5|inst|inst2|inst~combout\ $ (((\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst~combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst5|inst|inst2|inst~combout\,
	combout => \inst5|inst1|inst1|inst~combout\);

-- Location: LCCOMB_X14_Y21_N28
\inst6|inst|inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst|inst2|inst~combout\ = (\inst5|inst1|inst1|inst~combout\ & (\B[2]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst1|inst~combout\,
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst6|inst|inst2|inst~combout\);

-- Location: LCCOMB_X14_Y21_N26
\inst6|inst1|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst4|inst~0_combout\ = (\inst5|inst2|inst1|inst~combout\ & ((\inst6|inst|inst2|inst~combout\) # ((\A[1]~input_o\ & \B[2]~input_o\)))) # (!\inst5|inst2|inst1|inst~combout\ & (\A[1]~input_o\ & (\B[2]~input_o\ & 
-- \inst6|inst|inst2|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst5|inst2|inst1|inst~combout\,
	datac => \B[2]~input_o\,
	datad => \inst6|inst|inst2|inst~combout\,
	combout => \inst6|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N26
\inst5|inst3|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst1|inst~combout\ = \inst5|inst2|inst4|inst~0_combout\ $ (((\B[1]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst5|inst2|inst4|inst~0_combout\,
	datac => \A[3]~input_o\,
	combout => \inst5|inst3|inst1|inst~combout\);

-- Location: LCCOMB_X13_Y21_N0
\inst6|inst2|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst2|inst4|inst~0_combout\ = (\inst6|inst1|inst4|inst~0_combout\ & ((\inst5|inst3|inst1|inst~combout\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\inst6|inst1|inst4|inst~0_combout\ & (\A[2]~input_o\ & (\inst5|inst3|inst1|inst~combout\ & 
-- \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst6|inst1|inst4|inst~0_combout\,
	datac => \inst5|inst3|inst1|inst~combout\,
	datad => \B[2]~input_o\,
	combout => \inst6|inst2|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N12
\inst6|inst3|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst3|inst1|inst~combout\ = \inst5|inst3|inst3|inst~combout\ $ (\inst6|inst2|inst4|inst~0_combout\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst5|inst3|inst3|inst~combout\,
	datac => \A[3]~input_o\,
	datad => \inst6|inst2|inst4|inst~0_combout\,
	combout => \inst6|inst3|inst1|inst~combout\);

-- Location: LCCOMB_X13_Y21_N28
\inst6|inst2|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst2|inst1|inst~combout\ = \inst6|inst1|inst4|inst~0_combout\ $ (\inst5|inst3|inst1|inst~combout\ $ (((\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst6|inst1|inst4|inst~0_combout\,
	datac => \inst5|inst3|inst1|inst~combout\,
	datad => \B[2]~input_o\,
	combout => \inst6|inst2|inst1|inst~combout\);

-- Location: LCCOMB_X14_Y21_N6
\inst6|inst1|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst1|inst~combout\ = \inst5|inst2|inst1|inst~combout\ $ (\inst6|inst|inst2|inst~combout\ $ (((\A[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst5|inst2|inst1|inst~combout\,
	datac => \B[2]~input_o\,
	datad => \inst6|inst|inst2|inst~combout\,
	combout => \inst6|inst1|inst1|inst~combout\);

-- Location: LCCOMB_X13_Y21_N8
\inst9|inst|inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst|inst2|inst~combout\ = (\inst6|inst1|inst1|inst~combout\ & (\A[0]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst1|inst~combout\,
	datab => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst9|inst|inst2|inst~combout\);

-- Location: LCCOMB_X13_Y21_N22
\inst9|inst1|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst4|inst~0_combout\ = (\inst6|inst2|inst1|inst~combout\ & ((\inst9|inst|inst2|inst~combout\) # ((\A[1]~input_o\ & \B[3]~input_o\)))) # (!\inst6|inst2|inst1|inst~combout\ & (\A[1]~input_o\ & (\inst9|inst|inst2|inst~combout\ & 
-- \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst6|inst2|inst1|inst~combout\,
	datac => \inst9|inst|inst2|inst~combout\,
	datad => \B[3]~input_o\,
	combout => \inst9|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N14
\inst9|inst2|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst4|inst~0_combout\ = (\inst6|inst3|inst1|inst~combout\ & ((\inst9|inst1|inst4|inst~0_combout\) # ((\A[2]~input_o\ & \B[3]~input_o\)))) # (!\inst6|inst3|inst1|inst~combout\ & (\A[2]~input_o\ & (\inst9|inst1|inst4|inst~0_combout\ & 
-- \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|inst1|inst~combout\,
	datab => \A[2]~input_o\,
	datac => \inst9|inst1|inst4|inst~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst9|inst2|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N16
\inst6|inst3|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst3|inst4|inst~0_combout\ = (\inst5|inst3|inst3|inst~combout\ & ((\inst6|inst2|inst4|inst~0_combout\) # ((\B[2]~input_o\ & \A[3]~input_o\)))) # (!\inst5|inst3|inst3|inst~combout\ & (\B[2]~input_o\ & (\A[3]~input_o\ & 
-- \inst6|inst2|inst4|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst5|inst3|inst3|inst~combout\,
	datac => \A[3]~input_o\,
	datad => \inst6|inst2|inst4|inst~0_combout\,
	combout => \inst6|inst3|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N10
\inst9|inst3|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst3|inst4|inst~0_combout\ = (\inst9|inst2|inst4|inst~0_combout\ & ((\inst6|inst3|inst4|inst~0_combout\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # (!\inst9|inst2|inst4|inst~0_combout\ & (\B[3]~input_o\ & (\A[3]~input_o\ & 
-- \inst6|inst3|inst4|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst9|inst2|inst4|inst~0_combout\,
	datac => \A[3]~input_o\,
	datad => \inst6|inst3|inst4|inst~0_combout\,
	combout => \inst9|inst3|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N20
\inst9|inst3|inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst3|inst1|inst~0_combout\ = \inst9|inst2|inst4|inst~0_combout\ $ (\inst6|inst3|inst4|inst~0_combout\ $ (((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst9|inst2|inst4|inst~0_combout\,
	datac => \A[3]~input_o\,
	datad => \inst6|inst3|inst4|inst~0_combout\,
	combout => \inst9|inst3|inst1|inst~0_combout\);

-- Location: LCCOMB_X13_Y21_N6
\inst9|inst2|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst1|inst~combout\ = \inst6|inst3|inst1|inst~combout\ $ (\inst9|inst1|inst4|inst~0_combout\ $ (((\A[2]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3|inst1|inst~combout\,
	datab => \A[2]~input_o\,
	datac => \inst9|inst1|inst4|inst~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst9|inst2|inst1|inst~combout\);

-- Location: LCCOMB_X13_Y21_N24
\inst9|inst1|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst1|inst~combout\ = \inst6|inst2|inst1|inst~combout\ $ (\inst9|inst|inst2|inst~combout\ $ (((\A[1]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst6|inst2|inst1|inst~combout\,
	datac => \inst9|inst|inst2|inst~combout\,
	datad => \B[3]~input_o\,
	combout => \inst9|inst1|inst1|inst~combout\);

-- Location: LCCOMB_X13_Y21_N2
\inst9|inst|inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst|inst|inst~combout\ = \inst6|inst1|inst1|inst~combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst1|inst~combout\,
	datab => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst9|inst|inst|inst~combout\);

-- Location: LCCOMB_X14_Y21_N20
\inst6|inst|inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst|inst|inst~combout\ = \inst5|inst1|inst1|inst~combout\ $ (((\B[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst1|inst~combout\,
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst6|inst|inst|inst~combout\);

-- Location: LCCOMB_X14_Y21_N14
\inst5|inst|inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|inst~combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\B[1]~input_o\ & \A[0]~input_o\))))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5|inst|inst|inst~combout\);

-- Location: LCCOMB_X14_Y21_N8
\inst|inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst~combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|inst|inst~combout\);

ww_M(7) <= \M[7]~output_o\;

ww_M(6) <= \M[6]~output_o\;

ww_M(5) <= \M[5]~output_o\;

ww_M(4) <= \M[4]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(0) <= \M[0]~output_o\;
END structure;


