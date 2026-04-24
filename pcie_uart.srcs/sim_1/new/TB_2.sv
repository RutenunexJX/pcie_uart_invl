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
import common_package::*;
import sim_package::*;
import pcie_uart_package::*;
import axi_verif_package::*;
module TB_2;

localparam int ADDR_W  = 64;
localparam int DATA_W  = 64;
localparam int ID_W    = 4;

logic					clk					;
logic					rst					;

logic					uart_tx				;
											;
axi_uart_tx_para_t		tx_para				= '{
												parity_check	: E_PARITY_CHECK_NONE,
												stop_bit_width	: E_STOP_BIT_1,
												default:'0};
axi_uart_tx_ctrl_t		tx_ctrl				= '{default:'0};
axi_uart_tx_status_t	tx_status			;

axi_full_if#(ID_W, ADDR_W, DATA_W)	s_axi_full_if(clk, (~rst));

initial clk = 'd1;
always #(P_CLK_PERIOD_NS/2) clk = ~clk;

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

axi_master_driver #(.ADDR_W(64), .DATA_W(64), .ID_W(4)) m_drv;

initial begin
	sim_package::init_seed();

    m_drv = new(s_axi_full_if);

    rst = 1'b1;
    m_drv.reset();
    `wait_q(20)
    rst = 1'b0;
	`wait_q(5)

    `sim_info("==== Test start ====")
    run_basic_test();
    run_burst_test();
    `sim_info("==== Test done ====")

    repeat (100) @(posedge clk);
    sim_package::finish_sim();
end

initial begin
    #10ms;
    `sim_fatal("Global timeout!")
end

task automatic run_basic_test();
    logic [DATA_W - 1:0] rdata;

    `sim_info("-- basic single write/read --")

    m_drv.write_single(64'h0000_0000, 64'h0000_0000_1234_5678);
    m_drv.write_single(64'h0000_0008, 64'h0000_0000_0000_00AA);
    m_drv.write_single(64'h0000_0010, 64'h0000_0000_0000_0001);  // start

    m_drv.read_single(64'h0000_0000, rdata);
    `sim_check_eq(rdata, 64'h0000_0000_1234_5678, "reg0 readback")
endtask

//--------------------------------------------------------------------------
// 测试场景 2：burst 读写
//--------------------------------------------------------------------------
task automatic run_burst_test();
    logic [DATA_W - 1:0] wdata_q[];
    logic [DATA_W - 1:0] rdata_q[];

    `sim_info("-- burst write/read --")

    wdata_q = new[4];
    foreach (wdata_q[i]) wdata_q[i] = 64'hAAAA_BBBB_0000_0000 | i;

    m_drv.write_burst(
        .addr(64'h0000_0100),
        .data(wdata_q),
        .id  (4'h1)
    );

    m_drv.read_burst(
        .addr (64'h0000_0100),
        .beats(4),
        .data (rdata_q),
        .id   (4'h1)
    );

    foreach (rdata_q[i]) begin
        `sim_check_eq(rdata_q[i], wdata_q[i],
                      $sformatf("burst beat[%0d]", i))
    end
endtask


endmodule