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
// CREATED		"Sun Nov 20 08:07:30 2022"

module FS(
	A,
	B,
	BOi,
	D,
	BOo
);


input wire	A;
input wire	B;
input wire	BOi;
output wire	D;
output wire	BOo;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





and_2	b2v_inst(
	.i1(SYNTHESIZED_WIRE_0),
	.i2(B),
	.o1(SYNTHESIZED_WIRE_1));


and_2	b2v_inst10(
	.i1(B),
	.i2(BOi),
	.o1(SYNTHESIZED_WIRE_3));


not_1	b2v_inst11(
	.i1(A),
	.o1(SYNTHESIZED_WIRE_0));


or_3	b2v_inst12(
	.i1(SYNTHESIZED_WIRE_1),
	.i2(SYNTHESIZED_WIRE_2),
	.i3(SYNTHESIZED_WIRE_3),
	.o1(BOo));


not_1	b2v_inst13(
	.i1(A),
	.o1(SYNTHESIZED_WIRE_4));


xor_3	b2v_inst3(
	.i1(A),
	.i2(B),
	.i3(BOi),
	.o1(D));


and_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_4),
	.i2(BOi),
	.o1(SYNTHESIZED_WIRE_2));


endmodule
