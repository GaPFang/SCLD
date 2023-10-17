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

-- DATE "12/27/2022 18:11:13"

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

ENTITY 	AC4 IS
    PORT (
	done : OUT std_logic;
	rst_n : IN std_logic;
	clk : IN std_logic;
	load : IN std_logic;
	sun_o : OUT std_logic_vector(3 DOWNTO 0);
	X : IN std_logic_vector(3 DOWNTO 0)
	);
END AC4;

-- Design Ports Information
-- done	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sun_o[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sun_o[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sun_o[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sun_o[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AC4 IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_sun_o : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \sun_o[3]~output_o\ : std_logic;
SIGNAL \sun_o[2]~output_o\ : std_logic;
SIGNAL \sun_o[1]~output_o\ : std_logic;
SIGNAL \sun_o[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \inst2|inst4|inst~combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst2|inst~q\ : std_logic;
SIGNAL \inst2|inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1|inst~q\ : std_logic;
SIGNAL \inst2|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst~q\ : std_logic;
SIGNAL \inst2|inst5|inst~0_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst3|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst5|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst6|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst6|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst~q\ : std_logic;
SIGNAL \inst3|inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst3~1_combout\ : std_logic;
SIGNAL \inst5|inst|inst~q\ : std_logic;

BEGIN

done <= ww_done;
ww_rst_n <= rst_n;
ww_clk <= clk;
ww_load <= load;
sun_o <= ww_sun_o;
ww_X <= X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X22_Y0_N2
\done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|inst~0_combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\sun_o[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst|inst~q\,
	devoe => ww_devoe,
	o => \sun_o[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\sun_o[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst~q\,
	devoe => ww_devoe,
	o => \sun_o[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\sun_o[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|inst~q\,
	devoe => ww_devoe,
	o => \sun_o[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\sun_o[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst5|inst~q\,
	devoe => ww_devoe,
	o => \sun_o[0]~output_o\);

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

-- Location: IOIBUF_X26_Y0_N8
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X25_Y1_N24
\inst2|inst4|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst~combout\ = (\inst2|inst|inst~q\ & !\inst2|inst1|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst~q\,
	datad => \inst2|inst1|inst~q\,
	combout => \inst2|inst4|inst~combout\);

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

-- Location: FF_X25_Y1_N25
\inst2|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst4|inst~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|inst~q\);

-- Location: LCCOMB_X25_Y1_N28
\inst2|inst1|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst~feeder_combout\ = \inst2|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst2|inst~q\,
	combout => \inst2|inst1|inst~feeder_combout\);

-- Location: FF_X25_Y1_N29
\inst2|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst1|inst~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|inst~q\);

-- Location: LCCOMB_X25_Y1_N30
\inst2|inst3|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst~0_combout\ = (\load~input_o\) # ((\inst2|inst2|inst~q\) # ((!\inst2|inst1|inst~q\ & \inst2|inst|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst2|inst1|inst~q\,
	datac => \inst2|inst|inst~q\,
	datad => \inst2|inst2|inst~q\,
	combout => \inst2|inst3|inst~0_combout\);

-- Location: FF_X25_Y1_N31
\inst2|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst3|inst~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|inst~q\);

-- Location: LCCOMB_X24_Y1_N28
\inst2|inst5|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|inst~0_combout\ = (!\inst2|inst|inst~q\ & (\inst2|inst1|inst~q\ & !\inst2|inst2|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst~q\,
	datab => \inst2|inst1|inst~q\,
	datad => \inst2|inst2|inst~q\,
	combout => \inst2|inst5|inst~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X25_Y1_N4
\inst3|inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3~0_combout\ = \X[0]~input_o\ $ (((\inst5|inst5|inst~q\ & !\load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datac => \inst5|inst5|inst~q\,
	datad => \load~input_o\,
	combout => \inst3|inst|inst3~0_combout\);

-- Location: FF_X25_Y1_N5
\inst5|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst|inst3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst5|inst~q\);

-- Location: LCCOMB_X25_Y1_N10
\inst|inst6|inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst6|inst1|inst~0_combout\ = \X[1]~input_o\ $ (\inst5|inst2|inst~q\ $ (((\X[0]~input_o\ & \inst5|inst5|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \inst5|inst5|inst~q\,
	datad => \inst5|inst2|inst~q\,
	combout => \inst|inst6|inst1|inst~0_combout\);

-- Location: LCCOMB_X25_Y1_N2
\inst3|inst1|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst3~0_combout\ = (\load~input_o\ & (\X[1]~input_o\)) # (!\load~input_o\ & ((\inst|inst6|inst1|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \X[1]~input_o\,
	datad => \inst|inst6|inst1|inst~0_combout\,
	combout => \inst3|inst1|inst3~0_combout\);

-- Location: FF_X25_Y1_N3
\inst5|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst1|inst3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|inst~q\);

-- Location: LCCOMB_X25_Y1_N18
\inst|inst6|inst4|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst6|inst4|inst~0_combout\ = (\X[1]~input_o\ & ((\inst5|inst2|inst~q\) # ((\X[0]~input_o\ & \inst5|inst5|inst~q\)))) # (!\X[1]~input_o\ & (\X[0]~input_o\ & (\inst5|inst5|inst~q\ & \inst5|inst2|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[1]~input_o\,
	datac => \inst5|inst5|inst~q\,
	datad => \inst5|inst2|inst~q\,
	combout => \inst|inst6|inst4|inst~0_combout\);

-- Location: LCCOMB_X25_Y1_N8
\inst3|inst2|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3~0_combout\ = \X[2]~input_o\ $ (((!\load~input_o\ & (\inst5|inst1|inst~q\ $ (\inst|inst6|inst4|inst~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \X[2]~input_o\,
	datac => \inst5|inst1|inst~q\,
	datad => \inst|inst6|inst4|inst~0_combout\,
	combout => \inst3|inst2|inst3~0_combout\);

-- Location: FF_X25_Y1_N9
\inst5|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst2|inst3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst~q\);

-- Location: LCCOMB_X25_Y1_N20
\inst3|inst3|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst3~0_combout\ = (\X[2]~input_o\ & ((\inst5|inst1|inst~q\) # (\inst|inst6|inst4|inst~0_combout\))) # (!\X[2]~input_o\ & (\inst5|inst1|inst~q\ & \inst|inst6|inst4|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[2]~input_o\,
	datac => \inst5|inst1|inst~q\,
	datad => \inst|inst6|inst4|inst~0_combout\,
	combout => \inst3|inst3|inst3~0_combout\);

-- Location: LCCOMB_X25_Y1_N26
\inst3|inst3|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst3~1_combout\ = \X[3]~input_o\ $ (((!\load~input_o\ & (\inst5|inst|inst~q\ $ (\inst3|inst3|inst3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \X[3]~input_o\,
	datac => \inst5|inst|inst~q\,
	datad => \inst3|inst3|inst3~0_combout\,
	combout => \inst3|inst3|inst3~1_combout\);

-- Location: FF_X25_Y1_N27
\inst5|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst3|inst3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst~q\);

ww_done <= \done~output_o\;

ww_sun_o(3) <= \sun_o[3]~output_o\;

ww_sun_o(2) <= \sun_o[2]~output_o\;

ww_sun_o(1) <= \sun_o[1]~output_o\;

ww_sun_o(0) <= \sun_o[0]~output_o\;
END structure;


