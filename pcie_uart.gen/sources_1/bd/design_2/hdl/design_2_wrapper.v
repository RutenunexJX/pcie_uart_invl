//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Apr 19 20:16:05 2026
//Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (PCIE_CLK,
    PCIE_RSTN,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  input PCIE_CLK;
  input PCIE_RSTN;
  input [1:0]pcie_mgt_rxn;
  input [1:0]pcie_mgt_rxp;
  output [1:0]pcie_mgt_txn;
  output [1:0]pcie_mgt_txp;

  wire PCIE_CLK;
  wire PCIE_RSTN;
  wire [1:0]pcie_mgt_rxn;
  wire [1:0]pcie_mgt_rxp;
  wire [1:0]pcie_mgt_txn;
  wire [1:0]pcie_mgt_txp;

  design_2 design_2_i
       (.PCIE_CLK(PCIE_CLK),
        .PCIE_RSTN(PCIE_RSTN),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp));
endmodule
