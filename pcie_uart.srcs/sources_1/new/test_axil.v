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
module test_axil #(
	parameter LITE_BASE_ADDR = 32'h0000_0000
)(

    input                   clk								,
    input                   rst_n								,
	//				
    input       [31:0]      lite_awaddr						,
    input       [2:0]       lite_awprot						,
    output                  lite_awready					,
    input                   lite_awvalid					,

    input       [31:0]      lite_wdata						,
    output                  lite_wready						,
    input       [3:0]       lite_wstrb						,
    input                   lite_wvalid						,


    input                   lite_bready						,
    output      [1:0]       lite_bresp 						,
    output                  lite_bvalid						,

    input       [31:0]      lite_araddr 					,
    input       [2:0]       lite_arprot 					,
    output                  lite_arready					,
    input                   lite_arvalid					,

    output      [31:0]      lite_rdata 						,
    input                   lite_rready						,
    output      [1:0]       lite_rresp 						,
    output                  lite_rvalid						  //	
);
wire rst = ~rst_n;

//_________________________________________________________________________________________________________ 00-0f
localparam [31:0]	LOG_VERSION			= 32'h0000_0000;/* 0x00     --logic version */
localparam [31:0]	LOG_SUB_VERSION		= 32'h0000_0001;/* 0x04     --logic subversion */
localparam [31:0]	LITE_ONLINE			= 32'h0000_0002;/* 0x08     --5a5abcbc */
localparam [31:0]	INTERUPT_CLEAR   	= 32'h0000_0003;/* 0x0c     --host set it to 1, fpga clear */
localparam [31:0]	HOST_READ_DONE   	= 32'h0000_0004;/* 0x10     --host set it to 1, fpga clear */
localparam [31:0]	FPGA_RD_REQ_CHL  	= 32'h0000_0005;/* 0x14		--fpga set read channel num */
localparam [31:0]	INRPT_CLR_MODE		= 32'h0000_0006;/* 0x18		--1: use reg 0x00; 0: use ack pin */
localparam [31:0]	XDMA_TIMEOUT		= 32'h0000_0007;/* 0x1c		--31:16 interrpt clr timeout; 15:0 rdone timeout*/
localparam [31:0]	INTERRUPT_EN		= 32'h0000_0008;/* 0x20		--                                                                                           */
localparam [31:0]	AXI_RD_LEN			= 32'h0000_0009;/* 0x24		--                                                                                           */
localparam [31:0]	AXI_WR_MAX_LEN		= 32'h0000_000a;/* 0x28		--                                                                                           *//*
localparam [31:0]						= 32'h0000_000b;/* 0x2c		--                                                                                           *//*
localparam [31:0]						= 32'h0000_000c;/* 0x30		--                                                                                           *//*
localparam [31:0]						= 32'h0000_000d;/* 0x34     --                                                                                           *//*
localparam [31:0]				     	= 32'h0000_000e;/* 0x38     --                                                                                           *//*
localparam [31:0]						= 32'h0000_000f;/* 0x3c		--                                                                                           */

reg  [31:0] bar_reg     [1023:0];
reg  [31:0] w_addr;
reg  [31:0] r_addr;
reg			r1_ar_hs;

// ____________________________________________________w addr
reg  		awready;
wire [31:0] awaddr  = lite_awaddr      ;
wire [2:0] 	awprot  = lite_awprot      ;
wire 		awvalid = lite_awvalid     ;
wire 		aw_hs   = awvalid & awready;

assign lite_awready = awready;
// ____________________________________________________w data
reg  		wready;
wire [31:0] wdata 	= lite_wdata     ;
wire [3:0]  wstrb 	= lite_wstrb     ;
wire 		wvalid 	= lite_wvalid    ;
wire 		w_hs   	= wvalid & wready;

assign lite_wready = wready;
// ____________________________________________________w resp
reg [1:0] 	bresp ;
reg 		bvalid;
wire 		bready 	= lite_bready    ;
wire 		b_hs 	= bvalid & bready;

assign lite_bresp  = bresp ;
assign lite_bvalid = bvalid;
// ____________________________________________________r addr
reg 		arready;
wire [31:0] araddr 	= lite_araddr 	   ;
wire [2:0] 	arprot 	= lite_arprot 	   ;
wire 		arvalid = lite_arvalid 	   ;
wire 		ar_hs 	= arvalid & arready;

assign lite_arready = arready;
// ____________________________________________________r data
reg [31:0]	rdata ;
reg [1:0] 	rresp ;
reg 		rvalid;
wire 		rready	= lite_rready    ;
wire 		r_hs 	= rvalid & rready;

assign lite_rdata  = rdata ;
assign lite_rresp  = rresp ;
assign lite_rvalid = rvalid;

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
	if(rst) begin // initial
		bar_reg[INTERUPT_CLEAR               	] <= 0;
		bar_reg[HOST_READ_DONE               	] <= 0;
		bar_reg[INRPT_CLR_MODE               	] <= 1;
		bar_reg[INTERRUPT_EN					] <= 0;
		bar_reg[AXI_RD_LEN						] <= 1;
		bar_reg[AXI_WR_MAX_LEN					] <= 1;		
	end
	else if(w_hs) case(w_addr)
/*		LOG_VERSION                  	:	`EHOST_RONLY
		LOG_SUB_VERSION              	:	`EHOST_RONLY
		LITE_ONLINE                  	:	`EHOST_RONLY
		INTERUPT_CLEAR               	:if((bar_reg[w_addr] == 0) & (wdata == 1))	`PARA_IEGAL
		HOST_READ_DONE               	:if((bar_reg[w_addr] == 0) & (wdata == 1)) 	`PARA_IEGAL
		FPGA_RD_REQ_CHL              	:	`EHOST_RONLY
		INRPT_CLR_MODE               	:if((bar_reg[w_addr] == 0) & (wdata == 1))	`PARA_IEGAL
		XDMA_TIMEOUT                 	:	`EHOST_RONLY
		INTERRUPT_EN					:if(wdata <= 1) 							`PARA_IEGAL
		AXI_RD_LEN						:if((wdata >= 1) & (wdata <= 8192))			`PARA_IEGAL*/
			
		
		default: begin 
			bar_reg[w_addr] <= wdata;
	//		bar_reg[LITE_STA_ERR_ADDR] <= {32{1'd1}};
		end
	endcase
	else begin
		bar_reg[LITE_ONLINE			] <= 32'h5a5a_bcbc;
	end	
end

endmodule
