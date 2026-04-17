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
//`define DEBUG_rtl_top
module rtl_top(
	input	logic					clk								,
	input	logic					rst								,

	axi_full_if.slave				s_axi_full_if[P_CHL_NUM - 1:0]	,
	axi_lite_if.slave				s_axi_lite_if					,

	input   [11:0]					uart_rx							,
	output  [11:0]					uart_tx							  //
);
`define D `ifdef DEBUG_rtl_top (*mark_debug = "true"*) `else `endif

axi_uart_tx_para_t		rx_para		[P_CHL_NUM - 1:0];
axi_uart_tx_ctrl_t		rx_ctrl		[P_CHL_NUM - 1:0];
axi_uart_tx_status_t	rx_status	[P_CHL_NUM - 1:0];

axi_uart_rx_para_t		tx_para		[P_CHL_NUM - 1:0];
axi_uart_rx_ctrl_t		tx_ctrl		[P_CHL_NUM - 1:0];
axi_uart_rx_status_t	tx_status	[P_CHL_NUM - 1:0];

for(genvar i = 0; i < 12; i = i + 1)begin: GF_CHL

uart_f2ser_read UART_R();

axi_uart_rx #(
	.P_PARA_VALIDITY_CHECK(P_ENABLE)
	)UART_RX(
	.clk(clk),
	.rst(rst),

	.uart_rx(uart_rx[i]),
	.rx_para(rx_para[i]),
	.rx_ctrl(rx_ctrl[i]),
	.rx_status(rx_status[i]),
	.sr_axi_full_if(s_axi_full_if[i])
);

axi_uart_tx #(
	.P_PARA_VALIDITY_CHECK(P_ENABLE)
)UART_TX(
	.clk(clk),
	.rst(rst),

	.uart_tx(uart_tx[i]),
	.tx_para(),
	.tx_ctrl(),
	.tx_status(),
	.sw_axi_full_if(s_axi_full_if[i])
);
end

xdma_lite_rw #(
	.LITE_BASE_ADDR(P_LITE_BASE_ADDR)
) XDMA_LITE_RW(
	.clk			(   clk				),
	.rst			(   rst				),

	.s_axi_lite_if	(	s_axi_lite_if	),

	.rx_para		(	rx_para			),
	.rx_ctrl		(	rx_ctrl			),
	.rx_status		(	rx_status		),

	.tx_para		(	tx_para			),
	.tx_ctrl		(	tx_ctrl			),
	.tx_status		(	tx_status		)  //
);

`ifdef D
`undef D
`endif

`ifdef DEBUG_rtl_top
`undef DEBUG_rtl_top
`endif
endmodule