`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
//
// File Name           : axi_uart_tx
// Description         :
// Author              : xqj
// Date                : 2026-03-17 11:47:55
// Version             : 1.0
// Modification History:
// Date                   Author    Version    Description
// 2026-03-17 11:47:55    xqj       1.0        Initial Creation
//
//////////////////////////////////////////////////////////////////////////
`include "_svh.svh"
`define DEBUG_axi_uart_tx
module axi_uart_tx #(
	parameter bit P_PARA_VALIDITY_CHECK = P_DISABLE
)(
	input	logic					clk					,
	input	logic					rst					,

	output	logic					uart_tx				,

	input	axi_uart_tx_para_t		tx_para				,
	input	axi_uart_tx_ctrl_t		tx_ctrl				,
	output	axi_uart_tx_status_t	tx_status			,

	axi_full_if.slave_write			sw_axi_full_if
);

`define D `ifdef DEBUG_axi_uart_tx (*mark_debug = "true"*)(*keep = "true"*)`else `endif
localparam P_FRAC_THRD = 24'd10_000_000;

// ================================================================================
//                               logic definition
// ================================================================================
logic			awready						;
logic			wready						;
logic	[3:0]	bid							;
logic	[1:0]	bresp						;
logic			bvalid						;
logic			aw_hs						;
logic			w_hs						;
logic			b_hs						;
logic			act_wlast					;
logic			r1_w_hs						;

//
logic			uart_tx_pre					;
logic	[7:0]	parity_check_data			;
logic	[3:0]	tx_cnt						;
logic	[3:0]	tx_stop_bit_cnt				;
logic			r1_tx_driv_flag				;
logic			tx_driv_flag_sft			;
logic			stop_bit_done				;
logic	[3:0]	fifo_rd_strb_cnt			;
logic	[3:0]	fifo_rd_strb_cnt_sat_dec	;
logic	[3:0]	fifo_rd_strb_trailing_zeros	;
logic	[15:0]	axi_wr_cnt					;
//
logic	[3:0]	wstrb_cnt					;
logic	[3:0]	r1_wstrb_cnt				;
logic			tx_driv_flag				;
logic	[31:0]	phase_sum					;
logic	[31:0]	r1_phase_sum				;
logic	[23:0]	frac_part					;
logic			frac_carry_bit				;
//
logic	[7:0]	eff_wstrb					;
logic	[15:0]	eff_wstrb_sft				;
logic	[63:0]	eff_wdata					;
logic	[3:0]	wstrb_trailing_zeros		;
//
logic			fifo_rd_en_pre				;
logic	[71:0]	fifo_dout_post				;
logic	[3:0]	fifo_rd_byte_num			;
//
logic	[15:0]	act_axi_wr_eff_len			;
logic	[15:0]	act_axi_wr_max_len			;

logic	[63:0]	right_aligned_wdata			;
logic	[127:0]	slid_wind					;
logic	[4:0]	slid_wind_byte_num			;
logic	[3:0]	frame_header_byte_cnt		;
logic	[3:0]	payload_len_byte_cnt		;
logic	[3:0]	interval_byte_cnt			;
logic	[63:0]	comb_data					;
logic	[4:0]	_8_minus_slid_wind_byte_num	;

// ================================================================================
//                               struct and enum definition
// ================================================================================
typedef enum logic [3:0]{
	TX_IDLE				,
	TX_DATA				,
	TX_STOP_BIT			,
	TX_PARITY_CHECK
}tx_st_e;

typedef enum logic [3:0]{
	FRAME_IDLE			,
	FRAME_CFG			,
	FRAME_PAYLOAD		,
	FORMAT_ERROR
}priv_frame_e;

typedef struct{
	logic	no_tx_interval;
	logic	ready_to_cfg;

	logic	got_frame_header;
	logic	got_payload_len;
	logic	got_interval_val;
	logic	got_interval_unit;
	logic	got_whole_payload;

	logic	slid_wind_overflow;
}flag_t;

typedef struct{
	logic	[31:0]	frame_header;
	logic	[15:0]	payload_len;
	logic	[15:0]	interval_val;
	interval_unit_e	interval_unit;
}priv_frame_hdr_t;

typedef	struct{
	logic	[71:0]	din			;
	logic			wr_en		;
	logic			rd_en		;
	logic	[71:0]	dout		;
	logic			full		;
	logic			empty		;
	logic	[10:0]	data_count	;
}tx_fifo_t;

tx_st_e				cs;
tx_st_e				ns;
priv_frame_e		frame_cs;
priv_frame_e		frame_ns;
tx_fifo_t			tx_fifo;
axi_uart_tx_para_t	new_tx_para;
axi_uart_tx_para_t	cur_tx_para;
flag_t				flag = '{default:'0};
priv_frame_hdr_t	new_frame_hdr = '{default:'0};
priv_frame_hdr_t	cur_frame_hdr = '{default:'0};

// ================================================================================
//                               combinational assignment
// ================================================================================
// interface
assign	sw_axi_full_if.awready		= awready;
assign	sw_axi_full_if.wready		= wready;
assign	sw_axi_full_if.bid			= bid;
assign	sw_axi_full_if.bresp		= bresp;
assign	sw_axi_full_if.bvalid		= bvalid;
// axi handshake
assign	aw_hs						= sw_axi_full_if.awready & sw_axi_full_if.awvalid;
assign	w_hs						= sw_axi_full_if.wvalid & sw_axi_full_if.wready;
assign	b_hs						= sw_axi_full_if.bvalid & sw_axi_full_if.bready;
assign	act_wlast					= sw_axi_full_if.wlast & sw_axi_full_if.wvalid;
// function
assign	wstrb_trailing_zeros		= 4'(get_trailing_zeros(128'(sw_axi_full_if.wstrb), 8));
assign	fifo_rd_strb_cnt_sat_dec	= 4'(sat_dec(32'(fifo_rd_strb_cnt)));
assign	fifo_rd_strb_trailing_zeros	= 4'(get_trailing_zeros(128'(tx_fifo.dout[71:64]), 8));
assign	frac_carry_bit				= (frac_part >= P_FRAC_THRD);
//
assign	wstrb_cnt					= 4'($countones(sw_axi_full_if.wstrb));
assign	uart_tx						= uart_tx_pre;
assign	flag.ready_to_cfg			= ((cs == TX_STOP_BIT) & (ns != TX_STOP_BIT))
									| ((cs == TX_IDLE) & (ns != TX_IDLE));

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		flag.no_tx_interval	<= 'd0;
	else if(flag.ready_to_cfg)
		flag.no_tx_interval <= 'd1;
	else
		flag.no_tx_interval <= flag.no_tx_interval;
end

// ================================================================================
//                               delay
// ================================================================================
always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		r1_phase_sum	<= 'd0;
		r1_tx_driv_flag	<= 'd0;
		r1_wstrb_cnt	<= 'd0;
		r1_w_hs			<= 'd0;
	end
	else begin
		r1_phase_sum	<= phase_sum;
		r1_tx_driv_flag	<= tx_driv_flag;
		r1_wstrb_cnt	<= wstrb_cnt;
		r1_w_hs			<= w_hs;
	end
end

// ================================================================================
//                               parameter
// ================================================================================
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

// ================================================================================
//                               axi
// ================================================================================
always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		act_axi_wr_max_len <= 'd0;
		act_axi_wr_eff_len <= 'd0;
	end
	else begin
		act_axi_wr_max_len <= tx_ctrl.axi_wr_max_len;
		act_axi_wr_eff_len <= (tx_ctrl.axi_wr_eff_len > tx_ctrl.axi_wr_max_len) ? tx_ctrl.axi_wr_max_len : tx_ctrl.axi_wr_eff_len;
	end
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		bvalid <= 1'd0;
	else if(act_wlast & w_hs & (~bvalid))
		bvalid <= 1'd1;
	else if(b_hs)
		bvalid <= 1'd0;
	else
		bvalid <= bvalid;
end

always_ff @(posedge clk) begin
	bid   <= 'd0;
	bresp <= 'd0;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		awready <= 1'd1;
	else if (act_wlast)
		awready <= 1'd1;
	else if (aw_hs)
		awready <= 1'd0;
	else
		awready <= awready;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		wready <= 'd0;
	else if(aw_hs)
		wready <= 'd1;
	else if(act_wlast)
		wready <= 'd0;
	else
		wready <= wready;
end

// ================================================================================
//                               phase accmulator
// ================================================================================
always_ff @(posedge clk, posedge rst) begin
	if(rst)
		phase_sum <= 'd0;
	else
		phase_sum <= phase_sum + cur_tx_para.baud_rate_phase_acc_step_len + frac_carry_bit;
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

// ================================================================================
//                               fifo
// ================================================================================
uart_ff_8k TFF_8K (
	.clk		(	clk					),
	.din		(	tx_fifo.din       	),
	.wr_en		(	tx_fifo.wr_en     	),
	.rd_en		(	tx_fifo.rd_en     	),
	.dout		(	tx_fifo.dout      	),
	.full		(	tx_fifo.full      	),
	.empty		(	tx_fifo.empty     	),
	.data_count	(	tx_fifo.data_count	)
);

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_fifo.wr_en <= 'd0;
	else
		tx_fifo.wr_en <= (!tx_fifo.full) & w_hs & (eff_wstrb != 0);//fix_w_hs;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		fifo_dout_post <= tx_fifo.dout;
	else if(fifo_rd_en_pre)
		fifo_dout_post <= {(tx_fifo.dout[71:64] >> fifo_rd_strb_trailing_zeros), (tx_fifo.dout[63:0] >> (fifo_rd_strb_trailing_zeros * 8))};
	else
		fifo_dout_post <= fifo_dout_post;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_fifo.din <= 'd0;
	else
		tx_fifo.din <= {eff_wstrb, eff_wdata};//strb_fix_data;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_status.fifo_usedw <= 'd0;
	else
		tx_status.fifo_usedw <= 16'(tx_fifo.data_count);
end

assign tx_fifo.rd_en = fifo_rd_en_pre;

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		fifo_rd_en_pre <= 'd0;
	else if(flag.no_tx_interval)
		if(cs == TX_IDLE)
			fifo_rd_en_pre <= (!tx_fifo.empty) & (fifo_rd_byte_num == 4'd0) & r1_tx_driv_flag & tx_driv_flag_sft;
		else if(cs == TX_STOP_BIT)
			fifo_rd_en_pre <= stop_bit_done & (!tx_fifo.empty) & (fifo_rd_byte_num == fifo_rd_strb_cnt_sat_dec);
		else
			fifo_rd_en_pre <= 'd0;
	else
		fifo_rd_en_pre <= (!tx_fifo.empty) & (cs == TX_IDLE) & (fifo_rd_byte_num == 4'd0) & r1_tx_driv_flag & tx_driv_flag_sft;
end

// ================================================================================
//                               priv frame FSM
// ================================================================================
always_ff @(posedge clk, posedge rst) begin
	if(rst)
		frame_cs <= FRAME_IDLE;
	else
		frame_cs <= frame_ns;
end

always_comb begin
	case(frame_cs)
		FRAME_IDLE:
			if(w_hs)
				frame_ns = FRAME_CFG;
			else
				frame_ns = FRAME_IDLE;

		FRAME_CFG:
			if(flag.got_frame_header
			& flag.got_payload_len
			& flag.got_interval_val
			& flag.got_interval_unit)
				frame_ns = FRAME_PAYLOAD;
			else
				frame_ns = FRAME_CFG;

		FRAME_PAYLOAD:
			if(flag.got_whole_payload)
				frame_ns = FRAME_IDLE;
			else
				frame_ns = FRAME_PAYLOAD;

		default:
			frame_ns = FRAME_IDLE;
	endcase
end

// ================================================================================
//                               uart FSM
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

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_cnt <= 'd0;
	else if(cs == TX_DATA)
		tx_cnt <=  (r1_tx_driv_flag & tx_driv_flag_sft) ? (tx_cnt + 1'd1) : tx_cnt;
	else
		tx_cnt <= 'd0;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		tx_stop_bit_cnt <= 'd0;
	else if(cs == TX_STOP_BIT)
		tx_stop_bit_cnt <= r1_tx_driv_flag ? (tx_stop_bit_cnt + 1'd1) : tx_stop_bit_cnt;
	else
		tx_stop_bit_cnt <= 'd0;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		stop_bit_done <= 'd0;
	else
		stop_bit_done <= (tx_stop_bit_cnt == (cur_tx_para.stop_bit_width + 1'd1)) & r1_tx_driv_flag;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		fifo_rd_byte_num <= 'd0;
	else if(fifo_rd_byte_num >= fifo_rd_strb_cnt)
		fifo_rd_byte_num <= 'd0;
	else if((cs == TX_STOP_BIT) & stop_bit_done)
		fifo_rd_byte_num <= fifo_rd_byte_num + 1'd1;
	else
		fifo_rd_byte_num <= fifo_rd_byte_num;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		parity_check_data <= 'd0;
	else if(cur_tx_para.parity_check != E_PARITY_CHECK_NONE)
		parity_check_data <= (cs == TX_DATA) ? fifo_dout_post[(fifo_rd_byte_num*8)+:8] : parity_check_data;
	else
		parity_check_data <= 'd0;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		uart_tx_pre <= 1'd1;
	else if(cs == TX_DATA)
		case(tx_cnt)
			4'd0: uart_tx_pre <= 1'd0;
			4'd1: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 0];
			4'd2: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 1];
			4'd3: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 2];
			4'd4: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 3];
			4'd5: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 4];
			4'd6: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 5];
			4'd7: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 6];
			4'd8: uart_tx_pre <= fifo_dout_post[(fifo_rd_byte_num*8) + 7];
			default:uart_tx_pre <= 1'd1;
	endcase
	else if(cs == TX_PARITY_CHECK)
		uart_tx_pre <=
					 (cur_tx_para.parity_check == E_PARITY_CHECK_ODD  ) ? (^parity_check_data)
					:(cur_tx_para.parity_check == E_PARITY_CHECK_EVEN ) ? (~^parity_check_data)
					:(cur_tx_para.parity_check == E_PARITY_CHECK_MARK ) ? 1'd1
					:(cur_tx_para.parity_check == E_PARITY_CHECK_SPACE) ? 1'd0 : 1'd1;
	else if(cs == TX_STOP_BIT)
		uart_tx_pre <= 1'd1;
	else
		uart_tx_pre <= uart_tx_pre;
end

for(genvar i = 0; i < 8; i = i + 1) begin : GF_STRB
	assign eff_wdata[8*i+:8] = (w_hs & eff_wstrb[i]) ? sw_axi_full_if.wdata[8*i+:8] : '0;
end: GF_STRB

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		fifo_rd_strb_cnt <= 'd0;
	else if(fifo_rd_en_pre)
		fifo_rd_strb_cnt <= 4'($countones(tx_fifo.dout[71:64]));
	else
		fifo_rd_strb_cnt <= fifo_rd_strb_cnt;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		axi_wr_cnt <= 'd0;
	else if(w_hs)
		if((axi_wr_cnt + wstrb_cnt) >= act_axi_wr_max_len)
			axi_wr_cnt <= 'd0;
		else
			axi_wr_cnt <= axi_wr_cnt + wstrb_cnt;
	else
		axi_wr_cnt <= axi_wr_cnt;
end

always_comb begin
	if(w_hs & (axi_wr_cnt >= act_axi_wr_eff_len))
		eff_wstrb = 'd0;
	else if(w_hs & ((axi_wr_cnt + wstrb_cnt) >= act_axi_wr_eff_len) & (axi_wr_cnt < act_axi_wr_eff_len))
		eff_wstrb = sw_axi_full_if.wstrb & (8'hff >> eff_wstrb_sft);
	else
		eff_wstrb = sw_axi_full_if.wstrb;
end

always_comb begin
	eff_wstrb_sft = (8 - ((act_axi_wr_eff_len - axi_wr_cnt) + wstrb_trailing_zeros));
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		right_aligned_wdata <= 'd0;
	else if(w_hs)
		right_aligned_wdata <= eff_wdata >> (wstrb_trailing_zeros * 8);
	else
		right_aligned_wdata <= right_aligned_wdata;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		frame_header_byte_cnt	<= 'd0;
		payload_len_byte_cnt	<= 'd0;
		interval_val_byte_cnt	<= 'd0;
		interval_unit_byte_cnt	<= 'd0;
	end
	else if(frame_ns == FRAME_CFG) begin
		frame_header_byte_cnt	<= (~flag.got_frame_header) ? (frame_header_byte_cnt + wstrb_cnt) : '0;
		payload_len_byte_cnt	<= (~flag.got_payload_len) ? (payload_len_byte_cnt + wstrb_cnt) : '0;
		interval_val_byte_cnt	<= (~flag.got_interval_val) ? (interval_val_byte_cnt + wstrb_cnt) : '0;
		interval_unit_byte_cnt	<= (~flag.got_interval_unit) ? (interval_unit_byte_cnt + wstrb_cnt) : '0;;
	end
	else begin
		frame_header_byte_cnt	<= frame_header_byte_cnt;
		payload_len_byte_cnt	<= payload_len_byte_cnt;
		interval_val_byte_cnt	<= interval_val_byte_cnt;
		interval_unit_byte_cnt	<= interval_unit_byte_cnt;
	end
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		new_frame_hdr.frame_header <= '0;
	else if((frame_cs == FRAME_CFG) & (~flag.got_frame_header))
		if(frame_header_byte_cnt >= 4)
			new_frame_hdr.frame_header <= right_aligned_wdata[31:0];
		else
			new_frame_hdr.frame_header <= {right_aligned_wdata, new_frame_hdr.frame_header} >> (frame_header_byte_cnt * 8);
	else
		new_frame_hdr.frame_header <= 'd0;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		slid_wind_byte_num <= 'd0;
	else if(w_hs) begin
		if((slid_wind_byte_num + wstrb_cnt) > 8)
			slid_wind_byte_num <= slid_wind_byte_num + wstrb_cnt - 8;
		else
			slid_wind_byte_num <= slid_wind_byte_num + wstrb_cnt;
	end
	else
		slid_wind_byte_num <= slid_wind_byte_num;
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		_8_minus_slid_wind_byte_num
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		flag.slid_wind_overflow <= 'd0;
	else
		flag.slid_wind_overflow <= w_hs & ((slid_wind_byte_num + wstrb_cnt) > 8);
end

always_ff @(posedge clk, posedge rst) begin
	if(rst)
		slid_wind <= 'd0;
	else if(r1_w_hs) begin
		if(flag.slid_wind_overflow)
			slid_wind <= (right_aligned_wdata << ((8 - slid_wind_byte_num) * 8)) | (slid_wind >> 64);
		else
			slid_wind <= (right_aligned_wdata << ((8 - slid_wind_byte_num) * 8)) | slid_wind;
	end
	else
		slid_wind <= slid_wind;
end

// ================================================================================
//                               debug
// ================================================================================
/*
 */
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