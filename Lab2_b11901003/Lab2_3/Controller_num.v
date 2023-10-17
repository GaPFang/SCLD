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
// CREATED		"Wed Dec 28 16:53:58 2022"

module Controller_num(
	clk,
	rst_n,
	X,
	load,
	Z
);


input wire	clk;
input wire	rst_n;
input wire	X;
input wire	load;
output wire	[1:0] Z;

wire	A;
wire	A_n;
wire	B;
wire	B_n;
wire	C_n;
wire	[1:0] Z_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;





DFF_1	b2v_inst(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_0),
	
	.ClrN(rst_n),
	.QN(A_n),
	.Q(A));


DFF_1	b2v_inst1(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_1),
	
	.ClrN(rst_n),
	.QN(B_n),
	.Q(B));


and_3	b2v_inst10(
	.i1(X),
	.i2(A_n),
	.i3(B_n),
	.o1(SYNTHESIZED_WIRE_7));


or_3	b2v_inst11(
	.i1(A),
	.i2(SYNTHESIZED_WIRE_2),
	.i3(SYNTHESIZED_WIRE_3),
	.o1(SYNTHESIZED_WIRE_9));


not_1	b2v_inst12(
	.i1(X),
	.o1(SYNTHESIZED_WIRE_13));


mux_2	b2v_inst13(
	.sel(load),
	.i0(SYNTHESIZED_WIRE_4),
	.i1(SYNTHESIZED_WIRE_5),
	.o1(SYNTHESIZED_WIRE_0));


mux_2	b2v_inst14(
	.sel(load),
	.i0(SYNTHESIZED_WIRE_6),
	.i1(SYNTHESIZED_WIRE_7),
	.o1(SYNTHESIZED_WIRE_1));


mux_2	b2v_inst15(
	.sel(load),
	.i0(SYNTHESIZED_WIRE_8),
	.i1(SYNTHESIZED_WIRE_9),
	.o1(SYNTHESIZED_WIRE_10));


gnd_1	b2v_inst16(
	.o1(SYNTHESIZED_WIRE_4));


gnd_1	b2v_inst17(
	.o1(SYNTHESIZED_WIRE_6));


gnd_1	b2v_inst18(
	.o1(SYNTHESIZED_WIRE_8));


DFF_1	b2v_inst2(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_10),
	
	.ClrN(rst_n),
	.QN(C_n)
	);


and_2	b2v_inst3(
	.i1(B),
	.i2(C_n),
	.o1(Z_ALTERA_SYNTHESIZED[1]));


and_2	b2v_inst4(
	.i1(A),
	.i2(C_n),
	.o1(SYNTHESIZED_WIRE_11));


or_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_11),
	.i2(Z_ALTERA_SYNTHESIZED[1]),
	.o1(Z_ALTERA_SYNTHESIZED[0]));


and_2	b2v_inst6(
	.i1(X),
	.i2(SYNTHESIZED_WIRE_12),
	.o1(SYNTHESIZED_WIRE_5));


and_2	b2v_inst7(
	.i1(SYNTHESIZED_WIRE_13),
	.i2(B),
	.o1(SYNTHESIZED_WIRE_2));


or_2	b2v_inst8(
	.i1(A),
	.i2(B),
	.o1(SYNTHESIZED_WIRE_12));


and_3	b2v_inst9(
	.i1(X),
	.i2(B_n),
	.i3(C_n),
	.o1(SYNTHESIZED_WIRE_3));

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
