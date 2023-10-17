// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Wed Dec 28 16:56:46 2022"

module AC4(
	rst_n,
	clk,
	load,
	x_i,
	done,
	sum_o
);


input wire	rst_n;
input wire	clk;
input wire	load;
input wire	[3:0] x_i;
output wire	done;
output wire	[3:0] sum_o;

wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;

assign	sum_o = SYNTHESIZED_WIRE_0;




FA4	b2v_inst(
	.A(x_i),
	.B(SYNTHESIZED_WIRE_0),
	.S(SYNTHESIZED_WIRE_1));


Controller	b2v_inst2(
	.rst_n(rst_n),
	.clk(clk),
	.load(load),
	.done(done));


MUX4	b2v_inst3(
	.sel(load),
	.A(SYNTHESIZED_WIRE_1),
	.B(x_i),
	.out(SYNTHESIZED_WIRE_2));


DataReg	b2v_inst5(
	.clk(clk),
	.rst_n(rst_n),
	.A(SYNTHESIZED_WIRE_2),
	.Q(SYNTHESIZED_WIRE_0));


endmodule
