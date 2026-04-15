// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Apr 13 16:43:43 2026
// Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/_xu/_prj/pcie_uart_tx_array/repo/pcie_uart.gen/sources_1/bd/design_1/ip/design_1_BUFG_125M_0/design_1_BUFG_125M_0_stub.v
// Design      : design_1_BUFG_125M_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2022.2" *)
module design_1_BUFG_125M_0(BUFG_I, BUFG_O)
/* synthesis syn_black_box black_box_pad_pin="BUFG_I[0:0],BUFG_O[0:0]" */;
  input [0:0]BUFG_I;
  output [0:0]BUFG_O;
endmodule
