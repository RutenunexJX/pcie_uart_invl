// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:bridge_top_v2:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_bridge_top_v2_0_0 (
  clk,
  rst,
  interupt_req,
  interupt_ack,
  LOGIC_VERSION,
  LOGIC_SUB_VERSION,
  s01_axi_awid,
  s01_axi_awaddr,
  s01_axi_awlen,
  s01_axi_awsize,
  s01_axi_awburst,
  s01_axi_awprot,
  s01_axi_awvalid,
  s01_axi_awlock,
  s01_axi_awcache,
  s01_axi_awready,
  s01_axi_wdata,
  s01_axi_wstrb,
  s01_axi_wlast,
  s01_axi_wvalid,
  s01_axi_wready,
  s01_axi_bid,
  s01_axi_bresp,
  s01_axi_bvalid,
  s01_axi_bready,
  s01_axi_arid,
  s01_axi_araddr,
  s01_axi_arlen,
  s01_axi_arsize,
  s01_axi_arburst,
  s01_axi_arprot,
  s01_axi_arvalid,
  s01_axi_arlock,
  s01_axi_arcache,
  s01_axi_arready,
  s01_axi_rid,
  s01_axi_rdata,
  s01_axi_rresp,
  s01_axi_rlast,
  s01_axi_rvalid,
  s01_axi_rready,
  s02_axi_awid,
  s02_axi_awaddr,
  s02_axi_awlen,
  s02_axi_awsize,
  s02_axi_awburst,
  s02_axi_awprot,
  s02_axi_awvalid,
  s02_axi_awlock,
  s02_axi_awcache,
  s02_axi_awready,
  s02_axi_wdata,
  s02_axi_wstrb,
  s02_axi_wlast,
  s02_axi_wvalid,
  s02_axi_wready,
  s02_axi_bid,
  s02_axi_bresp,
  s02_axi_bvalid,
  s02_axi_bready,
  s02_axi_arid,
  s02_axi_araddr,
  s02_axi_arlen,
  s02_axi_arsize,
  s02_axi_arburst,
  s02_axi_arprot,
  s02_axi_arvalid,
  s02_axi_arlock,
  s02_axi_arcache,
  s02_axi_arready,
  s02_axi_rid,
  s02_axi_rdata,
  s02_axi_rresp,
  s02_axi_rlast,
  s02_axi_rvalid,
  s02_axi_rready,
  s03_axi_awid,
  s03_axi_awaddr,
  s03_axi_awlen,
  s03_axi_awsize,
  s03_axi_awburst,
  s03_axi_awprot,
  s03_axi_awvalid,
  s03_axi_awlock,
  s03_axi_awcache,
  s03_axi_awready,
  s03_axi_wdata,
  s03_axi_wstrb,
  s03_axi_wlast,
  s03_axi_wvalid,
  s03_axi_wready,
  s03_axi_bid,
  s03_axi_bresp,
  s03_axi_bvalid,
  s03_axi_bready,
  s03_axi_arid,
  s03_axi_araddr,
  s03_axi_arlen,
  s03_axi_arsize,
  s03_axi_arburst,
  s03_axi_arprot,
  s03_axi_arvalid,
  s03_axi_arlock,
  s03_axi_arcache,
  s03_axi_arready,
  s03_axi_rid,
  s03_axi_rdata,
  s03_axi_rresp,
  s03_axi_rlast,
  s03_axi_rvalid,
  s03_axi_rready,
  s04_axi_awid,
  s04_axi_awaddr,
  s04_axi_awlen,
  s04_axi_awsize,
  s04_axi_awburst,
  s04_axi_awprot,
  s04_axi_awvalid,
  s04_axi_awlock,
  s04_axi_awcache,
  s04_axi_awready,
  s04_axi_wdata,
  s04_axi_wstrb,
  s04_axi_wlast,
  s04_axi_wvalid,
  s04_axi_wready,
  s04_axi_bid,
  s04_axi_bresp,
  s04_axi_bvalid,
  s04_axi_bready,
  s04_axi_arid,
  s04_axi_araddr,
  s04_axi_arlen,
  s04_axi_arsize,
  s04_axi_arburst,
  s04_axi_arprot,
  s04_axi_arvalid,
  s04_axi_arlock,
  s04_axi_arcache,
  s04_axi_arready,
  s04_axi_rid,
  s04_axi_rdata,
  s04_axi_rresp,
  s04_axi_rlast,
  s04_axi_rvalid,
  s04_axi_rready,
  s05_axi_awid,
  s05_axi_awaddr,
  s05_axi_awlen,
  s05_axi_awsize,
  s05_axi_awburst,
  s05_axi_awprot,
  s05_axi_awvalid,
  s05_axi_awlock,
  s05_axi_awcache,
  s05_axi_awready,
  s05_axi_wdata,
  s05_axi_wstrb,
  s05_axi_wlast,
  s05_axi_wvalid,
  s05_axi_wready,
  s05_axi_bid,
  s05_axi_bresp,
  s05_axi_bvalid,
  s05_axi_bready,
  s05_axi_arid,
  s05_axi_araddr,
  s05_axi_arlen,
  s05_axi_arsize,
  s05_axi_arburst,
  s05_axi_arprot,
  s05_axi_arvalid,
  s05_axi_arlock,
  s05_axi_arcache,
  s05_axi_arready,
  s05_axi_rid,
  s05_axi_rdata,
  s05_axi_rresp,
  s05_axi_rlast,
  s05_axi_rvalid,
  s05_axi_rready,
  s06_axi_awid,
  s06_axi_awaddr,
  s06_axi_awlen,
  s06_axi_awsize,
  s06_axi_awburst,
  s06_axi_awprot,
  s06_axi_awvalid,
  s06_axi_awlock,
  s06_axi_awcache,
  s06_axi_awready,
  s06_axi_wdata,
  s06_axi_wstrb,
  s06_axi_wlast,
  s06_axi_wvalid,
  s06_axi_wready,
  s06_axi_bid,
  s06_axi_bresp,
  s06_axi_bvalid,
  s06_axi_bready,
  s06_axi_arid,
  s06_axi_araddr,
  s06_axi_arlen,
  s06_axi_arsize,
  s06_axi_arburst,
  s06_axi_arprot,
  s06_axi_arvalid,
  s06_axi_arlock,
  s06_axi_arcache,
  s06_axi_arready,
  s06_axi_rid,
  s06_axi_rdata,
  s06_axi_rresp,
  s06_axi_rlast,
  s06_axi_rvalid,
  s06_axi_rready,
  s07_axi_awid,
  s07_axi_awaddr,
  s07_axi_awlen,
  s07_axi_awsize,
  s07_axi_awburst,
  s07_axi_awprot,
  s07_axi_awvalid,
  s07_axi_awlock,
  s07_axi_awcache,
  s07_axi_awready,
  s07_axi_wdata,
  s07_axi_wstrb,
  s07_axi_wlast,
  s07_axi_wvalid,
  s07_axi_wready,
  s07_axi_bid,
  s07_axi_bresp,
  s07_axi_bvalid,
  s07_axi_bready,
  s07_axi_arid,
  s07_axi_araddr,
  s07_axi_arlen,
  s07_axi_arsize,
  s07_axi_arburst,
  s07_axi_arprot,
  s07_axi_arvalid,
  s07_axi_arlock,
  s07_axi_arcache,
  s07_axi_arready,
  s07_axi_rid,
  s07_axi_rdata,
  s07_axi_rresp,
  s07_axi_rlast,
  s07_axi_rvalid,
  s07_axi_rready,
  s08_axi_awid,
  s08_axi_awaddr,
  s08_axi_awlen,
  s08_axi_awsize,
  s08_axi_awburst,
  s08_axi_awprot,
  s08_axi_awvalid,
  s08_axi_awlock,
  s08_axi_awcache,
  s08_axi_awready,
  s08_axi_wdata,
  s08_axi_wstrb,
  s08_axi_wlast,
  s08_axi_wvalid,
  s08_axi_wready,
  s08_axi_bid,
  s08_axi_bresp,
  s08_axi_bvalid,
  s08_axi_bready,
  s08_axi_arid,
  s08_axi_araddr,
  s08_axi_arlen,
  s08_axi_arsize,
  s08_axi_arburst,
  s08_axi_arprot,
  s08_axi_arvalid,
  s08_axi_arlock,
  s08_axi_arcache,
  s08_axi_arready,
  s08_axi_rid,
  s08_axi_rdata,
  s08_axi_rresp,
  s08_axi_rlast,
  s08_axi_rvalid,
  s08_axi_rready,
  s09_axi_awid,
  s09_axi_awaddr,
  s09_axi_awlen,
  s09_axi_awsize,
  s09_axi_awburst,
  s09_axi_awprot,
  s09_axi_awvalid,
  s09_axi_awlock,
  s09_axi_awcache,
  s09_axi_awready,
  s09_axi_wdata,
  s09_axi_wstrb,
  s09_axi_wlast,
  s09_axi_wvalid,
  s09_axi_wready,
  s09_axi_bid,
  s09_axi_bresp,
  s09_axi_bvalid,
  s09_axi_bready,
  s09_axi_arid,
  s09_axi_araddr,
  s09_axi_arlen,
  s09_axi_arsize,
  s09_axi_arburst,
  s09_axi_arprot,
  s09_axi_arvalid,
  s09_axi_arlock,
  s09_axi_arcache,
  s09_axi_arready,
  s09_axi_rid,
  s09_axi_rdata,
  s09_axi_rresp,
  s09_axi_rlast,
  s09_axi_rvalid,
  s09_axi_rready,
  s10_axi_awid,
  s10_axi_awaddr,
  s10_axi_awlen,
  s10_axi_awsize,
  s10_axi_awburst,
  s10_axi_awprot,
  s10_axi_awvalid,
  s10_axi_awlock,
  s10_axi_awcache,
  s10_axi_awready,
  s10_axi_wdata,
  s10_axi_wstrb,
  s10_axi_wlast,
  s10_axi_wvalid,
  s10_axi_wready,
  s10_axi_bid,
  s10_axi_bresp,
  s10_axi_bvalid,
  s10_axi_bready,
  s10_axi_arid,
  s10_axi_araddr,
  s10_axi_arlen,
  s10_axi_arsize,
  s10_axi_arburst,
  s10_axi_arprot,
  s10_axi_arvalid,
  s10_axi_arlock,
  s10_axi_arcache,
  s10_axi_arready,
  s10_axi_rid,
  s10_axi_rdata,
  s10_axi_rresp,
  s10_axi_rlast,
  s10_axi_rvalid,
  s10_axi_rready,
  s11_axi_awid,
  s11_axi_awaddr,
  s11_axi_awlen,
  s11_axi_awsize,
  s11_axi_awburst,
  s11_axi_awprot,
  s11_axi_awvalid,
  s11_axi_awlock,
  s11_axi_awcache,
  s11_axi_awready,
  s11_axi_wdata,
  s11_axi_wstrb,
  s11_axi_wlast,
  s11_axi_wvalid,
  s11_axi_wready,
  s11_axi_bid,
  s11_axi_bresp,
  s11_axi_bvalid,
  s11_axi_bready,
  s11_axi_arid,
  s11_axi_araddr,
  s11_axi_arlen,
  s11_axi_arsize,
  s11_axi_arburst,
  s11_axi_arprot,
  s11_axi_arvalid,
  s11_axi_arlock,
  s11_axi_arcache,
  s11_axi_arready,
  s11_axi_rid,
  s11_axi_rdata,
  s11_axi_rresp,
  s11_axi_rlast,
  s11_axi_rvalid,
  s11_axi_rready,
  s12_axi_awid,
  s12_axi_awaddr,
  s12_axi_awlen,
  s12_axi_awsize,
  s12_axi_awburst,
  s12_axi_awprot,
  s12_axi_awvalid,
  s12_axi_awlock,
  s12_axi_awcache,
  s12_axi_awready,
  s12_axi_wdata,
  s12_axi_wstrb,
  s12_axi_wlast,
  s12_axi_wvalid,
  s12_axi_wready,
  s12_axi_bid,
  s12_axi_bresp,
  s12_axi_bvalid,
  s12_axi_bready,
  s12_axi_arid,
  s12_axi_araddr,
  s12_axi_arlen,
  s12_axi_arsize,
  s12_axi_arburst,
  s12_axi_arprot,
  s12_axi_arvalid,
  s12_axi_arlock,
  s12_axi_arcache,
  s12_axi_arready,
  s12_axi_rid,
  s12_axi_rdata,
  s12_axi_rresp,
  s12_axi_rlast,
  s12_axi_rvalid,
  s12_axi_rready,
  s_axi_lite_awaddr,
  s_axi_lite_awprot,
  s_axi_lite_awvalid,
  s_axi_lite_awready,
  s_axi_lite_wdata,
  s_axi_lite_wstrb,
  s_axi_lite_wvalid,
  s_axi_lite_wready,
  s_axi_lite_bvalid,
  s_axi_lite_bresp,
  s_axi_lite_bready,
  s_axi_lite_araddr,
  s_axi_lite_arprot,
  s_axi_lite_arvalid,
  s_axi_lite_arready,
  s_axi_lite_rdata,
  s_axi_lite_rresp,
  s_axi_lite_rvalid,
  s_axi_lite_rready,
  UART_RX,
  UART_TX
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s01_axi:s02_axi:s03_axi:s04_axi:s05_axi:s06_axi:s07_axi:s08_axi:s09_axi:s10_axi:s11_axi:s12_axi:s_axi_lite, ASSOCIATED_RESET rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
output wire interupt_req;
input wire interupt_ack;
input wire [31 : 0] LOGIC_VERSION;
input wire [31 : 0] LOGIC_SUB_VERSION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWID" *)
input wire [3 : 0] s01_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWADDR" *)
input wire [63 : 0] s01_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWLEN" *)
input wire [7 : 0] s01_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWSIZE" *)
input wire [2 : 0] s01_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWBURST" *)
input wire [1 : 0] s01_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWPROT" *)
input wire [2 : 0] s01_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWVALID" *)
input wire s01_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWLOCK" *)
input wire s01_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWCACHE" *)
input wire [3 : 0] s01_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWREADY" *)
output wire s01_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WDATA" *)
input wire [63 : 0] s01_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WSTRB" *)
input wire [7 : 0] s01_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WLAST" *)
input wire s01_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WVALID" *)
input wire s01_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WREADY" *)
output wire s01_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BID" *)
output wire [3 : 0] s01_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BRESP" *)
output wire [1 : 0] s01_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BVALID" *)
output wire s01_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BREADY" *)
input wire s01_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARID" *)
input wire [3 : 0] s01_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARADDR" *)
input wire [63 : 0] s01_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARLEN" *)
input wire [7 : 0] s01_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARSIZE" *)
input wire [2 : 0] s01_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARBURST" *)
input wire [1 : 0] s01_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARPROT" *)
input wire [2 : 0] s01_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARVALID" *)
input wire s01_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARLOCK" *)
input wire s01_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARCACHE" *)
input wire [3 : 0] s01_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARREADY" *)
output wire s01_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RID" *)
output wire [3 : 0] s01_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RDATA" *)
output wire [63 : 0] s01_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RRESP" *)
output wire [1 : 0] s01_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RLAST" *)
output wire s01_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RVALID" *)
output wire s01_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RREADY" *)
input wire s01_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWID" *)
input wire [3 : 0] s02_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWADDR" *)
input wire [63 : 0] s02_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWLEN" *)
input wire [7 : 0] s02_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWSIZE" *)
input wire [2 : 0] s02_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWBURST" *)
input wire [1 : 0] s02_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWPROT" *)
input wire [2 : 0] s02_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWVALID" *)
input wire s02_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWLOCK" *)
input wire s02_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWCACHE" *)
input wire [3 : 0] s02_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi AWREADY" *)
output wire s02_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi WDATA" *)
input wire [63 : 0] s02_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi WSTRB" *)
input wire [7 : 0] s02_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi WLAST" *)
input wire s02_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi WVALID" *)
input wire s02_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi WREADY" *)
output wire s02_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi BID" *)
output wire [3 : 0] s02_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi BRESP" *)
output wire [1 : 0] s02_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi BVALID" *)
output wire s02_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi BREADY" *)
input wire s02_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARID" *)
input wire [3 : 0] s02_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARADDR" *)
input wire [63 : 0] s02_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARLEN" *)
input wire [7 : 0] s02_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARSIZE" *)
input wire [2 : 0] s02_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARBURST" *)
input wire [1 : 0] s02_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARPROT" *)
input wire [2 : 0] s02_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARVALID" *)
input wire s02_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARLOCK" *)
input wire s02_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARCACHE" *)
input wire [3 : 0] s02_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi ARREADY" *)
output wire s02_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi RID" *)
output wire [3 : 0] s02_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi RDATA" *)
output wire [63 : 0] s02_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi RRESP" *)
output wire [1 : 0] s02_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi RLAST" *)
output wire s02_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi RVALID" *)
output wire s02_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s02_axi RREADY" *)
input wire s02_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWID" *)
input wire [3 : 0] s03_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWADDR" *)
input wire [63 : 0] s03_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWLEN" *)
input wire [7 : 0] s03_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWSIZE" *)
input wire [2 : 0] s03_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWBURST" *)
input wire [1 : 0] s03_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWPROT" *)
input wire [2 : 0] s03_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWVALID" *)
input wire s03_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWLOCK" *)
input wire s03_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWCACHE" *)
input wire [3 : 0] s03_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi AWREADY" *)
output wire s03_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi WDATA" *)
input wire [63 : 0] s03_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi WSTRB" *)
input wire [7 : 0] s03_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi WLAST" *)
input wire s03_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi WVALID" *)
input wire s03_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi WREADY" *)
output wire s03_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi BID" *)
output wire [3 : 0] s03_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi BRESP" *)
output wire [1 : 0] s03_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi BVALID" *)
output wire s03_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi BREADY" *)
input wire s03_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARID" *)
input wire [3 : 0] s03_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARADDR" *)
input wire [63 : 0] s03_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARLEN" *)
input wire [7 : 0] s03_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARSIZE" *)
input wire [2 : 0] s03_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARBURST" *)
input wire [1 : 0] s03_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARPROT" *)
input wire [2 : 0] s03_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARVALID" *)
input wire s03_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARLOCK" *)
input wire s03_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARCACHE" *)
input wire [3 : 0] s03_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi ARREADY" *)
output wire s03_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi RID" *)
output wire [3 : 0] s03_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi RDATA" *)
output wire [63 : 0] s03_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi RRESP" *)
output wire [1 : 0] s03_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi RLAST" *)
output wire s03_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi RVALID" *)
output wire s03_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s03_axi RREADY" *)
input wire s03_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWID" *)
input wire [3 : 0] s04_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWADDR" *)
input wire [63 : 0] s04_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWLEN" *)
input wire [7 : 0] s04_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWSIZE" *)
input wire [2 : 0] s04_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWBURST" *)
input wire [1 : 0] s04_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWPROT" *)
input wire [2 : 0] s04_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWVALID" *)
input wire s04_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWLOCK" *)
input wire s04_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWCACHE" *)
input wire [3 : 0] s04_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi AWREADY" *)
output wire s04_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi WDATA" *)
input wire [63 : 0] s04_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi WSTRB" *)
input wire [7 : 0] s04_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi WLAST" *)
input wire s04_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi WVALID" *)
input wire s04_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi WREADY" *)
output wire s04_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi BID" *)
output wire [3 : 0] s04_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi BRESP" *)
output wire [1 : 0] s04_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi BVALID" *)
output wire s04_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi BREADY" *)
input wire s04_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARID" *)
input wire [3 : 0] s04_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARADDR" *)
input wire [63 : 0] s04_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARLEN" *)
input wire [7 : 0] s04_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARSIZE" *)
input wire [2 : 0] s04_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARBURST" *)
input wire [1 : 0] s04_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARPROT" *)
input wire [2 : 0] s04_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARVALID" *)
input wire s04_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARLOCK" *)
input wire s04_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARCACHE" *)
input wire [3 : 0] s04_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi ARREADY" *)
output wire s04_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi RID" *)
output wire [3 : 0] s04_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi RDATA" *)
output wire [63 : 0] s04_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi RRESP" *)
output wire [1 : 0] s04_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi RLAST" *)
output wire s04_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi RVALID" *)
output wire s04_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s04_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s04_axi RREADY" *)
input wire s04_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWID" *)
input wire [3 : 0] s05_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWADDR" *)
input wire [63 : 0] s05_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWLEN" *)
input wire [7 : 0] s05_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWSIZE" *)
input wire [2 : 0] s05_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWBURST" *)
input wire [1 : 0] s05_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWPROT" *)
input wire [2 : 0] s05_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWVALID" *)
input wire s05_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWLOCK" *)
input wire s05_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWCACHE" *)
input wire [3 : 0] s05_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi AWREADY" *)
output wire s05_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi WDATA" *)
input wire [63 : 0] s05_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi WSTRB" *)
input wire [7 : 0] s05_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi WLAST" *)
input wire s05_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi WVALID" *)
input wire s05_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi WREADY" *)
output wire s05_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi BID" *)
output wire [3 : 0] s05_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi BRESP" *)
output wire [1 : 0] s05_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi BVALID" *)
output wire s05_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi BREADY" *)
input wire s05_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARID" *)
input wire [3 : 0] s05_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARADDR" *)
input wire [63 : 0] s05_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARLEN" *)
input wire [7 : 0] s05_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARSIZE" *)
input wire [2 : 0] s05_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARBURST" *)
input wire [1 : 0] s05_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARPROT" *)
input wire [2 : 0] s05_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARVALID" *)
input wire s05_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARLOCK" *)
input wire s05_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARCACHE" *)
input wire [3 : 0] s05_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi ARREADY" *)
output wire s05_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi RID" *)
output wire [3 : 0] s05_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi RDATA" *)
output wire [63 : 0] s05_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi RRESP" *)
output wire [1 : 0] s05_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi RLAST" *)
output wire s05_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi RVALID" *)
output wire s05_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s05_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s05_axi RREADY" *)
input wire s05_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWID" *)
input wire [3 : 0] s06_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWADDR" *)
input wire [63 : 0] s06_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWLEN" *)
input wire [7 : 0] s06_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWSIZE" *)
input wire [2 : 0] s06_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWBURST" *)
input wire [1 : 0] s06_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWPROT" *)
input wire [2 : 0] s06_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWVALID" *)
input wire s06_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWLOCK" *)
input wire s06_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWCACHE" *)
input wire [3 : 0] s06_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi AWREADY" *)
output wire s06_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi WDATA" *)
input wire [63 : 0] s06_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi WSTRB" *)
input wire [7 : 0] s06_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi WLAST" *)
input wire s06_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi WVALID" *)
input wire s06_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi WREADY" *)
output wire s06_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi BID" *)
output wire [3 : 0] s06_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi BRESP" *)
output wire [1 : 0] s06_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi BVALID" *)
output wire s06_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi BREADY" *)
input wire s06_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARID" *)
input wire [3 : 0] s06_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARADDR" *)
input wire [63 : 0] s06_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARLEN" *)
input wire [7 : 0] s06_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARSIZE" *)
input wire [2 : 0] s06_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARBURST" *)
input wire [1 : 0] s06_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARPROT" *)
input wire [2 : 0] s06_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARVALID" *)
input wire s06_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARLOCK" *)
input wire s06_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARCACHE" *)
input wire [3 : 0] s06_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi ARREADY" *)
output wire s06_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi RID" *)
output wire [3 : 0] s06_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi RDATA" *)
output wire [63 : 0] s06_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi RRESP" *)
output wire [1 : 0] s06_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi RLAST" *)
output wire s06_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi RVALID" *)
output wire s06_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s06_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s06_axi RREADY" *)
input wire s06_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWID" *)
input wire [3 : 0] s07_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWADDR" *)
input wire [63 : 0] s07_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWLEN" *)
input wire [7 : 0] s07_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWSIZE" *)
input wire [2 : 0] s07_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWBURST" *)
input wire [1 : 0] s07_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWPROT" *)
input wire [2 : 0] s07_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWVALID" *)
input wire s07_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWLOCK" *)
input wire s07_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWCACHE" *)
input wire [3 : 0] s07_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi AWREADY" *)
output wire s07_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi WDATA" *)
input wire [63 : 0] s07_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi WSTRB" *)
input wire [7 : 0] s07_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi WLAST" *)
input wire s07_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi WVALID" *)
input wire s07_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi WREADY" *)
output wire s07_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi BID" *)
output wire [3 : 0] s07_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi BRESP" *)
output wire [1 : 0] s07_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi BVALID" *)
output wire s07_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi BREADY" *)
input wire s07_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARID" *)
input wire [3 : 0] s07_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARADDR" *)
input wire [63 : 0] s07_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARLEN" *)
input wire [7 : 0] s07_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARSIZE" *)
input wire [2 : 0] s07_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARBURST" *)
input wire [1 : 0] s07_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARPROT" *)
input wire [2 : 0] s07_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARVALID" *)
input wire s07_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARLOCK" *)
input wire s07_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARCACHE" *)
input wire [3 : 0] s07_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi ARREADY" *)
output wire s07_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi RID" *)
output wire [3 : 0] s07_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi RDATA" *)
output wire [63 : 0] s07_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi RRESP" *)
output wire [1 : 0] s07_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi RLAST" *)
output wire s07_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi RVALID" *)
output wire s07_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s07_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s07_axi RREADY" *)
input wire s07_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWID" *)
input wire [3 : 0] s08_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWADDR" *)
input wire [63 : 0] s08_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWLEN" *)
input wire [7 : 0] s08_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWSIZE" *)
input wire [2 : 0] s08_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWBURST" *)
input wire [1 : 0] s08_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWPROT" *)
input wire [2 : 0] s08_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWVALID" *)
input wire s08_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWLOCK" *)
input wire s08_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWCACHE" *)
input wire [3 : 0] s08_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi AWREADY" *)
output wire s08_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi WDATA" *)
input wire [63 : 0] s08_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi WSTRB" *)
input wire [7 : 0] s08_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi WLAST" *)
input wire s08_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi WVALID" *)
input wire s08_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi WREADY" *)
output wire s08_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi BID" *)
output wire [3 : 0] s08_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi BRESP" *)
output wire [1 : 0] s08_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi BVALID" *)
output wire s08_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi BREADY" *)
input wire s08_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARID" *)
input wire [3 : 0] s08_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARADDR" *)
input wire [63 : 0] s08_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARLEN" *)
input wire [7 : 0] s08_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARSIZE" *)
input wire [2 : 0] s08_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARBURST" *)
input wire [1 : 0] s08_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARPROT" *)
input wire [2 : 0] s08_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARVALID" *)
input wire s08_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARLOCK" *)
input wire s08_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARCACHE" *)
input wire [3 : 0] s08_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi ARREADY" *)
output wire s08_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi RID" *)
output wire [3 : 0] s08_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi RDATA" *)
output wire [63 : 0] s08_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi RRESP" *)
output wire [1 : 0] s08_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi RLAST" *)
output wire s08_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi RVALID" *)
output wire s08_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s08_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s08_axi RREADY" *)
input wire s08_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWID" *)
input wire [3 : 0] s09_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWADDR" *)
input wire [63 : 0] s09_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWLEN" *)
input wire [7 : 0] s09_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWSIZE" *)
input wire [2 : 0] s09_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWBURST" *)
input wire [1 : 0] s09_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWPROT" *)
input wire [2 : 0] s09_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWVALID" *)
input wire s09_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWLOCK" *)
input wire s09_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWCACHE" *)
input wire [3 : 0] s09_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi AWREADY" *)
output wire s09_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi WDATA" *)
input wire [63 : 0] s09_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi WSTRB" *)
input wire [7 : 0] s09_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi WLAST" *)
input wire s09_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi WVALID" *)
input wire s09_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi WREADY" *)
output wire s09_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi BID" *)
output wire [3 : 0] s09_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi BRESP" *)
output wire [1 : 0] s09_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi BVALID" *)
output wire s09_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi BREADY" *)
input wire s09_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARID" *)
input wire [3 : 0] s09_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARADDR" *)
input wire [63 : 0] s09_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARLEN" *)
input wire [7 : 0] s09_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARSIZE" *)
input wire [2 : 0] s09_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARBURST" *)
input wire [1 : 0] s09_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARPROT" *)
input wire [2 : 0] s09_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARVALID" *)
input wire s09_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARLOCK" *)
input wire s09_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARCACHE" *)
input wire [3 : 0] s09_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi ARREADY" *)
output wire s09_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi RID" *)
output wire [3 : 0] s09_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi RDATA" *)
output wire [63 : 0] s09_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi RRESP" *)
output wire [1 : 0] s09_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi RLAST" *)
output wire s09_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi RVALID" *)
output wire s09_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s09_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s09_axi RREADY" *)
input wire s09_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWID" *)
input wire [3 : 0] s10_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWADDR" *)
input wire [63 : 0] s10_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWLEN" *)
input wire [7 : 0] s10_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWSIZE" *)
input wire [2 : 0] s10_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWBURST" *)
input wire [1 : 0] s10_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWPROT" *)
input wire [2 : 0] s10_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWVALID" *)
input wire s10_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWLOCK" *)
input wire s10_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWCACHE" *)
input wire [3 : 0] s10_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi AWREADY" *)
output wire s10_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi WDATA" *)
input wire [63 : 0] s10_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi WSTRB" *)
input wire [7 : 0] s10_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi WLAST" *)
input wire s10_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi WVALID" *)
input wire s10_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi WREADY" *)
output wire s10_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi BID" *)
output wire [3 : 0] s10_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi BRESP" *)
output wire [1 : 0] s10_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi BVALID" *)
output wire s10_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi BREADY" *)
input wire s10_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARID" *)
input wire [3 : 0] s10_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARADDR" *)
input wire [63 : 0] s10_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARLEN" *)
input wire [7 : 0] s10_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARSIZE" *)
input wire [2 : 0] s10_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARBURST" *)
input wire [1 : 0] s10_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARPROT" *)
input wire [2 : 0] s10_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARVALID" *)
input wire s10_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARLOCK" *)
input wire s10_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARCACHE" *)
input wire [3 : 0] s10_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi ARREADY" *)
output wire s10_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi RID" *)
output wire [3 : 0] s10_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi RDATA" *)
output wire [63 : 0] s10_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi RRESP" *)
output wire [1 : 0] s10_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi RLAST" *)
output wire s10_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi RVALID" *)
output wire s10_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s10_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s10_axi RREADY" *)
input wire s10_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWID" *)
input wire [3 : 0] s11_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWADDR" *)
input wire [63 : 0] s11_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWLEN" *)
input wire [7 : 0] s11_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWSIZE" *)
input wire [2 : 0] s11_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWBURST" *)
input wire [1 : 0] s11_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWPROT" *)
input wire [2 : 0] s11_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWVALID" *)
input wire s11_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWLOCK" *)
input wire s11_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWCACHE" *)
input wire [3 : 0] s11_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi AWREADY" *)
output wire s11_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi WDATA" *)
input wire [63 : 0] s11_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi WSTRB" *)
input wire [7 : 0] s11_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi WLAST" *)
input wire s11_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi WVALID" *)
input wire s11_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi WREADY" *)
output wire s11_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi BID" *)
output wire [3 : 0] s11_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi BRESP" *)
output wire [1 : 0] s11_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi BVALID" *)
output wire s11_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi BREADY" *)
input wire s11_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARID" *)
input wire [3 : 0] s11_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARADDR" *)
input wire [63 : 0] s11_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARLEN" *)
input wire [7 : 0] s11_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARSIZE" *)
input wire [2 : 0] s11_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARBURST" *)
input wire [1 : 0] s11_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARPROT" *)
input wire [2 : 0] s11_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARVALID" *)
input wire s11_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARLOCK" *)
input wire s11_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARCACHE" *)
input wire [3 : 0] s11_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi ARREADY" *)
output wire s11_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi RID" *)
output wire [3 : 0] s11_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi RDATA" *)
output wire [63 : 0] s11_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi RRESP" *)
output wire [1 : 0] s11_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi RLAST" *)
output wire s11_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi RVALID" *)
output wire s11_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s11_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s11_axi RREADY" *)
input wire s11_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWID" *)
input wire [3 : 0] s12_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWADDR" *)
input wire [63 : 0] s12_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWLEN" *)
input wire [7 : 0] s12_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWSIZE" *)
input wire [2 : 0] s12_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWBURST" *)
input wire [1 : 0] s12_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWPROT" *)
input wire [2 : 0] s12_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWVALID" *)
input wire s12_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWLOCK" *)
input wire s12_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWCACHE" *)
input wire [3 : 0] s12_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi AWREADY" *)
output wire s12_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi WDATA" *)
input wire [63 : 0] s12_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi WSTRB" *)
input wire [7 : 0] s12_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi WLAST" *)
input wire s12_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi WVALID" *)
input wire s12_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi WREADY" *)
output wire s12_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi BID" *)
output wire [3 : 0] s12_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi BRESP" *)
output wire [1 : 0] s12_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi BVALID" *)
output wire s12_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi BREADY" *)
input wire s12_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARID" *)
input wire [3 : 0] s12_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARADDR" *)
input wire [63 : 0] s12_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARLEN" *)
input wire [7 : 0] s12_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARSIZE" *)
input wire [2 : 0] s12_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARBURST" *)
input wire [1 : 0] s12_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARPROT" *)
input wire [2 : 0] s12_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARVALID" *)
input wire s12_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARLOCK" *)
input wire s12_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARCACHE" *)
input wire [3 : 0] s12_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi ARREADY" *)
output wire s12_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi RID" *)
output wire [3 : 0] s12_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi RDATA" *)
output wire [63 : 0] s12_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi RRESP" *)
output wire [1 : 0] s12_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi RLAST" *)
output wire s12_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi RVALID" *)
output wire s12_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s12_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s12_axi RREADY" *)
input wire s12_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *)
input wire [31 : 0] s_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWPROT" *)
input wire [2 : 0] s_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *)
input wire s_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *)
output wire s_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *)
input wire [31 : 0] s_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *)
input wire [3 : 0] s_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *)
input wire s_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *)
output wire s_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *)
output wire s_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *)
output wire [1 : 0] s_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *)
input wire s_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *)
input wire [31 : 0] s_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT" *)
input wire [2 : 0] s_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *)
input wire s_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *)
output wire s_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *)
output wire [31 : 0] s_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *)
output wire [1 : 0] s_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *)
output wire s_axi_lite_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRI\
TE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *)
input wire s_axi_lite_rready;
input wire [11 : 0] UART_RX;
output wire [11 : 0] UART_TX;

  bridge_top_v2 inst (
    .clk(clk),
    .rst(rst),
    .interupt_req(interupt_req),
    .interupt_ack(interupt_ack),
    .LOGIC_VERSION(LOGIC_VERSION),
    .LOGIC_SUB_VERSION(LOGIC_SUB_VERSION),
    .s01_axi_awid(s01_axi_awid),
    .s01_axi_awaddr(s01_axi_awaddr),
    .s01_axi_awlen(s01_axi_awlen),
    .s01_axi_awsize(s01_axi_awsize),
    .s01_axi_awburst(s01_axi_awburst),
    .s01_axi_awprot(s01_axi_awprot),
    .s01_axi_awvalid(s01_axi_awvalid),
    .s01_axi_awlock(s01_axi_awlock),
    .s01_axi_awcache(s01_axi_awcache),
    .s01_axi_awready(s01_axi_awready),
    .s01_axi_wdata(s01_axi_wdata),
    .s01_axi_wstrb(s01_axi_wstrb),
    .s01_axi_wlast(s01_axi_wlast),
    .s01_axi_wvalid(s01_axi_wvalid),
    .s01_axi_wready(s01_axi_wready),
    .s01_axi_bid(s01_axi_bid),
    .s01_axi_bresp(s01_axi_bresp),
    .s01_axi_bvalid(s01_axi_bvalid),
    .s01_axi_bready(s01_axi_bready),
    .s01_axi_arid(s01_axi_arid),
    .s01_axi_araddr(s01_axi_araddr),
    .s01_axi_arlen(s01_axi_arlen),
    .s01_axi_arsize(s01_axi_arsize),
    .s01_axi_arburst(s01_axi_arburst),
    .s01_axi_arprot(s01_axi_arprot),
    .s01_axi_arvalid(s01_axi_arvalid),
    .s01_axi_arlock(s01_axi_arlock),
    .s01_axi_arcache(s01_axi_arcache),
    .s01_axi_arready(s01_axi_arready),
    .s01_axi_rid(s01_axi_rid),
    .s01_axi_rdata(s01_axi_rdata),
    .s01_axi_rresp(s01_axi_rresp),
    .s01_axi_rlast(s01_axi_rlast),
    .s01_axi_rvalid(s01_axi_rvalid),
    .s01_axi_rready(s01_axi_rready),
    .s02_axi_awid(s02_axi_awid),
    .s02_axi_awaddr(s02_axi_awaddr),
    .s02_axi_awlen(s02_axi_awlen),
    .s02_axi_awsize(s02_axi_awsize),
    .s02_axi_awburst(s02_axi_awburst),
    .s02_axi_awprot(s02_axi_awprot),
    .s02_axi_awvalid(s02_axi_awvalid),
    .s02_axi_awlock(s02_axi_awlock),
    .s02_axi_awcache(s02_axi_awcache),
    .s02_axi_awready(s02_axi_awready),
    .s02_axi_wdata(s02_axi_wdata),
    .s02_axi_wstrb(s02_axi_wstrb),
    .s02_axi_wlast(s02_axi_wlast),
    .s02_axi_wvalid(s02_axi_wvalid),
    .s02_axi_wready(s02_axi_wready),
    .s02_axi_bid(s02_axi_bid),
    .s02_axi_bresp(s02_axi_bresp),
    .s02_axi_bvalid(s02_axi_bvalid),
    .s02_axi_bready(s02_axi_bready),
    .s02_axi_arid(s02_axi_arid),
    .s02_axi_araddr(s02_axi_araddr),
    .s02_axi_arlen(s02_axi_arlen),
    .s02_axi_arsize(s02_axi_arsize),
    .s02_axi_arburst(s02_axi_arburst),
    .s02_axi_arprot(s02_axi_arprot),
    .s02_axi_arvalid(s02_axi_arvalid),
    .s02_axi_arlock(s02_axi_arlock),
    .s02_axi_arcache(s02_axi_arcache),
    .s02_axi_arready(s02_axi_arready),
    .s02_axi_rid(s02_axi_rid),
    .s02_axi_rdata(s02_axi_rdata),
    .s02_axi_rresp(s02_axi_rresp),
    .s02_axi_rlast(s02_axi_rlast),
    .s02_axi_rvalid(s02_axi_rvalid),
    .s02_axi_rready(s02_axi_rready),
    .s03_axi_awid(s03_axi_awid),
    .s03_axi_awaddr(s03_axi_awaddr),
    .s03_axi_awlen(s03_axi_awlen),
    .s03_axi_awsize(s03_axi_awsize),
    .s03_axi_awburst(s03_axi_awburst),
    .s03_axi_awprot(s03_axi_awprot),
    .s03_axi_awvalid(s03_axi_awvalid),
    .s03_axi_awlock(s03_axi_awlock),
    .s03_axi_awcache(s03_axi_awcache),
    .s03_axi_awready(s03_axi_awready),
    .s03_axi_wdata(s03_axi_wdata),
    .s03_axi_wstrb(s03_axi_wstrb),
    .s03_axi_wlast(s03_axi_wlast),
    .s03_axi_wvalid(s03_axi_wvalid),
    .s03_axi_wready(s03_axi_wready),
    .s03_axi_bid(s03_axi_bid),
    .s03_axi_bresp(s03_axi_bresp),
    .s03_axi_bvalid(s03_axi_bvalid),
    .s03_axi_bready(s03_axi_bready),
    .s03_axi_arid(s03_axi_arid),
    .s03_axi_araddr(s03_axi_araddr),
    .s03_axi_arlen(s03_axi_arlen),
    .s03_axi_arsize(s03_axi_arsize),
    .s03_axi_arburst(s03_axi_arburst),
    .s03_axi_arprot(s03_axi_arprot),
    .s03_axi_arvalid(s03_axi_arvalid),
    .s03_axi_arlock(s03_axi_arlock),
    .s03_axi_arcache(s03_axi_arcache),
    .s03_axi_arready(s03_axi_arready),
    .s03_axi_rid(s03_axi_rid),
    .s03_axi_rdata(s03_axi_rdata),
    .s03_axi_rresp(s03_axi_rresp),
    .s03_axi_rlast(s03_axi_rlast),
    .s03_axi_rvalid(s03_axi_rvalid),
    .s03_axi_rready(s03_axi_rready),
    .s04_axi_awid(s04_axi_awid),
    .s04_axi_awaddr(s04_axi_awaddr),
    .s04_axi_awlen(s04_axi_awlen),
    .s04_axi_awsize(s04_axi_awsize),
    .s04_axi_awburst(s04_axi_awburst),
    .s04_axi_awprot(s04_axi_awprot),
    .s04_axi_awvalid(s04_axi_awvalid),
    .s04_axi_awlock(s04_axi_awlock),
    .s04_axi_awcache(s04_axi_awcache),
    .s04_axi_awready(s04_axi_awready),
    .s04_axi_wdata(s04_axi_wdata),
    .s04_axi_wstrb(s04_axi_wstrb),
    .s04_axi_wlast(s04_axi_wlast),
    .s04_axi_wvalid(s04_axi_wvalid),
    .s04_axi_wready(s04_axi_wready),
    .s04_axi_bid(s04_axi_bid),
    .s04_axi_bresp(s04_axi_bresp),
    .s04_axi_bvalid(s04_axi_bvalid),
    .s04_axi_bready(s04_axi_bready),
    .s04_axi_arid(s04_axi_arid),
    .s04_axi_araddr(s04_axi_araddr),
    .s04_axi_arlen(s04_axi_arlen),
    .s04_axi_arsize(s04_axi_arsize),
    .s04_axi_arburst(s04_axi_arburst),
    .s04_axi_arprot(s04_axi_arprot),
    .s04_axi_arvalid(s04_axi_arvalid),
    .s04_axi_arlock(s04_axi_arlock),
    .s04_axi_arcache(s04_axi_arcache),
    .s04_axi_arready(s04_axi_arready),
    .s04_axi_rid(s04_axi_rid),
    .s04_axi_rdata(s04_axi_rdata),
    .s04_axi_rresp(s04_axi_rresp),
    .s04_axi_rlast(s04_axi_rlast),
    .s04_axi_rvalid(s04_axi_rvalid),
    .s04_axi_rready(s04_axi_rready),
    .s05_axi_awid(s05_axi_awid),
    .s05_axi_awaddr(s05_axi_awaddr),
    .s05_axi_awlen(s05_axi_awlen),
    .s05_axi_awsize(s05_axi_awsize),
    .s05_axi_awburst(s05_axi_awburst),
    .s05_axi_awprot(s05_axi_awprot),
    .s05_axi_awvalid(s05_axi_awvalid),
    .s05_axi_awlock(s05_axi_awlock),
    .s05_axi_awcache(s05_axi_awcache),
    .s05_axi_awready(s05_axi_awready),
    .s05_axi_wdata(s05_axi_wdata),
    .s05_axi_wstrb(s05_axi_wstrb),
    .s05_axi_wlast(s05_axi_wlast),
    .s05_axi_wvalid(s05_axi_wvalid),
    .s05_axi_wready(s05_axi_wready),
    .s05_axi_bid(s05_axi_bid),
    .s05_axi_bresp(s05_axi_bresp),
    .s05_axi_bvalid(s05_axi_bvalid),
    .s05_axi_bready(s05_axi_bready),
    .s05_axi_arid(s05_axi_arid),
    .s05_axi_araddr(s05_axi_araddr),
    .s05_axi_arlen(s05_axi_arlen),
    .s05_axi_arsize(s05_axi_arsize),
    .s05_axi_arburst(s05_axi_arburst),
    .s05_axi_arprot(s05_axi_arprot),
    .s05_axi_arvalid(s05_axi_arvalid),
    .s05_axi_arlock(s05_axi_arlock),
    .s05_axi_arcache(s05_axi_arcache),
    .s05_axi_arready(s05_axi_arready),
    .s05_axi_rid(s05_axi_rid),
    .s05_axi_rdata(s05_axi_rdata),
    .s05_axi_rresp(s05_axi_rresp),
    .s05_axi_rlast(s05_axi_rlast),
    .s05_axi_rvalid(s05_axi_rvalid),
    .s05_axi_rready(s05_axi_rready),
    .s06_axi_awid(s06_axi_awid),
    .s06_axi_awaddr(s06_axi_awaddr),
    .s06_axi_awlen(s06_axi_awlen),
    .s06_axi_awsize(s06_axi_awsize),
    .s06_axi_awburst(s06_axi_awburst),
    .s06_axi_awprot(s06_axi_awprot),
    .s06_axi_awvalid(s06_axi_awvalid),
    .s06_axi_awlock(s06_axi_awlock),
    .s06_axi_awcache(s06_axi_awcache),
    .s06_axi_awready(s06_axi_awready),
    .s06_axi_wdata(s06_axi_wdata),
    .s06_axi_wstrb(s06_axi_wstrb),
    .s06_axi_wlast(s06_axi_wlast),
    .s06_axi_wvalid(s06_axi_wvalid),
    .s06_axi_wready(s06_axi_wready),
    .s06_axi_bid(s06_axi_bid),
    .s06_axi_bresp(s06_axi_bresp),
    .s06_axi_bvalid(s06_axi_bvalid),
    .s06_axi_bready(s06_axi_bready),
    .s06_axi_arid(s06_axi_arid),
    .s06_axi_araddr(s06_axi_araddr),
    .s06_axi_arlen(s06_axi_arlen),
    .s06_axi_arsize(s06_axi_arsize),
    .s06_axi_arburst(s06_axi_arburst),
    .s06_axi_arprot(s06_axi_arprot),
    .s06_axi_arvalid(s06_axi_arvalid),
    .s06_axi_arlock(s06_axi_arlock),
    .s06_axi_arcache(s06_axi_arcache),
    .s06_axi_arready(s06_axi_arready),
    .s06_axi_rid(s06_axi_rid),
    .s06_axi_rdata(s06_axi_rdata),
    .s06_axi_rresp(s06_axi_rresp),
    .s06_axi_rlast(s06_axi_rlast),
    .s06_axi_rvalid(s06_axi_rvalid),
    .s06_axi_rready(s06_axi_rready),
    .s07_axi_awid(s07_axi_awid),
    .s07_axi_awaddr(s07_axi_awaddr),
    .s07_axi_awlen(s07_axi_awlen),
    .s07_axi_awsize(s07_axi_awsize),
    .s07_axi_awburst(s07_axi_awburst),
    .s07_axi_awprot(s07_axi_awprot),
    .s07_axi_awvalid(s07_axi_awvalid),
    .s07_axi_awlock(s07_axi_awlock),
    .s07_axi_awcache(s07_axi_awcache),
    .s07_axi_awready(s07_axi_awready),
    .s07_axi_wdata(s07_axi_wdata),
    .s07_axi_wstrb(s07_axi_wstrb),
    .s07_axi_wlast(s07_axi_wlast),
    .s07_axi_wvalid(s07_axi_wvalid),
    .s07_axi_wready(s07_axi_wready),
    .s07_axi_bid(s07_axi_bid),
    .s07_axi_bresp(s07_axi_bresp),
    .s07_axi_bvalid(s07_axi_bvalid),
    .s07_axi_bready(s07_axi_bready),
    .s07_axi_arid(s07_axi_arid),
    .s07_axi_araddr(s07_axi_araddr),
    .s07_axi_arlen(s07_axi_arlen),
    .s07_axi_arsize(s07_axi_arsize),
    .s07_axi_arburst(s07_axi_arburst),
    .s07_axi_arprot(s07_axi_arprot),
    .s07_axi_arvalid(s07_axi_arvalid),
    .s07_axi_arlock(s07_axi_arlock),
    .s07_axi_arcache(s07_axi_arcache),
    .s07_axi_arready(s07_axi_arready),
    .s07_axi_rid(s07_axi_rid),
    .s07_axi_rdata(s07_axi_rdata),
    .s07_axi_rresp(s07_axi_rresp),
    .s07_axi_rlast(s07_axi_rlast),
    .s07_axi_rvalid(s07_axi_rvalid),
    .s07_axi_rready(s07_axi_rready),
    .s08_axi_awid(s08_axi_awid),
    .s08_axi_awaddr(s08_axi_awaddr),
    .s08_axi_awlen(s08_axi_awlen),
    .s08_axi_awsize(s08_axi_awsize),
    .s08_axi_awburst(s08_axi_awburst),
    .s08_axi_awprot(s08_axi_awprot),
    .s08_axi_awvalid(s08_axi_awvalid),
    .s08_axi_awlock(s08_axi_awlock),
    .s08_axi_awcache(s08_axi_awcache),
    .s08_axi_awready(s08_axi_awready),
    .s08_axi_wdata(s08_axi_wdata),
    .s08_axi_wstrb(s08_axi_wstrb),
    .s08_axi_wlast(s08_axi_wlast),
    .s08_axi_wvalid(s08_axi_wvalid),
    .s08_axi_wready(s08_axi_wready),
    .s08_axi_bid(s08_axi_bid),
    .s08_axi_bresp(s08_axi_bresp),
    .s08_axi_bvalid(s08_axi_bvalid),
    .s08_axi_bready(s08_axi_bready),
    .s08_axi_arid(s08_axi_arid),
    .s08_axi_araddr(s08_axi_araddr),
    .s08_axi_arlen(s08_axi_arlen),
    .s08_axi_arsize(s08_axi_arsize),
    .s08_axi_arburst(s08_axi_arburst),
    .s08_axi_arprot(s08_axi_arprot),
    .s08_axi_arvalid(s08_axi_arvalid),
    .s08_axi_arlock(s08_axi_arlock),
    .s08_axi_arcache(s08_axi_arcache),
    .s08_axi_arready(s08_axi_arready),
    .s08_axi_rid(s08_axi_rid),
    .s08_axi_rdata(s08_axi_rdata),
    .s08_axi_rresp(s08_axi_rresp),
    .s08_axi_rlast(s08_axi_rlast),
    .s08_axi_rvalid(s08_axi_rvalid),
    .s08_axi_rready(s08_axi_rready),
    .s09_axi_awid(s09_axi_awid),
    .s09_axi_awaddr(s09_axi_awaddr),
    .s09_axi_awlen(s09_axi_awlen),
    .s09_axi_awsize(s09_axi_awsize),
    .s09_axi_awburst(s09_axi_awburst),
    .s09_axi_awprot(s09_axi_awprot),
    .s09_axi_awvalid(s09_axi_awvalid),
    .s09_axi_awlock(s09_axi_awlock),
    .s09_axi_awcache(s09_axi_awcache),
    .s09_axi_awready(s09_axi_awready),
    .s09_axi_wdata(s09_axi_wdata),
    .s09_axi_wstrb(s09_axi_wstrb),
    .s09_axi_wlast(s09_axi_wlast),
    .s09_axi_wvalid(s09_axi_wvalid),
    .s09_axi_wready(s09_axi_wready),
    .s09_axi_bid(s09_axi_bid),
    .s09_axi_bresp(s09_axi_bresp),
    .s09_axi_bvalid(s09_axi_bvalid),
    .s09_axi_bready(s09_axi_bready),
    .s09_axi_arid(s09_axi_arid),
    .s09_axi_araddr(s09_axi_araddr),
    .s09_axi_arlen(s09_axi_arlen),
    .s09_axi_arsize(s09_axi_arsize),
    .s09_axi_arburst(s09_axi_arburst),
    .s09_axi_arprot(s09_axi_arprot),
    .s09_axi_arvalid(s09_axi_arvalid),
    .s09_axi_arlock(s09_axi_arlock),
    .s09_axi_arcache(s09_axi_arcache),
    .s09_axi_arready(s09_axi_arready),
    .s09_axi_rid(s09_axi_rid),
    .s09_axi_rdata(s09_axi_rdata),
    .s09_axi_rresp(s09_axi_rresp),
    .s09_axi_rlast(s09_axi_rlast),
    .s09_axi_rvalid(s09_axi_rvalid),
    .s09_axi_rready(s09_axi_rready),
    .s10_axi_awid(s10_axi_awid),
    .s10_axi_awaddr(s10_axi_awaddr),
    .s10_axi_awlen(s10_axi_awlen),
    .s10_axi_awsize(s10_axi_awsize),
    .s10_axi_awburst(s10_axi_awburst),
    .s10_axi_awprot(s10_axi_awprot),
    .s10_axi_awvalid(s10_axi_awvalid),
    .s10_axi_awlock(s10_axi_awlock),
    .s10_axi_awcache(s10_axi_awcache),
    .s10_axi_awready(s10_axi_awready),
    .s10_axi_wdata(s10_axi_wdata),
    .s10_axi_wstrb(s10_axi_wstrb),
    .s10_axi_wlast(s10_axi_wlast),
    .s10_axi_wvalid(s10_axi_wvalid),
    .s10_axi_wready(s10_axi_wready),
    .s10_axi_bid(s10_axi_bid),
    .s10_axi_bresp(s10_axi_bresp),
    .s10_axi_bvalid(s10_axi_bvalid),
    .s10_axi_bready(s10_axi_bready),
    .s10_axi_arid(s10_axi_arid),
    .s10_axi_araddr(s10_axi_araddr),
    .s10_axi_arlen(s10_axi_arlen),
    .s10_axi_arsize(s10_axi_arsize),
    .s10_axi_arburst(s10_axi_arburst),
    .s10_axi_arprot(s10_axi_arprot),
    .s10_axi_arvalid(s10_axi_arvalid),
    .s10_axi_arlock(s10_axi_arlock),
    .s10_axi_arcache(s10_axi_arcache),
    .s10_axi_arready(s10_axi_arready),
    .s10_axi_rid(s10_axi_rid),
    .s10_axi_rdata(s10_axi_rdata),
    .s10_axi_rresp(s10_axi_rresp),
    .s10_axi_rlast(s10_axi_rlast),
    .s10_axi_rvalid(s10_axi_rvalid),
    .s10_axi_rready(s10_axi_rready),
    .s11_axi_awid(s11_axi_awid),
    .s11_axi_awaddr(s11_axi_awaddr),
    .s11_axi_awlen(s11_axi_awlen),
    .s11_axi_awsize(s11_axi_awsize),
    .s11_axi_awburst(s11_axi_awburst),
    .s11_axi_awprot(s11_axi_awprot),
    .s11_axi_awvalid(s11_axi_awvalid),
    .s11_axi_awlock(s11_axi_awlock),
    .s11_axi_awcache(s11_axi_awcache),
    .s11_axi_awready(s11_axi_awready),
    .s11_axi_wdata(s11_axi_wdata),
    .s11_axi_wstrb(s11_axi_wstrb),
    .s11_axi_wlast(s11_axi_wlast),
    .s11_axi_wvalid(s11_axi_wvalid),
    .s11_axi_wready(s11_axi_wready),
    .s11_axi_bid(s11_axi_bid),
    .s11_axi_bresp(s11_axi_bresp),
    .s11_axi_bvalid(s11_axi_bvalid),
    .s11_axi_bready(s11_axi_bready),
    .s11_axi_arid(s11_axi_arid),
    .s11_axi_araddr(s11_axi_araddr),
    .s11_axi_arlen(s11_axi_arlen),
    .s11_axi_arsize(s11_axi_arsize),
    .s11_axi_arburst(s11_axi_arburst),
    .s11_axi_arprot(s11_axi_arprot),
    .s11_axi_arvalid(s11_axi_arvalid),
    .s11_axi_arlock(s11_axi_arlock),
    .s11_axi_arcache(s11_axi_arcache),
    .s11_axi_arready(s11_axi_arready),
    .s11_axi_rid(s11_axi_rid),
    .s11_axi_rdata(s11_axi_rdata),
    .s11_axi_rresp(s11_axi_rresp),
    .s11_axi_rlast(s11_axi_rlast),
    .s11_axi_rvalid(s11_axi_rvalid),
    .s11_axi_rready(s11_axi_rready),
    .s12_axi_awid(s12_axi_awid),
    .s12_axi_awaddr(s12_axi_awaddr),
    .s12_axi_awlen(s12_axi_awlen),
    .s12_axi_awsize(s12_axi_awsize),
    .s12_axi_awburst(s12_axi_awburst),
    .s12_axi_awprot(s12_axi_awprot),
    .s12_axi_awvalid(s12_axi_awvalid),
    .s12_axi_awlock(s12_axi_awlock),
    .s12_axi_awcache(s12_axi_awcache),
    .s12_axi_awready(s12_axi_awready),
    .s12_axi_wdata(s12_axi_wdata),
    .s12_axi_wstrb(s12_axi_wstrb),
    .s12_axi_wlast(s12_axi_wlast),
    .s12_axi_wvalid(s12_axi_wvalid),
    .s12_axi_wready(s12_axi_wready),
    .s12_axi_bid(s12_axi_bid),
    .s12_axi_bresp(s12_axi_bresp),
    .s12_axi_bvalid(s12_axi_bvalid),
    .s12_axi_bready(s12_axi_bready),
    .s12_axi_arid(s12_axi_arid),
    .s12_axi_araddr(s12_axi_araddr),
    .s12_axi_arlen(s12_axi_arlen),
    .s12_axi_arsize(s12_axi_arsize),
    .s12_axi_arburst(s12_axi_arburst),
    .s12_axi_arprot(s12_axi_arprot),
    .s12_axi_arvalid(s12_axi_arvalid),
    .s12_axi_arlock(s12_axi_arlock),
    .s12_axi_arcache(s12_axi_arcache),
    .s12_axi_arready(s12_axi_arready),
    .s12_axi_rid(s12_axi_rid),
    .s12_axi_rdata(s12_axi_rdata),
    .s12_axi_rresp(s12_axi_rresp),
    .s12_axi_rlast(s12_axi_rlast),
    .s12_axi_rvalid(s12_axi_rvalid),
    .s12_axi_rready(s12_axi_rready),
    .s_axi_lite_awaddr(s_axi_lite_awaddr),
    .s_axi_lite_awprot(s_axi_lite_awprot),
    .s_axi_lite_awvalid(s_axi_lite_awvalid),
    .s_axi_lite_awready(s_axi_lite_awready),
    .s_axi_lite_wdata(s_axi_lite_wdata),
    .s_axi_lite_wstrb(s_axi_lite_wstrb),
    .s_axi_lite_wvalid(s_axi_lite_wvalid),
    .s_axi_lite_wready(s_axi_lite_wready),
    .s_axi_lite_bvalid(s_axi_lite_bvalid),
    .s_axi_lite_bresp(s_axi_lite_bresp),
    .s_axi_lite_bready(s_axi_lite_bready),
    .s_axi_lite_araddr(s_axi_lite_araddr),
    .s_axi_lite_arprot(s_axi_lite_arprot),
    .s_axi_lite_arvalid(s_axi_lite_arvalid),
    .s_axi_lite_arready(s_axi_lite_arready),
    .s_axi_lite_rdata(s_axi_lite_rdata),
    .s_axi_lite_rresp(s_axi_lite_rresp),
    .s_axi_lite_rvalid(s_axi_lite_rvalid),
    .s_axi_lite_rready(s_axi_lite_rready),
    .UART_RX(UART_RX),
    .UART_TX(UART_TX)
  );
endmodule
