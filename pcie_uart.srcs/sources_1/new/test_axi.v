`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Xuqinjun
// 
// Create Date: 2024/07/22
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: axi-full to serial signal
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define DEBUG_test_axi
module test_axi(
	input               clk                 		,
	input               rst_n                 		,

	input   [3 : 0]                 s_axi_awid                          ,
	input   [63 : 0]                s_axi_awaddr                        ,
	input   [7 : 0]                 s_axi_awlen                         ,
	input   [2 : 0]                 s_axi_awsize                        ,
	input   [1 : 0]                 s_axi_awburst                       ,
	input   [2 : 0]                 s_axi_awprot                        ,
	input                           s_axi_awvalid                       ,
	input                           s_axi_awlock                        ,
	input   [3 : 0]                 s_axi_awcache                       ,
	output                          s_axi_awready                       ,

	input   [63 : 0]				s_axi_wdata                         ,
	input   [7 : 0]                	s_axi_wstrb                         ,
	input                           s_axi_wlast                         ,
	input                           s_axi_wvalid                        ,
	output                          s_axi_wready                        ,

	output  [3 : 0]                 s_axi_bid                           ,
	output  [1 : 0]                 s_axi_bresp                         ,
	output                          s_axi_bvalid                        ,
	input                           s_axi_bready                          //
);

`define D `ifdef DEBUG_test_axi (*mark_debug = "true"*)`else `endif 

wire rst = ~rst_n;

// _________________________________________________________________________ full write addr
`D	wire [3 : 0] 		awid    = s_axi_awid   ;
`D	wire [63 : 0]		awaddr  = s_axi_awaddr ;
`D	wire [7 : 0] 		awlen   = s_axi_awlen  ;
`D	wire [2 : 0] 		awsize  = s_axi_awsize ;
`D	wire [1 : 0] 		awburst = s_axi_awburst;
`D	wire [2 : 0] 		awprot  = s_axi_awprot ;
`D	wire         		awvalid = s_axi_awvalid;
`D	wire         		awlock  = s_axi_awlock ;
`D	wire [3 : 0] 		awcache = s_axi_awcache;
`D	reg  				awready;
`D	wire 				aw_hs = awready & awvalid;

assign s_axi_awready = awready;

// _________________________________________________________________________ full write data
`D	wire				fix_wlast = s_axi_wlast & s_axi_wvalid;

`D	wire [63 : 0]	wdata  = s_axi_wdata 	;
`D	wire [7 : 0] 	wstrb  = s_axi_wstrb 	;
`D	wire 			wlast  = fix_wlast 		; // fix smart connect IP's wlast
`D	wire 			wvalid = s_axi_wvalid	;
`D	reg  			wready					;
`D	wire 			w_hs   = wvalid & wready;

assign s_axi_wready = wready;
// _________________________________________________________________________ full write resp
`D	reg  [3:0] 			bid   					;
`D	reg  [1:0] 			bresp 					;
`D	reg        			bvalid					;
`D	wire       			bready = s_axi_bready	;
`D	wire       			b_hs   = bvalid & bready;

assign s_axi_bid    = bid   ;
assign s_axi_bresp  = bresp ;
assign s_axi_bvalid = bvalid;

always@ (posedge clk, posedge rst) begin
    if(rst)
        bvalid <= 1'd0;
    else if(b_hs)
        bvalid <= 1'd0;
    else if(wlast & w_hs)
        bvalid <= 1'd1;
    else
        bvalid <= bvalid;
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

`ifdef D
`undef D
`endif

`ifdef DEBUG_test_axi
`undef DEBUG_test_axi
`endif

endmodule
