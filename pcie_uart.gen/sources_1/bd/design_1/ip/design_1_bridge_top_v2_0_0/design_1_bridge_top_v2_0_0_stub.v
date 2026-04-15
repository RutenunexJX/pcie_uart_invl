// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Apr 13 17:27:46 2026
// Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/_xu/_prj/pcie_uart_tx_array/repo/pcie_uart.gen/sources_1/bd/design_1/ip/design_1_bridge_top_v2_0_0/design_1_bridge_top_v2_0_0_stub.v
// Design      : design_1_bridge_top_v2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bridge_top_v2,Vivado 2022.2" *)
module design_1_bridge_top_v2_0_0(clk, rst, interupt_req, interupt_ack, 
  LOGIC_VERSION, LOGIC_SUB_VERSION, s01_axi_awid, s01_axi_awaddr, s01_axi_awlen, 
  s01_axi_awsize, s01_axi_awburst, s01_axi_awprot, s01_axi_awvalid, s01_axi_awlock, 
  s01_axi_awcache, s01_axi_awready, s01_axi_wdata, s01_axi_wstrb, s01_axi_wlast, 
  s01_axi_wvalid, s01_axi_wready, s01_axi_bid, s01_axi_bresp, s01_axi_bvalid, s01_axi_bready, 
  s01_axi_arid, s01_axi_araddr, s01_axi_arlen, s01_axi_arsize, s01_axi_arburst, 
  s01_axi_arprot, s01_axi_arvalid, s01_axi_arlock, s01_axi_arcache, s01_axi_arready, 
  s01_axi_rid, s01_axi_rdata, s01_axi_rresp, s01_axi_rlast, s01_axi_rvalid, s01_axi_rready, 
  s02_axi_awid, s02_axi_awaddr, s02_axi_awlen, s02_axi_awsize, s02_axi_awburst, 
  s02_axi_awprot, s02_axi_awvalid, s02_axi_awlock, s02_axi_awcache, s02_axi_awready, 
  s02_axi_wdata, s02_axi_wstrb, s02_axi_wlast, s02_axi_wvalid, s02_axi_wready, s02_axi_bid, 
  s02_axi_bresp, s02_axi_bvalid, s02_axi_bready, s02_axi_arid, s02_axi_araddr, s02_axi_arlen, 
  s02_axi_arsize, s02_axi_arburst, s02_axi_arprot, s02_axi_arvalid, s02_axi_arlock, 
  s02_axi_arcache, s02_axi_arready, s02_axi_rid, s02_axi_rdata, s02_axi_rresp, s02_axi_rlast, 
  s02_axi_rvalid, s02_axi_rready, s03_axi_awid, s03_axi_awaddr, s03_axi_awlen, 
  s03_axi_awsize, s03_axi_awburst, s03_axi_awprot, s03_axi_awvalid, s03_axi_awlock, 
  s03_axi_awcache, s03_axi_awready, s03_axi_wdata, s03_axi_wstrb, s03_axi_wlast, 
  s03_axi_wvalid, s03_axi_wready, s03_axi_bid, s03_axi_bresp, s03_axi_bvalid, s03_axi_bready, 
  s03_axi_arid, s03_axi_araddr, s03_axi_arlen, s03_axi_arsize, s03_axi_arburst, 
  s03_axi_arprot, s03_axi_arvalid, s03_axi_arlock, s03_axi_arcache, s03_axi_arready, 
  s03_axi_rid, s03_axi_rdata, s03_axi_rresp, s03_axi_rlast, s03_axi_rvalid, s03_axi_rready, 
  s04_axi_awid, s04_axi_awaddr, s04_axi_awlen, s04_axi_awsize, s04_axi_awburst, 
  s04_axi_awprot, s04_axi_awvalid, s04_axi_awlock, s04_axi_awcache, s04_axi_awready, 
  s04_axi_wdata, s04_axi_wstrb, s04_axi_wlast, s04_axi_wvalid, s04_axi_wready, s04_axi_bid, 
  s04_axi_bresp, s04_axi_bvalid, s04_axi_bready, s04_axi_arid, s04_axi_araddr, s04_axi_arlen, 
  s04_axi_arsize, s04_axi_arburst, s04_axi_arprot, s04_axi_arvalid, s04_axi_arlock, 
  s04_axi_arcache, s04_axi_arready, s04_axi_rid, s04_axi_rdata, s04_axi_rresp, s04_axi_rlast, 
  s04_axi_rvalid, s04_axi_rready, s05_axi_awid, s05_axi_awaddr, s05_axi_awlen, 
  s05_axi_awsize, s05_axi_awburst, s05_axi_awprot, s05_axi_awvalid, s05_axi_awlock, 
  s05_axi_awcache, s05_axi_awready, s05_axi_wdata, s05_axi_wstrb, s05_axi_wlast, 
  s05_axi_wvalid, s05_axi_wready, s05_axi_bid, s05_axi_bresp, s05_axi_bvalid, s05_axi_bready, 
  s05_axi_arid, s05_axi_araddr, s05_axi_arlen, s05_axi_arsize, s05_axi_arburst, 
  s05_axi_arprot, s05_axi_arvalid, s05_axi_arlock, s05_axi_arcache, s05_axi_arready, 
  s05_axi_rid, s05_axi_rdata, s05_axi_rresp, s05_axi_rlast, s05_axi_rvalid, s05_axi_rready, 
  s06_axi_awid, s06_axi_awaddr, s06_axi_awlen, s06_axi_awsize, s06_axi_awburst, 
  s06_axi_awprot, s06_axi_awvalid, s06_axi_awlock, s06_axi_awcache, s06_axi_awready, 
  s06_axi_wdata, s06_axi_wstrb, s06_axi_wlast, s06_axi_wvalid, s06_axi_wready, s06_axi_bid, 
  s06_axi_bresp, s06_axi_bvalid, s06_axi_bready, s06_axi_arid, s06_axi_araddr, s06_axi_arlen, 
  s06_axi_arsize, s06_axi_arburst, s06_axi_arprot, s06_axi_arvalid, s06_axi_arlock, 
  s06_axi_arcache, s06_axi_arready, s06_axi_rid, s06_axi_rdata, s06_axi_rresp, s06_axi_rlast, 
  s06_axi_rvalid, s06_axi_rready, s07_axi_awid, s07_axi_awaddr, s07_axi_awlen, 
  s07_axi_awsize, s07_axi_awburst, s07_axi_awprot, s07_axi_awvalid, s07_axi_awlock, 
  s07_axi_awcache, s07_axi_awready, s07_axi_wdata, s07_axi_wstrb, s07_axi_wlast, 
  s07_axi_wvalid, s07_axi_wready, s07_axi_bid, s07_axi_bresp, s07_axi_bvalid, s07_axi_bready, 
  s07_axi_arid, s07_axi_araddr, s07_axi_arlen, s07_axi_arsize, s07_axi_arburst, 
  s07_axi_arprot, s07_axi_arvalid, s07_axi_arlock, s07_axi_arcache, s07_axi_arready, 
  s07_axi_rid, s07_axi_rdata, s07_axi_rresp, s07_axi_rlast, s07_axi_rvalid, s07_axi_rready, 
  s08_axi_awid, s08_axi_awaddr, s08_axi_awlen, s08_axi_awsize, s08_axi_awburst, 
  s08_axi_awprot, s08_axi_awvalid, s08_axi_awlock, s08_axi_awcache, s08_axi_awready, 
  s08_axi_wdata, s08_axi_wstrb, s08_axi_wlast, s08_axi_wvalid, s08_axi_wready, s08_axi_bid, 
  s08_axi_bresp, s08_axi_bvalid, s08_axi_bready, s08_axi_arid, s08_axi_araddr, s08_axi_arlen, 
  s08_axi_arsize, s08_axi_arburst, s08_axi_arprot, s08_axi_arvalid, s08_axi_arlock, 
  s08_axi_arcache, s08_axi_arready, s08_axi_rid, s08_axi_rdata, s08_axi_rresp, s08_axi_rlast, 
  s08_axi_rvalid, s08_axi_rready, s09_axi_awid, s09_axi_awaddr, s09_axi_awlen, 
  s09_axi_awsize, s09_axi_awburst, s09_axi_awprot, s09_axi_awvalid, s09_axi_awlock, 
  s09_axi_awcache, s09_axi_awready, s09_axi_wdata, s09_axi_wstrb, s09_axi_wlast, 
  s09_axi_wvalid, s09_axi_wready, s09_axi_bid, s09_axi_bresp, s09_axi_bvalid, s09_axi_bready, 
  s09_axi_arid, s09_axi_araddr, s09_axi_arlen, s09_axi_arsize, s09_axi_arburst, 
  s09_axi_arprot, s09_axi_arvalid, s09_axi_arlock, s09_axi_arcache, s09_axi_arready, 
  s09_axi_rid, s09_axi_rdata, s09_axi_rresp, s09_axi_rlast, s09_axi_rvalid, s09_axi_rready, 
  s10_axi_awid, s10_axi_awaddr, s10_axi_awlen, s10_axi_awsize, s10_axi_awburst, 
  s10_axi_awprot, s10_axi_awvalid, s10_axi_awlock, s10_axi_awcache, s10_axi_awready, 
  s10_axi_wdata, s10_axi_wstrb, s10_axi_wlast, s10_axi_wvalid, s10_axi_wready, s10_axi_bid, 
  s10_axi_bresp, s10_axi_bvalid, s10_axi_bready, s10_axi_arid, s10_axi_araddr, s10_axi_arlen, 
  s10_axi_arsize, s10_axi_arburst, s10_axi_arprot, s10_axi_arvalid, s10_axi_arlock, 
  s10_axi_arcache, s10_axi_arready, s10_axi_rid, s10_axi_rdata, s10_axi_rresp, s10_axi_rlast, 
  s10_axi_rvalid, s10_axi_rready, s11_axi_awid, s11_axi_awaddr, s11_axi_awlen, 
  s11_axi_awsize, s11_axi_awburst, s11_axi_awprot, s11_axi_awvalid, s11_axi_awlock, 
  s11_axi_awcache, s11_axi_awready, s11_axi_wdata, s11_axi_wstrb, s11_axi_wlast, 
  s11_axi_wvalid, s11_axi_wready, s11_axi_bid, s11_axi_bresp, s11_axi_bvalid, s11_axi_bready, 
  s11_axi_arid, s11_axi_araddr, s11_axi_arlen, s11_axi_arsize, s11_axi_arburst, 
  s11_axi_arprot, s11_axi_arvalid, s11_axi_arlock, s11_axi_arcache, s11_axi_arready, 
  s11_axi_rid, s11_axi_rdata, s11_axi_rresp, s11_axi_rlast, s11_axi_rvalid, s11_axi_rready, 
  s12_axi_awid, s12_axi_awaddr, s12_axi_awlen, s12_axi_awsize, s12_axi_awburst, 
  s12_axi_awprot, s12_axi_awvalid, s12_axi_awlock, s12_axi_awcache, s12_axi_awready, 
  s12_axi_wdata, s12_axi_wstrb, s12_axi_wlast, s12_axi_wvalid, s12_axi_wready, s12_axi_bid, 
  s12_axi_bresp, s12_axi_bvalid, s12_axi_bready, s12_axi_arid, s12_axi_araddr, s12_axi_arlen, 
  s12_axi_arsize, s12_axi_arburst, s12_axi_arprot, s12_axi_arvalid, s12_axi_arlock, 
  s12_axi_arcache, s12_axi_arready, s12_axi_rid, s12_axi_rdata, s12_axi_rresp, s12_axi_rlast, 
  s12_axi_rvalid, s12_axi_rready, s_axi_lite_awaddr, s_axi_lite_awprot, s_axi_lite_awvalid, 
  s_axi_lite_awready, s_axi_lite_wdata, s_axi_lite_wstrb, s_axi_lite_wvalid, 
  s_axi_lite_wready, s_axi_lite_bvalid, s_axi_lite_bresp, s_axi_lite_bready, 
  s_axi_lite_araddr, s_axi_lite_arprot, s_axi_lite_arvalid, s_axi_lite_arready, 
  s_axi_lite_rdata, s_axi_lite_rresp, s_axi_lite_rvalid, s_axi_lite_rready, UART_RX, UART_TX)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,interupt_req,interupt_ack,LOGIC_VERSION[31:0],LOGIC_SUB_VERSION[31:0],s01_axi_awid[3:0],s01_axi_awaddr[63:0],s01_axi_awlen[7:0],s01_axi_awsize[2:0],s01_axi_awburst[1:0],s01_axi_awprot[2:0],s01_axi_awvalid,s01_axi_awlock,s01_axi_awcache[3:0],s01_axi_awready,s01_axi_wdata[63:0],s01_axi_wstrb[7:0],s01_axi_wlast,s01_axi_wvalid,s01_axi_wready,s01_axi_bid[3:0],s01_axi_bresp[1:0],s01_axi_bvalid,s01_axi_bready,s01_axi_arid[3:0],s01_axi_araddr[63:0],s01_axi_arlen[7:0],s01_axi_arsize[2:0],s01_axi_arburst[1:0],s01_axi_arprot[2:0],s01_axi_arvalid,s01_axi_arlock,s01_axi_arcache[3:0],s01_axi_arready,s01_axi_rid[3:0],s01_axi_rdata[63:0],s01_axi_rresp[1:0],s01_axi_rlast,s01_axi_rvalid,s01_axi_rready,s02_axi_awid[3:0],s02_axi_awaddr[63:0],s02_axi_awlen[7:0],s02_axi_awsize[2:0],s02_axi_awburst[1:0],s02_axi_awprot[2:0],s02_axi_awvalid,s02_axi_awlock,s02_axi_awcache[3:0],s02_axi_awready,s02_axi_wdata[63:0],s02_axi_wstrb[7:0],s02_axi_wlast,s02_axi_wvalid,s02_axi_wready,s02_axi_bid[3:0],s02_axi_bresp[1:0],s02_axi_bvalid,s02_axi_bready,s02_axi_arid[3:0],s02_axi_araddr[63:0],s02_axi_arlen[7:0],s02_axi_arsize[2:0],s02_axi_arburst[1:0],s02_axi_arprot[2:0],s02_axi_arvalid,s02_axi_arlock,s02_axi_arcache[3:0],s02_axi_arready,s02_axi_rid[3:0],s02_axi_rdata[63:0],s02_axi_rresp[1:0],s02_axi_rlast,s02_axi_rvalid,s02_axi_rready,s03_axi_awid[3:0],s03_axi_awaddr[63:0],s03_axi_awlen[7:0],s03_axi_awsize[2:0],s03_axi_awburst[1:0],s03_axi_awprot[2:0],s03_axi_awvalid,s03_axi_awlock,s03_axi_awcache[3:0],s03_axi_awready,s03_axi_wdata[63:0],s03_axi_wstrb[7:0],s03_axi_wlast,s03_axi_wvalid,s03_axi_wready,s03_axi_bid[3:0],s03_axi_bresp[1:0],s03_axi_bvalid,s03_axi_bready,s03_axi_arid[3:0],s03_axi_araddr[63:0],s03_axi_arlen[7:0],s03_axi_arsize[2:0],s03_axi_arburst[1:0],s03_axi_arprot[2:0],s03_axi_arvalid,s03_axi_arlock,s03_axi_arcache[3:0],s03_axi_arready,s03_axi_rid[3:0],s03_axi_rdata[63:0],s03_axi_rresp[1:0],s03_axi_rlast,s03_axi_rvalid,s03_axi_rready,s04_axi_awid[3:0],s04_axi_awaddr[63:0],s04_axi_awlen[7:0],s04_axi_awsize[2:0],s04_axi_awburst[1:0],s04_axi_awprot[2:0],s04_axi_awvalid,s04_axi_awlock,s04_axi_awcache[3:0],s04_axi_awready,s04_axi_wdata[63:0],s04_axi_wstrb[7:0],s04_axi_wlast,s04_axi_wvalid,s04_axi_wready,s04_axi_bid[3:0],s04_axi_bresp[1:0],s04_axi_bvalid,s04_axi_bready,s04_axi_arid[3:0],s04_axi_araddr[63:0],s04_axi_arlen[7:0],s04_axi_arsize[2:0],s04_axi_arburst[1:0],s04_axi_arprot[2:0],s04_axi_arvalid,s04_axi_arlock,s04_axi_arcache[3:0],s04_axi_arready,s04_axi_rid[3:0],s04_axi_rdata[63:0],s04_axi_rresp[1:0],s04_axi_rlast,s04_axi_rvalid,s04_axi_rready,s05_axi_awid[3:0],s05_axi_awaddr[63:0],s05_axi_awlen[7:0],s05_axi_awsize[2:0],s05_axi_awburst[1:0],s05_axi_awprot[2:0],s05_axi_awvalid,s05_axi_awlock,s05_axi_awcache[3:0],s05_axi_awready,s05_axi_wdata[63:0],s05_axi_wstrb[7:0],s05_axi_wlast,s05_axi_wvalid,s05_axi_wready,s05_axi_bid[3:0],s05_axi_bresp[1:0],s05_axi_bvalid,s05_axi_bready,s05_axi_arid[3:0],s05_axi_araddr[63:0],s05_axi_arlen[7:0],s05_axi_arsize[2:0],s05_axi_arburst[1:0],s05_axi_arprot[2:0],s05_axi_arvalid,s05_axi_arlock,s05_axi_arcache[3:0],s05_axi_arready,s05_axi_rid[3:0],s05_axi_rdata[63:0],s05_axi_rresp[1:0],s05_axi_rlast,s05_axi_rvalid,s05_axi_rready,s06_axi_awid[3:0],s06_axi_awaddr[63:0],s06_axi_awlen[7:0],s06_axi_awsize[2:0],s06_axi_awburst[1:0],s06_axi_awprot[2:0],s06_axi_awvalid,s06_axi_awlock,s06_axi_awcache[3:0],s06_axi_awready,s06_axi_wdata[63:0],s06_axi_wstrb[7:0],s06_axi_wlast,s06_axi_wvalid,s06_axi_wready,s06_axi_bid[3:0],s06_axi_bresp[1:0],s06_axi_bvalid,s06_axi_bready,s06_axi_arid[3:0],s06_axi_araddr[63:0],s06_axi_arlen[7:0],s06_axi_arsize[2:0],s06_axi_arburst[1:0],s06_axi_arprot[2:0],s06_axi_arvalid,s06_axi_arlock,s06_axi_arcache[3:0],s06_axi_arready,s06_axi_rid[3:0],s06_axi_rdata[63:0],s06_axi_rresp[1:0],s06_axi_rlast,s06_axi_rvalid,s06_axi_rready,s07_axi_awid[3:0],s07_axi_awaddr[63:0],s07_axi_awlen[7:0],s07_axi_awsize[2:0],s07_axi_awburst[1:0],s07_axi_awprot[2:0],s07_axi_awvalid,s07_axi_awlock,s07_axi_awcache[3:0],s07_axi_awready,s07_axi_wdata[63:0],s07_axi_wstrb[7:0],s07_axi_wlast,s07_axi_wvalid,s07_axi_wready,s07_axi_bid[3:0],s07_axi_bresp[1:0],s07_axi_bvalid,s07_axi_bready,s07_axi_arid[3:0],s07_axi_araddr[63:0],s07_axi_arlen[7:0],s07_axi_arsize[2:0],s07_axi_arburst[1:0],s07_axi_arprot[2:0],s07_axi_arvalid,s07_axi_arlock,s07_axi_arcache[3:0],s07_axi_arready,s07_axi_rid[3:0],s07_axi_rdata[63:0],s07_axi_rresp[1:0],s07_axi_rlast,s07_axi_rvalid,s07_axi_rready,s08_axi_awid[3:0],s08_axi_awaddr[63:0],s08_axi_awlen[7:0],s08_axi_awsize[2:0],s08_axi_awburst[1:0],s08_axi_awprot[2:0],s08_axi_awvalid,s08_axi_awlock,s08_axi_awcache[3:0],s08_axi_awready,s08_axi_wdata[63:0],s08_axi_wstrb[7:0],s08_axi_wlast,s08_axi_wvalid,s08_axi_wready,s08_axi_bid[3:0],s08_axi_bresp[1:0],s08_axi_bvalid,s08_axi_bready,s08_axi_arid[3:0],s08_axi_araddr[63:0],s08_axi_arlen[7:0],s08_axi_arsize[2:0],s08_axi_arburst[1:0],s08_axi_arprot[2:0],s08_axi_arvalid,s08_axi_arlock,s08_axi_arcache[3:0],s08_axi_arready,s08_axi_rid[3:0],s08_axi_rdata[63:0],s08_axi_rresp[1:0],s08_axi_rlast,s08_axi_rvalid,s08_axi_rready,s09_axi_awid[3:0],s09_axi_awaddr[63:0],s09_axi_awlen[7:0],s09_axi_awsize[2:0],s09_axi_awburst[1:0],s09_axi_awprot[2:0],s09_axi_awvalid,s09_axi_awlock,s09_axi_awcache[3:0],s09_axi_awready,s09_axi_wdata[63:0],s09_axi_wstrb[7:0],s09_axi_wlast,s09_axi_wvalid,s09_axi_wready,s09_axi_bid[3:0],s09_axi_bresp[1:0],s09_axi_bvalid,s09_axi_bready,s09_axi_arid[3:0],s09_axi_araddr[63:0],s09_axi_arlen[7:0],s09_axi_arsize[2:0],s09_axi_arburst[1:0],s09_axi_arprot[2:0],s09_axi_arvalid,s09_axi_arlock,s09_axi_arcache[3:0],s09_axi_arready,s09_axi_rid[3:0],s09_axi_rdata[63:0],s09_axi_rresp[1:0],s09_axi_rlast,s09_axi_rvalid,s09_axi_rready,s10_axi_awid[3:0],s10_axi_awaddr[63:0],s10_axi_awlen[7:0],s10_axi_awsize[2:0],s10_axi_awburst[1:0],s10_axi_awprot[2:0],s10_axi_awvalid,s10_axi_awlock,s10_axi_awcache[3:0],s10_axi_awready,s10_axi_wdata[63:0],s10_axi_wstrb[7:0],s10_axi_wlast,s10_axi_wvalid,s10_axi_wready,s10_axi_bid[3:0],s10_axi_bresp[1:0],s10_axi_bvalid,s10_axi_bready,s10_axi_arid[3:0],s10_axi_araddr[63:0],s10_axi_arlen[7:0],s10_axi_arsize[2:0],s10_axi_arburst[1:0],s10_axi_arprot[2:0],s10_axi_arvalid,s10_axi_arlock,s10_axi_arcache[3:0],s10_axi_arready,s10_axi_rid[3:0],s10_axi_rdata[63:0],s10_axi_rresp[1:0],s10_axi_rlast,s10_axi_rvalid,s10_axi_rready,s11_axi_awid[3:0],s11_axi_awaddr[63:0],s11_axi_awlen[7:0],s11_axi_awsize[2:0],s11_axi_awburst[1:0],s11_axi_awprot[2:0],s11_axi_awvalid,s11_axi_awlock,s11_axi_awcache[3:0],s11_axi_awready,s11_axi_wdata[63:0],s11_axi_wstrb[7:0],s11_axi_wlast,s11_axi_wvalid,s11_axi_wready,s11_axi_bid[3:0],s11_axi_bresp[1:0],s11_axi_bvalid,s11_axi_bready,s11_axi_arid[3:0],s11_axi_araddr[63:0],s11_axi_arlen[7:0],s11_axi_arsize[2:0],s11_axi_arburst[1:0],s11_axi_arprot[2:0],s11_axi_arvalid,s11_axi_arlock,s11_axi_arcache[3:0],s11_axi_arready,s11_axi_rid[3:0],s11_axi_rdata[63:0],s11_axi_rresp[1:0],s11_axi_rlast,s11_axi_rvalid,s11_axi_rready,s12_axi_awid[3:0],s12_axi_awaddr[63:0],s12_axi_awlen[7:0],s12_axi_awsize[2:0],s12_axi_awburst[1:0],s12_axi_awprot[2:0],s12_axi_awvalid,s12_axi_awlock,s12_axi_awcache[3:0],s12_axi_awready,s12_axi_wdata[63:0],s12_axi_wstrb[7:0],s12_axi_wlast,s12_axi_wvalid,s12_axi_wready,s12_axi_bid[3:0],s12_axi_bresp[1:0],s12_axi_bvalid,s12_axi_bready,s12_axi_arid[3:0],s12_axi_araddr[63:0],s12_axi_arlen[7:0],s12_axi_arsize[2:0],s12_axi_arburst[1:0],s12_axi_arprot[2:0],s12_axi_arvalid,s12_axi_arlock,s12_axi_arcache[3:0],s12_axi_arready,s12_axi_rid[3:0],s12_axi_rdata[63:0],s12_axi_rresp[1:0],s12_axi_rlast,s12_axi_rvalid,s12_axi_rready,s_axi_lite_awaddr[31:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bvalid,s_axi_lite_bresp[1:0],s_axi_lite_bready,s_axi_lite_araddr[31:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,UART_RX[11:0],UART_TX[11:0]" */;
  input clk;
  input rst;
  output interupt_req;
  input interupt_ack;
  input [31:0]LOGIC_VERSION;
  input [31:0]LOGIC_SUB_VERSION;
  input [3:0]s01_axi_awid;
  input [63:0]s01_axi_awaddr;
  input [7:0]s01_axi_awlen;
  input [2:0]s01_axi_awsize;
  input [1:0]s01_axi_awburst;
  input [2:0]s01_axi_awprot;
  input s01_axi_awvalid;
  input s01_axi_awlock;
  input [3:0]s01_axi_awcache;
  output s01_axi_awready;
  input [63:0]s01_axi_wdata;
  input [7:0]s01_axi_wstrb;
  input s01_axi_wlast;
  input s01_axi_wvalid;
  output s01_axi_wready;
  output [3:0]s01_axi_bid;
  output [1:0]s01_axi_bresp;
  output s01_axi_bvalid;
  input s01_axi_bready;
  input [3:0]s01_axi_arid;
  input [63:0]s01_axi_araddr;
  input [7:0]s01_axi_arlen;
  input [2:0]s01_axi_arsize;
  input [1:0]s01_axi_arburst;
  input [2:0]s01_axi_arprot;
  input s01_axi_arvalid;
  input s01_axi_arlock;
  input [3:0]s01_axi_arcache;
  output s01_axi_arready;
  output [3:0]s01_axi_rid;
  output [63:0]s01_axi_rdata;
  output [1:0]s01_axi_rresp;
  output s01_axi_rlast;
  output s01_axi_rvalid;
  input s01_axi_rready;
  input [3:0]s02_axi_awid;
  input [63:0]s02_axi_awaddr;
  input [7:0]s02_axi_awlen;
  input [2:0]s02_axi_awsize;
  input [1:0]s02_axi_awburst;
  input [2:0]s02_axi_awprot;
  input s02_axi_awvalid;
  input s02_axi_awlock;
  input [3:0]s02_axi_awcache;
  output s02_axi_awready;
  input [63:0]s02_axi_wdata;
  input [7:0]s02_axi_wstrb;
  input s02_axi_wlast;
  input s02_axi_wvalid;
  output s02_axi_wready;
  output [3:0]s02_axi_bid;
  output [1:0]s02_axi_bresp;
  output s02_axi_bvalid;
  input s02_axi_bready;
  input [3:0]s02_axi_arid;
  input [63:0]s02_axi_araddr;
  input [7:0]s02_axi_arlen;
  input [2:0]s02_axi_arsize;
  input [1:0]s02_axi_arburst;
  input [2:0]s02_axi_arprot;
  input s02_axi_arvalid;
  input s02_axi_arlock;
  input [3:0]s02_axi_arcache;
  output s02_axi_arready;
  output [3:0]s02_axi_rid;
  output [63:0]s02_axi_rdata;
  output [1:0]s02_axi_rresp;
  output s02_axi_rlast;
  output s02_axi_rvalid;
  input s02_axi_rready;
  input [3:0]s03_axi_awid;
  input [63:0]s03_axi_awaddr;
  input [7:0]s03_axi_awlen;
  input [2:0]s03_axi_awsize;
  input [1:0]s03_axi_awburst;
  input [2:0]s03_axi_awprot;
  input s03_axi_awvalid;
  input s03_axi_awlock;
  input [3:0]s03_axi_awcache;
  output s03_axi_awready;
  input [63:0]s03_axi_wdata;
  input [7:0]s03_axi_wstrb;
  input s03_axi_wlast;
  input s03_axi_wvalid;
  output s03_axi_wready;
  output [3:0]s03_axi_bid;
  output [1:0]s03_axi_bresp;
  output s03_axi_bvalid;
  input s03_axi_bready;
  input [3:0]s03_axi_arid;
  input [63:0]s03_axi_araddr;
  input [7:0]s03_axi_arlen;
  input [2:0]s03_axi_arsize;
  input [1:0]s03_axi_arburst;
  input [2:0]s03_axi_arprot;
  input s03_axi_arvalid;
  input s03_axi_arlock;
  input [3:0]s03_axi_arcache;
  output s03_axi_arready;
  output [3:0]s03_axi_rid;
  output [63:0]s03_axi_rdata;
  output [1:0]s03_axi_rresp;
  output s03_axi_rlast;
  output s03_axi_rvalid;
  input s03_axi_rready;
  input [3:0]s04_axi_awid;
  input [63:0]s04_axi_awaddr;
  input [7:0]s04_axi_awlen;
  input [2:0]s04_axi_awsize;
  input [1:0]s04_axi_awburst;
  input [2:0]s04_axi_awprot;
  input s04_axi_awvalid;
  input s04_axi_awlock;
  input [3:0]s04_axi_awcache;
  output s04_axi_awready;
  input [63:0]s04_axi_wdata;
  input [7:0]s04_axi_wstrb;
  input s04_axi_wlast;
  input s04_axi_wvalid;
  output s04_axi_wready;
  output [3:0]s04_axi_bid;
  output [1:0]s04_axi_bresp;
  output s04_axi_bvalid;
  input s04_axi_bready;
  input [3:0]s04_axi_arid;
  input [63:0]s04_axi_araddr;
  input [7:0]s04_axi_arlen;
  input [2:0]s04_axi_arsize;
  input [1:0]s04_axi_arburst;
  input [2:0]s04_axi_arprot;
  input s04_axi_arvalid;
  input s04_axi_arlock;
  input [3:0]s04_axi_arcache;
  output s04_axi_arready;
  output [3:0]s04_axi_rid;
  output [63:0]s04_axi_rdata;
  output [1:0]s04_axi_rresp;
  output s04_axi_rlast;
  output s04_axi_rvalid;
  input s04_axi_rready;
  input [3:0]s05_axi_awid;
  input [63:0]s05_axi_awaddr;
  input [7:0]s05_axi_awlen;
  input [2:0]s05_axi_awsize;
  input [1:0]s05_axi_awburst;
  input [2:0]s05_axi_awprot;
  input s05_axi_awvalid;
  input s05_axi_awlock;
  input [3:0]s05_axi_awcache;
  output s05_axi_awready;
  input [63:0]s05_axi_wdata;
  input [7:0]s05_axi_wstrb;
  input s05_axi_wlast;
  input s05_axi_wvalid;
  output s05_axi_wready;
  output [3:0]s05_axi_bid;
  output [1:0]s05_axi_bresp;
  output s05_axi_bvalid;
  input s05_axi_bready;
  input [3:0]s05_axi_arid;
  input [63:0]s05_axi_araddr;
  input [7:0]s05_axi_arlen;
  input [2:0]s05_axi_arsize;
  input [1:0]s05_axi_arburst;
  input [2:0]s05_axi_arprot;
  input s05_axi_arvalid;
  input s05_axi_arlock;
  input [3:0]s05_axi_arcache;
  output s05_axi_arready;
  output [3:0]s05_axi_rid;
  output [63:0]s05_axi_rdata;
  output [1:0]s05_axi_rresp;
  output s05_axi_rlast;
  output s05_axi_rvalid;
  input s05_axi_rready;
  input [3:0]s06_axi_awid;
  input [63:0]s06_axi_awaddr;
  input [7:0]s06_axi_awlen;
  input [2:0]s06_axi_awsize;
  input [1:0]s06_axi_awburst;
  input [2:0]s06_axi_awprot;
  input s06_axi_awvalid;
  input s06_axi_awlock;
  input [3:0]s06_axi_awcache;
  output s06_axi_awready;
  input [63:0]s06_axi_wdata;
  input [7:0]s06_axi_wstrb;
  input s06_axi_wlast;
  input s06_axi_wvalid;
  output s06_axi_wready;
  output [3:0]s06_axi_bid;
  output [1:0]s06_axi_bresp;
  output s06_axi_bvalid;
  input s06_axi_bready;
  input [3:0]s06_axi_arid;
  input [63:0]s06_axi_araddr;
  input [7:0]s06_axi_arlen;
  input [2:0]s06_axi_arsize;
  input [1:0]s06_axi_arburst;
  input [2:0]s06_axi_arprot;
  input s06_axi_arvalid;
  input s06_axi_arlock;
  input [3:0]s06_axi_arcache;
  output s06_axi_arready;
  output [3:0]s06_axi_rid;
  output [63:0]s06_axi_rdata;
  output [1:0]s06_axi_rresp;
  output s06_axi_rlast;
  output s06_axi_rvalid;
  input s06_axi_rready;
  input [3:0]s07_axi_awid;
  input [63:0]s07_axi_awaddr;
  input [7:0]s07_axi_awlen;
  input [2:0]s07_axi_awsize;
  input [1:0]s07_axi_awburst;
  input [2:0]s07_axi_awprot;
  input s07_axi_awvalid;
  input s07_axi_awlock;
  input [3:0]s07_axi_awcache;
  output s07_axi_awready;
  input [63:0]s07_axi_wdata;
  input [7:0]s07_axi_wstrb;
  input s07_axi_wlast;
  input s07_axi_wvalid;
  output s07_axi_wready;
  output [3:0]s07_axi_bid;
  output [1:0]s07_axi_bresp;
  output s07_axi_bvalid;
  input s07_axi_bready;
  input [3:0]s07_axi_arid;
  input [63:0]s07_axi_araddr;
  input [7:0]s07_axi_arlen;
  input [2:0]s07_axi_arsize;
  input [1:0]s07_axi_arburst;
  input [2:0]s07_axi_arprot;
  input s07_axi_arvalid;
  input s07_axi_arlock;
  input [3:0]s07_axi_arcache;
  output s07_axi_arready;
  output [3:0]s07_axi_rid;
  output [63:0]s07_axi_rdata;
  output [1:0]s07_axi_rresp;
  output s07_axi_rlast;
  output s07_axi_rvalid;
  input s07_axi_rready;
  input [3:0]s08_axi_awid;
  input [63:0]s08_axi_awaddr;
  input [7:0]s08_axi_awlen;
  input [2:0]s08_axi_awsize;
  input [1:0]s08_axi_awburst;
  input [2:0]s08_axi_awprot;
  input s08_axi_awvalid;
  input s08_axi_awlock;
  input [3:0]s08_axi_awcache;
  output s08_axi_awready;
  input [63:0]s08_axi_wdata;
  input [7:0]s08_axi_wstrb;
  input s08_axi_wlast;
  input s08_axi_wvalid;
  output s08_axi_wready;
  output [3:0]s08_axi_bid;
  output [1:0]s08_axi_bresp;
  output s08_axi_bvalid;
  input s08_axi_bready;
  input [3:0]s08_axi_arid;
  input [63:0]s08_axi_araddr;
  input [7:0]s08_axi_arlen;
  input [2:0]s08_axi_arsize;
  input [1:0]s08_axi_arburst;
  input [2:0]s08_axi_arprot;
  input s08_axi_arvalid;
  input s08_axi_arlock;
  input [3:0]s08_axi_arcache;
  output s08_axi_arready;
  output [3:0]s08_axi_rid;
  output [63:0]s08_axi_rdata;
  output [1:0]s08_axi_rresp;
  output s08_axi_rlast;
  output s08_axi_rvalid;
  input s08_axi_rready;
  input [3:0]s09_axi_awid;
  input [63:0]s09_axi_awaddr;
  input [7:0]s09_axi_awlen;
  input [2:0]s09_axi_awsize;
  input [1:0]s09_axi_awburst;
  input [2:0]s09_axi_awprot;
  input s09_axi_awvalid;
  input s09_axi_awlock;
  input [3:0]s09_axi_awcache;
  output s09_axi_awready;
  input [63:0]s09_axi_wdata;
  input [7:0]s09_axi_wstrb;
  input s09_axi_wlast;
  input s09_axi_wvalid;
  output s09_axi_wready;
  output [3:0]s09_axi_bid;
  output [1:0]s09_axi_bresp;
  output s09_axi_bvalid;
  input s09_axi_bready;
  input [3:0]s09_axi_arid;
  input [63:0]s09_axi_araddr;
  input [7:0]s09_axi_arlen;
  input [2:0]s09_axi_arsize;
  input [1:0]s09_axi_arburst;
  input [2:0]s09_axi_arprot;
  input s09_axi_arvalid;
  input s09_axi_arlock;
  input [3:0]s09_axi_arcache;
  output s09_axi_arready;
  output [3:0]s09_axi_rid;
  output [63:0]s09_axi_rdata;
  output [1:0]s09_axi_rresp;
  output s09_axi_rlast;
  output s09_axi_rvalid;
  input s09_axi_rready;
  input [3:0]s10_axi_awid;
  input [63:0]s10_axi_awaddr;
  input [7:0]s10_axi_awlen;
  input [2:0]s10_axi_awsize;
  input [1:0]s10_axi_awburst;
  input [2:0]s10_axi_awprot;
  input s10_axi_awvalid;
  input s10_axi_awlock;
  input [3:0]s10_axi_awcache;
  output s10_axi_awready;
  input [63:0]s10_axi_wdata;
  input [7:0]s10_axi_wstrb;
  input s10_axi_wlast;
  input s10_axi_wvalid;
  output s10_axi_wready;
  output [3:0]s10_axi_bid;
  output [1:0]s10_axi_bresp;
  output s10_axi_bvalid;
  input s10_axi_bready;
  input [3:0]s10_axi_arid;
  input [63:0]s10_axi_araddr;
  input [7:0]s10_axi_arlen;
  input [2:0]s10_axi_arsize;
  input [1:0]s10_axi_arburst;
  input [2:0]s10_axi_arprot;
  input s10_axi_arvalid;
  input s10_axi_arlock;
  input [3:0]s10_axi_arcache;
  output s10_axi_arready;
  output [3:0]s10_axi_rid;
  output [63:0]s10_axi_rdata;
  output [1:0]s10_axi_rresp;
  output s10_axi_rlast;
  output s10_axi_rvalid;
  input s10_axi_rready;
  input [3:0]s11_axi_awid;
  input [63:0]s11_axi_awaddr;
  input [7:0]s11_axi_awlen;
  input [2:0]s11_axi_awsize;
  input [1:0]s11_axi_awburst;
  input [2:0]s11_axi_awprot;
  input s11_axi_awvalid;
  input s11_axi_awlock;
  input [3:0]s11_axi_awcache;
  output s11_axi_awready;
  input [63:0]s11_axi_wdata;
  input [7:0]s11_axi_wstrb;
  input s11_axi_wlast;
  input s11_axi_wvalid;
  output s11_axi_wready;
  output [3:0]s11_axi_bid;
  output [1:0]s11_axi_bresp;
  output s11_axi_bvalid;
  input s11_axi_bready;
  input [3:0]s11_axi_arid;
  input [63:0]s11_axi_araddr;
  input [7:0]s11_axi_arlen;
  input [2:0]s11_axi_arsize;
  input [1:0]s11_axi_arburst;
  input [2:0]s11_axi_arprot;
  input s11_axi_arvalid;
  input s11_axi_arlock;
  input [3:0]s11_axi_arcache;
  output s11_axi_arready;
  output [3:0]s11_axi_rid;
  output [63:0]s11_axi_rdata;
  output [1:0]s11_axi_rresp;
  output s11_axi_rlast;
  output s11_axi_rvalid;
  input s11_axi_rready;
  input [3:0]s12_axi_awid;
  input [63:0]s12_axi_awaddr;
  input [7:0]s12_axi_awlen;
  input [2:0]s12_axi_awsize;
  input [1:0]s12_axi_awburst;
  input [2:0]s12_axi_awprot;
  input s12_axi_awvalid;
  input s12_axi_awlock;
  input [3:0]s12_axi_awcache;
  output s12_axi_awready;
  input [63:0]s12_axi_wdata;
  input [7:0]s12_axi_wstrb;
  input s12_axi_wlast;
  input s12_axi_wvalid;
  output s12_axi_wready;
  output [3:0]s12_axi_bid;
  output [1:0]s12_axi_bresp;
  output s12_axi_bvalid;
  input s12_axi_bready;
  input [3:0]s12_axi_arid;
  input [63:0]s12_axi_araddr;
  input [7:0]s12_axi_arlen;
  input [2:0]s12_axi_arsize;
  input [1:0]s12_axi_arburst;
  input [2:0]s12_axi_arprot;
  input s12_axi_arvalid;
  input s12_axi_arlock;
  input [3:0]s12_axi_arcache;
  output s12_axi_arready;
  output [3:0]s12_axi_rid;
  output [63:0]s12_axi_rdata;
  output [1:0]s12_axi_rresp;
  output s12_axi_rlast;
  output s12_axi_rvalid;
  input s12_axi_rready;
  input [31:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output s_axi_lite_bvalid;
  output [1:0]s_axi_lite_bresp;
  input s_axi_lite_bready;
  input [31:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  input [11:0]UART_RX;
  output [11:0]UART_TX;
endmodule
