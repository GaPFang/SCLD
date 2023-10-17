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
// CREATED		"Wed Dec 28 16:57:08 2022"

module Controller(
	load,
	clk,
	rst_n,
	done
);


input wire	load;
input wire	clk;
input wire	rst_n;
output wire	done;

wire	A;
wire	B_n;
wire	C;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





DFF_1	b2v_inst(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_0),
	
	.ClrN(rst_n),
	
	.Q(A));


DFF_1	b2v_inst1(
	.CLK(clk),
	.D(C),
	
	.ClrN(rst_n),
	.QN(B_n),
	.Q(SYNTHESIZED_WIRE_3));


DFF_1	b2v_inst2(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_5),
	
	.ClrN(rst_n),
	.QN(SYNTHESIZED_WIRE_4),
	.Q(C));


or_3	b2v_inst3(
	.i1(load),
	.i2(C),
	.i3(SYNTHESIZED_WIRE_5),
	.o1(SYNTHESIZED_WIRE_0));


and_2	b2v_inst4(
	.i1(A),
	.i2(B_n),
	.o1(SYNTHESIZED_WIRE_5));


and_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_3),
	.i2(SYNTHESIZED_WIRE_4),
	.o1(done));


endmodule
