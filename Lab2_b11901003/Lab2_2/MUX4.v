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
// CREATED		"Wed Dec 28 16:58:04 2022"

module MUX4(
	sel,
	A,
	B,
	out
);


input wire	sel;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	[3:0] out;

wire	[3:0] out_ALTERA_SYNTHESIZED;





mux_2	b2v_inst(
	.sel(sel),
	.i0(A[0]),
	.i1(B[0]),
	.o1(out_ALTERA_SYNTHESIZED[0]));


mux_2	b2v_inst1(
	.sel(sel),
	.i0(A[1]),
	.i1(B[1]),
	.o1(out_ALTERA_SYNTHESIZED[1]));


mux_2	b2v_inst2(
	.sel(sel),
	.i0(A[2]),
	.i1(B[2]),
	.o1(out_ALTERA_SYNTHESIZED[2]));


mux_2	b2v_inst3(
	.sel(sel),
	.i0(A[3]),
	.i1(B[3]),
	.o1(out_ALTERA_SYNTHESIZED[3]));

assign	out = out_ALTERA_SYNTHESIZED;

endmodule
