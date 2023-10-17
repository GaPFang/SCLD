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

-- DATE "12/27/2022 21:05:09"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	WSC IS
    PORT (
	done : OUT std_logic;
	rst_n : IN std_logic;
	load : IN std_logic;
	sum_o : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	X : IN std_logic
	);
END WSC;

-- Design Ports Information
-- done	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WSC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_sum_o : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \sum_o[3]~output_o\ : std_logic;
SIGNAL \sum_o[2]~output_o\ : std_logic;
SIGNAL \sum_o[1]~output_o\ : std_logic;
SIGNAL \sum_o[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst1|inst13|inst2~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst|inst~q\ : std_logic;
SIGNAL \inst1|inst14|inst2~combout\ : std_logic;
SIGNAL \inst1|inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst15|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst15|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst5|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst7|inst2|inst~combout\ : std_logic;
SIGNAL \inst|inst6|inst1|inst~combout\ : std_logic;
SIGNAL \inst5|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst6|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst~q\ : std_logic;
SIGNAL \inst5|inst|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst|inst~q\ : std_logic;

BEGIN

done <= ww_done;
ww_rst_n <= rst_n;
ww_load <= load;
sum_o <= ww_sum_o;
ww_clk <= clk;
ww_X <= X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X33_Y25_N9
\done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\sum_o[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst|inst~q\,
	devoe => ww_devoe,
	o => \sum_o[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\sum_o[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst~q\,
	devoe => ww_devoe,
	o => \sum_o[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\sum_o[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|inst~q\,
	devoe => ww_devoe,
	o => \sum_o[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\sum_o[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst5|inst~q\,
	devoe => ww_devoe,
	o => \sum_o[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N8
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\X~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X14_Y1_N8
\inst1|inst13|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst13|inst2~0_combout\ = (\load~input_o\ & (\X~input_o\ & ((\inst1|inst1|inst~q\) # (\inst1|inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst~q\,
	datab => \load~input_o\,
	datac => \inst1|inst|inst~q\,
	datad => \X~input_o\,
	combout => \inst1|inst13|inst2~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G19
\rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: FF_X14_Y1_N9
\inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst13|inst2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|inst~q\);

-- Location: LCCOMB_X14_Y1_N18
\inst1|inst14|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst14|inst2~combout\ = (!\inst1|inst|inst~q\ & (\X~input_o\ & (!\inst1|inst1|inst~q\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst~q\,
	datab => \X~input_o\,
	datac => \inst1|inst1|inst~q\,
	datad => \load~input_o\,
	combout => \inst1|inst14|inst2~combout\);

-- Location: FF_X14_Y1_N19
\inst1|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst14|inst2~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst~q\);

-- Location: LCCOMB_X14_Y1_N22
\inst1|inst15|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst15|inst2~0_combout\ = (\inst1|inst|inst~q\) # ((\X~input_o\ & (!\inst1|inst2|inst~q\ & !\inst1|inst1|inst~q\)) # (!\X~input_o\ & ((\inst1|inst1|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \inst1|inst2|inst~q\,
	datac => \inst1|inst1|inst~q\,
	datad => \inst1|inst|inst~q\,
	combout => \inst1|inst15|inst2~0_combout\);

-- Location: LCCOMB_X14_Y1_N4
\inst1|inst15|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst15|inst2~1_combout\ = (\load~input_o\ & \inst1|inst15|inst2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|inst15|inst2~0_combout\,
	combout => \inst1|inst15|inst2~1_combout\);

-- Location: FF_X14_Y1_N5
\inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst15|inst2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst~q\);

-- Location: LCCOMB_X14_Y1_N30
\inst5|inst5|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst~0_combout\ = \inst5|inst5|inst~q\ $ (((\inst1|inst2|inst~q\ & ((\inst1|inst|inst~q\))) # (!\inst1|inst2|inst~q\ & (\inst1|inst1|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst~q\,
	datab => \inst1|inst2|inst~q\,
	datac => \inst5|inst5|inst~q\,
	datad => \inst1|inst|inst~q\,
	combout => \inst5|inst5|inst~0_combout\);

-- Location: FF_X14_Y1_N31
\inst5|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst5|inst~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst5|inst~q\);

-- Location: LCCOMB_X14_Y1_N6
\inst|inst7|inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst7|inst2|inst~combout\ = (\inst5|inst5|inst~q\ & ((\inst1|inst2|inst~q\ & (\inst1|inst|inst~q\)) # (!\inst1|inst2|inst~q\ & ((\inst1|inst1|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|inst~q\,
	datab => \inst1|inst|inst~q\,
	datac => \inst1|inst2|inst~q\,
	datad => \inst1|inst1|inst~q\,
	combout => \inst|inst7|inst2|inst~combout\);

-- Location: LCCOMB_X14_Y1_N28
\inst|inst6|inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst6|inst1|inst~combout\ = \inst5|inst2|inst~q\ $ (\inst|inst7|inst2|inst~combout\ $ (((\inst1|inst1|inst~q\ & !\inst1|inst2|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst~q\,
	datab => \inst1|inst2|inst~q\,
	datac => \inst5|inst2|inst~q\,
	datad => \inst|inst7|inst2|inst~combout\,
	combout => \inst|inst6|inst1|inst~combout\);

-- Location: FF_X14_Y1_N29
\inst5|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst1|inst~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|inst~q\);

-- Location: LCCOMB_X14_Y1_N0
\inst|inst6|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst6|inst4|inst~0_combout\ = (\inst5|inst2|inst~q\ & ((\inst|inst7|inst2|inst~combout\) # ((\inst1|inst1|inst~q\ & !\inst1|inst2|inst~q\)))) # (!\inst5|inst2|inst~q\ & (\inst1|inst1|inst~q\ & (!\inst1|inst2|inst~q\ & 
-- \inst|inst7|inst2|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst~q\,
	datab => \inst1|inst2|inst~q\,
	datac => \inst5|inst2|inst~q\,
	datad => \inst|inst7|inst2|inst~combout\,
	combout => \inst|inst6|inst4|inst~0_combout\);

-- Location: LCCOMB_X14_Y1_N26
\inst5|inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst~0_combout\ = \inst5|inst1|inst~q\ $ (\inst|inst6|inst4|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1|inst~q\,
	datad => \inst|inst6|inst4|inst~0_combout\,
	combout => \inst5|inst1|inst~0_combout\);

-- Location: FF_X14_Y1_N27
\inst5|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst1|inst~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst~q\);

-- Location: LCCOMB_X14_Y1_N24
\inst5|inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst~0_combout\ = \inst5|inst|inst~q\ $ (((\inst5|inst1|inst~q\ & \inst|inst6|inst4|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst~q\,
	datac => \inst5|inst|inst~q\,
	datad => \inst|inst6|inst4|inst~0_combout\,
	combout => \inst5|inst|inst~0_combout\);

-- Location: FF_X14_Y1_N25
\inst5|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst|inst~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst~q\);

ww_done <= \done~output_o\;

ww_sum_o(3) <= \sum_o[3]~output_o\;

ww_sum_o(2) <= \sum_o[2]~output_o\;

ww_sum_o(1) <= \sum_o[1]~output_o\;

ww_sum_o(0) <= \sum_o[0]~output_o\;
END structure;


