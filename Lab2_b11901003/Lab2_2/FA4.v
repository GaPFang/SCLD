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
// CREATED		"Wed Dec 28 16:57:48 2022"

module FA4(
	A,
	B,
	S
);


input wire	[3:0] A;
input wire	[3:0] B;
output wire	[3:0] S;

wire	[3:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;





FA	b2v_inst(
	.A(A[3]),
	.B(B[3]),
	.Ci(SYNTHESIZED_WIRE_0),
	.S(S_ALTERA_SYNTHESIZED[3])
	);


gnd_1	b2v_inst4(
	.o1(SYNTHESIZED_WIRE_3));


FA	b2v_inst5(
	.A(A[2]),
	.B(B[2]),
	.Ci(SYNTHESIZED_WIRE_1),
	.S(S_ALTERA_SYNTHESIZED[2]),
	.Co(SYNTHESIZED_WIRE_0));


FA	b2v_inst6(
	.A(A[1]),
	.B(B[1]),
	.Ci(SYNTHESIZED_WIRE_2),
	.S(S_ALTERA_SYNTHESIZED[1]),
	.Co(SYNTHESIZED_WIRE_1));


FA	b2v_inst7(
	.A(A[0]),
	.B(B[0]),
	.Ci(SYNTHESIZED_WIRE_3),
	.S(S_ALTERA_SYNTHESIZED[0]),
	.Co(SYNTHESIZED_WIRE_2));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
