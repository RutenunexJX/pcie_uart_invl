//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Apr 13 17:22:24 2026
//Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (LOGIC_SUB_VERSION,
    LOGIC_VERSION,
    PCIE_CLK,
    PCIE_RSTN,
    UART_RX_0,
    UART_TX_0,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  input [31:0]LOGIC_SUB_VERSION;
  input [31:0]LOGIC_VERSION;
  input PCIE_CLK;
  input PCIE_RSTN;
  input [11:0]UART_RX_0;
  output [11:0]UART_TX_0;
  input [1:0]pcie_mgt_rxn;
  input [1:0]pcie_mgt_rxp;
  output [1:0]pcie_mgt_txn;
  output [1:0]pcie_mgt_txp;

  wire [31:0]LOGIC_SUB_VERSION;
  wire [31:0]LOGIC_VERSION;
  wire PCIE_CLK;
  wire PCIE_RSTN;
  wire [11:0]UART_RX_0;
  wire [11:0]UART_TX_0;
  wire [1:0]pcie_mgt_rxn;
  wire [1:0]pcie_mgt_rxp;
  wire [1:0]pcie_mgt_txn;
  wire [1:0]pcie_mgt_txp;

  design_1 design_1_i
       (.LOGIC_SUB_VERSION(LOGIC_SUB_VERSION),
        .LOGIC_VERSION(LOGIC_VERSION),
        .PCIE_CLK(PCIE_CLK),
        .PCIE_RSTN(PCIE_RSTN),
        .UART_RX_0(UART_RX_0),
        .UART_TX_0(UART_TX_0),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp));
endmodule
