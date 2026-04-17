`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/06/19 23:51:46
// Design Name:
// Module Name:
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
`include "_svh.svh"
//`define DEBUG_xdma_lite_rw

module xdma_lite_rw #(
	parameter LITE_BASE_ADDR = 32'h0000_0000
)(

    input                   clk								,
    input                   rst								,
	//
    axi_lite_if.slave		s_axi_lite_if					,
	//_____________________________________________________________SYSCTRL
	output	reg [15:0]		LITE_REG_AXI_RD_LEN				,
	output	reg [15:0]		LITE_REG_AXI_WR_MAX_LEN			,
	//_____________________________________________________________R1
	output	reg	[31:0]		LITE_REG_R1_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R1_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R1_P_CHK				,
	output	reg	[3:0]		LITE_REG_R1_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R1_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R1_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R1_TIMEOUT_THRD		,
	//_____________________________________________________________R2
	output	reg	[31:0]		LITE_REG_R2_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R2_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R2_P_CHK				,
	output	reg	[3:0]		LITE_REG_R2_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R2_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R2_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R2_TIMEOUT_THRD		,
	//_____________________________________________________________R3
	output	reg	[31:0]		LITE_REG_R3_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R3_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R3_P_CHK				,
	output	reg	[3:0]		LITE_REG_R3_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R3_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R3_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R3_TIMEOUT_THRD		,
	//_____________________________________________________________R4
	output	reg	[31:0]		LITE_REG_R4_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R4_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R4_P_CHK				,
	output	reg	[3:0]		LITE_REG_R4_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R4_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R4_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R4_TIMEOUT_THRD		,
	//_____________________________________________________________R5
	output	reg	[31:0]		LITE_REG_R5_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R5_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R5_P_CHK				,
	output	reg	[3:0]		LITE_REG_R5_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R5_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R5_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R5_TIMEOUT_THRD		,
	//_____________________________________________________________R6
	output	reg	[31:0]		LITE_REG_R6_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R6_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R6_P_CHK				,
	output	reg	[3:0]		LITE_REG_R6_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R6_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R6_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R6_TIMEOUT_THRD		,
	//_____________________________________________________________R7
	output	reg	[31:0]		LITE_REG_R7_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R7_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R7_P_CHK				,
	output	reg	[3:0]		LITE_REG_R7_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R7_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R7_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R7_TIMEOUT_THRD		,
	//_____________________________________________________________R8
	output	reg	[31:0]		LITE_REG_R8_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R8_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R8_P_CHK				,
	output	reg	[3:0]		LITE_REG_R8_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R8_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R8_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R8_TIMEOUT_THRD		,
	//_____________________________________________________________R9
	output	reg	[31:0]		LITE_REG_R9_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R9_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R9_P_CHK				,
	output	reg	[3:0]		LITE_REG_R9_D_WIDTH				,
	output	reg	[7:0]		LITE_REG_R9_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R9_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R9_TIMEOUT_THRD		,
	//_____________________________________________________________R10
	output	reg	[31:0]		LITE_REG_R10_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R10_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R10_P_CHK				,
	output	reg	[3:0]		LITE_REG_R10_D_WIDTH			,
	output	reg	[7:0]		LITE_REG_R10_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R10_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R10_TIMEOUT_THRD		,
	//_____________________________________________________________R11
	output	reg	[31:0]		LITE_REG_R11_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R11_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R11_P_CHK				,
	output	reg	[3:0]		LITE_REG_R11_D_WIDTH			,
	output	reg	[7:0]		LITE_REG_R11_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R11_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R11_TIMEOUT_THRD		,
	//_____________________________________________________________R12
	output	reg	[31:0]		LITE_REG_R12_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_R12_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_R12_P_CHK				,
	output	reg	[3:0]		LITE_REG_R12_D_WIDTH			,
	output	reg	[7:0]		LITE_REG_R12_AXI_BRUST_LEN		,
	input		[15:0]		LITE_REG_R12_RFF_USEDW			,
	output	reg	[31:0]		LITE_REG_R12_TIMEOUT_THRD		,
	//_____________________________________________________________T1
	output	reg	[31:0]		LITE_REG_T1_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T1_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T1_P_CHK				,
	output	reg	[3:0]		LITE_REG_T1_D_WDITH				,
	input		[15:0]		LITE_REG_T1_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T1_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T2
	output	reg	[31:0]		LITE_REG_T2_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T2_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T2_P_CHK				,
	output	reg	[3:0]		LITE_REG_T2_D_WDITH				,
	input		[15:0]		LITE_REG_T2_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T2_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T3
	output	reg	[31:0]		LITE_REG_T3_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T3_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T3_P_CHK				,
	output	reg	[3:0]		LITE_REG_T3_D_WDITH				,
	input		[15:0]		LITE_REG_T3_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T3_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T4
	output	reg	[31:0]		LITE_REG_T4_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T4_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T4_P_CHK				,
	output	reg	[3:0]		LITE_REG_T4_D_WDITH				,
	input		[15:0]		LITE_REG_T4_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T4_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T5
	output	reg	[31:0]		LITE_REG_T5_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T5_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T5_P_CHK				,
	output	reg	[3:0]		LITE_REG_T5_D_WDITH				,
	input		[15:0]		LITE_REG_T5_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T5_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T6
	output	reg	[31:0]		LITE_REG_T6_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T6_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T6_P_CHK				,
	output	reg	[3:0]		LITE_REG_T6_D_WDITH				,
	input		[15:0]		LITE_REG_T6_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T6_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T7
	output	reg	[31:0]		LITE_REG_T7_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T7_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T7_P_CHK				,
	output	reg	[3:0]		LITE_REG_T7_D_WDITH				,
	input		[15:0]		LITE_REG_T7_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T7_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T8
	output	reg	[31:0]		LITE_REG_T8_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T8_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T8_P_CHK				,
	output	reg	[3:0]		LITE_REG_T8_D_WDITH				,
	input		[15:0]		LITE_REG_T8_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T8_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T9
	output	reg	[31:0]		LITE_REG_T9_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T9_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T9_P_CHK				,
	output	reg	[3:0]		LITE_REG_T9_D_WDITH				,
	input		[15:0]		LITE_REG_T9_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T9_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T10
	output	reg	[31:0]		LITE_REG_T10_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T10_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T10_P_CHK				,
	output	reg	[3:0]		LITE_REG_T10_D_WDITH			,
	input		[15:0]		LITE_REG_T10_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T10_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T11
	output	reg	[31:0]		LITE_REG_T11_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T11_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T11_P_CHK				,
	output	reg	[3:0]		LITE_REG_T11_D_WDITH			,
	input		[15:0]		LITE_REG_T11_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T11_AXI_WR_EFF_LEN		,
	//_____________________________________________________________T12
	output	reg	[31:0]		LITE_REG_T12_BAUD_RATE			,
	output	reg	[3:0]		LITE_REG_T12_STOP_BIT			,
	output	reg	[3:0]		LITE_REG_T12_P_CHK				,
	output	reg	[3:0]		LITE_REG_T12_D_WDITH			,
	input		[15:0]		LITE_REG_T12_TFF_USEDW			,
	output	reg [15:0]		LITE_REG_T12_AXI_WR_EFF_LEN		  //
);
`define D `ifdef DEBUG_xdma_lite_rw (*mark_debug = "true"*) `else `endif

enum logic [31:0]{
	LOG_VERSION			= 32'h0000_0000, // 0x00
	LOG_SUB_VERSION		= 32'h0000_0001, // 0x04
	LITE_ONLINE			= 32'h0000_0002, // 0x08

	AXI_RD_LEN			= 32'h0000_0009, // 0x24
	AXI_WR_MAX_LEN		= 32'h0000_000a, // 0x28

	R1_CFG_REQ			= 32'h0000_0040, // 0x100
	R1_BAUD_RATE		= 32'h0000_0041, // 0x104
	R1_STOP_BIT			= 32'h0000_0042, // 0x108
	R1_P_CHK			= 32'h0000_0043, // 0x10c
	R1_D_WIDTH			= 32'h0000_0044, // 0x110

	R1_AXI_BRUST_LEN	= 32'h0000_0049, // 0x124
	R1_RFF_USEDW		= 32'h0000_004a, // 0x128
	R1_TIMEOUT_THRD		= 32'h0000_004b, // 0x12c

	R2_CFG_REQ			= 32'h0000_0050, // 0x140
	R2_BAUD_RATE		= 32'h0000_0051, // 0x144
	R2_STOP_BIT			= 32'h0000_0052, // 0x148
	R2_P_CHK			= 32'h0000_0053, // 0x14c
	R2_D_WIDTH			= 32'h0000_0054, // 0x150

	R2_AXI_BRUST_LEN	= 32'h0000_0059, // 0x164
	R2_RFF_USEDW		= 32'h0000_005a, // 0x168
	R2_TIMEOUT_THRD		= 32'h0000_005b, // 0x16c

	R3_CFG_REQ			= 32'h0000_0060, // 0x180
	R3_BAUD_RATE		= 32'h0000_0061, // 0x184
	R3_STOP_BIT			= 32'h0000_0062, // 0x188
	R3_P_CHK			= 32'h0000_0063, // 0x18c
	R3_D_WIDTH			= 32'h0000_0064, // 0x190

	R3_AXI_BRUST_LEN	= 32'h0000_0069, // 0x1a4
	R3_RFF_USEDW		= 32'h0000_006a, // 0x1a8
	R3_TIMEOUT_THRD		= 32'h0000_006b, // 0x1ac

	R4_CFG_REQ			= 32'h0000_0070, // 0x1c0
	R4_BAUD_RATE		= 32'h0000_0071, // 0x1c4
	R4_STOP_BIT			= 32'h0000_0072, // 0x1c8
	R4_P_CHK			= 32'h0000_0073, // 0x1cc
	R4_D_WIDTH			= 32'h0000_0074, // 0x1d0

	R4_AXI_BRUST_LEN	= 32'h0000_0079, // 0x1e4
	R4_RFF_USEDW		= 32'h0000_007a, // 0x1e8
	R4_TIMEOUT_THRD		= 32'h0000_007b, // 0x1ec

	R5_CFG_REQ			= 32'h0000_0080, // 0x200
	R5_BAUD_RATE		= 32'h0000_0081, // 0x204
	R5_STOP_BIT			= 32'h0000_0082, // 0x208
	R5_P_CHK			= 32'h0000_0083, // 0x20c
	R5_D_WIDTH			= 32'h0000_0084, // 0x210

	R5_AXI_BRUST_LEN	= 32'h0000_0089, // 0x224
	R5_RFF_USEDW		= 32'h0000_008a, // 0x228
	R5_TIMEOUT_THRD		= 32'h0000_008b, // 0x22c

	R6_CFG_REQ			= 32'h0000_0090, // 0x240
	R6_BAUD_RATE		= 32'h0000_0091, // 0x244
	R6_STOP_BIT			= 32'h0000_0092, // 0x248
	R6_P_CHK			= 32'h0000_0093, // 0x24c
	R6_D_WIDTH			= 32'h0000_0094, // 0x250

	R6_AXI_BRUST_LEN	= 32'h0000_0099, // 0x264
	R6_RFF_USEDW		= 32'h0000_009a, // 0x268
	R6_TIMEOUT_THRD		= 32'h0000_009b, // 0x26c

	R7_CFG_REQ			= 32'h0000_00a0, // 0x280
	R7_BAUD_RATE		= 32'h0000_00a1, // 0x284
	R7_STOP_BIT			= 32'h0000_00a2, // 0x288
	R7_P_CHK			= 32'h0000_00a3, // 0x28c
	R7_D_WIDTH			= 32'h0000_00a4, // 0x290

	R7_AXI_BRUST_LEN	= 32'h0000_00a9, // 0x2a4
	R7_RFF_USEDW		= 32'h0000_00aa, // 0x2a8
	R7_TIMEOUT_THRD		= 32'h0000_00ab, // 0x2ac

	R8_CFG_REQ			= 32'h0000_00b0, // 0x2c0
	R8_BAUD_RATE		= 32'h0000_00b1, // 0x2c4
	R8_STOP_BIT			= 32'h0000_00b2, // 0x2c8
	R8_P_CHK			= 32'h0000_00b3, // 0x2cc
	R8_D_WIDTH			= 32'h0000_00b4, // 0x2d0

	R8_AXI_BRUST_LEN	= 32'h0000_00b9, // 0x2e4
	R8_RFF_USEDW		= 32'h0000_00ba, // 0x2e8
	R8_TIMEOUT_THRD		= 32'h0000_00bb, // 0x2ec

	R9_CFG_REQ			= 32'h0000_00c0, // 0x300
	R9_BAUD_RATE		= 32'h0000_00c1, // 0x304
	R9_STOP_BIT			= 32'h0000_00c2, // 0x308
	R9_P_CHK			= 32'h0000_00c3, // 0x30c
	R9_D_WIDTH			= 32'h0000_00c4, // 0x310

	R9_AXI_BRUST_LEN	= 32'h0000_00c9, // 0x324
	R9_RFF_USEDW		= 32'h0000_00ca, // 0x328
	R9_TIMEOUT_THRD		= 32'h0000_00cb, // 0x32c

	R10_CFG_REQ			= 32'h0000_00d0, // 0x340
	R10_BAUD_RATE		= 32'h0000_00d1, // 0x344
	R10_STOP_BIT		= 32'h0000_00d2, // 0x348
	R10_P_CHK			= 32'h0000_00d3, // 0x34c
	R10_D_WIDTH			= 32'h0000_00d4, // 0x350

	R10_AXI_BRUST_LEN	= 32'h0000_00d9, // 0x364
	R10_RFF_USEDW		= 32'h0000_00da, // 0x368
	R10_TIMEOUT_THRD	= 32'h0000_00db, // 0x36c

	R11_CFG_REQ			= 32'h0000_00e0, // 0x380
	R11_BAUD_RATE		= 32'h0000_00e1, // 0x384
	R11_STOP_BIT		= 32'h0000_00e2, // 0x388
	R11_P_CHK			= 32'h0000_00e3, // 0x38c
	R11_D_WIDTH			= 32'h0000_00e4, // 0x390

	R11_AXI_BRUST_LEN	= 32'h0000_00e9, // 0x3a4
	R11_RFF_USEDW		= 32'h0000_00ea, // 0x3a8
	R11_TIMEOUT_THRD	= 32'h0000_00eb, // 0x3ac

	R12_CFG_REQ			= 32'h0000_00f0, // 0x3c0
	R12_BAUD_RATE		= 32'h0000_00f1, // 0x3c4
	R12_STOP_BIT		= 32'h0000_00f2, // 0x3c8
	R12_P_CHK			= 32'h0000_00f3, // 0x3cc
	R12_D_WIDTH			= 32'h0000_00f4, // 0x3d0

	R12_AXI_BRUST_LEN	= 32'h0000_00f9, // 0x3e4
	R12_RFF_USEDW		= 32'h0000_00fa, // 0x3e8
	R12_TIMEOUT_THRD	= 32'h0000_00fb, // 0x3ec

	T1_CFG_REQ			= 32'h0000_0100, // 0x400
	T1_BAUD_RATE		= 32'h0000_0101, // 0x404
	T1_STOP_BIT			= 32'h0000_0102, // 0x408
	T1_P_CHK			= 32'h0000_0103, // 0x40c
	T1_D_WDITH			= 32'h0000_0104, // 0x410
	T1_TFF_USEDW		= 32'h0000_0108, // 0x420
	T1_AXI_WR_EFF_LEN	= 32'h0000_0109, // 0x424

	T2_CFG_REQ			= 32'h0000_0110, // 0x440
	T2_BAUD_RATE		= 32'h0000_0111, // 0x444
	T2_STOP_BIT			= 32'h0000_0112, // 0x448
	T2_P_CHK			= 32'h0000_0113, // 0x44c
	T2_D_WDITH			= 32'h0000_0114, // 0x450
	T2_TFF_USEDW		= 32'h0000_0118, // 0x460
	T2_AXI_WR_EFF_LEN	= 32'h0000_0119, // 0x464

	T3_CFG_REQ			= 32'h0000_0120, // 0x480
	T3_BAUD_RATE		= 32'h0000_0121, // 0x484
	T3_STOP_BIT			= 32'h0000_0122, // 0x488
	T3_P_CHK			= 32'h0000_0123, // 0x48c
	T3_D_WDITH			= 32'h0000_0124, // 0x490
	T3_TFF_USEDW		= 32'h0000_0128, // 0x4a0
	T3_AXI_WR_EFF_LEN	= 32'h0000_0129, // 0x4a4

	T4_CFG_REQ			= 32'h0000_0130, // 0x4c0
	T4_BAUD_RATE		= 32'h0000_0131, // 0x4c4
	T4_STOP_BIT			= 32'h0000_0132, // 0x4c8
	T4_P_CHK			= 32'h0000_0133, // 0x4cc
	T4_D_WDITH			= 32'h0000_0134, // 0x4d0
	T4_TFF_USEDW		= 32'h0000_0138, // 0x4e0
	T4_AXI_WR_EFF_LEN	= 32'h0000_0139, // 0x4e4

	T5_CFG_REQ			= 32'h0000_0140, // 0x500
	T5_BAUD_RATE		= 32'h0000_0141, // 0x504
	T5_STOP_BIT			= 32'h0000_0142, // 0x508
	T5_P_CHK			= 32'h0000_0143, // 0x50c
	T5_D_WDITH			= 32'h0000_0144, // 0x510
	T5_TFF_USEDW		= 32'h0000_0148, // 0x520
	T5_AXI_WR_EFF_LEN	= 32'h0000_0149, // 0x524

	T6_CFG_REQ			= 32'h0000_0150, // 0x540
	T6_BAUD_RATE		= 32'h0000_0151, // 0x544
	T6_STOP_BIT			= 32'h0000_0152, // 0x548
	T6_P_CHK			= 32'h0000_0153, // 0x54c
	T6_D_WDITH			= 32'h0000_0154, // 0x550
	T6_TFF_USEDW		= 32'h0000_0158, // 0x560
	T6_AXI_WR_EFF_LEN	= 32'h0000_0159, // 0x564

	T7_CFG_REQ			= 32'h0000_0160, // 0x580
	T7_BAUD_RATE		= 32'h0000_0161, // 0x584
	T7_STOP_BIT			= 32'h0000_0162, // 0x588
	T7_P_CHK			= 32'h0000_0163, // 0x58c
	T7_D_WDITH			= 32'h0000_0164, // 0x590
	T7_TFF_USEDW		= 32'h0000_0168, // 0x5a0
	T7_AXI_WR_EFF_LEN	= 32'h0000_0169, // 0x5a4

	T8_CFG_REQ			= 32'h0000_0170, // 0x5c0
	T8_BAUD_RATE		= 32'h0000_0171, // 0x5c4
	T8_STOP_BIT			= 32'h0000_0172, // 0x5c8
	T8_P_CHK			= 32'h0000_0173, // 0x5cc
	T8_D_WDITH			= 32'h0000_0174, // 0x5d0
	T8_TFF_USEDW		= 32'h0000_0178, // 0x5e0
	T8_AXI_WR_EFF_LEN	= 32'h0000_0179, // 0x5e4

	T9_CFG_REQ			= 32'h0000_0180, // 0x600
	T9_BAUD_RATE		= 32'h0000_0181, // 0x604
	T9_STOP_BIT			= 32'h0000_0182, // 0x608
	T9_P_CHK			= 32'h0000_0183, // 0x60c
	T9_D_WDITH			= 32'h0000_0184, // 0x610
	T9_TFF_USEDW		= 32'h0000_0188, // 0x620
	T9_AXI_WR_EFF_LEN	= 32'h0000_0189, // 0x624

	T10_CFG_REQ			= 32'h0000_0190, // 0x640
	T10_BAUD_RATE		= 32'h0000_0191, // 0x644
	T10_STOP_BIT		= 32'h0000_0192, // 0x648
	T10_P_CHK			= 32'h0000_0193, // 0x64c
	T10_D_WDITH			= 32'h0000_0194, // 0x650
	T10_TFF_USEDW		= 32'h0000_0198, // 0x660
	T10_AXI_WR_EFF_LEN	= 32'h0000_0199, // 0x664

	T11_CFG_REQ			= 32'h0000_01a0, // 0x680
	T11_BAUD_RATE		= 32'h0000_01a1, // 0x684
	T11_STOP_BIT		= 32'h0000_01a2, // 0x688
	T11_P_CHK			= 32'h0000_01a3, // 0x68c
	T11_D_WDITH			= 32'h0000_01a4, // 0x690
	T11_TFF_USEDW		= 32'h0000_01a8, // 0x6a0
	T11_AXI_WR_EFF_LEN	= 32'h0000_01a9, // 0x6a4

	T12_CFG_REQ			= 32'h0000_01b0, // 0x6c0
	T12_BAUD_RATE		= 32'h0000_01b1, // 0x6c4
	T12_STOP_BIT		= 32'h0000_01b2, // 0x6c8
	T12_P_CHK			= 32'h0000_01b3, // 0x6cc
	T12_D_WDITH			= 32'h0000_01b4, // 0x6d0
	T12_TFF_USEDW		= 32'h0000_01b8, // 0x6e0
	T12_AXI_WR_EFF_LEN	= 32'h0000_01b9, // 0x6e4

	LITE_STA_ERR_ADDR	= 32'h0000_01c0 // 0x700
}lite_offset_e;

reg  [31:0] bar_reg     [1023:0];
reg  [31:0] w_addr;
reg  [31:0] r_addr;
reg			r1_ar_hs;

// ____________________________________________________w addr
reg  		awready;
wire [31:0] awaddr  = s_axi_lite_if.awaddr      ;
wire [2:0] 	awprot  = s_axi_lite_if.awprot      ;
wire 		awvalid = s_axi_lite_if.awvalid     ;
wire 		aw_hs   = awvalid & awready;

assign s_axi_lite_if.awready = awready;
// ____________________________________________________w data
reg  		wready;
wire [31:0] wdata 	= s_axi_lite_if.wdata     ;
wire [3:0]  wstrb 	= s_axi_lite_if.wstrb     ;
wire 		wvalid 	= s_axi_lite_if.wvalid    ;
wire 		w_hs   	= wvalid & wready;

assign s_axi_lite_if.wready = wready;
// ____________________________________________________w resp
reg [1:0] 	bresp ;
reg 		bvalid;
wire 		bready 	= s_axi_lite_if.bready    ;
wire 		b_hs 	= bvalid & bready;

assign s_axi_lite_if.bresp  = bresp ;
assign s_axi_lite_if.bvalid = bvalid;
// ____________________________________________________r addr
reg 		arready;
wire [31:0] araddr 	= s_axi_lite_if.araddr 	   ;
wire [2:0] 	arprot 	= s_axi_lite_if.arprot 	   ;
wire 		arvalid = s_axi_lite_if.arvalid 	   ;
wire 		ar_hs 	= arvalid & arready;

assign s_axi_lite_if.arready = arready;
// ____________________________________________________r data
reg [31:0]	rdata ;
reg [1:0] 	rresp ;
reg 		rvalid;
wire 		rready	= s_axi_lite_if.rready    ;
wire 		r_hs 	= rvalid & rready;

assign s_axi_lite_if.rdata  = rdata ;
assign s_axi_lite_if.rresp  = rresp ;
assign s_axi_lite_if.rvalid = rvalid;

always@(posedge clk,posedge rst) begin
    if(rst)
		r1_ar_hs <= 'd0;
	else
		r1_ar_hs <= ar_hs;
end

always@(posedge clk,posedge rst) begin
    if(rst)
        awready <= 'd1;
    else if(aw_hs)
        awready <= 'd0;
    else if(b_hs)
        awready <= 'd1;
    else
        awready <= awready;
end

always@(posedge clk,posedge rst) begin
    if(rst)
        wready <= 'd0;
    else if(w_hs)
        wready <= 'd0;
    else if(aw_hs)
        wready <= 'd1;
    else
        wready <= wready;
end

always@(posedge clk,posedge rst) begin
    if(rst) begin
        bresp  <= 'd0;
        bvalid <= 'd0;
    end
	else if(b_hs) begin
        bresp  <= 'd0;
        bvalid <= 'd0;
    end
	else if(w_hs) begin
        bresp  <= 'd0;
        bvalid <= 'd1;
    end
	else begin
        bresp  <= bresp ;
        bvalid <= bvalid;
    end
end

always@(posedge clk,posedge rst) begin
    if(rst)
        arready <= 'd1;
    else if(ar_hs)
        arready <= 'd0;
    else if(r_hs)
        arready <= 'd1;
    else
        arready <= arready;
end

always@(posedge clk, posedge rst) begin
    if(rst) begin
        rdata  <= 'd0;
        rresp  <= 'd0;
        rvalid <= 'd0;
    end
	else if(r1_ar_hs) begin
	    rdata  <= bar_reg[r_addr];
	    rresp  <= 'd0;
	    rvalid <= 'd1;
	end
	else if(r_hs) begin
        rdata  <= 'd0;
        rresp  <= 'd0;
        rvalid <= 'd0;
    end
	else begin
        rdata  <= rdata ;
        rresp  <= rresp ;
        rvalid <= rvalid;
    end
end

always@(posedge clk, posedge rst) begin
	if(rst)
		w_addr <= 'd0;
	else if(aw_hs)
		w_addr <= (awaddr > LITE_BASE_ADDR) ? ((awaddr - LITE_BASE_ADDR) >> 2) : 0;
	else
		w_addr <= w_addr;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		r_addr <= 'd0;
	else if(ar_hs)
		r_addr <= (araddr > LITE_BASE_ADDR) ? ((araddr - LITE_BASE_ADDR) >> 2) : 0;
	else
		r_addr <= r_addr;
end

always@(posedge clk, posedge rst) begin
	if(rst) begin
		bar_reg[AXI_RD_LEN						] <= 1;
		bar_reg[AXI_WR_MAX_LEN					] <= 1;

		bar_reg[R1_CFG_REQ         				] <= 0;
		bar_reg[R1_BAUD_RATE       				] <= 921600;
		bar_reg[R1_STOP_BIT        				] <= 0;
		bar_reg[R1_P_CHK           				] <= 0;
		bar_reg[R1_D_WIDTH         				] <= 8;
		bar_reg[R1_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R1_TIMEOUT_THRD					] <= 5600;

		bar_reg[R2_CFG_REQ         				] <= 0;
		bar_reg[R2_BAUD_RATE       				] <= 921600;
		bar_reg[R2_STOP_BIT        				] <= 0;
		bar_reg[R2_P_CHK           				] <= 0;
		bar_reg[R2_D_WIDTH         				] <= 8;
		bar_reg[R2_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R2_TIMEOUT_THRD					] <= 5600;

		bar_reg[R3_CFG_REQ         				] <= 0;
		bar_reg[R3_BAUD_RATE       				] <= 921600;
		bar_reg[R3_STOP_BIT        				] <= 0;
		bar_reg[R3_P_CHK           				] <= 0;
		bar_reg[R3_D_WIDTH         				] <= 8;
		bar_reg[R3_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R3_TIMEOUT_THRD					] <= 5600;

		bar_reg[R4_CFG_REQ         				] <= 0;
		bar_reg[R4_BAUD_RATE       				] <= 921600;
		bar_reg[R4_STOP_BIT        				] <= 0;
		bar_reg[R4_P_CHK           				] <= 0;
		bar_reg[R4_D_WIDTH         				] <= 8;
		bar_reg[R4_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R4_TIMEOUT_THRD					] <= 5600;

		bar_reg[R5_CFG_REQ         				] <= 0;
		bar_reg[R5_BAUD_RATE       				] <= 921600;
		bar_reg[R5_STOP_BIT        				] <= 0;
		bar_reg[R5_P_CHK           				] <= 0;
		bar_reg[R5_D_WIDTH         				] <= 8;
		bar_reg[R5_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R5_TIMEOUT_THRD					] <= 5600;

		bar_reg[R6_CFG_REQ         				] <= 0;
		bar_reg[R6_BAUD_RATE       				] <= 921600;
		bar_reg[R6_STOP_BIT        				] <= 0;
		bar_reg[R6_P_CHK           				] <= 0;
		bar_reg[R6_D_WIDTH         				] <= 8;
		bar_reg[R6_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R6_TIMEOUT_THRD					] <= 5600;

		bar_reg[R7_CFG_REQ         				] <= 0;
		bar_reg[R7_BAUD_RATE       				] <= 921600;
		bar_reg[R7_STOP_BIT        				] <= 0;
		bar_reg[R7_P_CHK           				] <= 0;
		bar_reg[R7_D_WIDTH         				] <= 8;
		bar_reg[R7_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R7_TIMEOUT_THRD					] <= 5600;

		bar_reg[R8_CFG_REQ         				] <= 0;
		bar_reg[R8_BAUD_RATE       				] <= 921600;
		bar_reg[R8_STOP_BIT        				] <= 0;
		bar_reg[R8_P_CHK           				] <= 0;
		bar_reg[R8_D_WIDTH         				] <= 8;
		bar_reg[R8_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R8_TIMEOUT_THRD					] <= 5600;

		bar_reg[R9_CFG_REQ         				] <= 0;
		bar_reg[R9_BAUD_RATE       				] <= 921600;
		bar_reg[R9_STOP_BIT        				] <= 0;
		bar_reg[R9_P_CHK           				] <= 0;
		bar_reg[R9_D_WIDTH         				] <= 8;
		bar_reg[R9_AXI_BRUST_LEN   				] <= 15;
		bar_reg[R9_TIMEOUT_THRD					] <= 5600;

		bar_reg[R10_CFG_REQ         			] <= 0;
		bar_reg[R10_BAUD_RATE       			] <= 921600;
		bar_reg[R10_STOP_BIT        			] <= 0;
		bar_reg[R10_P_CHK           			] <= 0;
		bar_reg[R10_D_WIDTH         			] <= 8;
		bar_reg[R10_AXI_BRUST_LEN   			] <= 15;
		bar_reg[R10_TIMEOUT_THRD				] <= 5600;

		bar_reg[R11_CFG_REQ         			] <= 0;
		bar_reg[R11_BAUD_RATE       			] <= 921600;
		bar_reg[R11_STOP_BIT        			] <= 0;
		bar_reg[R11_P_CHK           			] <= 0;
		bar_reg[R11_D_WIDTH         			] <= 8;
		bar_reg[R11_AXI_BRUST_LEN   			] <= 15;
		bar_reg[R11_TIMEOUT_THRD				] <= 5600;

		bar_reg[R12_CFG_REQ         			] <= 0;
		bar_reg[R12_BAUD_RATE       			] <= 921600;
		bar_reg[R12_STOP_BIT        			] <= 0;
		bar_reg[R12_P_CHK           			] <= 0;
		bar_reg[R12_D_WIDTH         			] <= 8;
		bar_reg[R12_AXI_BRUST_LEN   			] <= 15;
		bar_reg[R12_TIMEOUT_THRD				] <= 5600;

		bar_reg[T1_CFG_REQ     					] <= 0;
		bar_reg[T1_BAUD_RATE   					] <= 921600;
		bar_reg[T1_STOP_BIT    					] <= 0;
		bar_reg[T1_P_CHK       					] <= 0;
		bar_reg[T1_D_WDITH     					] <= 8;
		bar_reg[T1_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T2_CFG_REQ     					] <= 0;
		bar_reg[T2_BAUD_RATE   					] <= 921600;
		bar_reg[T2_STOP_BIT    					] <= 0;
		bar_reg[T2_P_CHK       					] <= 0;
		bar_reg[T2_D_WDITH     					] <= 8;
		bar_reg[T2_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T3_CFG_REQ     					] <= 0;
		bar_reg[T3_BAUD_RATE   					] <= 921600;
		bar_reg[T3_STOP_BIT    					] <= 0;
		bar_reg[T3_P_CHK       					] <= 0;
		bar_reg[T3_D_WDITH     					] <= 8;
		bar_reg[T3_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T4_CFG_REQ     					] <= 0;
		bar_reg[T4_BAUD_RATE   					] <= 921600;
		bar_reg[T4_STOP_BIT    					] <= 0;
		bar_reg[T4_P_CHK       					] <= 0;
		bar_reg[T4_D_WDITH     					] <= 8;
		bar_reg[T4_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T5_CFG_REQ     					] <= 0;
		bar_reg[T5_BAUD_RATE   					] <= 921600;
		bar_reg[T5_STOP_BIT    					] <= 0;
		bar_reg[T5_P_CHK       					] <= 0;
		bar_reg[T5_D_WDITH     					] <= 8;
		bar_reg[T5_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T6_CFG_REQ     					] <= 0;
		bar_reg[T6_BAUD_RATE   					] <= 921600;
		bar_reg[T6_STOP_BIT    					] <= 0;
		bar_reg[T6_P_CHK       					] <= 0;
		bar_reg[T6_D_WDITH     					] <= 8;
		bar_reg[T6_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T7_CFG_REQ     					] <= 0;
		bar_reg[T7_BAUD_RATE   					] <= 921600;
		bar_reg[T7_STOP_BIT    					] <= 0;
		bar_reg[T7_P_CHK       					] <= 0;
		bar_reg[T7_D_WDITH     					] <= 8;
		bar_reg[T7_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T8_CFG_REQ     					] <= 0;
		bar_reg[T8_BAUD_RATE   					] <= 921600;
		bar_reg[T8_STOP_BIT    					] <= 0;
		bar_reg[T8_P_CHK       					] <= 0;
		bar_reg[T8_D_WDITH     					] <= 8;
		bar_reg[T8_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T9_CFG_REQ     					] <= 0;
		bar_reg[T9_BAUD_RATE   					] <= 921600;
		bar_reg[T9_STOP_BIT    					] <= 0;
		bar_reg[T9_P_CHK       					] <= 0;
		bar_reg[T9_D_WDITH     					] <= 8;
		bar_reg[T9_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T10_CFG_REQ     				] <= 0;
		bar_reg[T10_BAUD_RATE   				] <= 921600;
		bar_reg[T10_STOP_BIT    				] <= 0;
		bar_reg[T10_P_CHK       				] <= 0;
		bar_reg[T10_D_WDITH     				] <= 8;
		bar_reg[T10_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T11_CFG_REQ     				] <= 0;
		bar_reg[T11_BAUD_RATE   				] <= 921600;
		bar_reg[T11_STOP_BIT    				] <= 0;
		bar_reg[T11_P_CHK       				] <= 0;
		bar_reg[T11_D_WDITH     				] <= 8;
		bar_reg[T11_AXI_WR_EFF_LEN				] <= 1;

		bar_reg[T12_CFG_REQ     				] <= 0;
		bar_reg[T12_BAUD_RATE   				] <= 921600;
		bar_reg[T12_STOP_BIT    				] <= 0;
		bar_reg[T12_P_CHK       				] <= 0;
		bar_reg[T12_D_WDITH     				] <= 8;
		bar_reg[T12_AXI_WR_EFF_LEN				] <= 1;
	end
	else if(w_hs) case(w_addr)
		LOG_VERSION,
		LOG_SUB_VERSION,
		LITE_ONLINE,

		R1_RFF_USEDW,
		R2_RFF_USEDW,
		R3_RFF_USEDW,
		R4_RFF_USEDW,
		R5_RFF_USEDW,
		R6_RFF_USEDW,
		R7_RFF_USEDW,
		R8_RFF_USEDW,
		R9_RFF_USEDW,
		R10_RFF_USEDW,
		R11_RFF_USEDW,
		R12_RFF_USEDW,

		T1_TFF_USEDW,
		T2_TFF_USEDW,
		T3_TFF_USEDW,
		T4_TFF_USEDW,
		T5_TFF_USEDW,
		T6_TFF_USEDW,
		T7_TFF_USEDW,
		T8_TFF_USEDW,
		T9_TFF_USEDW,
		T10_TFF_USEDW,
		T11_TFF_USEDW,
		T12_TFF_USEDW:
			bar_reg[w_addr] <= bar_reg[w_addr];

		default:
			bar_reg[w_addr] <= wdata;
	endcase
	else begin
		bar_reg[LITE_ONLINE			] <= 32'h5a5a_bcbc;
		bar_reg[LOG_VERSION			] <= P_VERSION;
		bar_reg[LOG_SUB_VERSION		] <= P_SUB_VERSION;

		bar_reg[R1_RFF_USEDW		] <= 32'(LITE_REG_R1_RFF_USEDW);
		bar_reg[R2_RFF_USEDW		] <= 32'(LITE_REG_R2_RFF_USEDW);
		bar_reg[R3_RFF_USEDW		] <= 32'(LITE_REG_R3_RFF_USEDW);
		bar_reg[R4_RFF_USEDW		] <= 32'(LITE_REG_R4_RFF_USEDW);
		bar_reg[R5_RFF_USEDW		] <= 32'(LITE_REG_R5_RFF_USEDW);
		bar_reg[R6_RFF_USEDW		] <= 32'(LITE_REG_R6_RFF_USEDW);
		bar_reg[R7_RFF_USEDW		] <= 32'(LITE_REG_R7_RFF_USEDW);
		bar_reg[R8_RFF_USEDW		] <= 32'(LITE_REG_R8_RFF_USEDW);
		bar_reg[R9_RFF_USEDW		] <= 32'(LITE_REG_R9_RFF_USEDW);
		bar_reg[R10_RFF_USEDW		] <= 32'(LITE_REG_R10_RFF_USEDW);
		bar_reg[R11_RFF_USEDW		] <= 32'(LITE_REG_R11_RFF_USEDW);
		bar_reg[R12_RFF_USEDW		] <= 32'(LITE_REG_R12_RFF_USEDW);

		bar_reg[T1_TFF_USEDW		] <= 32'(LITE_REG_T1_TFF_USEDW);
		bar_reg[T2_TFF_USEDW		] <= 32'(LITE_REG_T2_TFF_USEDW);
		bar_reg[T3_TFF_USEDW		] <= 32'(LITE_REG_T3_TFF_USEDW);
		bar_reg[T4_TFF_USEDW		] <= 32'(LITE_REG_T4_TFF_USEDW);
		bar_reg[T5_TFF_USEDW		] <= 32'(LITE_REG_T5_TFF_USEDW);
		bar_reg[T6_TFF_USEDW		] <= 32'(LITE_REG_T6_TFF_USEDW);
		bar_reg[T7_TFF_USEDW		] <= 32'(LITE_REG_T7_TFF_USEDW);
		bar_reg[T8_TFF_USEDW		] <= 32'(LITE_REG_T8_TFF_USEDW);
		bar_reg[T9_TFF_USEDW		] <= 32'(LITE_REG_T9_TFF_USEDW);
		bar_reg[T10_TFF_USEDW		] <= 32'(LITE_REG_T10_TFF_USEDW);
		bar_reg[T11_TFF_USEDW		] <= 32'(LITE_REG_T11_TFF_USEDW);
		bar_reg[T12_TFF_USEDW		] <= 32'(LITE_REG_T12_TFF_USEDW);
	end
end

always@(posedge clk, posedge rst) begin
	if(rst) begin
		LITE_REG_AXI_RD_LEN				<= 'd0;
		LITE_REG_AXI_WR_MAX_LEN			<= 'd0;

		LITE_REG_R1_BAUD_RATE			<= 'd0;
		LITE_REG_R1_STOP_BIT			<= 'd0;
		LITE_REG_R1_P_CHK				<= 'd0;
		LITE_REG_R1_D_WIDTH				<= 'd0;
		LITE_REG_R1_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R1_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R2_BAUD_RATE			<= 'd0;
		LITE_REG_R2_STOP_BIT			<= 'd0;
		LITE_REG_R2_P_CHK				<= 'd0;
		LITE_REG_R2_D_WIDTH				<= 'd0;
		LITE_REG_R2_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R2_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R3_BAUD_RATE			<= 'd0;
		LITE_REG_R3_STOP_BIT			<= 'd0;
		LITE_REG_R3_P_CHK				<= 'd0;
		LITE_REG_R3_D_WIDTH				<= 'd0;
		LITE_REG_R3_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R3_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R4_BAUD_RATE			<= 'd0;
		LITE_REG_R4_STOP_BIT			<= 'd0;
		LITE_REG_R4_P_CHK				<= 'd0;
		LITE_REG_R4_D_WIDTH				<= 'd0;
		LITE_REG_R4_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R4_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R5_BAUD_RATE			<= 'd0;
		LITE_REG_R5_STOP_BIT			<= 'd0;
		LITE_REG_R5_P_CHK				<= 'd0;
		LITE_REG_R5_D_WIDTH				<= 'd0;
		LITE_REG_R5_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R5_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R6_BAUD_RATE			<= 'd0;
		LITE_REG_R6_STOP_BIT			<= 'd0;
		LITE_REG_R6_P_CHK				<= 'd0;
		LITE_REG_R6_D_WIDTH				<= 'd0;
		LITE_REG_R6_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R6_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R7_BAUD_RATE			<= 'd0;
		LITE_REG_R7_STOP_BIT			<= 'd0;
		LITE_REG_R7_P_CHK				<= 'd0;
		LITE_REG_R7_D_WIDTH				<= 'd0;
		LITE_REG_R7_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R7_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R8_BAUD_RATE			<= 'd0;
		LITE_REG_R8_STOP_BIT			<= 'd0;
		LITE_REG_R8_P_CHK				<= 'd0;
		LITE_REG_R8_D_WIDTH				<= 'd0;
		LITE_REG_R8_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R8_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R9_BAUD_RATE			<= 'd0;
		LITE_REG_R9_STOP_BIT			<= 'd0;
		LITE_REG_R9_P_CHK				<= 'd0;
		LITE_REG_R9_D_WIDTH				<= 'd0;
		LITE_REG_R9_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R9_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R10_BAUD_RATE			<= 'd0;
		LITE_REG_R10_STOP_BIT			<= 'd0;
		LITE_REG_R10_P_CHK				<= 'd0;
		LITE_REG_R10_D_WIDTH			<= 'd0;
		LITE_REG_R10_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R10_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R11_BAUD_RATE			<= 'd0;
		LITE_REG_R11_STOP_BIT			<= 'd0;
		LITE_REG_R11_P_CHK				<= 'd0;
		LITE_REG_R11_D_WIDTH			<= 'd0;
		LITE_REG_R11_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R11_TIMEOUT_THRD		<= 'd0;

		LITE_REG_R12_BAUD_RATE			<= 'd0;
		LITE_REG_R12_STOP_BIT			<= 'd0;
		LITE_REG_R12_P_CHK				<= 'd0;
		LITE_REG_R12_D_WIDTH			<= 'd0;
		LITE_REG_R12_AXI_BRUST_LEN		<= 'd0;
		LITE_REG_R12_TIMEOUT_THRD		<= 'd0;

		LITE_REG_T1_BAUD_RATE			<= 'd0;
		LITE_REG_T1_STOP_BIT			<= 'd0;
		LITE_REG_T1_P_CHK				<= 'd0;
		LITE_REG_T1_D_WDITH				<= 'd0;
		LITE_REG_T1_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T2_BAUD_RATE			<= 'd0;
		LITE_REG_T2_STOP_BIT			<= 'd0;
		LITE_REG_T2_P_CHK				<= 'd0;
		LITE_REG_T2_D_WDITH				<= 'd0;
		LITE_REG_T2_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T3_BAUD_RATE			<= 'd0;
		LITE_REG_T3_STOP_BIT			<= 'd0;
		LITE_REG_T3_P_CHK				<= 'd0;
		LITE_REG_T3_D_WDITH				<= 'd0;
		LITE_REG_T3_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T4_BAUD_RATE			<= 'd0;
		LITE_REG_T4_STOP_BIT			<= 'd0;
		LITE_REG_T4_P_CHK				<= 'd0;
		LITE_REG_T4_D_WDITH				<= 'd0;
		LITE_REG_T4_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T5_BAUD_RATE			<= 'd0;
		LITE_REG_T5_STOP_BIT			<= 'd0;
		LITE_REG_T5_P_CHK				<= 'd0;
		LITE_REG_T5_D_WDITH				<= 'd0;
		LITE_REG_T5_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T6_BAUD_RATE			<= 'd0;
		LITE_REG_T6_STOP_BIT			<= 'd0;
		LITE_REG_T6_P_CHK				<= 'd0;
		LITE_REG_T6_D_WDITH				<= 'd0;
		LITE_REG_T6_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T7_BAUD_RATE			<= 'd0;
		LITE_REG_T7_STOP_BIT			<= 'd0;
		LITE_REG_T7_P_CHK				<= 'd0;
		LITE_REG_T7_D_WDITH				<= 'd0;
		LITE_REG_T7_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T8_BAUD_RATE			<= 'd0;
		LITE_REG_T8_STOP_BIT			<= 'd0;
		LITE_REG_T8_P_CHK				<= 'd0;
		LITE_REG_T8_D_WDITH				<= 'd0;
		LITE_REG_T8_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T9_BAUD_RATE			<= 'd0;
		LITE_REG_T9_STOP_BIT			<= 'd0;
		LITE_REG_T9_P_CHK				<= 'd0;
		LITE_REG_T9_D_WDITH				<= 'd0;
		LITE_REG_T9_AXI_WR_EFF_LEN 		<= 'd0;

		LITE_REG_T10_BAUD_RATE			<= 'd0;
		LITE_REG_T10_STOP_BIT			<= 'd0;
		LITE_REG_T10_P_CHK				<= 'd0;
		LITE_REG_T10_D_WDITH			<= 'd0;
		LITE_REG_T10_AXI_WR_EFF_LEN 	<= 'd0;

		LITE_REG_T11_BAUD_RATE			<= 'd0;
		LITE_REG_T11_STOP_BIT			<= 'd0;
		LITE_REG_T11_P_CHK				<= 'd0;
		LITE_REG_T11_D_WDITH			<= 'd0;
		LITE_REG_T11_AXI_WR_EFF_LEN 	<= 'd0;

		LITE_REG_T12_BAUD_RATE			<= 'd0;
		LITE_REG_T12_STOP_BIT			<= 'd0;
		LITE_REG_T12_P_CHK				<= 'd0;
		LITE_REG_T12_D_WDITH			<= 'd0;
		LITE_REG_T12_AXI_WR_EFF_LEN 	<= 'd0;
	end
	else begin
		LITE_REG_AXI_RD_LEN				<= (!w_hs) ?  bar_reg[AXI_RD_LEN				][$bits(LITE_REG_AXI_RD_LEN						) - 1:0]: LITE_REG_AXI_RD_LEN			;
		LITE_REG_AXI_WR_MAX_LEN			<= (!w_hs) ?  bar_reg[AXI_WR_MAX_LEN			][$bits(LITE_REG_AXI_WR_MAX_LEN					) - 1:0]: LITE_REG_AXI_WR_MAX_LEN		;

		LITE_REG_R1_BAUD_RATE			<= (!w_hs) ?  bar_reg[R1_BAUD_RATE				][$bits(LITE_REG_R1_BAUD_RATE					) - 1:0]: LITE_REG_R1_BAUD_RATE			;
		LITE_REG_R1_STOP_BIT			<= (!w_hs) ?  bar_reg[R1_STOP_BIT				][$bits(LITE_REG_R1_STOP_BIT					) - 1:0]: LITE_REG_R1_STOP_BIT			;
		LITE_REG_R1_P_CHK				<= (!w_hs) ?  bar_reg[R1_P_CHK					][$bits(LITE_REG_R1_P_CHK						) - 1:0]: LITE_REG_R1_P_CHK				;
		LITE_REG_R1_D_WIDTH				<= (!w_hs) ?  bar_reg[R1_D_WIDTH				][$bits(LITE_REG_R1_D_WIDTH						) - 1:0]: LITE_REG_R1_D_WIDTH			;
		LITE_REG_R1_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R1_AXI_BRUST_LEN			][$bits(LITE_REG_R1_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R1_AXI_BRUST_LEN		;
		LITE_REG_R1_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R1_TIMEOUT_THRD			][$bits(LITE_REG_R1_TIMEOUT_THRD				) - 1:0]: LITE_REG_R1_TIMEOUT_THRD		;

		LITE_REG_R2_BAUD_RATE			<= (!w_hs) ?  bar_reg[R2_BAUD_RATE				][$bits(LITE_REG_R2_BAUD_RATE					) - 1:0]: LITE_REG_R2_BAUD_RATE			;
		LITE_REG_R2_STOP_BIT			<= (!w_hs) ?  bar_reg[R2_STOP_BIT				][$bits(LITE_REG_R2_STOP_BIT					) - 1:0]: LITE_REG_R2_STOP_BIT			;
		LITE_REG_R2_P_CHK				<= (!w_hs) ?  bar_reg[R2_P_CHK					][$bits(LITE_REG_R2_P_CHK						) - 1:0]: LITE_REG_R2_P_CHK				;
		LITE_REG_R2_D_WIDTH				<= (!w_hs) ?  bar_reg[R2_D_WIDTH				][$bits(LITE_REG_R2_D_WIDTH						) - 1:0]: LITE_REG_R2_D_WIDTH			;
		LITE_REG_R2_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R2_AXI_BRUST_LEN			][$bits(LITE_REG_R2_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R2_AXI_BRUST_LEN		;
		LITE_REG_R2_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R2_TIMEOUT_THRD			][$bits(LITE_REG_R2_TIMEOUT_THRD				) - 1:0]: LITE_REG_R2_TIMEOUT_THRD		;

		LITE_REG_R3_BAUD_RATE			<= (!w_hs) ?  bar_reg[R3_BAUD_RATE				][$bits(LITE_REG_R3_BAUD_RATE					) - 1:0]: LITE_REG_R3_BAUD_RATE			;
		LITE_REG_R3_STOP_BIT			<= (!w_hs) ?  bar_reg[R3_STOP_BIT				][$bits(LITE_REG_R3_STOP_BIT					) - 1:0]: LITE_REG_R3_STOP_BIT			;
		LITE_REG_R3_P_CHK				<= (!w_hs) ?  bar_reg[R3_P_CHK					][$bits(LITE_REG_R3_P_CHK						) - 1:0]: LITE_REG_R3_P_CHK				;
		LITE_REG_R3_D_WIDTH				<= (!w_hs) ?  bar_reg[R3_D_WIDTH				][$bits(LITE_REG_R3_D_WIDTH						) - 1:0]: LITE_REG_R3_D_WIDTH			;
		LITE_REG_R3_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R3_AXI_BRUST_LEN			][$bits(LITE_REG_R3_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R3_AXI_BRUST_LEN		;
		LITE_REG_R3_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R3_TIMEOUT_THRD			][$bits(LITE_REG_R3_TIMEOUT_THRD				) - 1:0]: LITE_REG_R3_TIMEOUT_THRD		;

		LITE_REG_R4_BAUD_RATE			<= (!w_hs) ?  bar_reg[R4_BAUD_RATE				][$bits(LITE_REG_R4_BAUD_RATE					) - 1:0]: LITE_REG_R4_BAUD_RATE			;
		LITE_REG_R4_STOP_BIT			<= (!w_hs) ?  bar_reg[R4_STOP_BIT				][$bits(LITE_REG_R4_STOP_BIT					) - 1:0]: LITE_REG_R4_STOP_BIT			;
		LITE_REG_R4_P_CHK				<= (!w_hs) ?  bar_reg[R4_P_CHK					][$bits(LITE_REG_R4_P_CHK						) - 1:0]: LITE_REG_R4_P_CHK				;
		LITE_REG_R4_D_WIDTH				<= (!w_hs) ?  bar_reg[R4_D_WIDTH				][$bits(LITE_REG_R4_D_WIDTH						) - 1:0]: LITE_REG_R4_D_WIDTH			;
		LITE_REG_R4_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R4_AXI_BRUST_LEN			][$bits(LITE_REG_R4_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R4_AXI_BRUST_LEN		;
		LITE_REG_R4_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R4_TIMEOUT_THRD			][$bits(LITE_REG_R4_TIMEOUT_THRD				) - 1:0]: LITE_REG_R4_TIMEOUT_THRD		;

		LITE_REG_R5_BAUD_RATE			<= (!w_hs) ?  bar_reg[R5_BAUD_RATE				][$bits(LITE_REG_R5_BAUD_RATE					) - 1:0]: LITE_REG_R5_BAUD_RATE			;
		LITE_REG_R5_STOP_BIT			<= (!w_hs) ?  bar_reg[R5_STOP_BIT				][$bits(LITE_REG_R5_STOP_BIT					) - 1:0]: LITE_REG_R5_STOP_BIT			;
		LITE_REG_R5_P_CHK				<= (!w_hs) ?  bar_reg[R5_P_CHK					][$bits(LITE_REG_R5_P_CHK						) - 1:0]: LITE_REG_R5_P_CHK				;
		LITE_REG_R5_D_WIDTH				<= (!w_hs) ?  bar_reg[R5_D_WIDTH				][$bits(LITE_REG_R5_D_WIDTH						) - 1:0]: LITE_REG_R5_D_WIDTH			;
		LITE_REG_R5_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R5_AXI_BRUST_LEN			][$bits(LITE_REG_R5_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R5_AXI_BRUST_LEN		;
		LITE_REG_R5_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R5_TIMEOUT_THRD			][$bits(LITE_REG_R5_TIMEOUT_THRD				) - 1:0]: LITE_REG_R5_TIMEOUT_THRD		;

		LITE_REG_R6_BAUD_RATE			<= (!w_hs) ?  bar_reg[R6_BAUD_RATE				][$bits(LITE_REG_R6_BAUD_RATE					) - 1:0]: LITE_REG_R6_BAUD_RATE			;
		LITE_REG_R6_STOP_BIT			<= (!w_hs) ?  bar_reg[R6_STOP_BIT				][$bits(LITE_REG_R6_STOP_BIT					) - 1:0]: LITE_REG_R6_STOP_BIT			;
		LITE_REG_R6_P_CHK				<= (!w_hs) ?  bar_reg[R6_P_CHK					][$bits(LITE_REG_R6_P_CHK						) - 1:0]: LITE_REG_R6_P_CHK				;
		LITE_REG_R6_D_WIDTH				<= (!w_hs) ?  bar_reg[R6_D_WIDTH				][$bits(LITE_REG_R6_D_WIDTH						) - 1:0]: LITE_REG_R6_D_WIDTH			;
		LITE_REG_R6_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R6_AXI_BRUST_LEN			][$bits(LITE_REG_R6_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R6_AXI_BRUST_LEN		;
		LITE_REG_R6_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R6_TIMEOUT_THRD			][$bits(LITE_REG_R6_TIMEOUT_THRD				) - 1:0]: LITE_REG_R6_TIMEOUT_THRD		;

		LITE_REG_R7_BAUD_RATE			<= (!w_hs) ?  bar_reg[R7_BAUD_RATE				][$bits(LITE_REG_R7_BAUD_RATE					) - 1:0]: LITE_REG_R7_BAUD_RATE			;
		LITE_REG_R7_STOP_BIT			<= (!w_hs) ?  bar_reg[R7_STOP_BIT				][$bits(LITE_REG_R7_STOP_BIT					) - 1:0]: LITE_REG_R7_STOP_BIT			;
		LITE_REG_R7_P_CHK				<= (!w_hs) ?  bar_reg[R7_P_CHK					][$bits(LITE_REG_R7_P_CHK						) - 1:0]: LITE_REG_R7_P_CHK				;
		LITE_REG_R7_D_WIDTH				<= (!w_hs) ?  bar_reg[R7_D_WIDTH				][$bits(LITE_REG_R7_D_WIDTH						) - 1:0]: LITE_REG_R7_D_WIDTH			;
		LITE_REG_R7_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R7_AXI_BRUST_LEN			][$bits(LITE_REG_R7_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R7_AXI_BRUST_LEN		;
		LITE_REG_R7_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R7_TIMEOUT_THRD			][$bits(LITE_REG_R7_TIMEOUT_THRD				) - 1:0]: LITE_REG_R7_TIMEOUT_THRD		;

		LITE_REG_R8_BAUD_RATE			<= (!w_hs) ?  bar_reg[R8_BAUD_RATE				][$bits(LITE_REG_R8_BAUD_RATE					) - 1:0]: LITE_REG_R8_BAUD_RATE			;
		LITE_REG_R8_STOP_BIT			<= (!w_hs) ?  bar_reg[R8_STOP_BIT				][$bits(LITE_REG_R8_STOP_BIT					) - 1:0]: LITE_REG_R8_STOP_BIT			;
		LITE_REG_R8_P_CHK				<= (!w_hs) ?  bar_reg[R8_P_CHK					][$bits(LITE_REG_R8_P_CHK						) - 1:0]: LITE_REG_R8_P_CHK				;
		LITE_REG_R8_D_WIDTH				<= (!w_hs) ?  bar_reg[R8_D_WIDTH				][$bits(LITE_REG_R8_D_WIDTH						) - 1:0]: LITE_REG_R8_D_WIDTH			;
		LITE_REG_R8_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R8_AXI_BRUST_LEN			][$bits(LITE_REG_R8_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R8_AXI_BRUST_LEN		;
		LITE_REG_R8_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R8_TIMEOUT_THRD			][$bits(LITE_REG_R8_TIMEOUT_THRD				) - 1:0]: LITE_REG_R8_TIMEOUT_THRD		;

		LITE_REG_R9_BAUD_RATE			<= (!w_hs) ?  bar_reg[R9_BAUD_RATE				][$bits(LITE_REG_R9_BAUD_RATE					) - 1:0]: LITE_REG_R9_BAUD_RATE			;
		LITE_REG_R9_STOP_BIT			<= (!w_hs) ?  bar_reg[R9_STOP_BIT				][$bits(LITE_REG_R9_STOP_BIT					) - 1:0]: LITE_REG_R9_STOP_BIT			;
		LITE_REG_R9_P_CHK				<= (!w_hs) ?  bar_reg[R9_P_CHK					][$bits(LITE_REG_R9_P_CHK						) - 1:0]: LITE_REG_R9_P_CHK				;
		LITE_REG_R9_D_WIDTH				<= (!w_hs) ?  bar_reg[R9_D_WIDTH				][$bits(LITE_REG_R9_D_WIDTH						) - 1:0]: LITE_REG_R9_D_WIDTH			;
		LITE_REG_R9_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R9_AXI_BRUST_LEN			][$bits(LITE_REG_R9_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R9_AXI_BRUST_LEN		;
		LITE_REG_R9_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R9_TIMEOUT_THRD			][$bits(LITE_REG_R9_TIMEOUT_THRD				) - 1:0]: LITE_REG_R9_TIMEOUT_THRD		;

		LITE_REG_R10_BAUD_RATE			<= (!w_hs) ?  bar_reg[R10_BAUD_RATE				][$bits(LITE_REG_R10_BAUD_RATE					) - 1:0]: LITE_REG_R10_BAUD_RATE		;
		LITE_REG_R10_STOP_BIT			<= (!w_hs) ?  bar_reg[R10_STOP_BIT				][$bits(LITE_REG_R10_STOP_BIT					) - 1:0]: LITE_REG_R10_STOP_BIT			;
		LITE_REG_R10_P_CHK				<= (!w_hs) ?  bar_reg[R10_P_CHK					][$bits(LITE_REG_R10_P_CHK						) - 1:0]: LITE_REG_R10_P_CHK			;
		LITE_REG_R10_D_WIDTH			<= (!w_hs) ?  bar_reg[R10_D_WIDTH				][$bits(LITE_REG_R10_D_WIDTH					) - 1:0]: LITE_REG_R10_D_WIDTH			;
		LITE_REG_R10_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R10_AXI_BRUST_LEN			][$bits(LITE_REG_R10_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R10_AXI_BRUST_LEN	;
		LITE_REG_R10_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R10_TIMEOUT_THRD			][$bits(LITE_REG_R10_TIMEOUT_THRD				) - 1:0]: LITE_REG_R10_TIMEOUT_THRD		;

		LITE_REG_R11_BAUD_RATE			<= (!w_hs) ?  bar_reg[R11_BAUD_RATE				][$bits(LITE_REG_R11_BAUD_RATE					) - 1:0]: LITE_REG_R11_BAUD_RATE		;
		LITE_REG_R11_STOP_BIT			<= (!w_hs) ?  bar_reg[R11_STOP_BIT				][$bits(LITE_REG_R11_STOP_BIT					) - 1:0]: LITE_REG_R11_STOP_BIT			;
		LITE_REG_R11_P_CHK				<= (!w_hs) ?  bar_reg[R11_P_CHK					][$bits(LITE_REG_R11_P_CHK						) - 1:0]: LITE_REG_R11_P_CHK			;
		LITE_REG_R11_D_WIDTH			<= (!w_hs) ?  bar_reg[R11_D_WIDTH				][$bits(LITE_REG_R11_D_WIDTH					) - 1:0]: LITE_REG_R11_D_WIDTH			;
		LITE_REG_R11_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R11_AXI_BRUST_LEN			][$bits(LITE_REG_R11_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R11_AXI_BRUST_LEN	;
		LITE_REG_R11_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R11_TIMEOUT_THRD			][$bits(LITE_REG_R11_TIMEOUT_THRD				) - 1:0]: LITE_REG_R11_TIMEOUT_THRD		;

		LITE_REG_R12_BAUD_RATE			<= (!w_hs) ?  bar_reg[R12_BAUD_RATE				][$bits(LITE_REG_R12_BAUD_RATE					) - 1:0]: LITE_REG_R12_BAUD_RATE		;
		LITE_REG_R12_STOP_BIT			<= (!w_hs) ?  bar_reg[R12_STOP_BIT				][$bits(LITE_REG_R12_STOP_BIT					) - 1:0]: LITE_REG_R12_STOP_BIT			;
		LITE_REG_R12_P_CHK				<= (!w_hs) ?  bar_reg[R12_P_CHK					][$bits(LITE_REG_R12_P_CHK						) - 1:0]: LITE_REG_R12_P_CHK			;
		LITE_REG_R12_D_WIDTH			<= (!w_hs) ?  bar_reg[R12_D_WIDTH				][$bits(LITE_REG_R12_D_WIDTH					) - 1:0]: LITE_REG_R12_D_WIDTH			;
		LITE_REG_R12_AXI_BRUST_LEN		<= (!w_hs) ?  bar_reg[R12_AXI_BRUST_LEN			][$bits(LITE_REG_R12_AXI_BRUST_LEN				) - 1:0]: LITE_REG_R12_AXI_BRUST_LEN	;
		LITE_REG_R12_TIMEOUT_THRD		<= (!w_hs) ?  bar_reg[R12_TIMEOUT_THRD			][$bits(LITE_REG_R12_TIMEOUT_THRD				) - 1:0]: LITE_REG_R12_TIMEOUT_THRD		;

		LITE_REG_T1_BAUD_RATE			<= (!w_hs) ?  bar_reg[T1_BAUD_RATE				][$bits(LITE_REG_T1_BAUD_RATE					) - 1:0]: LITE_REG_T1_BAUD_RATE			;
		LITE_REG_T1_STOP_BIT			<= (!w_hs) ?  bar_reg[T1_STOP_BIT				][$bits(LITE_REG_T1_STOP_BIT					) - 1:0]: LITE_REG_T1_STOP_BIT			;
		LITE_REG_T1_P_CHK				<= (!w_hs) ?  bar_reg[T1_P_CHK					][$bits(LITE_REG_T1_P_CHK						) - 1:0]: LITE_REG_T1_P_CHK				;
		LITE_REG_T1_D_WDITH				<= (!w_hs) ?  bar_reg[T1_D_WDITH				][$bits(LITE_REG_T1_D_WDITH						) - 1:0]: LITE_REG_T1_D_WDITH			;
		LITE_REG_T1_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T1_AXI_WR_EFF_LEN			][$bits(LITE_REG_T1_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T1_AXI_WR_EFF_LEN	;

		LITE_REG_T2_BAUD_RATE			<= (!w_hs) ?  bar_reg[T2_BAUD_RATE				][$bits(LITE_REG_T2_BAUD_RATE					) - 1:0]: LITE_REG_T2_BAUD_RATE			;
		LITE_REG_T2_STOP_BIT			<= (!w_hs) ?  bar_reg[T2_STOP_BIT				][$bits(LITE_REG_T2_STOP_BIT					) - 1:0]: LITE_REG_T2_STOP_BIT			;
		LITE_REG_T2_P_CHK				<= (!w_hs) ?  bar_reg[T2_P_CHK					][$bits(LITE_REG_T2_P_CHK						) - 1:0]: LITE_REG_T2_P_CHK				;
		LITE_REG_T2_D_WDITH				<= (!w_hs) ?  bar_reg[T2_D_WDITH				][$bits(LITE_REG_T2_D_WDITH						) - 1:0]: LITE_REG_T2_D_WDITH			;
		LITE_REG_T2_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T2_AXI_WR_EFF_LEN			][$bits(LITE_REG_T2_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T2_AXI_WR_EFF_LEN	;

		LITE_REG_T3_BAUD_RATE			<= (!w_hs) ?  bar_reg[T3_BAUD_RATE				][$bits(LITE_REG_T3_BAUD_RATE					) - 1:0]: LITE_REG_T3_BAUD_RATE			;
		LITE_REG_T3_STOP_BIT			<= (!w_hs) ?  bar_reg[T3_STOP_BIT				][$bits(LITE_REG_T3_STOP_BIT					) - 1:0]: LITE_REG_T3_STOP_BIT			;
		LITE_REG_T3_P_CHK				<= (!w_hs) ?  bar_reg[T3_P_CHK					][$bits(LITE_REG_T3_P_CHK						) - 1:0]: LITE_REG_T3_P_CHK				;
		LITE_REG_T3_D_WDITH				<= (!w_hs) ?  bar_reg[T3_D_WDITH				][$bits(LITE_REG_T3_D_WDITH						) - 1:0]: LITE_REG_T3_D_WDITH			;
		LITE_REG_T3_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T3_AXI_WR_EFF_LEN			][$bits(LITE_REG_T3_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T3_AXI_WR_EFF_LEN	;

		LITE_REG_T4_BAUD_RATE			<= (!w_hs) ?  bar_reg[T4_BAUD_RATE				][$bits(LITE_REG_T4_BAUD_RATE					) - 1:0]: LITE_REG_T4_BAUD_RATE			;
		LITE_REG_T4_STOP_BIT			<= (!w_hs) ?  bar_reg[T4_STOP_BIT				][$bits(LITE_REG_T4_STOP_BIT					) - 1:0]: LITE_REG_T4_STOP_BIT			;
		LITE_REG_T4_P_CHK				<= (!w_hs) ?  bar_reg[T4_P_CHK					][$bits(LITE_REG_T4_P_CHK						) - 1:0]: LITE_REG_T4_P_CHK				;
		LITE_REG_T4_D_WDITH				<= (!w_hs) ?  bar_reg[T4_D_WDITH				][$bits(LITE_REG_T4_D_WDITH						) - 1:0]: LITE_REG_T4_D_WDITH			;
		LITE_REG_T4_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T4_AXI_WR_EFF_LEN			][$bits(LITE_REG_T4_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T4_AXI_WR_EFF_LEN	;

		LITE_REG_T5_BAUD_RATE			<= (!w_hs) ?  bar_reg[T5_BAUD_RATE				][$bits(LITE_REG_T5_BAUD_RATE					) - 1:0]: LITE_REG_T5_BAUD_RATE			;
		LITE_REG_T5_STOP_BIT			<= (!w_hs) ?  bar_reg[T5_STOP_BIT				][$bits(LITE_REG_T5_STOP_BIT					) - 1:0]: LITE_REG_T5_STOP_BIT			;
		LITE_REG_T5_P_CHK				<= (!w_hs) ?  bar_reg[T5_P_CHK					][$bits(LITE_REG_T5_P_CHK						) - 1:0]: LITE_REG_T5_P_CHK				;
		LITE_REG_T5_D_WDITH				<= (!w_hs) ?  bar_reg[T5_D_WDITH				][$bits(LITE_REG_T5_D_WDITH						) - 1:0]: LITE_REG_T5_D_WDITH			;
		LITE_REG_T5_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T5_AXI_WR_EFF_LEN			][$bits(LITE_REG_T5_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T5_AXI_WR_EFF_LEN	;

		LITE_REG_T6_BAUD_RATE			<= (!w_hs) ?  bar_reg[T6_BAUD_RATE				][$bits(LITE_REG_T6_BAUD_RATE					) - 1:0]: LITE_REG_T6_BAUD_RATE			;
		LITE_REG_T6_STOP_BIT			<= (!w_hs) ?  bar_reg[T6_STOP_BIT				][$bits(LITE_REG_T6_STOP_BIT					) - 1:0]: LITE_REG_T6_STOP_BIT			;
		LITE_REG_T6_P_CHK				<= (!w_hs) ?  bar_reg[T6_P_CHK					][$bits(LITE_REG_T6_P_CHK						) - 1:0]: LITE_REG_T6_P_CHK				;
		LITE_REG_T6_D_WDITH				<= (!w_hs) ?  bar_reg[T6_D_WDITH				][$bits(LITE_REG_T6_D_WDITH						) - 1:0]: LITE_REG_T6_D_WDITH			;
		LITE_REG_T6_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T6_AXI_WR_EFF_LEN			][$bits(LITE_REG_T6_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T6_AXI_WR_EFF_LEN	;

		LITE_REG_T7_BAUD_RATE			<= (!w_hs) ?  bar_reg[T7_BAUD_RATE				][$bits(LITE_REG_T7_BAUD_RATE					) - 1:0]: LITE_REG_T7_BAUD_RATE			;
		LITE_REG_T7_STOP_BIT			<= (!w_hs) ?  bar_reg[T7_STOP_BIT				][$bits(LITE_REG_T7_STOP_BIT					) - 1:0]: LITE_REG_T7_STOP_BIT			;
		LITE_REG_T7_P_CHK				<= (!w_hs) ?  bar_reg[T7_P_CHK					][$bits(LITE_REG_T7_P_CHK						) - 1:0]: LITE_REG_T7_P_CHK				;
		LITE_REG_T7_D_WDITH				<= (!w_hs) ?  bar_reg[T7_D_WDITH				][$bits(LITE_REG_T7_D_WDITH						) - 1:0]: LITE_REG_T7_D_WDITH			;
		LITE_REG_T7_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T7_AXI_WR_EFF_LEN			][$bits(LITE_REG_T7_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T7_AXI_WR_EFF_LEN	;

		LITE_REG_T8_BAUD_RATE			<= (!w_hs) ?  bar_reg[T8_BAUD_RATE				][$bits(LITE_REG_T8_BAUD_RATE					) - 1:0]: LITE_REG_T8_BAUD_RATE			;
		LITE_REG_T8_STOP_BIT			<= (!w_hs) ?  bar_reg[T8_STOP_BIT				][$bits(LITE_REG_T8_STOP_BIT					) - 1:0]: LITE_REG_T8_STOP_BIT			;
		LITE_REG_T8_P_CHK				<= (!w_hs) ?  bar_reg[T8_P_CHK					][$bits(LITE_REG_T8_P_CHK						) - 1:0]: LITE_REG_T8_P_CHK				;
		LITE_REG_T8_D_WDITH				<= (!w_hs) ?  bar_reg[T8_D_WDITH				][$bits(LITE_REG_T8_D_WDITH						) - 1:0]: LITE_REG_T8_D_WDITH			;
		LITE_REG_T8_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T8_AXI_WR_EFF_LEN			][$bits(LITE_REG_T8_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T8_AXI_WR_EFF_LEN	;

		LITE_REG_T9_BAUD_RATE			<= (!w_hs) ?  bar_reg[T9_BAUD_RATE				][$bits(LITE_REG_T9_BAUD_RATE					) - 1:0]: LITE_REG_T9_BAUD_RATE			;
		LITE_REG_T9_STOP_BIT			<= (!w_hs) ?  bar_reg[T9_STOP_BIT				][$bits(LITE_REG_T9_STOP_BIT					) - 1:0]: LITE_REG_T9_STOP_BIT			;
		LITE_REG_T9_P_CHK				<= (!w_hs) ?  bar_reg[T9_P_CHK					][$bits(LITE_REG_T9_P_CHK						) - 1:0]: LITE_REG_T9_P_CHK				;
		LITE_REG_T9_D_WDITH				<= (!w_hs) ?  bar_reg[T9_D_WDITH				][$bits(LITE_REG_T9_D_WDITH						) - 1:0]: LITE_REG_T9_D_WDITH			;
		LITE_REG_T9_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T9_AXI_WR_EFF_LEN			][$bits(LITE_REG_T9_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T9_AXI_WR_EFF_LEN	;

		LITE_REG_T10_BAUD_RATE			<= (!w_hs) ?  bar_reg[T10_BAUD_RATE				][$bits(LITE_REG_T10_BAUD_RATE					) - 1:0]: LITE_REG_T10_BAUD_RATE		;
		LITE_REG_T10_STOP_BIT			<= (!w_hs) ?  bar_reg[T10_STOP_BIT				][$bits(LITE_REG_T10_STOP_BIT					) - 1:0]: LITE_REG_T10_STOP_BIT			;
		LITE_REG_T10_P_CHK				<= (!w_hs) ?  bar_reg[T10_P_CHK					][$bits(LITE_REG_T10_P_CHK						) - 1:0]: LITE_REG_T10_P_CHK			;
		LITE_REG_T10_D_WDITH			<= (!w_hs) ?  bar_reg[T10_D_WDITH				][$bits(LITE_REG_T10_D_WDITH					) - 1:0]: LITE_REG_T10_D_WDITH			;
		LITE_REG_T10_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T10_AXI_WR_EFF_LEN		][$bits(LITE_REG_T10_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T10_AXI_WR_EFF_LEN	;

		LITE_REG_T11_BAUD_RATE			<= (!w_hs) ?  bar_reg[T11_BAUD_RATE				][$bits(LITE_REG_T11_BAUD_RATE					) - 1:0]: LITE_REG_T11_BAUD_RATE		;
		LITE_REG_T11_STOP_BIT			<= (!w_hs) ?  bar_reg[T11_STOP_BIT				][$bits(LITE_REG_T11_STOP_BIT					) - 1:0]: LITE_REG_T11_STOP_BIT			;
		LITE_REG_T11_P_CHK				<= (!w_hs) ?  bar_reg[T11_P_CHK					][$bits(LITE_REG_T11_P_CHK						) - 1:0]: LITE_REG_T11_P_CHK			;
		LITE_REG_T11_D_WDITH			<= (!w_hs) ?  bar_reg[T11_D_WDITH				][$bits(LITE_REG_T11_D_WDITH					) - 1:0]: LITE_REG_T11_D_WDITH			;
		LITE_REG_T11_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T11_AXI_WR_EFF_LEN		][$bits(LITE_REG_T11_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T11_AXI_WR_EFF_LEN	;

		LITE_REG_T12_BAUD_RATE			<= (!w_hs) ?  bar_reg[T12_BAUD_RATE				][$bits(LITE_REG_T12_BAUD_RATE					) - 1:0]: LITE_REG_T12_BAUD_RATE		;
		LITE_REG_T12_STOP_BIT			<= (!w_hs) ?  bar_reg[T12_STOP_BIT				][$bits(LITE_REG_T12_STOP_BIT					) - 1:0]: LITE_REG_T12_STOP_BIT			;
		LITE_REG_T12_P_CHK				<= (!w_hs) ?  bar_reg[T12_P_CHK					][$bits(LITE_REG_T12_P_CHK						) - 1:0]: LITE_REG_T12_P_CHK			;
		LITE_REG_T12_D_WDITH			<= (!w_hs) ?  bar_reg[T12_D_WDITH				][$bits(LITE_REG_T12_D_WDITH					) - 1:0]: LITE_REG_T12_D_WDITH			;
		LITE_REG_T12_AXI_WR_EFF_LEN		<= (!w_hs) ?  bar_reg[T12_AXI_WR_EFF_LEN		][$bits(LITE_REG_T12_AXI_WR_EFF_LEN				) - 1:0]: LITE_REG_T12_AXI_WR_EFF_LEN	;
	end
end

// ================================================================================
//                               undef
// ================================================================================
`ifdef D
`undef D
`endif
`ifdef DEBUG_xdma_lite_rw
`undef DEBUG_xdma_lite_rw
`endif
endmodule
