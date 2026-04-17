// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Apr 17 12:03:29 2026
// Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/ip/bram_64x8192/bram_64x8192_stub.v
// Design      : bram_64x8192
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module bram_64x8192(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[7:0],addra[14:0],dina[63:0],douta[15:0]" */;
  input clka;
  input ena;
  input [7:0]wea;
  input [14:0]addra;
  input [63:0]dina;
  output [15:0]douta;
endmodule
