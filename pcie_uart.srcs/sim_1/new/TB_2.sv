`timescale 1ns / 1ns
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
import sim_package::*;
module TB_2;

logic					clk					;
logic					rst					;

logic					uart_tx				;
											;
axi_uart_tx_para_t		tx_para				;
axi_uart_tx_ctrl_t		tx_ctrl				;
axi_uart_tx_status_t	tx_status			;

axi_full_if				s_axi_full_if();

initial clk = 'd1;
always #(P_CLK_PERIOD_NS/2) clk = ~clk;

initial begin
	rst = 1'd1;

	#200ns
	`q
	rst = 1'd0;

	wait(STOP)
	`q
	$stop;
end

logic STOP;

axi_uart_tx #(
	.P_PARA_VALIDITY_CHECK(P_ENABLE)
)DUT(
	.clk				(	clk					),
	.rst				(	rst					),

	.uart_tx			(	uart_tx				),

	.tx_para			(	tx_para				),
	.tx_ctrl			(	tx_ctrl				),
	.tx_status			(	tx_status			),

	.sw_axi_full_if     (	s_axi_full_if.slave_write	)
);

initial begin
    clk = 1'd1;
    rst = 1'd1;

    #200ns
    `q
    rst = 1'd0;

    wait(STOP)
	`q
	$stop;
end

initial begin
    STOP = 'd0;

    #`SIM_STOP_TIME;
    `q
    STOP = 'd1;
end

initial begin
end

endmodule