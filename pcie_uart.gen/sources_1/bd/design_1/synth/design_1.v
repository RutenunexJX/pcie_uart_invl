//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Apr 13 17:22:24 2026
//Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIE_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIE_CLK, CLK_DOMAIN design_1_PCIE_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input PCIE_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input PCIE_RSTN;
  input [11:0]UART_RX_0;
  output [11:0]UART_TX_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [1:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [1:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [1:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [1:0]pcie_mgt_txp;

  wire [0:0]BUFG_125M_BUFG_O;
  wire [31:0]LOGIC_SUB_VERSION_0_1;
  wire [31:0]LOGIC_VERSION_0_1;
  wire [11:0]UART_RX_0_1;
  wire [11:0]bridge_top_v2_0_UART_TX;
  wire bridge_top_v2_0_interupt_req;
  wire [63:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [63:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [63:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [63:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [7:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [63:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [63:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [63:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [63:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [7:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [63:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M02_AXI_ARLEN;
  wire [0:0]smartconnect_0_M02_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [63:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M02_AXI_AWLEN;
  wire [0:0]smartconnect_0_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [63:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [63:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [7:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [63:0]smartconnect_0_M03_AXI_ARADDR;
  wire [1:0]smartconnect_0_M03_AXI_ARBURST;
  wire [3:0]smartconnect_0_M03_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M03_AXI_ARLEN;
  wire [0:0]smartconnect_0_M03_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M03_AXI_ARPROT;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [63:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M03_AXI_AWLEN;
  wire [0:0]smartconnect_0_M03_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M03_AXI_AWPROT;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire [2:0]smartconnect_0_M03_AXI_AWSIZE;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [63:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RLAST;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [63:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WLAST;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [7:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [63:0]smartconnect_0_M04_AXI_ARADDR;
  wire [1:0]smartconnect_0_M04_AXI_ARBURST;
  wire [3:0]smartconnect_0_M04_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M04_AXI_ARLEN;
  wire [0:0]smartconnect_0_M04_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M04_AXI_ARPROT;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire [2:0]smartconnect_0_M04_AXI_ARSIZE;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [63:0]smartconnect_0_M04_AXI_AWADDR;
  wire [1:0]smartconnect_0_M04_AXI_AWBURST;
  wire [3:0]smartconnect_0_M04_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M04_AXI_AWLEN;
  wire [0:0]smartconnect_0_M04_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M04_AXI_AWPROT;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire [2:0]smartconnect_0_M04_AXI_AWSIZE;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [63:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RLAST;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [63:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WLAST;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [7:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [63:0]smartconnect_0_M05_AXI_ARADDR;
  wire [1:0]smartconnect_0_M05_AXI_ARBURST;
  wire [3:0]smartconnect_0_M05_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M05_AXI_ARLEN;
  wire [0:0]smartconnect_0_M05_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M05_AXI_ARPROT;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire [2:0]smartconnect_0_M05_AXI_ARSIZE;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [63:0]smartconnect_0_M05_AXI_AWADDR;
  wire [1:0]smartconnect_0_M05_AXI_AWBURST;
  wire [3:0]smartconnect_0_M05_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M05_AXI_AWLEN;
  wire [0:0]smartconnect_0_M05_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M05_AXI_AWPROT;
  wire smartconnect_0_M05_AXI_AWREADY;
  wire [2:0]smartconnect_0_M05_AXI_AWSIZE;
  wire smartconnect_0_M05_AXI_AWVALID;
  wire smartconnect_0_M05_AXI_BREADY;
  wire [1:0]smartconnect_0_M05_AXI_BRESP;
  wire smartconnect_0_M05_AXI_BVALID;
  wire [63:0]smartconnect_0_M05_AXI_RDATA;
  wire smartconnect_0_M05_AXI_RLAST;
  wire smartconnect_0_M05_AXI_RREADY;
  wire [1:0]smartconnect_0_M05_AXI_RRESP;
  wire smartconnect_0_M05_AXI_RVALID;
  wire [63:0]smartconnect_0_M05_AXI_WDATA;
  wire smartconnect_0_M05_AXI_WLAST;
  wire smartconnect_0_M05_AXI_WREADY;
  wire [7:0]smartconnect_0_M05_AXI_WSTRB;
  wire smartconnect_0_M05_AXI_WVALID;
  wire [63:0]smartconnect_0_M06_AXI_ARADDR;
  wire [1:0]smartconnect_0_M06_AXI_ARBURST;
  wire [3:0]smartconnect_0_M06_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M06_AXI_ARLEN;
  wire [0:0]smartconnect_0_M06_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M06_AXI_ARPROT;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire [2:0]smartconnect_0_M06_AXI_ARSIZE;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [63:0]smartconnect_0_M06_AXI_AWADDR;
  wire [1:0]smartconnect_0_M06_AXI_AWBURST;
  wire [3:0]smartconnect_0_M06_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M06_AXI_AWLEN;
  wire [0:0]smartconnect_0_M06_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M06_AXI_AWPROT;
  wire smartconnect_0_M06_AXI_AWREADY;
  wire [2:0]smartconnect_0_M06_AXI_AWSIZE;
  wire smartconnect_0_M06_AXI_AWVALID;
  wire smartconnect_0_M06_AXI_BREADY;
  wire [1:0]smartconnect_0_M06_AXI_BRESP;
  wire smartconnect_0_M06_AXI_BVALID;
  wire [63:0]smartconnect_0_M06_AXI_RDATA;
  wire smartconnect_0_M06_AXI_RLAST;
  wire smartconnect_0_M06_AXI_RREADY;
  wire [1:0]smartconnect_0_M06_AXI_RRESP;
  wire smartconnect_0_M06_AXI_RVALID;
  wire [63:0]smartconnect_0_M06_AXI_WDATA;
  wire smartconnect_0_M06_AXI_WLAST;
  wire smartconnect_0_M06_AXI_WREADY;
  wire [7:0]smartconnect_0_M06_AXI_WSTRB;
  wire smartconnect_0_M06_AXI_WVALID;
  wire [63:0]smartconnect_0_M07_AXI_ARADDR;
  wire [1:0]smartconnect_0_M07_AXI_ARBURST;
  wire [3:0]smartconnect_0_M07_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M07_AXI_ARLEN;
  wire [0:0]smartconnect_0_M07_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M07_AXI_ARPROT;
  wire smartconnect_0_M07_AXI_ARREADY;
  wire [2:0]smartconnect_0_M07_AXI_ARSIZE;
  wire smartconnect_0_M07_AXI_ARVALID;
  wire [63:0]smartconnect_0_M07_AXI_AWADDR;
  wire [1:0]smartconnect_0_M07_AXI_AWBURST;
  wire [3:0]smartconnect_0_M07_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M07_AXI_AWLEN;
  wire [0:0]smartconnect_0_M07_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M07_AXI_AWPROT;
  wire smartconnect_0_M07_AXI_AWREADY;
  wire [2:0]smartconnect_0_M07_AXI_AWSIZE;
  wire smartconnect_0_M07_AXI_AWVALID;
  wire smartconnect_0_M07_AXI_BREADY;
  wire [1:0]smartconnect_0_M07_AXI_BRESP;
  wire smartconnect_0_M07_AXI_BVALID;
  wire [63:0]smartconnect_0_M07_AXI_RDATA;
  wire smartconnect_0_M07_AXI_RLAST;
  wire smartconnect_0_M07_AXI_RREADY;
  wire [1:0]smartconnect_0_M07_AXI_RRESP;
  wire smartconnect_0_M07_AXI_RVALID;
  wire [63:0]smartconnect_0_M07_AXI_WDATA;
  wire smartconnect_0_M07_AXI_WLAST;
  wire smartconnect_0_M07_AXI_WREADY;
  wire [7:0]smartconnect_0_M07_AXI_WSTRB;
  wire smartconnect_0_M07_AXI_WVALID;
  wire [63:0]smartconnect_0_M08_AXI_ARADDR;
  wire [1:0]smartconnect_0_M08_AXI_ARBURST;
  wire [3:0]smartconnect_0_M08_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M08_AXI_ARLEN;
  wire [0:0]smartconnect_0_M08_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M08_AXI_ARPROT;
  wire smartconnect_0_M08_AXI_ARREADY;
  wire [2:0]smartconnect_0_M08_AXI_ARSIZE;
  wire smartconnect_0_M08_AXI_ARVALID;
  wire [63:0]smartconnect_0_M08_AXI_AWADDR;
  wire [1:0]smartconnect_0_M08_AXI_AWBURST;
  wire [3:0]smartconnect_0_M08_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M08_AXI_AWLEN;
  wire [0:0]smartconnect_0_M08_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M08_AXI_AWPROT;
  wire smartconnect_0_M08_AXI_AWREADY;
  wire [2:0]smartconnect_0_M08_AXI_AWSIZE;
  wire smartconnect_0_M08_AXI_AWVALID;
  wire smartconnect_0_M08_AXI_BREADY;
  wire [1:0]smartconnect_0_M08_AXI_BRESP;
  wire smartconnect_0_M08_AXI_BVALID;
  wire [63:0]smartconnect_0_M08_AXI_RDATA;
  wire smartconnect_0_M08_AXI_RLAST;
  wire smartconnect_0_M08_AXI_RREADY;
  wire [1:0]smartconnect_0_M08_AXI_RRESP;
  wire smartconnect_0_M08_AXI_RVALID;
  wire [63:0]smartconnect_0_M08_AXI_WDATA;
  wire smartconnect_0_M08_AXI_WLAST;
  wire smartconnect_0_M08_AXI_WREADY;
  wire [7:0]smartconnect_0_M08_AXI_WSTRB;
  wire smartconnect_0_M08_AXI_WVALID;
  wire [63:0]smartconnect_0_M09_AXI_ARADDR;
  wire [1:0]smartconnect_0_M09_AXI_ARBURST;
  wire [3:0]smartconnect_0_M09_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M09_AXI_ARLEN;
  wire [0:0]smartconnect_0_M09_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M09_AXI_ARPROT;
  wire smartconnect_0_M09_AXI_ARREADY;
  wire [2:0]smartconnect_0_M09_AXI_ARSIZE;
  wire smartconnect_0_M09_AXI_ARVALID;
  wire [63:0]smartconnect_0_M09_AXI_AWADDR;
  wire [1:0]smartconnect_0_M09_AXI_AWBURST;
  wire [3:0]smartconnect_0_M09_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M09_AXI_AWLEN;
  wire [0:0]smartconnect_0_M09_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M09_AXI_AWPROT;
  wire smartconnect_0_M09_AXI_AWREADY;
  wire [2:0]smartconnect_0_M09_AXI_AWSIZE;
  wire smartconnect_0_M09_AXI_AWVALID;
  wire smartconnect_0_M09_AXI_BREADY;
  wire [1:0]smartconnect_0_M09_AXI_BRESP;
  wire smartconnect_0_M09_AXI_BVALID;
  wire [63:0]smartconnect_0_M09_AXI_RDATA;
  wire smartconnect_0_M09_AXI_RLAST;
  wire smartconnect_0_M09_AXI_RREADY;
  wire [1:0]smartconnect_0_M09_AXI_RRESP;
  wire smartconnect_0_M09_AXI_RVALID;
  wire [63:0]smartconnect_0_M09_AXI_WDATA;
  wire smartconnect_0_M09_AXI_WLAST;
  wire smartconnect_0_M09_AXI_WREADY;
  wire [7:0]smartconnect_0_M09_AXI_WSTRB;
  wire smartconnect_0_M09_AXI_WVALID;
  wire [63:0]smartconnect_0_M10_AXI_ARADDR;
  wire [1:0]smartconnect_0_M10_AXI_ARBURST;
  wire [3:0]smartconnect_0_M10_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M10_AXI_ARLEN;
  wire [0:0]smartconnect_0_M10_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M10_AXI_ARPROT;
  wire smartconnect_0_M10_AXI_ARREADY;
  wire [2:0]smartconnect_0_M10_AXI_ARSIZE;
  wire smartconnect_0_M10_AXI_ARVALID;
  wire [63:0]smartconnect_0_M10_AXI_AWADDR;
  wire [1:0]smartconnect_0_M10_AXI_AWBURST;
  wire [3:0]smartconnect_0_M10_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M10_AXI_AWLEN;
  wire [0:0]smartconnect_0_M10_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M10_AXI_AWPROT;
  wire smartconnect_0_M10_AXI_AWREADY;
  wire [2:0]smartconnect_0_M10_AXI_AWSIZE;
  wire smartconnect_0_M10_AXI_AWVALID;
  wire smartconnect_0_M10_AXI_BREADY;
  wire [1:0]smartconnect_0_M10_AXI_BRESP;
  wire smartconnect_0_M10_AXI_BVALID;
  wire [63:0]smartconnect_0_M10_AXI_RDATA;
  wire smartconnect_0_M10_AXI_RLAST;
  wire smartconnect_0_M10_AXI_RREADY;
  wire [1:0]smartconnect_0_M10_AXI_RRESP;
  wire smartconnect_0_M10_AXI_RVALID;
  wire [63:0]smartconnect_0_M10_AXI_WDATA;
  wire smartconnect_0_M10_AXI_WLAST;
  wire smartconnect_0_M10_AXI_WREADY;
  wire [7:0]smartconnect_0_M10_AXI_WSTRB;
  wire smartconnect_0_M10_AXI_WVALID;
  wire [63:0]smartconnect_0_M11_AXI_ARADDR;
  wire [1:0]smartconnect_0_M11_AXI_ARBURST;
  wire [3:0]smartconnect_0_M11_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M11_AXI_ARLEN;
  wire [0:0]smartconnect_0_M11_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M11_AXI_ARPROT;
  wire smartconnect_0_M11_AXI_ARREADY;
  wire [2:0]smartconnect_0_M11_AXI_ARSIZE;
  wire smartconnect_0_M11_AXI_ARVALID;
  wire [63:0]smartconnect_0_M11_AXI_AWADDR;
  wire [1:0]smartconnect_0_M11_AXI_AWBURST;
  wire [3:0]smartconnect_0_M11_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M11_AXI_AWLEN;
  wire [0:0]smartconnect_0_M11_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M11_AXI_AWPROT;
  wire smartconnect_0_M11_AXI_AWREADY;
  wire [2:0]smartconnect_0_M11_AXI_AWSIZE;
  wire smartconnect_0_M11_AXI_AWVALID;
  wire smartconnect_0_M11_AXI_BREADY;
  wire [1:0]smartconnect_0_M11_AXI_BRESP;
  wire smartconnect_0_M11_AXI_BVALID;
  wire [63:0]smartconnect_0_M11_AXI_RDATA;
  wire smartconnect_0_M11_AXI_RLAST;
  wire smartconnect_0_M11_AXI_RREADY;
  wire [1:0]smartconnect_0_M11_AXI_RRESP;
  wire smartconnect_0_M11_AXI_RVALID;
  wire [63:0]smartconnect_0_M11_AXI_WDATA;
  wire smartconnect_0_M11_AXI_WLAST;
  wire smartconnect_0_M11_AXI_WREADY;
  wire [7:0]smartconnect_0_M11_AXI_WSTRB;
  wire smartconnect_0_M11_AXI_WVALID;
  wire sys_clk_0_1;
  wire sys_rst_n_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [63:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [3:0]xdma_0_M_AXI_ARID;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [63:0]xdma_0_M_AXI_AWADDR;
  wire [1:0]xdma_0_M_AXI_AWBURST;
  wire [3:0]xdma_0_M_AXI_AWCACHE;
  wire [3:0]xdma_0_M_AXI_AWID;
  wire [7:0]xdma_0_M_AXI_AWLEN;
  wire xdma_0_M_AXI_AWLOCK;
  wire [2:0]xdma_0_M_AXI_AWPROT;
  wire xdma_0_M_AXI_AWREADY;
  wire [2:0]xdma_0_M_AXI_AWSIZE;
  wire xdma_0_M_AXI_AWVALID;
  wire [3:0]xdma_0_M_AXI_BID;
  wire xdma_0_M_AXI_BREADY;
  wire [1:0]xdma_0_M_AXI_BRESP;
  wire xdma_0_M_AXI_BVALID;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [31:0]xdma_0_M_AXI_LITE_ARADDR;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DONT_TOUCH *) wire [2:0]xdma_0_M_AXI_LITE_ARPROT;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_ARREADY;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_ARVALID;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [31:0]xdma_0_M_AXI_LITE_AWADDR;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DONT_TOUCH *) wire [2:0]xdma_0_M_AXI_LITE_AWPROT;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_AWREADY;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_AWVALID;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_BREADY;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]xdma_0_M_AXI_LITE_BRESP;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_BVALID;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]xdma_0_M_AXI_LITE_RDATA;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_RREADY;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]xdma_0_M_AXI_LITE_RRESP;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_RVALID;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]xdma_0_M_AXI_LITE_WDATA;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_WREADY;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]xdma_0_M_AXI_LITE_WSTRB;
  (* CONN_BUS_INFO = "xdma_0_M_AXI_LITE xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire xdma_0_M_AXI_LITE_WVALID;
  wire [63:0]xdma_0_M_AXI_RDATA;
  wire [3:0]xdma_0_M_AXI_RID;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire [63:0]xdma_0_M_AXI_WDATA;
  wire xdma_0_M_AXI_WLAST;
  wire xdma_0_M_AXI_WREADY;
  wire [7:0]xdma_0_M_AXI_WSTRB;
  wire xdma_0_M_AXI_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [1:0]xdma_0_pcie_mgt_rxn;
  wire [1:0]xdma_0_pcie_mgt_rxp;
  wire [1:0]xdma_0_pcie_mgt_txn;
  wire [1:0]xdma_0_pcie_mgt_txp;
  wire [0:0]xdma_0_usr_irq_ack;

  assign LOGIC_SUB_VERSION_0_1 = LOGIC_SUB_VERSION[31:0];
  assign LOGIC_VERSION_0_1 = LOGIC_VERSION[31:0];
  assign UART_RX_0_1 = UART_RX_0[11:0];
  assign UART_TX_0[11:0] = bridge_top_v2_0_UART_TX;
  assign pcie_mgt_txn[1:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[1:0] = xdma_0_pcie_mgt_txp;
  assign sys_clk_0_1 = PCIE_CLK;
  assign sys_rst_n_0_1 = PCIE_RSTN;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[1:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[1:0];
  design_1_BUFG_125M_0 BUFG_125M
       (.BUFG_I(xdma_0_axi_aclk),
        .BUFG_O(BUFG_125M_BUFG_O));
  design_1_bridge_top_v2_0_0 bridge_top_v2_0
       (.LOGIC_SUB_VERSION(LOGIC_SUB_VERSION_0_1),
        .LOGIC_VERSION(LOGIC_VERSION_0_1),
        .UART_RX(UART_RX_0_1),
        .UART_TX(bridge_top_v2_0_UART_TX),
        .clk(BUFG_125M_BUFG_O),
        .interupt_ack(xdma_0_usr_irq_ack),
        .interupt_req(bridge_top_v2_0_interupt_req),
        .rst(util_vector_logic_0_Res),
        .s01_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s01_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s01_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .s01_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s01_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s01_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .s01_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s01_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s01_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s01_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s01_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s01_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s01_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .s01_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s01_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s01_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .s01_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s01_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s01_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s01_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s01_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s01_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s01_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s01_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s01_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .s01_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s01_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s01_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s01_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s01_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .s01_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s01_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s01_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .s02_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s02_axi_arburst(smartconnect_0_M01_AXI_ARBURST),
        .s02_axi_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .s02_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s02_axi_arlen(smartconnect_0_M01_AXI_ARLEN),
        .s02_axi_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .s02_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s02_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s02_axi_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .s02_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s02_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s02_axi_awburst(smartconnect_0_M01_AXI_AWBURST),
        .s02_axi_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .s02_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s02_axi_awlen(smartconnect_0_M01_AXI_AWLEN),
        .s02_axi_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .s02_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s02_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s02_axi_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .s02_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s02_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s02_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s02_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s02_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s02_axi_rlast(smartconnect_0_M01_AXI_RLAST),
        .s02_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s02_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s02_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s02_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s02_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .s02_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s02_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s02_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .s03_axi_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s03_axi_arburst(smartconnect_0_M02_AXI_ARBURST),
        .s03_axi_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .s03_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s03_axi_arlen(smartconnect_0_M02_AXI_ARLEN),
        .s03_axi_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .s03_axi_arprot(smartconnect_0_M02_AXI_ARPROT),
        .s03_axi_arready(smartconnect_0_M02_AXI_ARREADY),
        .s03_axi_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .s03_axi_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s03_axi_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s03_axi_awburst(smartconnect_0_M02_AXI_AWBURST),
        .s03_axi_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .s03_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s03_axi_awlen(smartconnect_0_M02_AXI_AWLEN),
        .s03_axi_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .s03_axi_awprot(smartconnect_0_M02_AXI_AWPROT),
        .s03_axi_awready(smartconnect_0_M02_AXI_AWREADY),
        .s03_axi_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .s03_axi_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s03_axi_bready(smartconnect_0_M02_AXI_BREADY),
        .s03_axi_bresp(smartconnect_0_M02_AXI_BRESP),
        .s03_axi_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s03_axi_rdata(smartconnect_0_M02_AXI_RDATA),
        .s03_axi_rlast(smartconnect_0_M02_AXI_RLAST),
        .s03_axi_rready(smartconnect_0_M02_AXI_RREADY),
        .s03_axi_rresp(smartconnect_0_M02_AXI_RRESP),
        .s03_axi_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s03_axi_wdata(smartconnect_0_M02_AXI_WDATA),
        .s03_axi_wlast(smartconnect_0_M02_AXI_WLAST),
        .s03_axi_wready(smartconnect_0_M02_AXI_WREADY),
        .s03_axi_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .s03_axi_wvalid(smartconnect_0_M02_AXI_WVALID),
        .s04_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s04_axi_arburst(smartconnect_0_M03_AXI_ARBURST),
        .s04_axi_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .s04_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s04_axi_arlen(smartconnect_0_M03_AXI_ARLEN),
        .s04_axi_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .s04_axi_arprot(smartconnect_0_M03_AXI_ARPROT),
        .s04_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s04_axi_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .s04_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s04_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s04_axi_awburst(smartconnect_0_M03_AXI_AWBURST),
        .s04_axi_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .s04_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s04_axi_awlen(smartconnect_0_M03_AXI_AWLEN),
        .s04_axi_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .s04_axi_awprot(smartconnect_0_M03_AXI_AWPROT),
        .s04_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s04_axi_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .s04_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s04_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s04_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s04_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s04_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s04_axi_rlast(smartconnect_0_M03_AXI_RLAST),
        .s04_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s04_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s04_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s04_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s04_axi_wlast(smartconnect_0_M03_AXI_WLAST),
        .s04_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s04_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s04_axi_wvalid(smartconnect_0_M03_AXI_WVALID),
        .s05_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s05_axi_arburst(smartconnect_0_M04_AXI_ARBURST),
        .s05_axi_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .s05_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s05_axi_arlen(smartconnect_0_M04_AXI_ARLEN),
        .s05_axi_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .s05_axi_arprot(smartconnect_0_M04_AXI_ARPROT),
        .s05_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s05_axi_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .s05_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s05_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s05_axi_awburst(smartconnect_0_M04_AXI_AWBURST),
        .s05_axi_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .s05_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s05_axi_awlen(smartconnect_0_M04_AXI_AWLEN),
        .s05_axi_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .s05_axi_awprot(smartconnect_0_M04_AXI_AWPROT),
        .s05_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s05_axi_awsize(smartconnect_0_M04_AXI_AWSIZE),
        .s05_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s05_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s05_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s05_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s05_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s05_axi_rlast(smartconnect_0_M04_AXI_RLAST),
        .s05_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s05_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s05_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s05_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s05_axi_wlast(smartconnect_0_M04_AXI_WLAST),
        .s05_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s05_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s05_axi_wvalid(smartconnect_0_M04_AXI_WVALID),
        .s06_axi_araddr(smartconnect_0_M05_AXI_ARADDR),
        .s06_axi_arburst(smartconnect_0_M05_AXI_ARBURST),
        .s06_axi_arcache(smartconnect_0_M05_AXI_ARCACHE),
        .s06_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s06_axi_arlen(smartconnect_0_M05_AXI_ARLEN),
        .s06_axi_arlock(smartconnect_0_M05_AXI_ARLOCK),
        .s06_axi_arprot(smartconnect_0_M05_AXI_ARPROT),
        .s06_axi_arready(smartconnect_0_M05_AXI_ARREADY),
        .s06_axi_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .s06_axi_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .s06_axi_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .s06_axi_awburst(smartconnect_0_M05_AXI_AWBURST),
        .s06_axi_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .s06_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s06_axi_awlen(smartconnect_0_M05_AXI_AWLEN),
        .s06_axi_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .s06_axi_awprot(smartconnect_0_M05_AXI_AWPROT),
        .s06_axi_awready(smartconnect_0_M05_AXI_AWREADY),
        .s06_axi_awsize(smartconnect_0_M05_AXI_AWSIZE),
        .s06_axi_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .s06_axi_bready(smartconnect_0_M05_AXI_BREADY),
        .s06_axi_bresp(smartconnect_0_M05_AXI_BRESP),
        .s06_axi_bvalid(smartconnect_0_M05_AXI_BVALID),
        .s06_axi_rdata(smartconnect_0_M05_AXI_RDATA),
        .s06_axi_rlast(smartconnect_0_M05_AXI_RLAST),
        .s06_axi_rready(smartconnect_0_M05_AXI_RREADY),
        .s06_axi_rresp(smartconnect_0_M05_AXI_RRESP),
        .s06_axi_rvalid(smartconnect_0_M05_AXI_RVALID),
        .s06_axi_wdata(smartconnect_0_M05_AXI_WDATA),
        .s06_axi_wlast(smartconnect_0_M05_AXI_WLAST),
        .s06_axi_wready(smartconnect_0_M05_AXI_WREADY),
        .s06_axi_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .s06_axi_wvalid(smartconnect_0_M05_AXI_WVALID),
        .s07_axi_araddr(smartconnect_0_M06_AXI_ARADDR),
        .s07_axi_arburst(smartconnect_0_M06_AXI_ARBURST),
        .s07_axi_arcache(smartconnect_0_M06_AXI_ARCACHE),
        .s07_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s07_axi_arlen(smartconnect_0_M06_AXI_ARLEN),
        .s07_axi_arlock(smartconnect_0_M06_AXI_ARLOCK),
        .s07_axi_arprot(smartconnect_0_M06_AXI_ARPROT),
        .s07_axi_arready(smartconnect_0_M06_AXI_ARREADY),
        .s07_axi_arsize(smartconnect_0_M06_AXI_ARSIZE),
        .s07_axi_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .s07_axi_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .s07_axi_awburst(smartconnect_0_M06_AXI_AWBURST),
        .s07_axi_awcache(smartconnect_0_M06_AXI_AWCACHE),
        .s07_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s07_axi_awlen(smartconnect_0_M06_AXI_AWLEN),
        .s07_axi_awlock(smartconnect_0_M06_AXI_AWLOCK),
        .s07_axi_awprot(smartconnect_0_M06_AXI_AWPROT),
        .s07_axi_awready(smartconnect_0_M06_AXI_AWREADY),
        .s07_axi_awsize(smartconnect_0_M06_AXI_AWSIZE),
        .s07_axi_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .s07_axi_bready(smartconnect_0_M06_AXI_BREADY),
        .s07_axi_bresp(smartconnect_0_M06_AXI_BRESP),
        .s07_axi_bvalid(smartconnect_0_M06_AXI_BVALID),
        .s07_axi_rdata(smartconnect_0_M06_AXI_RDATA),
        .s07_axi_rlast(smartconnect_0_M06_AXI_RLAST),
        .s07_axi_rready(smartconnect_0_M06_AXI_RREADY),
        .s07_axi_rresp(smartconnect_0_M06_AXI_RRESP),
        .s07_axi_rvalid(smartconnect_0_M06_AXI_RVALID),
        .s07_axi_wdata(smartconnect_0_M06_AXI_WDATA),
        .s07_axi_wlast(smartconnect_0_M06_AXI_WLAST),
        .s07_axi_wready(smartconnect_0_M06_AXI_WREADY),
        .s07_axi_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .s07_axi_wvalid(smartconnect_0_M06_AXI_WVALID),
        .s08_axi_araddr(smartconnect_0_M07_AXI_ARADDR),
        .s08_axi_arburst(smartconnect_0_M07_AXI_ARBURST),
        .s08_axi_arcache(smartconnect_0_M07_AXI_ARCACHE),
        .s08_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s08_axi_arlen(smartconnect_0_M07_AXI_ARLEN),
        .s08_axi_arlock(smartconnect_0_M07_AXI_ARLOCK),
        .s08_axi_arprot(smartconnect_0_M07_AXI_ARPROT),
        .s08_axi_arready(smartconnect_0_M07_AXI_ARREADY),
        .s08_axi_arsize(smartconnect_0_M07_AXI_ARSIZE),
        .s08_axi_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .s08_axi_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .s08_axi_awburst(smartconnect_0_M07_AXI_AWBURST),
        .s08_axi_awcache(smartconnect_0_M07_AXI_AWCACHE),
        .s08_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s08_axi_awlen(smartconnect_0_M07_AXI_AWLEN),
        .s08_axi_awlock(smartconnect_0_M07_AXI_AWLOCK),
        .s08_axi_awprot(smartconnect_0_M07_AXI_AWPROT),
        .s08_axi_awready(smartconnect_0_M07_AXI_AWREADY),
        .s08_axi_awsize(smartconnect_0_M07_AXI_AWSIZE),
        .s08_axi_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .s08_axi_bready(smartconnect_0_M07_AXI_BREADY),
        .s08_axi_bresp(smartconnect_0_M07_AXI_BRESP),
        .s08_axi_bvalid(smartconnect_0_M07_AXI_BVALID),
        .s08_axi_rdata(smartconnect_0_M07_AXI_RDATA),
        .s08_axi_rlast(smartconnect_0_M07_AXI_RLAST),
        .s08_axi_rready(smartconnect_0_M07_AXI_RREADY),
        .s08_axi_rresp(smartconnect_0_M07_AXI_RRESP),
        .s08_axi_rvalid(smartconnect_0_M07_AXI_RVALID),
        .s08_axi_wdata(smartconnect_0_M07_AXI_WDATA),
        .s08_axi_wlast(smartconnect_0_M07_AXI_WLAST),
        .s08_axi_wready(smartconnect_0_M07_AXI_WREADY),
        .s08_axi_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .s08_axi_wvalid(smartconnect_0_M07_AXI_WVALID),
        .s09_axi_araddr(smartconnect_0_M08_AXI_ARADDR),
        .s09_axi_arburst(smartconnect_0_M08_AXI_ARBURST),
        .s09_axi_arcache(smartconnect_0_M08_AXI_ARCACHE),
        .s09_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s09_axi_arlen(smartconnect_0_M08_AXI_ARLEN),
        .s09_axi_arlock(smartconnect_0_M08_AXI_ARLOCK),
        .s09_axi_arprot(smartconnect_0_M08_AXI_ARPROT),
        .s09_axi_arready(smartconnect_0_M08_AXI_ARREADY),
        .s09_axi_arsize(smartconnect_0_M08_AXI_ARSIZE),
        .s09_axi_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .s09_axi_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .s09_axi_awburst(smartconnect_0_M08_AXI_AWBURST),
        .s09_axi_awcache(smartconnect_0_M08_AXI_AWCACHE),
        .s09_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s09_axi_awlen(smartconnect_0_M08_AXI_AWLEN),
        .s09_axi_awlock(smartconnect_0_M08_AXI_AWLOCK),
        .s09_axi_awprot(smartconnect_0_M08_AXI_AWPROT),
        .s09_axi_awready(smartconnect_0_M08_AXI_AWREADY),
        .s09_axi_awsize(smartconnect_0_M08_AXI_AWSIZE),
        .s09_axi_awvalid(smartconnect_0_M08_AXI_AWVALID),
        .s09_axi_bready(smartconnect_0_M08_AXI_BREADY),
        .s09_axi_bresp(smartconnect_0_M08_AXI_BRESP),
        .s09_axi_bvalid(smartconnect_0_M08_AXI_BVALID),
        .s09_axi_rdata(smartconnect_0_M08_AXI_RDATA),
        .s09_axi_rlast(smartconnect_0_M08_AXI_RLAST),
        .s09_axi_rready(smartconnect_0_M08_AXI_RREADY),
        .s09_axi_rresp(smartconnect_0_M08_AXI_RRESP),
        .s09_axi_rvalid(smartconnect_0_M08_AXI_RVALID),
        .s09_axi_wdata(smartconnect_0_M08_AXI_WDATA),
        .s09_axi_wlast(smartconnect_0_M08_AXI_WLAST),
        .s09_axi_wready(smartconnect_0_M08_AXI_WREADY),
        .s09_axi_wstrb(smartconnect_0_M08_AXI_WSTRB),
        .s09_axi_wvalid(smartconnect_0_M08_AXI_WVALID),
        .s10_axi_araddr(smartconnect_0_M09_AXI_ARADDR),
        .s10_axi_arburst(smartconnect_0_M09_AXI_ARBURST),
        .s10_axi_arcache(smartconnect_0_M09_AXI_ARCACHE),
        .s10_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s10_axi_arlen(smartconnect_0_M09_AXI_ARLEN),
        .s10_axi_arlock(smartconnect_0_M09_AXI_ARLOCK),
        .s10_axi_arprot(smartconnect_0_M09_AXI_ARPROT),
        .s10_axi_arready(smartconnect_0_M09_AXI_ARREADY),
        .s10_axi_arsize(smartconnect_0_M09_AXI_ARSIZE),
        .s10_axi_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .s10_axi_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .s10_axi_awburst(smartconnect_0_M09_AXI_AWBURST),
        .s10_axi_awcache(smartconnect_0_M09_AXI_AWCACHE),
        .s10_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s10_axi_awlen(smartconnect_0_M09_AXI_AWLEN),
        .s10_axi_awlock(smartconnect_0_M09_AXI_AWLOCK),
        .s10_axi_awprot(smartconnect_0_M09_AXI_AWPROT),
        .s10_axi_awready(smartconnect_0_M09_AXI_AWREADY),
        .s10_axi_awsize(smartconnect_0_M09_AXI_AWSIZE),
        .s10_axi_awvalid(smartconnect_0_M09_AXI_AWVALID),
        .s10_axi_bready(smartconnect_0_M09_AXI_BREADY),
        .s10_axi_bresp(smartconnect_0_M09_AXI_BRESP),
        .s10_axi_bvalid(smartconnect_0_M09_AXI_BVALID),
        .s10_axi_rdata(smartconnect_0_M09_AXI_RDATA),
        .s10_axi_rlast(smartconnect_0_M09_AXI_RLAST),
        .s10_axi_rready(smartconnect_0_M09_AXI_RREADY),
        .s10_axi_rresp(smartconnect_0_M09_AXI_RRESP),
        .s10_axi_rvalid(smartconnect_0_M09_AXI_RVALID),
        .s10_axi_wdata(smartconnect_0_M09_AXI_WDATA),
        .s10_axi_wlast(smartconnect_0_M09_AXI_WLAST),
        .s10_axi_wready(smartconnect_0_M09_AXI_WREADY),
        .s10_axi_wstrb(smartconnect_0_M09_AXI_WSTRB),
        .s10_axi_wvalid(smartconnect_0_M09_AXI_WVALID),
        .s11_axi_araddr(smartconnect_0_M10_AXI_ARADDR),
        .s11_axi_arburst(smartconnect_0_M10_AXI_ARBURST),
        .s11_axi_arcache(smartconnect_0_M10_AXI_ARCACHE),
        .s11_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s11_axi_arlen(smartconnect_0_M10_AXI_ARLEN),
        .s11_axi_arlock(smartconnect_0_M10_AXI_ARLOCK),
        .s11_axi_arprot(smartconnect_0_M10_AXI_ARPROT),
        .s11_axi_arready(smartconnect_0_M10_AXI_ARREADY),
        .s11_axi_arsize(smartconnect_0_M10_AXI_ARSIZE),
        .s11_axi_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .s11_axi_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .s11_axi_awburst(smartconnect_0_M10_AXI_AWBURST),
        .s11_axi_awcache(smartconnect_0_M10_AXI_AWCACHE),
        .s11_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s11_axi_awlen(smartconnect_0_M10_AXI_AWLEN),
        .s11_axi_awlock(smartconnect_0_M10_AXI_AWLOCK),
        .s11_axi_awprot(smartconnect_0_M10_AXI_AWPROT),
        .s11_axi_awready(smartconnect_0_M10_AXI_AWREADY),
        .s11_axi_awsize(smartconnect_0_M10_AXI_AWSIZE),
        .s11_axi_awvalid(smartconnect_0_M10_AXI_AWVALID),
        .s11_axi_bready(smartconnect_0_M10_AXI_BREADY),
        .s11_axi_bresp(smartconnect_0_M10_AXI_BRESP),
        .s11_axi_bvalid(smartconnect_0_M10_AXI_BVALID),
        .s11_axi_rdata(smartconnect_0_M10_AXI_RDATA),
        .s11_axi_rlast(smartconnect_0_M10_AXI_RLAST),
        .s11_axi_rready(smartconnect_0_M10_AXI_RREADY),
        .s11_axi_rresp(smartconnect_0_M10_AXI_RRESP),
        .s11_axi_rvalid(smartconnect_0_M10_AXI_RVALID),
        .s11_axi_wdata(smartconnect_0_M10_AXI_WDATA),
        .s11_axi_wlast(smartconnect_0_M10_AXI_WLAST),
        .s11_axi_wready(smartconnect_0_M10_AXI_WREADY),
        .s11_axi_wstrb(smartconnect_0_M10_AXI_WSTRB),
        .s11_axi_wvalid(smartconnect_0_M10_AXI_WVALID),
        .s12_axi_araddr(smartconnect_0_M11_AXI_ARADDR),
        .s12_axi_arburst(smartconnect_0_M11_AXI_ARBURST),
        .s12_axi_arcache(smartconnect_0_M11_AXI_ARCACHE),
        .s12_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s12_axi_arlen(smartconnect_0_M11_AXI_ARLEN),
        .s12_axi_arlock(smartconnect_0_M11_AXI_ARLOCK),
        .s12_axi_arprot(smartconnect_0_M11_AXI_ARPROT),
        .s12_axi_arready(smartconnect_0_M11_AXI_ARREADY),
        .s12_axi_arsize(smartconnect_0_M11_AXI_ARSIZE),
        .s12_axi_arvalid(smartconnect_0_M11_AXI_ARVALID),
        .s12_axi_awaddr(smartconnect_0_M11_AXI_AWADDR),
        .s12_axi_awburst(smartconnect_0_M11_AXI_AWBURST),
        .s12_axi_awcache(smartconnect_0_M11_AXI_AWCACHE),
        .s12_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s12_axi_awlen(smartconnect_0_M11_AXI_AWLEN),
        .s12_axi_awlock(smartconnect_0_M11_AXI_AWLOCK),
        .s12_axi_awprot(smartconnect_0_M11_AXI_AWPROT),
        .s12_axi_awready(smartconnect_0_M11_AXI_AWREADY),
        .s12_axi_awsize(smartconnect_0_M11_AXI_AWSIZE),
        .s12_axi_awvalid(smartconnect_0_M11_AXI_AWVALID),
        .s12_axi_bready(smartconnect_0_M11_AXI_BREADY),
        .s12_axi_bresp(smartconnect_0_M11_AXI_BRESP),
        .s12_axi_bvalid(smartconnect_0_M11_AXI_BVALID),
        .s12_axi_rdata(smartconnect_0_M11_AXI_RDATA),
        .s12_axi_rlast(smartconnect_0_M11_AXI_RLAST),
        .s12_axi_rready(smartconnect_0_M11_AXI_RREADY),
        .s12_axi_rresp(smartconnect_0_M11_AXI_RRESP),
        .s12_axi_rvalid(smartconnect_0_M11_AXI_RVALID),
        .s12_axi_wdata(smartconnect_0_M11_AXI_WDATA),
        .s12_axi_wlast(smartconnect_0_M11_AXI_WLAST),
        .s12_axi_wready(smartconnect_0_M11_AXI_WREADY),
        .s12_axi_wstrb(smartconnect_0_M11_AXI_WSTRB),
        .s12_axi_wvalid(smartconnect_0_M11_AXI_WVALID),
        .s_axi_lite_araddr(xdma_0_M_AXI_LITE_ARADDR),
        .s_axi_lite_arprot(xdma_0_M_AXI_LITE_ARPROT),
        .s_axi_lite_arready(xdma_0_M_AXI_LITE_ARREADY),
        .s_axi_lite_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .s_axi_lite_awaddr(xdma_0_M_AXI_LITE_AWADDR),
        .s_axi_lite_awprot(xdma_0_M_AXI_LITE_AWPROT),
        .s_axi_lite_awready(xdma_0_M_AXI_LITE_AWREADY),
        .s_axi_lite_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .s_axi_lite_bready(xdma_0_M_AXI_LITE_BREADY),
        .s_axi_lite_bresp(xdma_0_M_AXI_LITE_BRESP),
        .s_axi_lite_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .s_axi_lite_rdata(xdma_0_M_AXI_LITE_RDATA),
        .s_axi_lite_rready(xdma_0_M_AXI_LITE_RREADY),
        .s_axi_lite_rresp(xdma_0_M_AXI_LITE_RRESP),
        .s_axi_lite_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .s_axi_lite_wdata(xdma_0_M_AXI_LITE_WDATA),
        .s_axi_lite_wready(xdma_0_M_AXI_LITE_WREADY),
        .s_axi_lite_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .s_axi_lite_wvalid(xdma_0_M_AXI_LITE_WVALID));
  design_1_smartconnect_0_2 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .M03_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(smartconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arburst(smartconnect_0_M04_AXI_ARBURST),
        .M04_AXI_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .M04_AXI_arlen(smartconnect_0_M04_AXI_ARLEN),
        .M04_AXI_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .M04_AXI_arprot(smartconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awburst(smartconnect_0_M04_AXI_AWBURST),
        .M04_AXI_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .M04_AXI_awlen(smartconnect_0_M04_AXI_AWLEN),
        .M04_AXI_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .M04_AXI_awprot(smartconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awsize(smartconnect_0_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rlast(smartconnect_0_M04_AXI_RLAST),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wlast(smartconnect_0_M04_AXI_WLAST),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arburst(smartconnect_0_M05_AXI_ARBURST),
        .M05_AXI_arcache(smartconnect_0_M05_AXI_ARCACHE),
        .M05_AXI_arlen(smartconnect_0_M05_AXI_ARLEN),
        .M05_AXI_arlock(smartconnect_0_M05_AXI_ARLOCK),
        .M05_AXI_arprot(smartconnect_0_M05_AXI_ARPROT),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awburst(smartconnect_0_M05_AXI_AWBURST),
        .M05_AXI_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .M05_AXI_awlen(smartconnect_0_M05_AXI_AWLEN),
        .M05_AXI_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .M05_AXI_awprot(smartconnect_0_M05_AXI_AWPROT),
        .M05_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awsize(smartconnect_0_M05_AXI_AWSIZE),
        .M05_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .M05_AXI_rlast(smartconnect_0_M05_AXI_RLAST),
        .M05_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .M05_AXI_wlast(smartconnect_0_M05_AXI_WLAST),
        .M05_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .M06_AXI_araddr(smartconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arburst(smartconnect_0_M06_AXI_ARBURST),
        .M06_AXI_arcache(smartconnect_0_M06_AXI_ARCACHE),
        .M06_AXI_arlen(smartconnect_0_M06_AXI_ARLEN),
        .M06_AXI_arlock(smartconnect_0_M06_AXI_ARLOCK),
        .M06_AXI_arprot(smartconnect_0_M06_AXI_ARPROT),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arsize(smartconnect_0_M06_AXI_ARSIZE),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awburst(smartconnect_0_M06_AXI_AWBURST),
        .M06_AXI_awcache(smartconnect_0_M06_AXI_AWCACHE),
        .M06_AXI_awlen(smartconnect_0_M06_AXI_AWLEN),
        .M06_AXI_awlock(smartconnect_0_M06_AXI_AWLOCK),
        .M06_AXI_awprot(smartconnect_0_M06_AXI_AWPROT),
        .M06_AXI_awready(smartconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awsize(smartconnect_0_M06_AXI_AWSIZE),
        .M06_AXI_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_0_M06_AXI_RDATA),
        .M06_AXI_rlast(smartconnect_0_M06_AXI_RLAST),
        .M06_AXI_rready(smartconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_0_M06_AXI_WDATA),
        .M06_AXI_wlast(smartconnect_0_M06_AXI_WLAST),
        .M06_AXI_wready(smartconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(smartconnect_0_M06_AXI_WVALID),
        .M07_AXI_araddr(smartconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arburst(smartconnect_0_M07_AXI_ARBURST),
        .M07_AXI_arcache(smartconnect_0_M07_AXI_ARCACHE),
        .M07_AXI_arlen(smartconnect_0_M07_AXI_ARLEN),
        .M07_AXI_arlock(smartconnect_0_M07_AXI_ARLOCK),
        .M07_AXI_arprot(smartconnect_0_M07_AXI_ARPROT),
        .M07_AXI_arready(smartconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arsize(smartconnect_0_M07_AXI_ARSIZE),
        .M07_AXI_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awburst(smartconnect_0_M07_AXI_AWBURST),
        .M07_AXI_awcache(smartconnect_0_M07_AXI_AWCACHE),
        .M07_AXI_awlen(smartconnect_0_M07_AXI_AWLEN),
        .M07_AXI_awlock(smartconnect_0_M07_AXI_AWLOCK),
        .M07_AXI_awprot(smartconnect_0_M07_AXI_AWPROT),
        .M07_AXI_awready(smartconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awsize(smartconnect_0_M07_AXI_AWSIZE),
        .M07_AXI_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(smartconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(smartconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(smartconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(smartconnect_0_M07_AXI_RDATA),
        .M07_AXI_rlast(smartconnect_0_M07_AXI_RLAST),
        .M07_AXI_rready(smartconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(smartconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(smartconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(smartconnect_0_M07_AXI_WDATA),
        .M07_AXI_wlast(smartconnect_0_M07_AXI_WLAST),
        .M07_AXI_wready(smartconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(smartconnect_0_M07_AXI_WVALID),
        .M08_AXI_araddr(smartconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arburst(smartconnect_0_M08_AXI_ARBURST),
        .M08_AXI_arcache(smartconnect_0_M08_AXI_ARCACHE),
        .M08_AXI_arlen(smartconnect_0_M08_AXI_ARLEN),
        .M08_AXI_arlock(smartconnect_0_M08_AXI_ARLOCK),
        .M08_AXI_arprot(smartconnect_0_M08_AXI_ARPROT),
        .M08_AXI_arready(smartconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arsize(smartconnect_0_M08_AXI_ARSIZE),
        .M08_AXI_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awburst(smartconnect_0_M08_AXI_AWBURST),
        .M08_AXI_awcache(smartconnect_0_M08_AXI_AWCACHE),
        .M08_AXI_awlen(smartconnect_0_M08_AXI_AWLEN),
        .M08_AXI_awlock(smartconnect_0_M08_AXI_AWLOCK),
        .M08_AXI_awprot(smartconnect_0_M08_AXI_AWPROT),
        .M08_AXI_awready(smartconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awsize(smartconnect_0_M08_AXI_AWSIZE),
        .M08_AXI_awvalid(smartconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(smartconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(smartconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(smartconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(smartconnect_0_M08_AXI_RDATA),
        .M08_AXI_rlast(smartconnect_0_M08_AXI_RLAST),
        .M08_AXI_rready(smartconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(smartconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(smartconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(smartconnect_0_M08_AXI_WDATA),
        .M08_AXI_wlast(smartconnect_0_M08_AXI_WLAST),
        .M08_AXI_wready(smartconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(smartconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(smartconnect_0_M08_AXI_WVALID),
        .M09_AXI_araddr(smartconnect_0_M09_AXI_ARADDR),
        .M09_AXI_arburst(smartconnect_0_M09_AXI_ARBURST),
        .M09_AXI_arcache(smartconnect_0_M09_AXI_ARCACHE),
        .M09_AXI_arlen(smartconnect_0_M09_AXI_ARLEN),
        .M09_AXI_arlock(smartconnect_0_M09_AXI_ARLOCK),
        .M09_AXI_arprot(smartconnect_0_M09_AXI_ARPROT),
        .M09_AXI_arready(smartconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arsize(smartconnect_0_M09_AXI_ARSIZE),
        .M09_AXI_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awburst(smartconnect_0_M09_AXI_AWBURST),
        .M09_AXI_awcache(smartconnect_0_M09_AXI_AWCACHE),
        .M09_AXI_awlen(smartconnect_0_M09_AXI_AWLEN),
        .M09_AXI_awlock(smartconnect_0_M09_AXI_AWLOCK),
        .M09_AXI_awprot(smartconnect_0_M09_AXI_AWPROT),
        .M09_AXI_awready(smartconnect_0_M09_AXI_AWREADY),
        .M09_AXI_awsize(smartconnect_0_M09_AXI_AWSIZE),
        .M09_AXI_awvalid(smartconnect_0_M09_AXI_AWVALID),
        .M09_AXI_bready(smartconnect_0_M09_AXI_BREADY),
        .M09_AXI_bresp(smartconnect_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(smartconnect_0_M09_AXI_BVALID),
        .M09_AXI_rdata(smartconnect_0_M09_AXI_RDATA),
        .M09_AXI_rlast(smartconnect_0_M09_AXI_RLAST),
        .M09_AXI_rready(smartconnect_0_M09_AXI_RREADY),
        .M09_AXI_rresp(smartconnect_0_M09_AXI_RRESP),
        .M09_AXI_rvalid(smartconnect_0_M09_AXI_RVALID),
        .M09_AXI_wdata(smartconnect_0_M09_AXI_WDATA),
        .M09_AXI_wlast(smartconnect_0_M09_AXI_WLAST),
        .M09_AXI_wready(smartconnect_0_M09_AXI_WREADY),
        .M09_AXI_wstrb(smartconnect_0_M09_AXI_WSTRB),
        .M09_AXI_wvalid(smartconnect_0_M09_AXI_WVALID),
        .M10_AXI_araddr(smartconnect_0_M10_AXI_ARADDR),
        .M10_AXI_arburst(smartconnect_0_M10_AXI_ARBURST),
        .M10_AXI_arcache(smartconnect_0_M10_AXI_ARCACHE),
        .M10_AXI_arlen(smartconnect_0_M10_AXI_ARLEN),
        .M10_AXI_arlock(smartconnect_0_M10_AXI_ARLOCK),
        .M10_AXI_arprot(smartconnect_0_M10_AXI_ARPROT),
        .M10_AXI_arready(smartconnect_0_M10_AXI_ARREADY),
        .M10_AXI_arsize(smartconnect_0_M10_AXI_ARSIZE),
        .M10_AXI_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .M10_AXI_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .M10_AXI_awburst(smartconnect_0_M10_AXI_AWBURST),
        .M10_AXI_awcache(smartconnect_0_M10_AXI_AWCACHE),
        .M10_AXI_awlen(smartconnect_0_M10_AXI_AWLEN),
        .M10_AXI_awlock(smartconnect_0_M10_AXI_AWLOCK),
        .M10_AXI_awprot(smartconnect_0_M10_AXI_AWPROT),
        .M10_AXI_awready(smartconnect_0_M10_AXI_AWREADY),
        .M10_AXI_awsize(smartconnect_0_M10_AXI_AWSIZE),
        .M10_AXI_awvalid(smartconnect_0_M10_AXI_AWVALID),
        .M10_AXI_bready(smartconnect_0_M10_AXI_BREADY),
        .M10_AXI_bresp(smartconnect_0_M10_AXI_BRESP),
        .M10_AXI_bvalid(smartconnect_0_M10_AXI_BVALID),
        .M10_AXI_rdata(smartconnect_0_M10_AXI_RDATA),
        .M10_AXI_rlast(smartconnect_0_M10_AXI_RLAST),
        .M10_AXI_rready(smartconnect_0_M10_AXI_RREADY),
        .M10_AXI_rresp(smartconnect_0_M10_AXI_RRESP),
        .M10_AXI_rvalid(smartconnect_0_M10_AXI_RVALID),
        .M10_AXI_wdata(smartconnect_0_M10_AXI_WDATA),
        .M10_AXI_wlast(smartconnect_0_M10_AXI_WLAST),
        .M10_AXI_wready(smartconnect_0_M10_AXI_WREADY),
        .M10_AXI_wstrb(smartconnect_0_M10_AXI_WSTRB),
        .M10_AXI_wvalid(smartconnect_0_M10_AXI_WVALID),
        .M11_AXI_araddr(smartconnect_0_M11_AXI_ARADDR),
        .M11_AXI_arburst(smartconnect_0_M11_AXI_ARBURST),
        .M11_AXI_arcache(smartconnect_0_M11_AXI_ARCACHE),
        .M11_AXI_arlen(smartconnect_0_M11_AXI_ARLEN),
        .M11_AXI_arlock(smartconnect_0_M11_AXI_ARLOCK),
        .M11_AXI_arprot(smartconnect_0_M11_AXI_ARPROT),
        .M11_AXI_arready(smartconnect_0_M11_AXI_ARREADY),
        .M11_AXI_arsize(smartconnect_0_M11_AXI_ARSIZE),
        .M11_AXI_arvalid(smartconnect_0_M11_AXI_ARVALID),
        .M11_AXI_awaddr(smartconnect_0_M11_AXI_AWADDR),
        .M11_AXI_awburst(smartconnect_0_M11_AXI_AWBURST),
        .M11_AXI_awcache(smartconnect_0_M11_AXI_AWCACHE),
        .M11_AXI_awlen(smartconnect_0_M11_AXI_AWLEN),
        .M11_AXI_awlock(smartconnect_0_M11_AXI_AWLOCK),
        .M11_AXI_awprot(smartconnect_0_M11_AXI_AWPROT),
        .M11_AXI_awready(smartconnect_0_M11_AXI_AWREADY),
        .M11_AXI_awsize(smartconnect_0_M11_AXI_AWSIZE),
        .M11_AXI_awvalid(smartconnect_0_M11_AXI_AWVALID),
        .M11_AXI_bready(smartconnect_0_M11_AXI_BREADY),
        .M11_AXI_bresp(smartconnect_0_M11_AXI_BRESP),
        .M11_AXI_bvalid(smartconnect_0_M11_AXI_BVALID),
        .M11_AXI_rdata(smartconnect_0_M11_AXI_RDATA),
        .M11_AXI_rlast(smartconnect_0_M11_AXI_RLAST),
        .M11_AXI_rready(smartconnect_0_M11_AXI_RREADY),
        .M11_AXI_rresp(smartconnect_0_M11_AXI_RRESP),
        .M11_AXI_rvalid(smartconnect_0_M11_AXI_RVALID),
        .M11_AXI_wdata(smartconnect_0_M11_AXI_WDATA),
        .M11_AXI_wlast(smartconnect_0_M11_AXI_WLAST),
        .M11_AXI_wready(smartconnect_0_M11_AXI_WREADY),
        .M11_AXI_wstrb(smartconnect_0_M11_AXI_WSTRB),
        .M11_AXI_wvalid(smartconnect_0_M11_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_ARREADY),
        .S00_AXI_arsize(xdma_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(xdma_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_AWREADY),
        .S00_AXI_awsize(xdma_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(xdma_0_M_AXI_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_BID),
        .S00_AXI_bready(xdma_0_M_AXI_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_WDATA),
        .S00_AXI_wlast(xdma_0_M_AXI_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(xdma_0_M_AXI_WVALID),
        .aclk(BUFG_125M_BUFG_O),
        .aresetn(xdma_0_axi_aresetn));
  design_1_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(xdma_0_M_AXI_LITE_ARADDR),
        .SLOT_0_AXI_arprot(xdma_0_M_AXI_LITE_ARPROT),
        .SLOT_0_AXI_arready(xdma_0_M_AXI_LITE_ARREADY),
        .SLOT_0_AXI_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .SLOT_0_AXI_awaddr(xdma_0_M_AXI_LITE_AWADDR),
        .SLOT_0_AXI_awprot(xdma_0_M_AXI_LITE_AWPROT),
        .SLOT_0_AXI_awready(xdma_0_M_AXI_LITE_AWREADY),
        .SLOT_0_AXI_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .SLOT_0_AXI_bready(xdma_0_M_AXI_LITE_BREADY),
        .SLOT_0_AXI_bresp(xdma_0_M_AXI_LITE_BRESP),
        .SLOT_0_AXI_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .SLOT_0_AXI_rdata(xdma_0_M_AXI_LITE_RDATA),
        .SLOT_0_AXI_rready(xdma_0_M_AXI_LITE_RREADY),
        .SLOT_0_AXI_rresp(xdma_0_M_AXI_LITE_RRESP),
        .SLOT_0_AXI_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .SLOT_0_AXI_wdata(xdma_0_M_AXI_LITE_WDATA),
        .SLOT_0_AXI_wready(xdma_0_M_AXI_LITE_WREADY),
        .SLOT_0_AXI_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .SLOT_0_AXI_wvalid(xdma_0_M_AXI_LITE_WVALID),
        .clk(xdma_0_axi_aclk),
        .resetn(xdma_0_axi_aresetn));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(xdma_0_axi_aresetn),
        .Res(util_vector_logic_0_Res));
  design_1_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .cfg_mgmt_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_byte_enable({1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_read(1'b0),
        .cfg_mgmt_type1_cfg_reg_access(1'b0),
        .cfg_mgmt_write(1'b0),
        .cfg_mgmt_write_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI_ARID),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .m_axi_awburst(xdma_0_M_AXI_AWBURST),
        .m_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .m_axi_awid(xdma_0_M_AXI_AWID),
        .m_axi_awlen(xdma_0_M_AXI_AWLEN),
        .m_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_0_M_AXI_AWPROT),
        .m_axi_awready(xdma_0_M_AXI_AWREADY),
        .m_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .m_axi_bid(xdma_0_M_AXI_BID),
        .m_axi_bready(xdma_0_M_AXI_BREADY),
        .m_axi_bresp(xdma_0_M_AXI_BRESP),
        .m_axi_bvalid(xdma_0_M_AXI_BVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rid(xdma_0_M_AXI_RID),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .m_axi_wdata(xdma_0_M_AXI_WDATA),
        .m_axi_wlast(xdma_0_M_AXI_WLAST),
        .m_axi_wready(xdma_0_M_AXI_WREADY),
        .m_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_0_M_AXI_WVALID),
        .m_axil_araddr(xdma_0_M_AXI_LITE_ARADDR),
        .m_axil_arprot(xdma_0_M_AXI_LITE_ARPROT),
        .m_axil_arready(xdma_0_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(xdma_0_M_AXI_LITE_AWADDR),
        .m_axil_awprot(xdma_0_M_AXI_LITE_AWPROT),
        .m_axil_awready(xdma_0_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .m_axil_bready(xdma_0_M_AXI_LITE_BREADY),
        .m_axil_bresp(xdma_0_M_AXI_LITE_BRESP),
        .m_axil_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .m_axil_rdata(xdma_0_M_AXI_LITE_RDATA),
        .m_axil_rready(xdma_0_M_AXI_LITE_RREADY),
        .m_axil_rresp(xdma_0_M_AXI_LITE_RRESP),
        .m_axil_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .m_axil_wdata(xdma_0_M_AXI_LITE_WDATA),
        .m_axil_wready(xdma_0_M_AXI_LITE_WREADY),
        .m_axil_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(xdma_0_M_AXI_LITE_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(sys_clk_0_1),
        .sys_rst_n(sys_rst_n_0_1),
        .usr_irq_ack(xdma_0_usr_irq_ack),
        .usr_irq_req(bridge_top_v2_0_interupt_req));
endmodule
