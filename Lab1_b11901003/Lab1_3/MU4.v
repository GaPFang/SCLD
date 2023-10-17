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
// CREATED		"Sun Nov 20 08:09:03 2022"

module MU4(
	A,
	B,
	M
);


input wire	[3:0] A;
input wire	[3:0] B;
output wire	[7:0] M;

wire	[7:0] M_ALTERA_SYNTHESIZED;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_3;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_7;





MU	b2v_inst(
	.B(B[0]),
	.A(A),
	.M(SYNTHESIZED_WIRE_1));


MU	b2v_inst1(
	.B(B[1]),
	.A(A),
	.M(SYNTHESIZED_WIRE_3));


MU	b2v_inst2(
	.B(B[2]),
	.A(A),
	.M(SYNTHESIZED_WIRE_5));


MU	b2v_inst3(
	.B(B[3]),
	.A(A),
	.M(SYNTHESIZED_WIRE_7));


FA4	b2v_inst4(
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.S(M_ALTERA_SYNTHESIZED[0]),
	.Co(SYNTHESIZED_WIRE_2));


FA4	b2v_inst5(
	.A(SYNTHESIZED_WIRE_2),
	.B(SYNTHESIZED_WIRE_3),
	.S(M_ALTERA_SYNTHESIZED[1]),
	.Co(SYNTHESIZED_WIRE_4));


FA4	b2v_inst6(
	.A(SYNTHESIZED_WIRE_4),
	.B(SYNTHESIZED_WIRE_5),
	.S(M_ALTERA_SYNTHESIZED[2]),
	.Co(SYNTHESIZED_WIRE_6));


gnd_4	b2v_inst7(
	.gnd(SYNTHESIZED_WIRE_0));


FA4	b2v_inst9(
	.A(SYNTHESIZED_WIRE_6),
	.B(SYNTHESIZED_WIRE_7),
	.S(M_ALTERA_SYNTHESIZED[3]),
	.Co(M_ALTERA_SYNTHESIZED[7:4]));

assign	M = M_ALTERA_SYNTHESIZED;

endmodule
