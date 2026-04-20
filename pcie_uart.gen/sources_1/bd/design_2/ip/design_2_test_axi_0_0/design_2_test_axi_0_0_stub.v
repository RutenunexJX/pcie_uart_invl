// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Apr 19 16:45:19 2026
// Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/bd/design_2/ip/design_2_test_axi_0_0/design_2_test_axi_0_0_stub.v
// Design      : design_2_test_axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "test_axi,Vivado 2022.2" *)
module design_2_test_axi_0_0(clk, rst_n, s_axi_awid, s_axi_awaddr, 
  s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awprot, s_axi_awvalid, s_axi_awlock, 
  s_axi_awcache, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, 
  s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,s_axi_awid[3:0],s_axi_awaddr[63:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awlock,s_axi_awcache[3:0],s_axi_awready,s_axi_wdata[63:0],s_axi_wstrb[7:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready" */;
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
endmodule
