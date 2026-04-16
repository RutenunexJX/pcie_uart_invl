`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2026/04/16 10:22:05
// Design Name:
// Module Name: axi_uart_tx
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
//`define DEBUG_axi_uart_tx

module axi_uart_tx #(
	P_PARA_VALIDITY_CHECK = P_ENABLE
)(
	input	logic					clk				,
	input	logic					rst				,

	input	axi_uart_tx_para_t		tx_para			,
	input	axi_uart_tx_ctrl_t		tx_ctrl			,
	output	axi_uart_tx_status_t	tx_status		,

	axi_full_if.slave_write			sw_axi_full_if	,

	output	logic					uart_tx			  //
);

`define D `ifdef DEBUG_axi_uart_tx (*mark_debug = "true"*) `else `endif

`define INVL_CDN ((para_tx_invl_mode == 2'd0) ? ((cs == STOP_BIT) || (cs == PARA_CFG)) : 1'd0)
`define CFG_DONE_CDN (((para_cfg_req_post == 2'd1) & (LR_CFG_DONE > 2'd1)) || ((para_cfg_req_post == 2'd2) & chl_clr_done))
`define BYTE_CNT_THRD ((tff_rd_strb_cnt > 0) ? (tff_rd_strb_cnt - 1) : 0)

`define EFF_STRB_SFT (8 - ((LR_AXI_WR_EFF_LEN - axi_wr_cnt) + wstrb_right_part_zero_cnt[7]))

localparam P_FRAC_THRD = 24'd10_000_000;

genvar i;

reg r1_UART_TX;

reg [7:0]p_chk_data;
reg [3:0]tx_cnt, tx_stop_bit_cnt;
reg r1_tx_driv_flag, tx_driv_flag_sft, stop_bit_done;
reg [1:0] para_cfg_req_post;
reg [3:0]		tff_rd_strb_cnt;
wire[3:0]		tff_rd_strb_right_part_zero_cnt [7:0];
reg 			is_byte_zero;
reg [15:0] axi_wr_cnt;
wire [3:0] wstrb_cnt = wstrb[7 ] + wstrb[6 ] + wstrb[5 ] + wstrb[4 ] + wstrb[3 ] + wstrb[2 ] + wstrb[1 ] + wstrb[0 ];
reg  [7:0] eff_wstrb;
wire [63:0]eff_wdata;
wire [3:0] wstrb_right_part_zero_cnt [7:0];


logic			tx_driv_flag				;
logic	[31:0]	phase_sum					;
logic	[31:0]	r1_phase_sum				;
logic	[23:0]	frac_part					;
logic			frac_carry_bit				;


typedef enum logic [3:0]{
	TX_IDLE				,
	TX_DATA				,
	TX_STOP_BIT			,
	TX_PARITY_CHECK
}tx_st_e;

tx_st_e	cs;
tx_st_e	ns;

axi_uart_tx_para_t	new_tx_para;
axi_uart_tx_para_t	cur_tx_para;

reg 			r1_w_hs;
wire	[4:0]	strb_cnt;
reg		[4:0]	strb_cnt_latch;
wire 	[63:0]	strb_fix_data;
reg 	[63:0]	strb_fix_data_latch;

`DEBUG_DEF	reg  [71 : 0]	tff_din       ;
`DEBUG_DEF	reg 			tff_wr_en     ;
`DEBUG_DEF	wire			tff_rd_en     ;
`DEBUG_DEF	reg 			tff_rd_en_pre ;
`DEBUG_DEF	wire [71 : 0]	tff_dout      ;
`DEBUG_DEF	reg  [71 : 0]	tff_dout_post ;
`DEBUG_DEF	wire			tff_full      ;
`DEBUG_DEF	wire			tff_empty     ;
`DEBUG_DEF	wire [10 : 0]	tff_data_count;
`DEBUG_DEF	reg  [3:0]		tff_rd_byte_num;

// _________________________________________________________________________ full write addr
wire [3 : 0] 		awid    = s_axi_awid   ;
`DEBUG_DEF	wire [63 : 0]		awaddr  = s_axi_awaddr ;
wire [7 : 0] 		awlen   = s_axi_awlen  ;
wire [2 : 0] 		awsize  = s_axi_awsize ;
wire [1 : 0] 		awburst = s_axi_awburst;
wire [2 : 0] 		awprot  = s_axi_awprot ;
`DEBUG_DEF	wire         		awvalid = s_axi_awvalid;
wire         		awlock  = s_axi_awlock ;
wire [3 : 0] 		awcache = s_axi_awcache;
`DEBUG_DEF	reg  				awready;
`DEBUG_DEF	wire 				aw_hs = awready & awvalid;

assign s_axi_awready = awready;

// _________________________________________________________________________ full write data
wire				fix_wlast = s_axi_wlast & s_axi_wvalid;

`DEBUG_DEF	wire [63 : 0]		wdata  = s_axi_wdata 	;
`DEBUG_DEF	wire [7 : 0] 		wstrb  = s_axi_wstrb 	;
`DEBUG_DEF	wire 				wlast  = fix_wlast 		; // fix smart connect IP's wlast
`DEBUG_DEF	wire 				wvalid = s_axi_wvalid	;
`DEBUG_DEF	reg  				wready					;
`DEBUG_DEF	wire 				w_hs   = wvalid & wready;
wire 				fix_w_hs = (wstrb == 8'hff) ? w_hs : (w_hs & (strb_cnt == 8));
reg  [63 : 0]		r1_wdata;

assign s_axi_wready = wready;
// _________________________________________________________________________ full write resp
reg  [3:0] 			bid   					;
reg  [1:0] 			bresp 					;
reg        			bvalid					;
wire       			bready = s_axi_bready	;
wire       			b_hs   = bvalid & bready;

assign s_axi_bid    = bid   ;
assign s_axi_bresp  = bresp ;
assign s_axi_bvalid = bvalid;

always@ (posedge clk, posedge rst) begin
	if(rst)
		bvalid <= 1'd0;
	else if(wlast & bready & w_hs)
		bvalid <= 1'd1;
	else
		bvalid <= 1'd0;
end

always@ (posedge clk, posedge rst) begin
	if(rst) begin
		bid   <= 'd0;
		bresp <= 'd0;
	end
	else begin
		bid   <= 'd0;
		bresp <= 'd0;
	end
end

// _________________________________________________________________________ full awready
always@(posedge clk, posedge rst) begin
	if(rst)
		awready <= 1'd1;
	else if (wlast)
		awready <= 1'd1;
	else if (aw_hs)
		awready <= 1'd0;
	else
		awready <= awready;
end
// _________________________________________________________________________ full wready
always@(posedge clk, posedge rst) begin
	if(rst)
		wready <= 'd0;
	else if(aw_hs)
		wready <= 'd1;
	else if (wlast)
		wready <= 'd0;
	else
		wready <= wready;
end

always@(posedge clk, posedge rst) begin
	if(rst) begin
		r1_wdata <= 'd0;
		r1_tx_driv_flag <= 'd0;
	end
	else begin
		r1_wdata <= wdata;//strb_fix_data;
		r1_tx_driv_flag <= tx_driv_flag;
	end
end

// _________________________________________________________________________ uart_tx
always@(posedge clk, posedge rst) begin
	if(rst)
		tx_driv_flag_sft <= 'd0;
	else if(stop_bit_done & (para_stop_bit == STOP_BIT_1P5))
		tx_driv_flag_sft <= 1'd1;
	else if(tx_driv_flag)
		tx_driv_flag_sft <= ~tx_driv_flag_sft;
	else
		tx_driv_flag_sft <= tx_driv_flag_sft;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		phase_sum <= 'd0;
	else
		phase_sum <= phase_sum + cur_tx_para.baud_rate_phase_acc_step_len + frac_carry_bit;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		r1_phase_sum	<= 'd0;
		r1_tx_driv_flag	<= 'd0;
	end
	else begin
		r1_phase_sum	<= phase_sum;
		r1_tx_driv_flag	<= tx_driv_flag;
	end
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		frac_part <= 24'd0;
	else if (frac_part >= P_FRAC_THRD)
		frac_part <= frac_part - P_FRAC_THRD + cur_tx_para.baud_rate_phase_acc_frac_step_len;
	else
		frac_part <= frac_part + cur_tx_para.baud_rate_phase_acc_frac_step_len;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_driv_flag <= 'd0;
	else if(r1_phase_sum[31:24] > phase_sum[31:24])
		tx_driv_flag <= 1'd1;
	else
		tx_driv_flag <= 'd0;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_driv_flag_sft <= 'd0;
	else if(stop_bit_done & (cur_tx_para.stop_bit_width == E_STOP_BIT_1P5))
		tx_driv_flag_sft <= 1'd1;
	else if(tx_driv_flag)
		tx_driv_flag_sft <= ~tx_driv_flag_sft;
	else
		tx_driv_flag_sft <= tx_driv_flag_sft;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		new_tx_para <= '{
			baud_rate_phase_acc_step_len		: 'd659706, // @9600 bps; @125MHz
			baud_rate_phase_acc_frac_step_len	: 'd9766656, // @9600 bps; @125MHz
			data_width							: 'd8,
			parity_check						: E_PARITY_CHECK_NONE,
			stop_bit_width						: E_STOP_BIT_1,
			default								: '0
		};
	else if(P_PARA_VALIDITY_CHECK == P_ENABLE)
		new_tx_para <= '{
			baud_rate_phase_acc_step_len		: tx_para.baud_rate_phase_acc_step_len,
			baud_rate_phase_acc_frac_step_len	: (tx_para.baud_rate_phase_acc_frac_step_len <= P_FRAC_THRD)	? tx_para.baud_rate_phase_acc_frac_step_len	: '0,
			data_width							: ((tx_para.data_width != 4'd0) & (tx_para.data_width <= 4'd8))	? tx_para.data_width						: 4'd8,
			parity_check						: (tx_para.parity_check < E_PARITY_CHECK_END)					? tx_para.parity_check						: E_PARITY_CHECK_NONE,
			stop_bit_width						: (tx_para.stop_bit_width < E_STOP_BIT_END)						? tx_para.stop_bit_width					: E_STOP_BIT_1,
			default								: '0
		};
	else
		new_tx_para <= tx_para;
end

// ---------------------------------------------------
// current tx parameter
// ---------------------------------------------------
always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		cur_tx_para <= '{
			baud_rate_phase_acc_step_len		: 'd659706, // @9600 bps; @125MHz
			baud_rate_phase_acc_frac_step_len	: 'd9766656, // @9600 bps; @125MHz
			data_width							: 'd8,
			parity_check						: E_PARITY_CHECK_NONE,
			stop_bit_width						: E_STOP_BIT_1,
			default								: '0
		};
	end
	else if(flag.ready_to_cfg)
		cur_tx_para <= new_tx_para;
	else
		cur_tx_para <= cur_tx_para;
end

uart_ff_8k TFF_8K (
		.clk		(	clk				),
		.din		(	tff_din       	),
		.wr_en		(	tff_wr_en     	),
		.rd_en		(	tff_rd_en     	),
		.dout		(	tff_dout      	),
		.full		(	tff_full      	),
		.empty		(	tff_empty     	),
		.data_count	(	tff_data_count	)
);

always@(posedge clk, posedge rst) begin
	if(rst)
		tff_wr_en <= 'd0;
	else
		tff_wr_en <= (!tff_full) & w_hs & (eff_wstrb != 0);//fix_w_hs;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		tff_dout_post <= tff_dout;
	else if(tff_rd_en_pre)
		tff_dout_post <= {(tff_dout[71:64] >> tff_rd_strb_right_part_zero_cnt[7]), (tff_dout[63:0] >> (tff_rd_strb_right_part_zero_cnt[7]*8))};
	else
		tff_dout_post <= tff_dout_post;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		tff_din <= 'd0;
	else
		tff_din <= {eff_wstrb, eff_wdata};//strb_fix_data;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		LR_TFF_USEDW <= 'd0;
	else
		LR_TFF_USEDW <= 16'(tff_data_count);
end

assign tff_rd_en = tff_rd_en_pre;

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tff_rd_en_pre <= 'd0;
	else begin
		if(cs == IDLE)
			tff_rd_en_pre <= (!tff_empty) & (tff_rd_byte_num == 4'd0) & r1_tx_driv_flag & tx_driv_flag_sft;
		else if(cs == STOP_BIT)
			tff_rd_en_pre <= stop_bit_done & (!tff_empty) & (tff_rd_byte_num == `BYTE_CNT_THRD/*4'd7*/);
		else if(cs == PARA_CFG)
			tff_rd_en_pre <= `CFG_DONE_CDN & (!tff_empty) & (tff_rd_byte_num == `BYTE_CNT_THRD/*4'd7*/) & r1_tx_driv_flag & tx_driv_flag_sft;
	end
end

// ================================================================================
//                               FSM
// ================================================================================
always_ff @(posedge clk, posedge rst) begin
	if(rst)
		cs <= TX_IDLE;
	else
		cs <= ns;
end

always_comb begin
	case(cs)
		TX_IDLE:
			if(fifo_rd_en_pre)
				ns = TX_DATA;
			else
				ns = TX_IDLE;

		TX_DATA:
			if((tx_cnt == 8) & r1_tx_driv_flag & tx_driv_flag_sft)
				ns = (cur_tx_para.parity_check == E_PARITY_CHECK_NONE) ? TX_STOP_BIT : TX_PARITY_CHECK;
			else
				ns = TX_DATA;

		TX_PARITY_CHECK:
			if(r1_tx_driv_flag & tx_driv_flag_sft)
				ns = TX_STOP_BIT;
			else
				ns = TX_PARITY_CHECK;

		TX_STOP_BIT:
			if(stop_bit_done)
				if(fifo_rd_byte_num < fifo_rd_strb_cnt_sat_dec)
					ns = TX_DATA;
				else
					ns = (~flag.no_tx_interval) ? TX_IDLE : fifo_rd_en_pre ? TX_DATA : TX_IDLE;
			else
				ns = TX_STOP_BIT;

		default: ns = TX_IDLE;
	endcase
end

always@(posedge clk, posedge rst) begin
	if(rst)
		tx_cnt <= 'd0;
	else if(cs == TX_DATA)
		tx_cnt <=  (r1_tx_driv_flag & tx_driv_flag_sft) ? (tx_cnt + 1'd1) : tx_cnt;
	else
		tx_cnt <= 'd0;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		tx_stop_bit_cnt <= 'd0;
	else if(cs == STOP_BIT)
		tx_stop_bit_cnt <= r1_tx_driv_flag ? (tx_stop_bit_cnt + 1'd1) : tx_stop_bit_cnt;
	else
		tx_stop_bit_cnt <= 'd0;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		stop_bit_done <= 'd0;
	else
		stop_bit_done <= (tx_stop_bit_cnt == (para_stop_bit + 1)) & r1_tx_driv_flag;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		tff_rd_byte_num <= 'd0;
	else if(tff_rd_byte_num >= tff_rd_strb_cnt)
		tff_rd_byte_num <= 'd0;
	else if((cs == STOP_BIT ) & stop_bit_done )
		tff_rd_byte_num <= tff_rd_byte_num + 1'd1;
	else
		tff_rd_byte_num <= tff_rd_byte_num;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		p_chk_data <= 'd0;
	else if(para_parity_chk != P_CHK_NONE)
		p_chk_data <= (cs == TX_DATA) ? tff_dout_post[(tff_rd_byte_num*8)+:8] : p_chk_data;
	else
		p_chk_data <= 'd0;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		r1_UART_TX <= 1'd1;
	else if(cs == TX_DATA)
		case(tx_cnt)
			0:	r1_UART_TX <= 1'd0;
			1:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 0];
			2:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 1];
			3:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 2];
			4:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 3];
			5:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 4];
			6:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 5];
			7:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 6];
			8:	r1_UART_TX <= tff_dout_post[(tff_rd_byte_num*8) + 7];
		default:r1_UART_TX <= 1'd1;
	endcase
	else if(cs == PARITY_CHK)
		r1_UART_TX <=   (para_parity_chk == P_CHK_ODD  ) ? (^p_chk_data)
					:(para_parity_chk == P_CHK_EVEN ) ? (~^p_chk_data)
					:(para_parity_chk == P_CHK_MARK ) ? 1'd1
					:(para_parity_chk == P_CHK_SPACE) ? 1'd0 : 1'd1;
	else if(cs == STOP_BIT)
		r1_UART_TX <= 1'd1;
	else
		r1_UART_TX <= r1_UART_TX;
end

assign strb_cnt = w_hs ? (strb_cnt_latch +
wstrb[7 ] + wstrb[6 ] + wstrb[5 ] + wstrb[4 ] +
wstrb[3 ] + wstrb[2 ] + wstrb[1 ] + wstrb[0 ]) : strb_cnt_latch;

always@(posedge clk, posedge rst) begin
	if(rst)
		strb_cnt_latch <= 'd0;
	else if(strb_cnt >= 8)
		strb_cnt_latch <= 'd0;
	else
		strb_cnt_latch <= strb_cnt;
end

// assign strb_fix_data = (wdata & wstrb) | (strb_fix_data_latch & (~wstrb));

generate for (i = 0; i < 8; i = i + 1) begin : GF_STRB

	assign strb_fix_data[8*i+:8] = w_hs ? (({8{wstrb[i]}} & wdata[8*i+:8]) | ({8{(~wstrb[i])}} & strb_fix_data_latch[8*i+:8])) : strb_fix_data_latch[8*i+:8];

	if(i == 0)
		assign tff_rd_strb_right_part_zero_cnt[i] = (!tff_rd_en_pre) ? 4'd0 : {3'd0, (!tff_dout[64+i])};
	else
		assign tff_rd_strb_right_part_zero_cnt[i] = (!tff_rd_en_pre) ? 4'd0 : (tff_rd_strb_right_part_zero_cnt[i-1] != i) ? tff_rd_strb_right_part_zero_cnt[i-1] : (tff_rd_strb_right_part_zero_cnt[i-1] + (!tff_dout[64+i]));

	if(i == 0)
		assign wstrb_right_part_zero_cnt[i] = (!w_hs) ? 4'd0 : {3'd0, (!wstrb[i])};
	else
		assign wstrb_right_part_zero_cnt[i] = (!w_hs) ? 4'd0 : (wstrb_right_part_zero_cnt[i-1] != i) ? wstrb_right_part_zero_cnt[i-1] : (wstrb_right_part_zero_cnt[i-1] + (!wstrb[i]));

	assign eff_wdata[8*i+:8] = w_hs ? ({8{eff_wstrb[i]}} & wdata[8*i+:8]) : 8'd0;

end endgenerate

always@(posedge clk, posedge rst) begin
	if(rst)
		tff_rd_strb_cnt <= 'd0;
	else if(tff_rd_en_pre)
		tff_rd_strb_cnt <= (tff_dout[71] + tff_dout[70] + tff_dout[69] + tff_dout[68] + tff_dout[67] + tff_dout[66] + tff_dout[65] + tff_dout[64]);
	else
		tff_rd_strb_cnt <= tff_rd_strb_cnt;
end

always@(posedge clk, posedge rst) begin
	if(rst)
		strb_fix_data_latch <= 'd0;
	else
		strb_fix_data_latch <= strb_fix_data;
end

assign UART_TX = r1_UART_TX;

always@(posedge clk, posedge rst) begin
	if(rst)
		axi_wr_cnt <= 'd0;
	else if(w_hs)
		if((axi_wr_cnt + wstrb_cnt) >= LR_AXI_WR_MAX_LEN)
			axi_wr_cnt <= 'd0;
		else
			axi_wr_cnt <= axi_wr_cnt + wstrb_cnt;
	else
		axi_wr_cnt <= axi_wr_cnt;
end


always@(*) begin
	if(w_hs & (axi_wr_cnt >= LR_AXI_WR_EFF_LEN))
		eff_wstrb = 'd0;
	else if(w_hs & ((axi_wr_cnt + wstrb_cnt) >= LR_AXI_WR_EFF_LEN) & (axi_wr_cnt < LR_AXI_WR_EFF_LEN))
		eff_wstrb = wstrb & (8'hff >> `EFF_STRB_SFT);
	else
		eff_wstrb = wstrb;
end

// ================================================================================
//                               undef
// ================================================================================
`ifdef D
`undef D
`endif
`ifdef DEBUG_axi_uart_tx
`undef DEBUG_axi_uart_tx
`endif
endmodule
