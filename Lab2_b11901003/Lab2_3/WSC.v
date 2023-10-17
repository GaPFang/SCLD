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
// CREATED		"Wed Dec 28 16:56:03 2022"

module WSC(
	rst_n,
	clk,
	load,
	X,
	done,
	score
);


input wire	rst_n;
input wire	clk;
input wire	load;
input wire	X;
output wire	done;
output wire	[3:0] score;

wire	done_ALTERA_SYNTHESIZED;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;

assign	score = SYNTHESIZED_WIRE_1;




FA4	b2v_inst(
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.S(SYNTHESIZED_WIRE_2));


Controller_done	b2v_inst11(
	.rst_n(rst_n),
	.load(load),
	.clk(clk),
	.done(done_ALTERA_SYNTHESIZED));


DataReg	b2v_inst7(
	.clk(clk),
	.rst_n(rst_n),
	.done(done_ALTERA_SYNTHESIZED),
	.A(SYNTHESIZED_WIRE_2),
	.Q(SYNTHESIZED_WIRE_1));


Controller_num	b2v_inst9(
	.rst_n(rst_n),
	.clk(clk),
	.X(X),
	.load(load),
	.Z(SYNTHESIZED_WIRE_0));

assign	done = done_ALTERA_SYNTHESIZED;

endmodule
