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
// CREATED		"Wed Dec 28 16:54:06 2022"

module DataReg(
	rst_n,
	clk,
	done,
	A,
	Q
);


input wire	rst_n;
input wire	clk;
input wire	done;
input wire	[3:0] A;
output wire	[3:0] Q;

wire	[3:0] Q_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;





DFF_1	b2v_inst(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_0),
	
	.ClrN(rst_n),
	
	.Q(Q_ALTERA_SYNTHESIZED[3]));


DFF_1	b2v_inst1(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_1),
	
	.ClrN(rst_n),
	
	.Q(Q_ALTERA_SYNTHESIZED[2]));


gnd_1	b2v_inst10(
	.o1(SYNTHESIZED_WIRE_7));


gnd_1	b2v_inst11(
	.o1(SYNTHESIZED_WIRE_6));


DFF_1	b2v_inst2(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_2),
	
	.ClrN(rst_n),
	
	.Q(Q_ALTERA_SYNTHESIZED[1]));


mux_2	b2v_inst3(
	.sel(done),
	.i0(A[0]),
	.i1(SYNTHESIZED_WIRE_3),
	.o1(SYNTHESIZED_WIRE_5));


mux_2	b2v_inst4(
	.sel(done),
	.i0(A[1]),
	.i1(SYNTHESIZED_WIRE_4),
	.o1(SYNTHESIZED_WIRE_2));


DFF_1	b2v_inst5(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_5),
	
	.ClrN(rst_n),
	
	.Q(Q_ALTERA_SYNTHESIZED[0]));


mux_2	b2v_inst6(
	.sel(done),
	.i0(A[3]),
	.i1(SYNTHESIZED_WIRE_6),
	.o1(SYNTHESIZED_WIRE_0));


mux_2	b2v_inst7(
	.sel(done),
	.i0(A[2]),
	.i1(SYNTHESIZED_WIRE_7),
	.o1(SYNTHESIZED_WIRE_1));


gnd_1	b2v_inst8(
	.o1(SYNTHESIZED_WIRE_3));


gnd_1	b2v_inst9(
	.o1(SYNTHESIZED_WIRE_4));

assign	Q = Q_ALTERA_SYNTHESIZED;

endmodule
