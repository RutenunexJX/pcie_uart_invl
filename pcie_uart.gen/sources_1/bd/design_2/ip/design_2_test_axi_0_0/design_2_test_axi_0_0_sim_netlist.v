// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Apr 19 16:45:19 2026
// Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/bd/design_2/ip/design_2_test_axi_0_0/design_2_test_axi_0_0_sim_netlist.v
// Design      : design_2_test_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_test_axi_0_0,test_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "test_axi,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_2_test_axi_0_0
   (clk,
    rst_n,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_xdma_0_0_axi_aclk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) input [3:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [63:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLOCK" *) input s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *) output [3:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_2_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_bready;

  wire clk;
  wire rst_n;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* KEEP_HIERARCHY = "soft" *) 
  design_2_test_axi_0_0_test_axi inst
       (.clk(clk),
        .rst_n(rst_n),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "test_axi" *) (* keep_hierarchy = "soft" *) 
module design_2_test_axi_0_0_test_axi
   (clk,
    rst_n,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready);
  input clk;
  input rst_n;
  input [3:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;

  (* MARK_DEBUG *) wire aw_hs;
  (* MARK_DEBUG *) wire [63:0]awaddr;
  (* MARK_DEBUG *) wire [1:0]awburst;
  (* MARK_DEBUG *) wire [3:0]awcache;
  (* MARK_DEBUG *) wire [3:0]awid;
  (* MARK_DEBUG *) wire [7:0]awlen;
  (* MARK_DEBUG *) wire awlock;
  (* MARK_DEBUG *) wire [2:0]awprot;
  (* MARK_DEBUG *) wire awready;
  wire awready_i_1_n_0;
  (* MARK_DEBUG *) wire [2:0]awsize;
  (* MARK_DEBUG *) wire awvalid;
  (* MARK_DEBUG *) wire b_hs;
  (* MARK_DEBUG *) wire [3:0]bid;
  (* MARK_DEBUG *) wire bready;
  (* MARK_DEBUG *) wire [1:0]bresp;
  (* MARK_DEBUG *) wire bvalid;
  wire bvalid1_out;
  wire clk;
  (* MARK_DEBUG *) wire fix_wlast;
  wire rst;
  wire rst_n;
  wire s_axi_wlast;
  (* MARK_DEBUG *) wire w_hs;
  (* MARK_DEBUG *) wire [63:0]wdata;
  (* MARK_DEBUG *) wire wlast;
  (* MARK_DEBUG *) wire wready;
  wire wready_i_1_n_0;
  (* MARK_DEBUG *) wire [7:0]wstrb;
  (* MARK_DEBUG *) wire wvalid;

  assign awaddr = s_axi_awaddr[63:0];
  assign awburst = s_axi_awburst[1:0];
  assign awcache = s_axi_awcache[3:0];
  assign awid = s_axi_awid[3:0];
  assign awlen = s_axi_awlen[7:0];
  assign awlock = s_axi_awlock;
  assign awprot = s_axi_awprot[2:0];
  assign awsize = s_axi_awsize[2:0];
  assign awvalid = s_axi_awvalid;
  assign bready = s_axi_bready;
  assign s_axi_awready = awready;
  assign s_axi_bid[3:0] = bid;
  assign s_axi_bresp[1:0] = bresp;
  assign s_axi_bvalid = bvalid;
  assign s_axi_wready = wready;
  assign wdata = s_axi_wdata[63:0];
  assign wstrb = s_axi_wstrb[7:0];
  assign wvalid = s_axi_wvalid;
  LUT2 #(
    .INIT(4'h8)) 
    aw_hs_inferred_i_1
       (.I0(awready),
        .I1(awvalid),
        .O(aw_hs));
  LUT3 #(
    .INIT(8'hBA)) 
    awready_i_1
       (.I0(wlast),
        .I1(aw_hs),
        .I2(awready),
        .O(awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    awready_i_2
       (.I0(rst_n),
        .O(rst));
  (* KEEP = "yes" *) 
  FDPE awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(awready_i_1_n_0),
        .PRE(rst),
        .Q(awready));
  LUT2 #(
    .INIT(4'h8)) 
    b_hs_inferred_i_1
       (.I0(bvalid),
        .I1(bready),
        .O(b_hs));
  (* KEEP = "yes" *) 
  FDCE \bid_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b0),
        .Q(bid[0]));
  (* KEEP = "yes" *) 
  FDCE \bid_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b0),
        .Q(bid[1]));
  (* KEEP = "yes" *) 
  FDCE \bid_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b0),
        .Q(bid[2]));
  (* KEEP = "yes" *) 
  FDCE \bid_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b0),
        .Q(bid[3]));
  (* KEEP = "yes" *) 
  FDCE \bresp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b0),
        .Q(bresp[0]));
  (* KEEP = "yes" *) 
  FDCE \bresp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b0),
        .Q(bresp[1]));
  LUT4 #(
    .INIT(16'h00EA)) 
    bvalid_i_1
       (.I0(bvalid),
        .I1(wlast),
        .I2(w_hs),
        .I3(b_hs),
        .O(bvalid1_out));
  (* KEEP = "yes" *) 
  FDCE bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(bvalid1_out),
        .Q(bvalid));
  LUT2 #(
    .INIT(4'h8)) 
    fix_wlast_inferred_i_1
       (.I0(s_axi_wlast),
        .I1(wvalid),
        .O(fix_wlast));
  LUT1 #(
    .INIT(2'h2)) 
    fix_wlast_inst
       (.I0(fix_wlast),
        .O(wlast));
  LUT2 #(
    .INIT(4'h8)) 
    w_hs_inferred_i_1
       (.I0(wvalid),
        .I1(wready),
        .O(w_hs));
  LUT3 #(
    .INIT(8'hBA)) 
    wready_i_1
       (.I0(aw_hs),
        .I1(wlast),
        .I2(wready),
        .O(wready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDCE wready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(wready_i_1_n_0),
        .Q(wready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
