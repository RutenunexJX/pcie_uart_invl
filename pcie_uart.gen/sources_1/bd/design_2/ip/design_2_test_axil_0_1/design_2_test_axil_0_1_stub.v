// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Apr 19 20:18:29 2026
// Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/bd/design_2/ip/design_2_test_axil_0_1/design_2_test_axil_0_1_stub.v
// Design      : design_2_test_axil_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "test_axil,Vivado 2022.2" *)
module design_2_test_axil_0_1(clk, rst_n, lite_awaddr, lite_awprot, 
  lite_awready, lite_awvalid, lite_wdata, lite_wready, lite_wstrb, lite_wvalid, lite_bready, 
  lite_bresp, lite_bvalid, lite_araddr, lite_arprot, lite_arready, lite_arvalid, lite_rdata, 
  lite_rready, lite_rresp, lite_rvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,lite_awaddr[31:0],lite_awprot[2:0],lite_awready,lite_awvalid,lite_wdata[31:0],lite_wready,lite_wstrb[3:0],lite_wvalid,lite_bready,lite_bresp[1:0],lite_bvalid,lite_araddr[31:0],lite_arprot[2:0],lite_arready,lite_arvalid,lite_rdata[31:0],lite_rready,lite_rresp[1:0],lite_rvalid" */;
  input clk;
  input rst_n;
  input [31:0]lite_awaddr;
  input [2:0]lite_awprot;
  output lite_awready;
  input lite_awvalid;
  input [31:0]lite_wdata;
  output lite_wready;
  input [3:0]lite_wstrb;
  input lite_wvalid;
  input lite_bready;
  output [1:0]lite_bresp;
  output lite_bvalid;
  input [31:0]lite_araddr;
  input [2:0]lite_arprot;
  output lite_arready;
  input lite_arvalid;
  output [31:0]lite_rdata;
  input lite_rready;
  output [1:0]lite_rresp;
  output lite_rvalid;
endmodule
