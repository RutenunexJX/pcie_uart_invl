//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Apr 17 15:22:22 2026
//Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (PCIE_CLK,
    PCIE_RSTN,
    axi_aresetn,
    m00_araddr,
    m00_arburst,
    m00_arcache,
    m00_arlen,
    m00_arlock,
    m00_arprot,
    m00_arqos,
    m00_arready,
    m00_arsize,
    m00_arvalid,
    m00_awaddr,
    m00_awburst,
    m00_awcache,
    m00_awlen,
    m00_awlock,
    m00_awprot,
    m00_awqos,
    m00_awready,
    m00_awsize,
    m00_awvalid,
    m00_bready,
    m00_bresp,
    m00_bvalid,
    m00_rdata,
    m00_rlast,
    m00_rready,
    m00_rresp,
    m00_rvalid,
    m00_wdata,
    m00_wlast,
    m00_wready,
    m00_wstrb,
    m00_wvalid,
    m01_araddr,
    m01_arburst,
    m01_arcache,
    m01_arlen,
    m01_arlock,
    m01_arprot,
    m01_arqos,
    m01_arready,
    m01_arsize,
    m01_arvalid,
    m01_awaddr,
    m01_awburst,
    m01_awcache,
    m01_awlen,
    m01_awlock,
    m01_awprot,
    m01_awqos,
    m01_awready,
    m01_awsize,
    m01_awvalid,
    m01_bready,
    m01_bresp,
    m01_bvalid,
    m01_rdata,
    m01_rlast,
    m01_rready,
    m01_rresp,
    m01_rvalid,
    m01_wdata,
    m01_wlast,
    m01_wready,
    m01_wstrb,
    m01_wvalid,
    m02_araddr,
    m02_arburst,
    m02_arcache,
    m02_arlen,
    m02_arlock,
    m02_arprot,
    m02_arqos,
    m02_arready,
    m02_arsize,
    m02_arvalid,
    m02_awaddr,
    m02_awburst,
    m02_awcache,
    m02_awlen,
    m02_awlock,
    m02_awprot,
    m02_awqos,
    m02_awready,
    m02_awsize,
    m02_awvalid,
    m02_bready,
    m02_bresp,
    m02_bvalid,
    m02_rdata,
    m02_rlast,
    m02_rready,
    m02_rresp,
    m02_rvalid,
    m02_wdata,
    m02_wlast,
    m02_wready,
    m02_wstrb,
    m02_wvalid,
    m03_araddr,
    m03_arburst,
    m03_arcache,
    m03_arlen,
    m03_arlock,
    m03_arprot,
    m03_arqos,
    m03_arready,
    m03_arsize,
    m03_arvalid,
    m03_awaddr,
    m03_awburst,
    m03_awcache,
    m03_awlen,
    m03_awlock,
    m03_awprot,
    m03_awqos,
    m03_awready,
    m03_awsize,
    m03_awvalid,
    m03_bready,
    m03_bresp,
    m03_bvalid,
    m03_rdata,
    m03_rlast,
    m03_rready,
    m03_rresp,
    m03_rvalid,
    m03_wdata,
    m03_wlast,
    m03_wready,
    m03_wstrb,
    m03_wvalid,
    m04_araddr,
    m04_arburst,
    m04_arcache,
    m04_arlen,
    m04_arlock,
    m04_arprot,
    m04_arqos,
    m04_arready,
    m04_arsize,
    m04_arvalid,
    m04_awaddr,
    m04_awburst,
    m04_awcache,
    m04_awlen,
    m04_awlock,
    m04_awprot,
    m04_awqos,
    m04_awready,
    m04_awsize,
    m04_awvalid,
    m04_bready,
    m04_bresp,
    m04_bvalid,
    m04_rdata,
    m04_rlast,
    m04_rready,
    m04_rresp,
    m04_rvalid,
    m04_wdata,
    m04_wlast,
    m04_wready,
    m04_wstrb,
    m04_wvalid,
    m05_araddr,
    m05_arburst,
    m05_arcache,
    m05_arlen,
    m05_arlock,
    m05_arprot,
    m05_arqos,
    m05_arready,
    m05_arsize,
    m05_arvalid,
    m05_awaddr,
    m05_awburst,
    m05_awcache,
    m05_awlen,
    m05_awlock,
    m05_awprot,
    m05_awqos,
    m05_awready,
    m05_awsize,
    m05_awvalid,
    m05_bready,
    m05_bresp,
    m05_bvalid,
    m05_rdata,
    m05_rlast,
    m05_rready,
    m05_rresp,
    m05_rvalid,
    m05_wdata,
    m05_wlast,
    m05_wready,
    m05_wstrb,
    m05_wvalid,
    m06_araddr,
    m06_arburst,
    m06_arcache,
    m06_arlen,
    m06_arlock,
    m06_arprot,
    m06_arqos,
    m06_arready,
    m06_arsize,
    m06_arvalid,
    m06_awaddr,
    m06_awburst,
    m06_awcache,
    m06_awlen,
    m06_awlock,
    m06_awprot,
    m06_awqos,
    m06_awready,
    m06_awsize,
    m06_awvalid,
    m06_bready,
    m06_bresp,
    m06_bvalid,
    m06_rdata,
    m06_rlast,
    m06_rready,
    m06_rresp,
    m06_rvalid,
    m06_wdata,
    m06_wlast,
    m06_wready,
    m06_wstrb,
    m06_wvalid,
    m07_araddr,
    m07_arburst,
    m07_arcache,
    m07_arlen,
    m07_arlock,
    m07_arprot,
    m07_arqos,
    m07_arready,
    m07_arsize,
    m07_arvalid,
    m07_awaddr,
    m07_awburst,
    m07_awcache,
    m07_awlen,
    m07_awlock,
    m07_awprot,
    m07_awqos,
    m07_awready,
    m07_awsize,
    m07_awvalid,
    m07_bready,
    m07_bresp,
    m07_bvalid,
    m07_rdata,
    m07_rlast,
    m07_rready,
    m07_rresp,
    m07_rvalid,
    m07_wdata,
    m07_wlast,
    m07_wready,
    m07_wstrb,
    m07_wvalid,
    m08_araddr,
    m08_arburst,
    m08_arcache,
    m08_arlen,
    m08_arlock,
    m08_arprot,
    m08_arqos,
    m08_arready,
    m08_arsize,
    m08_arvalid,
    m08_awaddr,
    m08_awburst,
    m08_awcache,
    m08_awlen,
    m08_awlock,
    m08_awprot,
    m08_awqos,
    m08_awready,
    m08_awsize,
    m08_awvalid,
    m08_bready,
    m08_bresp,
    m08_bvalid,
    m08_rdata,
    m08_rlast,
    m08_rready,
    m08_rresp,
    m08_rvalid,
    m08_wdata,
    m08_wlast,
    m08_wready,
    m08_wstrb,
    m08_wvalid,
    m09_araddr,
    m09_arburst,
    m09_arcache,
    m09_arlen,
    m09_arlock,
    m09_arprot,
    m09_arqos,
    m09_arready,
    m09_arsize,
    m09_arvalid,
    m09_awaddr,
    m09_awburst,
    m09_awcache,
    m09_awlen,
    m09_awlock,
    m09_awprot,
    m09_awqos,
    m09_awready,
    m09_awsize,
    m09_awvalid,
    m09_bready,
    m09_bresp,
    m09_bvalid,
    m09_rdata,
    m09_rlast,
    m09_rready,
    m09_rresp,
    m09_rvalid,
    m09_wdata,
    m09_wlast,
    m09_wready,
    m09_wstrb,
    m09_wvalid,
    m10_araddr,
    m10_arburst,
    m10_arcache,
    m10_arlen,
    m10_arlock,
    m10_arprot,
    m10_arqos,
    m10_arready,
    m10_arsize,
    m10_arvalid,
    m10_awaddr,
    m10_awburst,
    m10_awcache,
    m10_awlen,
    m10_awlock,
    m10_awprot,
    m10_awqos,
    m10_awready,
    m10_awsize,
    m10_awvalid,
    m10_bready,
    m10_bresp,
    m10_bvalid,
    m10_rdata,
    m10_rlast,
    m10_rready,
    m10_rresp,
    m10_rvalid,
    m10_wdata,
    m10_wlast,
    m10_wready,
    m10_wstrb,
    m10_wvalid,
    m11_araddr,
    m11_arburst,
    m11_arcache,
    m11_arlen,
    m11_arlock,
    m11_arprot,
    m11_arqos,
    m11_arready,
    m11_arsize,
    m11_arvalid,
    m11_awaddr,
    m11_awburst,
    m11_awcache,
    m11_awlen,
    m11_awlock,
    m11_awprot,
    m11_awqos,
    m11_awready,
    m11_awsize,
    m11_awvalid,
    m11_bready,
    m11_bresp,
    m11_bvalid,
    m11_rdata,
    m11_rlast,
    m11_rready,
    m11_rresp,
    m11_rvalid,
    m11_wdata,
    m11_wlast,
    m11_wready,
    m11_wstrb,
    m11_wvalid,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIE_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIE_CLK, CLK_DOMAIN design_1_PCIE_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input PCIE_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input PCIE_RSTN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [1:0]m00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [3:0]m00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [7:0]m00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [0:0]m00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [2:0]m00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [3:0]m00_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input m00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [2:0]m00_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output m00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [63:0]m00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [1:0]m00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [3:0]m00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [7:0]m00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [0:0]m00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [2:0]m00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [3:0]m00_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input m00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [2:0]m00_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output m00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output m00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input [1:0]m00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input m00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input [63:0]m00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input m00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output m00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input [1:0]m00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input m00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [63:0]m00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output m00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) input m00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output [7:0]m00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00 " *) output m00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [1:0]m01_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [3:0]m01_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [7:0]m01_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [0:0]m01_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [2:0]m01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [3:0]m01_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input m01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [2:0]m01_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output m01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [63:0]m01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [1:0]m01_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [3:0]m01_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [7:0]m01_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [0:0]m01_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [2:0]m01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [3:0]m01_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input m01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [2:0]m01_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output m01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output m01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input [1:0]m01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input m01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input [63:0]m01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input m01_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output m01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input [1:0]m01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input m01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [63:0]m01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output m01_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) input m01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output [7:0]m01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m01 " *) output m01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [1:0]m02_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [3:0]m02_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [7:0]m02_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [0:0]m02_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [2:0]m02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [3:0]m02_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input m02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [2:0]m02_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output m02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [63:0]m02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [1:0]m02_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [3:0]m02_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [7:0]m02_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [0:0]m02_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [2:0]m02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [3:0]m02_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input m02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [2:0]m02_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output m02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output m02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input [1:0]m02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input m02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input [63:0]m02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input m02_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output m02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input [1:0]m02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input m02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [63:0]m02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output m02_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) input m02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output [7:0]m02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m02 " *) output m02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m03_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [1:0]m03_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [3:0]m03_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [7:0]m03_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [0:0]m03_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [2:0]m03_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [3:0]m03_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input m03_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [2:0]m03_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output m03_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [63:0]m03_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [1:0]m03_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [3:0]m03_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [7:0]m03_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [0:0]m03_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [2:0]m03_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [3:0]m03_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input m03_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [2:0]m03_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output m03_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output m03_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input [1:0]m03_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input m03_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input [63:0]m03_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input m03_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output m03_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input [1:0]m03_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input m03_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [63:0]m03_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output m03_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) input m03_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output [7:0]m03_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m03 " *) output m03_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m04, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m04_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [1:0]m04_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [3:0]m04_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [7:0]m04_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [0:0]m04_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [2:0]m04_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [3:0]m04_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input m04_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [2:0]m04_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output m04_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [63:0]m04_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [1:0]m04_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [3:0]m04_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [7:0]m04_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [0:0]m04_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [2:0]m04_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [3:0]m04_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input m04_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [2:0]m04_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output m04_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output m04_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input [1:0]m04_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input m04_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input [63:0]m04_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input m04_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output m04_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input [1:0]m04_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input m04_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [63:0]m04_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output m04_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) input m04_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output [7:0]m04_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m04 " *) output m04_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m05, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m05_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [1:0]m05_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [3:0]m05_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [7:0]m05_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [0:0]m05_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [2:0]m05_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [3:0]m05_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input m05_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [2:0]m05_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output m05_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [63:0]m05_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [1:0]m05_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [3:0]m05_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [7:0]m05_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [0:0]m05_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [2:0]m05_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [3:0]m05_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input m05_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [2:0]m05_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output m05_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output m05_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input [1:0]m05_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input m05_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input [63:0]m05_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input m05_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output m05_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input [1:0]m05_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input m05_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [63:0]m05_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output m05_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) input m05_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output [7:0]m05_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m05 " *) output m05_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m06, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m06_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [1:0]m06_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [3:0]m06_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [7:0]m06_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [0:0]m06_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [2:0]m06_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [3:0]m06_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input m06_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [2:0]m06_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output m06_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [63:0]m06_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [1:0]m06_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [3:0]m06_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [7:0]m06_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [0:0]m06_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [2:0]m06_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [3:0]m06_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input m06_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [2:0]m06_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output m06_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output m06_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input [1:0]m06_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input m06_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input [63:0]m06_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input m06_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output m06_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input [1:0]m06_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input m06_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [63:0]m06_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output m06_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) input m06_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output [7:0]m06_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m06 " *) output m06_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m07, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m07_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [1:0]m07_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [3:0]m07_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [7:0]m07_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [0:0]m07_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [2:0]m07_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [3:0]m07_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input m07_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [2:0]m07_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output m07_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [63:0]m07_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [1:0]m07_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [3:0]m07_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [7:0]m07_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [0:0]m07_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [2:0]m07_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [3:0]m07_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input m07_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [2:0]m07_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output m07_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output m07_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input [1:0]m07_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input m07_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input [63:0]m07_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input m07_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output m07_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input [1:0]m07_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input m07_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [63:0]m07_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output m07_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) input m07_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output [7:0]m07_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m07 " *) output m07_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m08, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m08_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [1:0]m08_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [3:0]m08_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [7:0]m08_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [0:0]m08_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [2:0]m08_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [3:0]m08_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input m08_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [2:0]m08_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output m08_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [63:0]m08_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [1:0]m08_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [3:0]m08_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [7:0]m08_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [0:0]m08_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [2:0]m08_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [3:0]m08_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input m08_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [2:0]m08_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output m08_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output m08_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input [1:0]m08_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input m08_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input [63:0]m08_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input m08_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output m08_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input [1:0]m08_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input m08_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [63:0]m08_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output m08_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) input m08_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output [7:0]m08_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m08 " *) output m08_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m09, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m09_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [1:0]m09_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [3:0]m09_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [7:0]m09_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [0:0]m09_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [2:0]m09_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [3:0]m09_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input m09_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [2:0]m09_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output m09_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [63:0]m09_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [1:0]m09_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [3:0]m09_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [7:0]m09_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [0:0]m09_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [2:0]m09_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [3:0]m09_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input m09_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [2:0]m09_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output m09_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output m09_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input [1:0]m09_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input m09_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input [63:0]m09_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input m09_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output m09_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input [1:0]m09_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input m09_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [63:0]m09_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output m09_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) input m09_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output [7:0]m09_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m09 " *) output m09_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m10, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m10_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [1:0]m10_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [3:0]m10_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [7:0]m10_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [0:0]m10_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [2:0]m10_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [3:0]m10_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input m10_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [2:0]m10_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output m10_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [63:0]m10_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [1:0]m10_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [3:0]m10_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [7:0]m10_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [0:0]m10_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [2:0]m10_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [3:0]m10_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input m10_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [2:0]m10_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output m10_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output m10_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input [1:0]m10_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input m10_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input [63:0]m10_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input m10_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output m10_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input [1:0]m10_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input m10_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [63:0]m10_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output m10_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) input m10_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output [7:0]m10_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m10 " *) output m10_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m11, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m11_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [1:0]m11_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [3:0]m11_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [7:0]m11_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [0:0]m11_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [2:0]m11_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [3:0]m11_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input m11_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [2:0]m11_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output m11_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [63:0]m11_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [1:0]m11_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [3:0]m11_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [7:0]m11_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [0:0]m11_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [2:0]m11_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [3:0]m11_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input m11_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [2:0]m11_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output m11_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output m11_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input [1:0]m11_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input m11_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input [63:0]m11_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input m11_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output m11_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input [1:0]m11_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input m11_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [63:0]m11_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output m11_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) input m11_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output [7:0]m11_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m11 " *) output m11_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [1:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [1:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [1:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [1:0]pcie_mgt_txp;

  wire [63:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [63:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M01_AXI_ARQOS;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [63:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [3:0]smartconnect_0_M01_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M02_AXI_ARQOS;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [63:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M02_AXI_AWLEN;
  wire [0:0]smartconnect_0_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire [3:0]smartconnect_0_M02_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M03_AXI_ARQOS;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [63:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M03_AXI_AWLEN;
  wire [0:0]smartconnect_0_M03_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M03_AXI_AWPROT;
  wire [3:0]smartconnect_0_M03_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M04_AXI_ARQOS;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire [2:0]smartconnect_0_M04_AXI_ARSIZE;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [63:0]smartconnect_0_M04_AXI_AWADDR;
  wire [1:0]smartconnect_0_M04_AXI_AWBURST;
  wire [3:0]smartconnect_0_M04_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M04_AXI_AWLEN;
  wire [0:0]smartconnect_0_M04_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M04_AXI_AWPROT;
  wire [3:0]smartconnect_0_M04_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M05_AXI_ARQOS;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire [2:0]smartconnect_0_M05_AXI_ARSIZE;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [63:0]smartconnect_0_M05_AXI_AWADDR;
  wire [1:0]smartconnect_0_M05_AXI_AWBURST;
  wire [3:0]smartconnect_0_M05_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M05_AXI_AWLEN;
  wire [0:0]smartconnect_0_M05_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M05_AXI_AWPROT;
  wire [3:0]smartconnect_0_M05_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M06_AXI_ARQOS;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire [2:0]smartconnect_0_M06_AXI_ARSIZE;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [63:0]smartconnect_0_M06_AXI_AWADDR;
  wire [1:0]smartconnect_0_M06_AXI_AWBURST;
  wire [3:0]smartconnect_0_M06_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M06_AXI_AWLEN;
  wire [0:0]smartconnect_0_M06_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M06_AXI_AWPROT;
  wire [3:0]smartconnect_0_M06_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M07_AXI_ARQOS;
  wire smartconnect_0_M07_AXI_ARREADY;
  wire [2:0]smartconnect_0_M07_AXI_ARSIZE;
  wire smartconnect_0_M07_AXI_ARVALID;
  wire [63:0]smartconnect_0_M07_AXI_AWADDR;
  wire [1:0]smartconnect_0_M07_AXI_AWBURST;
  wire [3:0]smartconnect_0_M07_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M07_AXI_AWLEN;
  wire [0:0]smartconnect_0_M07_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M07_AXI_AWPROT;
  wire [3:0]smartconnect_0_M07_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M08_AXI_ARQOS;
  wire smartconnect_0_M08_AXI_ARREADY;
  wire [2:0]smartconnect_0_M08_AXI_ARSIZE;
  wire smartconnect_0_M08_AXI_ARVALID;
  wire [63:0]smartconnect_0_M08_AXI_AWADDR;
  wire [1:0]smartconnect_0_M08_AXI_AWBURST;
  wire [3:0]smartconnect_0_M08_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M08_AXI_AWLEN;
  wire [0:0]smartconnect_0_M08_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M08_AXI_AWPROT;
  wire [3:0]smartconnect_0_M08_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M09_AXI_ARQOS;
  wire smartconnect_0_M09_AXI_ARREADY;
  wire [2:0]smartconnect_0_M09_AXI_ARSIZE;
  wire smartconnect_0_M09_AXI_ARVALID;
  wire [63:0]smartconnect_0_M09_AXI_AWADDR;
  wire [1:0]smartconnect_0_M09_AXI_AWBURST;
  wire [3:0]smartconnect_0_M09_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M09_AXI_AWLEN;
  wire [0:0]smartconnect_0_M09_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M09_AXI_AWPROT;
  wire [3:0]smartconnect_0_M09_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M10_AXI_ARQOS;
  wire smartconnect_0_M10_AXI_ARREADY;
  wire [2:0]smartconnect_0_M10_AXI_ARSIZE;
  wire smartconnect_0_M10_AXI_ARVALID;
  wire [63:0]smartconnect_0_M10_AXI_AWADDR;
  wire [1:0]smartconnect_0_M10_AXI_AWBURST;
  wire [3:0]smartconnect_0_M10_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M10_AXI_AWLEN;
  wire [0:0]smartconnect_0_M10_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M10_AXI_AWPROT;
  wire [3:0]smartconnect_0_M10_AXI_AWQOS;
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
  wire [3:0]smartconnect_0_M11_AXI_ARQOS;
  wire smartconnect_0_M11_AXI_ARREADY;
  wire [2:0]smartconnect_0_M11_AXI_ARSIZE;
  wire smartconnect_0_M11_AXI_ARVALID;
  wire [63:0]smartconnect_0_M11_AXI_AWADDR;
  wire [1:0]smartconnect_0_M11_AXI_AWBURST;
  wire [3:0]smartconnect_0_M11_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M11_AXI_AWLEN;
  wire [0:0]smartconnect_0_M11_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M11_AXI_AWPROT;
  wire [3:0]smartconnect_0_M11_AXI_AWQOS;
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
  wire [0:0]xlconstant_0_dout;

  assign axi_aresetn = xdma_0_axi_aresetn;
  assign m00_araddr[63:0] = smartconnect_0_M00_AXI_ARADDR;
  assign m00_arburst[1:0] = smartconnect_0_M00_AXI_ARBURST;
  assign m00_arcache[3:0] = smartconnect_0_M00_AXI_ARCACHE;
  assign m00_arlen[7:0] = smartconnect_0_M00_AXI_ARLEN;
  assign m00_arlock[0] = smartconnect_0_M00_AXI_ARLOCK;
  assign m00_arprot[2:0] = smartconnect_0_M00_AXI_ARPROT;
  assign m00_arqos[3:0] = smartconnect_0_M00_AXI_ARQOS;
  assign m00_arsize[2:0] = smartconnect_0_M00_AXI_ARSIZE;
  assign m00_arvalid = smartconnect_0_M00_AXI_ARVALID;
  assign m00_awaddr[63:0] = smartconnect_0_M00_AXI_AWADDR;
  assign m00_awburst[1:0] = smartconnect_0_M00_AXI_AWBURST;
  assign m00_awcache[3:0] = smartconnect_0_M00_AXI_AWCACHE;
  assign m00_awlen[7:0] = smartconnect_0_M00_AXI_AWLEN;
  assign m00_awlock[0] = smartconnect_0_M00_AXI_AWLOCK;
  assign m00_awprot[2:0] = smartconnect_0_M00_AXI_AWPROT;
  assign m00_awqos[3:0] = smartconnect_0_M00_AXI_AWQOS;
  assign m00_awsize[2:0] = smartconnect_0_M00_AXI_AWSIZE;
  assign m00_awvalid = smartconnect_0_M00_AXI_AWVALID;
  assign m00_bready = smartconnect_0_M00_AXI_BREADY;
  assign m00_rready = smartconnect_0_M00_AXI_RREADY;
  assign m00_wdata[63:0] = smartconnect_0_M00_AXI_WDATA;
  assign m00_wlast = smartconnect_0_M00_AXI_WLAST;
  assign m00_wstrb[7:0] = smartconnect_0_M00_AXI_WSTRB;
  assign m00_wvalid = smartconnect_0_M00_AXI_WVALID;
  assign m01_araddr[63:0] = smartconnect_0_M01_AXI_ARADDR;
  assign m01_arburst[1:0] = smartconnect_0_M01_AXI_ARBURST;
  assign m01_arcache[3:0] = smartconnect_0_M01_AXI_ARCACHE;
  assign m01_arlen[7:0] = smartconnect_0_M01_AXI_ARLEN;
  assign m01_arlock[0] = smartconnect_0_M01_AXI_ARLOCK;
  assign m01_arprot[2:0] = smartconnect_0_M01_AXI_ARPROT;
  assign m01_arqos[3:0] = smartconnect_0_M01_AXI_ARQOS;
  assign m01_arsize[2:0] = smartconnect_0_M01_AXI_ARSIZE;
  assign m01_arvalid = smartconnect_0_M01_AXI_ARVALID;
  assign m01_awaddr[63:0] = smartconnect_0_M01_AXI_AWADDR;
  assign m01_awburst[1:0] = smartconnect_0_M01_AXI_AWBURST;
  assign m01_awcache[3:0] = smartconnect_0_M01_AXI_AWCACHE;
  assign m01_awlen[7:0] = smartconnect_0_M01_AXI_AWLEN;
  assign m01_awlock[0] = smartconnect_0_M01_AXI_AWLOCK;
  assign m01_awprot[2:0] = smartconnect_0_M01_AXI_AWPROT;
  assign m01_awqos[3:0] = smartconnect_0_M01_AXI_AWQOS;
  assign m01_awsize[2:0] = smartconnect_0_M01_AXI_AWSIZE;
  assign m01_awvalid = smartconnect_0_M01_AXI_AWVALID;
  assign m01_bready = smartconnect_0_M01_AXI_BREADY;
  assign m01_rready = smartconnect_0_M01_AXI_RREADY;
  assign m01_wdata[63:0] = smartconnect_0_M01_AXI_WDATA;
  assign m01_wlast = smartconnect_0_M01_AXI_WLAST;
  assign m01_wstrb[7:0] = smartconnect_0_M01_AXI_WSTRB;
  assign m01_wvalid = smartconnect_0_M01_AXI_WVALID;
  assign m02_araddr[63:0] = smartconnect_0_M02_AXI_ARADDR;
  assign m02_arburst[1:0] = smartconnect_0_M02_AXI_ARBURST;
  assign m02_arcache[3:0] = smartconnect_0_M02_AXI_ARCACHE;
  assign m02_arlen[7:0] = smartconnect_0_M02_AXI_ARLEN;
  assign m02_arlock[0] = smartconnect_0_M02_AXI_ARLOCK;
  assign m02_arprot[2:0] = smartconnect_0_M02_AXI_ARPROT;
  assign m02_arqos[3:0] = smartconnect_0_M02_AXI_ARQOS;
  assign m02_arsize[2:0] = smartconnect_0_M02_AXI_ARSIZE;
  assign m02_arvalid = smartconnect_0_M02_AXI_ARVALID;
  assign m02_awaddr[63:0] = smartconnect_0_M02_AXI_AWADDR;
  assign m02_awburst[1:0] = smartconnect_0_M02_AXI_AWBURST;
  assign m02_awcache[3:0] = smartconnect_0_M02_AXI_AWCACHE;
  assign m02_awlen[7:0] = smartconnect_0_M02_AXI_AWLEN;
  assign m02_awlock[0] = smartconnect_0_M02_AXI_AWLOCK;
  assign m02_awprot[2:0] = smartconnect_0_M02_AXI_AWPROT;
  assign m02_awqos[3:0] = smartconnect_0_M02_AXI_AWQOS;
  assign m02_awsize[2:0] = smartconnect_0_M02_AXI_AWSIZE;
  assign m02_awvalid = smartconnect_0_M02_AXI_AWVALID;
  assign m02_bready = smartconnect_0_M02_AXI_BREADY;
  assign m02_rready = smartconnect_0_M02_AXI_RREADY;
  assign m02_wdata[63:0] = smartconnect_0_M02_AXI_WDATA;
  assign m02_wlast = smartconnect_0_M02_AXI_WLAST;
  assign m02_wstrb[7:0] = smartconnect_0_M02_AXI_WSTRB;
  assign m02_wvalid = smartconnect_0_M02_AXI_WVALID;
  assign m03_araddr[63:0] = smartconnect_0_M03_AXI_ARADDR;
  assign m03_arburst[1:0] = smartconnect_0_M03_AXI_ARBURST;
  assign m03_arcache[3:0] = smartconnect_0_M03_AXI_ARCACHE;
  assign m03_arlen[7:0] = smartconnect_0_M03_AXI_ARLEN;
  assign m03_arlock[0] = smartconnect_0_M03_AXI_ARLOCK;
  assign m03_arprot[2:0] = smartconnect_0_M03_AXI_ARPROT;
  assign m03_arqos[3:0] = smartconnect_0_M03_AXI_ARQOS;
  assign m03_arsize[2:0] = smartconnect_0_M03_AXI_ARSIZE;
  assign m03_arvalid = smartconnect_0_M03_AXI_ARVALID;
  assign m03_awaddr[63:0] = smartconnect_0_M03_AXI_AWADDR;
  assign m03_awburst[1:0] = smartconnect_0_M03_AXI_AWBURST;
  assign m03_awcache[3:0] = smartconnect_0_M03_AXI_AWCACHE;
  assign m03_awlen[7:0] = smartconnect_0_M03_AXI_AWLEN;
  assign m03_awlock[0] = smartconnect_0_M03_AXI_AWLOCK;
  assign m03_awprot[2:0] = smartconnect_0_M03_AXI_AWPROT;
  assign m03_awqos[3:0] = smartconnect_0_M03_AXI_AWQOS;
  assign m03_awsize[2:0] = smartconnect_0_M03_AXI_AWSIZE;
  assign m03_awvalid = smartconnect_0_M03_AXI_AWVALID;
  assign m03_bready = smartconnect_0_M03_AXI_BREADY;
  assign m03_rready = smartconnect_0_M03_AXI_RREADY;
  assign m03_wdata[63:0] = smartconnect_0_M03_AXI_WDATA;
  assign m03_wlast = smartconnect_0_M03_AXI_WLAST;
  assign m03_wstrb[7:0] = smartconnect_0_M03_AXI_WSTRB;
  assign m03_wvalid = smartconnect_0_M03_AXI_WVALID;
  assign m04_araddr[63:0] = smartconnect_0_M04_AXI_ARADDR;
  assign m04_arburst[1:0] = smartconnect_0_M04_AXI_ARBURST;
  assign m04_arcache[3:0] = smartconnect_0_M04_AXI_ARCACHE;
  assign m04_arlen[7:0] = smartconnect_0_M04_AXI_ARLEN;
  assign m04_arlock[0] = smartconnect_0_M04_AXI_ARLOCK;
  assign m04_arprot[2:0] = smartconnect_0_M04_AXI_ARPROT;
  assign m04_arqos[3:0] = smartconnect_0_M04_AXI_ARQOS;
  assign m04_arsize[2:0] = smartconnect_0_M04_AXI_ARSIZE;
  assign m04_arvalid = smartconnect_0_M04_AXI_ARVALID;
  assign m04_awaddr[63:0] = smartconnect_0_M04_AXI_AWADDR;
  assign m04_awburst[1:0] = smartconnect_0_M04_AXI_AWBURST;
  assign m04_awcache[3:0] = smartconnect_0_M04_AXI_AWCACHE;
  assign m04_awlen[7:0] = smartconnect_0_M04_AXI_AWLEN;
  assign m04_awlock[0] = smartconnect_0_M04_AXI_AWLOCK;
  assign m04_awprot[2:0] = smartconnect_0_M04_AXI_AWPROT;
  assign m04_awqos[3:0] = smartconnect_0_M04_AXI_AWQOS;
  assign m04_awsize[2:0] = smartconnect_0_M04_AXI_AWSIZE;
  assign m04_awvalid = smartconnect_0_M04_AXI_AWVALID;
  assign m04_bready = smartconnect_0_M04_AXI_BREADY;
  assign m04_rready = smartconnect_0_M04_AXI_RREADY;
  assign m04_wdata[63:0] = smartconnect_0_M04_AXI_WDATA;
  assign m04_wlast = smartconnect_0_M04_AXI_WLAST;
  assign m04_wstrb[7:0] = smartconnect_0_M04_AXI_WSTRB;
  assign m04_wvalid = smartconnect_0_M04_AXI_WVALID;
  assign m05_araddr[63:0] = smartconnect_0_M05_AXI_ARADDR;
  assign m05_arburst[1:0] = smartconnect_0_M05_AXI_ARBURST;
  assign m05_arcache[3:0] = smartconnect_0_M05_AXI_ARCACHE;
  assign m05_arlen[7:0] = smartconnect_0_M05_AXI_ARLEN;
  assign m05_arlock[0] = smartconnect_0_M05_AXI_ARLOCK;
  assign m05_arprot[2:0] = smartconnect_0_M05_AXI_ARPROT;
  assign m05_arqos[3:0] = smartconnect_0_M05_AXI_ARQOS;
  assign m05_arsize[2:0] = smartconnect_0_M05_AXI_ARSIZE;
  assign m05_arvalid = smartconnect_0_M05_AXI_ARVALID;
  assign m05_awaddr[63:0] = smartconnect_0_M05_AXI_AWADDR;
  assign m05_awburst[1:0] = smartconnect_0_M05_AXI_AWBURST;
  assign m05_awcache[3:0] = smartconnect_0_M05_AXI_AWCACHE;
  assign m05_awlen[7:0] = smartconnect_0_M05_AXI_AWLEN;
  assign m05_awlock[0] = smartconnect_0_M05_AXI_AWLOCK;
  assign m05_awprot[2:0] = smartconnect_0_M05_AXI_AWPROT;
  assign m05_awqos[3:0] = smartconnect_0_M05_AXI_AWQOS;
  assign m05_awsize[2:0] = smartconnect_0_M05_AXI_AWSIZE;
  assign m05_awvalid = smartconnect_0_M05_AXI_AWVALID;
  assign m05_bready = smartconnect_0_M05_AXI_BREADY;
  assign m05_rready = smartconnect_0_M05_AXI_RREADY;
  assign m05_wdata[63:0] = smartconnect_0_M05_AXI_WDATA;
  assign m05_wlast = smartconnect_0_M05_AXI_WLAST;
  assign m05_wstrb[7:0] = smartconnect_0_M05_AXI_WSTRB;
  assign m05_wvalid = smartconnect_0_M05_AXI_WVALID;
  assign m06_araddr[63:0] = smartconnect_0_M06_AXI_ARADDR;
  assign m06_arburst[1:0] = smartconnect_0_M06_AXI_ARBURST;
  assign m06_arcache[3:0] = smartconnect_0_M06_AXI_ARCACHE;
  assign m06_arlen[7:0] = smartconnect_0_M06_AXI_ARLEN;
  assign m06_arlock[0] = smartconnect_0_M06_AXI_ARLOCK;
  assign m06_arprot[2:0] = smartconnect_0_M06_AXI_ARPROT;
  assign m06_arqos[3:0] = smartconnect_0_M06_AXI_ARQOS;
  assign m06_arsize[2:0] = smartconnect_0_M06_AXI_ARSIZE;
  assign m06_arvalid = smartconnect_0_M06_AXI_ARVALID;
  assign m06_awaddr[63:0] = smartconnect_0_M06_AXI_AWADDR;
  assign m06_awburst[1:0] = smartconnect_0_M06_AXI_AWBURST;
  assign m06_awcache[3:0] = smartconnect_0_M06_AXI_AWCACHE;
  assign m06_awlen[7:0] = smartconnect_0_M06_AXI_AWLEN;
  assign m06_awlock[0] = smartconnect_0_M06_AXI_AWLOCK;
  assign m06_awprot[2:0] = smartconnect_0_M06_AXI_AWPROT;
  assign m06_awqos[3:0] = smartconnect_0_M06_AXI_AWQOS;
  assign m06_awsize[2:0] = smartconnect_0_M06_AXI_AWSIZE;
  assign m06_awvalid = smartconnect_0_M06_AXI_AWVALID;
  assign m06_bready = smartconnect_0_M06_AXI_BREADY;
  assign m06_rready = smartconnect_0_M06_AXI_RREADY;
  assign m06_wdata[63:0] = smartconnect_0_M06_AXI_WDATA;
  assign m06_wlast = smartconnect_0_M06_AXI_WLAST;
  assign m06_wstrb[7:0] = smartconnect_0_M06_AXI_WSTRB;
  assign m06_wvalid = smartconnect_0_M06_AXI_WVALID;
  assign m07_araddr[63:0] = smartconnect_0_M07_AXI_ARADDR;
  assign m07_arburst[1:0] = smartconnect_0_M07_AXI_ARBURST;
  assign m07_arcache[3:0] = smartconnect_0_M07_AXI_ARCACHE;
  assign m07_arlen[7:0] = smartconnect_0_M07_AXI_ARLEN;
  assign m07_arlock[0] = smartconnect_0_M07_AXI_ARLOCK;
  assign m07_arprot[2:0] = smartconnect_0_M07_AXI_ARPROT;
  assign m07_arqos[3:0] = smartconnect_0_M07_AXI_ARQOS;
  assign m07_arsize[2:0] = smartconnect_0_M07_AXI_ARSIZE;
  assign m07_arvalid = smartconnect_0_M07_AXI_ARVALID;
  assign m07_awaddr[63:0] = smartconnect_0_M07_AXI_AWADDR;
  assign m07_awburst[1:0] = smartconnect_0_M07_AXI_AWBURST;
  assign m07_awcache[3:0] = smartconnect_0_M07_AXI_AWCACHE;
  assign m07_awlen[7:0] = smartconnect_0_M07_AXI_AWLEN;
  assign m07_awlock[0] = smartconnect_0_M07_AXI_AWLOCK;
  assign m07_awprot[2:0] = smartconnect_0_M07_AXI_AWPROT;
  assign m07_awqos[3:0] = smartconnect_0_M07_AXI_AWQOS;
  assign m07_awsize[2:0] = smartconnect_0_M07_AXI_AWSIZE;
  assign m07_awvalid = smartconnect_0_M07_AXI_AWVALID;
  assign m07_bready = smartconnect_0_M07_AXI_BREADY;
  assign m07_rready = smartconnect_0_M07_AXI_RREADY;
  assign m07_wdata[63:0] = smartconnect_0_M07_AXI_WDATA;
  assign m07_wlast = smartconnect_0_M07_AXI_WLAST;
  assign m07_wstrb[7:0] = smartconnect_0_M07_AXI_WSTRB;
  assign m07_wvalid = smartconnect_0_M07_AXI_WVALID;
  assign m08_araddr[63:0] = smartconnect_0_M08_AXI_ARADDR;
  assign m08_arburst[1:0] = smartconnect_0_M08_AXI_ARBURST;
  assign m08_arcache[3:0] = smartconnect_0_M08_AXI_ARCACHE;
  assign m08_arlen[7:0] = smartconnect_0_M08_AXI_ARLEN;
  assign m08_arlock[0] = smartconnect_0_M08_AXI_ARLOCK;
  assign m08_arprot[2:0] = smartconnect_0_M08_AXI_ARPROT;
  assign m08_arqos[3:0] = smartconnect_0_M08_AXI_ARQOS;
  assign m08_arsize[2:0] = smartconnect_0_M08_AXI_ARSIZE;
  assign m08_arvalid = smartconnect_0_M08_AXI_ARVALID;
  assign m08_awaddr[63:0] = smartconnect_0_M08_AXI_AWADDR;
  assign m08_awburst[1:0] = smartconnect_0_M08_AXI_AWBURST;
  assign m08_awcache[3:0] = smartconnect_0_M08_AXI_AWCACHE;
  assign m08_awlen[7:0] = smartconnect_0_M08_AXI_AWLEN;
  assign m08_awlock[0] = smartconnect_0_M08_AXI_AWLOCK;
  assign m08_awprot[2:0] = smartconnect_0_M08_AXI_AWPROT;
  assign m08_awqos[3:0] = smartconnect_0_M08_AXI_AWQOS;
  assign m08_awsize[2:0] = smartconnect_0_M08_AXI_AWSIZE;
  assign m08_awvalid = smartconnect_0_M08_AXI_AWVALID;
  assign m08_bready = smartconnect_0_M08_AXI_BREADY;
  assign m08_rready = smartconnect_0_M08_AXI_RREADY;
  assign m08_wdata[63:0] = smartconnect_0_M08_AXI_WDATA;
  assign m08_wlast = smartconnect_0_M08_AXI_WLAST;
  assign m08_wstrb[7:0] = smartconnect_0_M08_AXI_WSTRB;
  assign m08_wvalid = smartconnect_0_M08_AXI_WVALID;
  assign m09_araddr[63:0] = smartconnect_0_M09_AXI_ARADDR;
  assign m09_arburst[1:0] = smartconnect_0_M09_AXI_ARBURST;
  assign m09_arcache[3:0] = smartconnect_0_M09_AXI_ARCACHE;
  assign m09_arlen[7:0] = smartconnect_0_M09_AXI_ARLEN;
  assign m09_arlock[0] = smartconnect_0_M09_AXI_ARLOCK;
  assign m09_arprot[2:0] = smartconnect_0_M09_AXI_ARPROT;
  assign m09_arqos[3:0] = smartconnect_0_M09_AXI_ARQOS;
  assign m09_arsize[2:0] = smartconnect_0_M09_AXI_ARSIZE;
  assign m09_arvalid = smartconnect_0_M09_AXI_ARVALID;
  assign m09_awaddr[63:0] = smartconnect_0_M09_AXI_AWADDR;
  assign m09_awburst[1:0] = smartconnect_0_M09_AXI_AWBURST;
  assign m09_awcache[3:0] = smartconnect_0_M09_AXI_AWCACHE;
  assign m09_awlen[7:0] = smartconnect_0_M09_AXI_AWLEN;
  assign m09_awlock[0] = smartconnect_0_M09_AXI_AWLOCK;
  assign m09_awprot[2:0] = smartconnect_0_M09_AXI_AWPROT;
  assign m09_awqos[3:0] = smartconnect_0_M09_AXI_AWQOS;
  assign m09_awsize[2:0] = smartconnect_0_M09_AXI_AWSIZE;
  assign m09_awvalid = smartconnect_0_M09_AXI_AWVALID;
  assign m09_bready = smartconnect_0_M09_AXI_BREADY;
  assign m09_rready = smartconnect_0_M09_AXI_RREADY;
  assign m09_wdata[63:0] = smartconnect_0_M09_AXI_WDATA;
  assign m09_wlast = smartconnect_0_M09_AXI_WLAST;
  assign m09_wstrb[7:0] = smartconnect_0_M09_AXI_WSTRB;
  assign m09_wvalid = smartconnect_0_M09_AXI_WVALID;
  assign m10_araddr[63:0] = smartconnect_0_M10_AXI_ARADDR;
  assign m10_arburst[1:0] = smartconnect_0_M10_AXI_ARBURST;
  assign m10_arcache[3:0] = smartconnect_0_M10_AXI_ARCACHE;
  assign m10_arlen[7:0] = smartconnect_0_M10_AXI_ARLEN;
  assign m10_arlock[0] = smartconnect_0_M10_AXI_ARLOCK;
  assign m10_arprot[2:0] = smartconnect_0_M10_AXI_ARPROT;
  assign m10_arqos[3:0] = smartconnect_0_M10_AXI_ARQOS;
  assign m10_arsize[2:0] = smartconnect_0_M10_AXI_ARSIZE;
  assign m10_arvalid = smartconnect_0_M10_AXI_ARVALID;
  assign m10_awaddr[63:0] = smartconnect_0_M10_AXI_AWADDR;
  assign m10_awburst[1:0] = smartconnect_0_M10_AXI_AWBURST;
  assign m10_awcache[3:0] = smartconnect_0_M10_AXI_AWCACHE;
  assign m10_awlen[7:0] = smartconnect_0_M10_AXI_AWLEN;
  assign m10_awlock[0] = smartconnect_0_M10_AXI_AWLOCK;
  assign m10_awprot[2:0] = smartconnect_0_M10_AXI_AWPROT;
  assign m10_awqos[3:0] = smartconnect_0_M10_AXI_AWQOS;
  assign m10_awsize[2:0] = smartconnect_0_M10_AXI_AWSIZE;
  assign m10_awvalid = smartconnect_0_M10_AXI_AWVALID;
  assign m10_bready = smartconnect_0_M10_AXI_BREADY;
  assign m10_rready = smartconnect_0_M10_AXI_RREADY;
  assign m10_wdata[63:0] = smartconnect_0_M10_AXI_WDATA;
  assign m10_wlast = smartconnect_0_M10_AXI_WLAST;
  assign m10_wstrb[7:0] = smartconnect_0_M10_AXI_WSTRB;
  assign m10_wvalid = smartconnect_0_M10_AXI_WVALID;
  assign m11_araddr[63:0] = smartconnect_0_M11_AXI_ARADDR;
  assign m11_arburst[1:0] = smartconnect_0_M11_AXI_ARBURST;
  assign m11_arcache[3:0] = smartconnect_0_M11_AXI_ARCACHE;
  assign m11_arlen[7:0] = smartconnect_0_M11_AXI_ARLEN;
  assign m11_arlock[0] = smartconnect_0_M11_AXI_ARLOCK;
  assign m11_arprot[2:0] = smartconnect_0_M11_AXI_ARPROT;
  assign m11_arqos[3:0] = smartconnect_0_M11_AXI_ARQOS;
  assign m11_arsize[2:0] = smartconnect_0_M11_AXI_ARSIZE;
  assign m11_arvalid = smartconnect_0_M11_AXI_ARVALID;
  assign m11_awaddr[63:0] = smartconnect_0_M11_AXI_AWADDR;
  assign m11_awburst[1:0] = smartconnect_0_M11_AXI_AWBURST;
  assign m11_awcache[3:0] = smartconnect_0_M11_AXI_AWCACHE;
  assign m11_awlen[7:0] = smartconnect_0_M11_AXI_AWLEN;
  assign m11_awlock[0] = smartconnect_0_M11_AXI_AWLOCK;
  assign m11_awprot[2:0] = smartconnect_0_M11_AXI_AWPROT;
  assign m11_awqos[3:0] = smartconnect_0_M11_AXI_AWQOS;
  assign m11_awsize[2:0] = smartconnect_0_M11_AXI_AWSIZE;
  assign m11_awvalid = smartconnect_0_M11_AXI_AWVALID;
  assign m11_bready = smartconnect_0_M11_AXI_BREADY;
  assign m11_rready = smartconnect_0_M11_AXI_RREADY;
  assign m11_wdata[63:0] = smartconnect_0_M11_AXI_WDATA;
  assign m11_wlast = smartconnect_0_M11_AXI_WLAST;
  assign m11_wstrb[7:0] = smartconnect_0_M11_AXI_WSTRB;
  assign m11_wvalid = smartconnect_0_M11_AXI_WVALID;
  assign pcie_mgt_txn[1:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[1:0] = xdma_0_pcie_mgt_txp;
  assign smartconnect_0_M00_AXI_ARREADY = m00_arready;
  assign smartconnect_0_M00_AXI_AWREADY = m00_awready;
  assign smartconnect_0_M00_AXI_BRESP = m00_bresp[1:0];
  assign smartconnect_0_M00_AXI_BVALID = m00_bvalid;
  assign smartconnect_0_M00_AXI_RDATA = m00_rdata[63:0];
  assign smartconnect_0_M00_AXI_RLAST = m00_rlast;
  assign smartconnect_0_M00_AXI_RRESP = m00_rresp[1:0];
  assign smartconnect_0_M00_AXI_RVALID = m00_rvalid;
  assign smartconnect_0_M00_AXI_WREADY = m00_wready;
  assign smartconnect_0_M01_AXI_ARREADY = m01_arready;
  assign smartconnect_0_M01_AXI_AWREADY = m01_awready;
  assign smartconnect_0_M01_AXI_BRESP = m01_bresp[1:0];
  assign smartconnect_0_M01_AXI_BVALID = m01_bvalid;
  assign smartconnect_0_M01_AXI_RDATA = m01_rdata[63:0];
  assign smartconnect_0_M01_AXI_RLAST = m01_rlast;
  assign smartconnect_0_M01_AXI_RRESP = m01_rresp[1:0];
  assign smartconnect_0_M01_AXI_RVALID = m01_rvalid;
  assign smartconnect_0_M01_AXI_WREADY = m01_wready;
  assign smartconnect_0_M02_AXI_ARREADY = m02_arready;
  assign smartconnect_0_M02_AXI_AWREADY = m02_awready;
  assign smartconnect_0_M02_AXI_BRESP = m02_bresp[1:0];
  assign smartconnect_0_M02_AXI_BVALID = m02_bvalid;
  assign smartconnect_0_M02_AXI_RDATA = m02_rdata[63:0];
  assign smartconnect_0_M02_AXI_RLAST = m02_rlast;
  assign smartconnect_0_M02_AXI_RRESP = m02_rresp[1:0];
  assign smartconnect_0_M02_AXI_RVALID = m02_rvalid;
  assign smartconnect_0_M02_AXI_WREADY = m02_wready;
  assign smartconnect_0_M03_AXI_ARREADY = m03_arready;
  assign smartconnect_0_M03_AXI_AWREADY = m03_awready;
  assign smartconnect_0_M03_AXI_BRESP = m03_bresp[1:0];
  assign smartconnect_0_M03_AXI_BVALID = m03_bvalid;
  assign smartconnect_0_M03_AXI_RDATA = m03_rdata[63:0];
  assign smartconnect_0_M03_AXI_RLAST = m03_rlast;
  assign smartconnect_0_M03_AXI_RRESP = m03_rresp[1:0];
  assign smartconnect_0_M03_AXI_RVALID = m03_rvalid;
  assign smartconnect_0_M03_AXI_WREADY = m03_wready;
  assign smartconnect_0_M04_AXI_ARREADY = m04_arready;
  assign smartconnect_0_M04_AXI_AWREADY = m04_awready;
  assign smartconnect_0_M04_AXI_BRESP = m04_bresp[1:0];
  assign smartconnect_0_M04_AXI_BVALID = m04_bvalid;
  assign smartconnect_0_M04_AXI_RDATA = m04_rdata[63:0];
  assign smartconnect_0_M04_AXI_RLAST = m04_rlast;
  assign smartconnect_0_M04_AXI_RRESP = m04_rresp[1:0];
  assign smartconnect_0_M04_AXI_RVALID = m04_rvalid;
  assign smartconnect_0_M04_AXI_WREADY = m04_wready;
  assign smartconnect_0_M05_AXI_ARREADY = m05_arready;
  assign smartconnect_0_M05_AXI_AWREADY = m05_awready;
  assign smartconnect_0_M05_AXI_BRESP = m05_bresp[1:0];
  assign smartconnect_0_M05_AXI_BVALID = m05_bvalid;
  assign smartconnect_0_M05_AXI_RDATA = m05_rdata[63:0];
  assign smartconnect_0_M05_AXI_RLAST = m05_rlast;
  assign smartconnect_0_M05_AXI_RRESP = m05_rresp[1:0];
  assign smartconnect_0_M05_AXI_RVALID = m05_rvalid;
  assign smartconnect_0_M05_AXI_WREADY = m05_wready;
  assign smartconnect_0_M06_AXI_ARREADY = m06_arready;
  assign smartconnect_0_M06_AXI_AWREADY = m06_awready;
  assign smartconnect_0_M06_AXI_BRESP = m06_bresp[1:0];
  assign smartconnect_0_M06_AXI_BVALID = m06_bvalid;
  assign smartconnect_0_M06_AXI_RDATA = m06_rdata[63:0];
  assign smartconnect_0_M06_AXI_RLAST = m06_rlast;
  assign smartconnect_0_M06_AXI_RRESP = m06_rresp[1:0];
  assign smartconnect_0_M06_AXI_RVALID = m06_rvalid;
  assign smartconnect_0_M06_AXI_WREADY = m06_wready;
  assign smartconnect_0_M07_AXI_ARREADY = m07_arready;
  assign smartconnect_0_M07_AXI_AWREADY = m07_awready;
  assign smartconnect_0_M07_AXI_BRESP = m07_bresp[1:0];
  assign smartconnect_0_M07_AXI_BVALID = m07_bvalid;
  assign smartconnect_0_M07_AXI_RDATA = m07_rdata[63:0];
  assign smartconnect_0_M07_AXI_RLAST = m07_rlast;
  assign smartconnect_0_M07_AXI_RRESP = m07_rresp[1:0];
  assign smartconnect_0_M07_AXI_RVALID = m07_rvalid;
  assign smartconnect_0_M07_AXI_WREADY = m07_wready;
  assign smartconnect_0_M08_AXI_ARREADY = m08_arready;
  assign smartconnect_0_M08_AXI_AWREADY = m08_awready;
  assign smartconnect_0_M08_AXI_BRESP = m08_bresp[1:0];
  assign smartconnect_0_M08_AXI_BVALID = m08_bvalid;
  assign smartconnect_0_M08_AXI_RDATA = m08_rdata[63:0];
  assign smartconnect_0_M08_AXI_RLAST = m08_rlast;
  assign smartconnect_0_M08_AXI_RRESP = m08_rresp[1:0];
  assign smartconnect_0_M08_AXI_RVALID = m08_rvalid;
  assign smartconnect_0_M08_AXI_WREADY = m08_wready;
  assign smartconnect_0_M09_AXI_ARREADY = m09_arready;
  assign smartconnect_0_M09_AXI_AWREADY = m09_awready;
  assign smartconnect_0_M09_AXI_BRESP = m09_bresp[1:0];
  assign smartconnect_0_M09_AXI_BVALID = m09_bvalid;
  assign smartconnect_0_M09_AXI_RDATA = m09_rdata[63:0];
  assign smartconnect_0_M09_AXI_RLAST = m09_rlast;
  assign smartconnect_0_M09_AXI_RRESP = m09_rresp[1:0];
  assign smartconnect_0_M09_AXI_RVALID = m09_rvalid;
  assign smartconnect_0_M09_AXI_WREADY = m09_wready;
  assign smartconnect_0_M10_AXI_ARREADY = m10_arready;
  assign smartconnect_0_M10_AXI_AWREADY = m10_awready;
  assign smartconnect_0_M10_AXI_BRESP = m10_bresp[1:0];
  assign smartconnect_0_M10_AXI_BVALID = m10_bvalid;
  assign smartconnect_0_M10_AXI_RDATA = m10_rdata[63:0];
  assign smartconnect_0_M10_AXI_RLAST = m10_rlast;
  assign smartconnect_0_M10_AXI_RRESP = m10_rresp[1:0];
  assign smartconnect_0_M10_AXI_RVALID = m10_rvalid;
  assign smartconnect_0_M10_AXI_WREADY = m10_wready;
  assign smartconnect_0_M11_AXI_ARREADY = m11_arready;
  assign smartconnect_0_M11_AXI_AWREADY = m11_awready;
  assign smartconnect_0_M11_AXI_BRESP = m11_bresp[1:0];
  assign smartconnect_0_M11_AXI_BVALID = m11_bvalid;
  assign smartconnect_0_M11_AXI_RDATA = m11_rdata[63:0];
  assign smartconnect_0_M11_AXI_RLAST = m11_rlast;
  assign smartconnect_0_M11_AXI_RRESP = m11_rresp[1:0];
  assign smartconnect_0_M11_AXI_RVALID = m11_rvalid;
  assign smartconnect_0_M11_AXI_WREADY = m11_wready;
  assign sys_clk_0_1 = PCIE_CLK;
  assign sys_rst_n_0_1 = PCIE_RSTN;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[1:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[1:0];
  design_1_smartconnect_0_2 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
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
        .M01_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
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
        .M02_AXI_arqos(smartconnect_0_M02_AXI_ARQOS),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(smartconnect_0_M02_AXI_AWQOS),
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
        .M03_AXI_arqos(smartconnect_0_M03_AXI_ARQOS),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awqos(smartconnect_0_M03_AXI_AWQOS),
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
        .M04_AXI_arqos(smartconnect_0_M04_AXI_ARQOS),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awburst(smartconnect_0_M04_AXI_AWBURST),
        .M04_AXI_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .M04_AXI_awlen(smartconnect_0_M04_AXI_AWLEN),
        .M04_AXI_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .M04_AXI_awprot(smartconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awqos(smartconnect_0_M04_AXI_AWQOS),
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
        .M05_AXI_arqos(smartconnect_0_M05_AXI_ARQOS),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awburst(smartconnect_0_M05_AXI_AWBURST),
        .M05_AXI_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .M05_AXI_awlen(smartconnect_0_M05_AXI_AWLEN),
        .M05_AXI_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .M05_AXI_awprot(smartconnect_0_M05_AXI_AWPROT),
        .M05_AXI_awqos(smartconnect_0_M05_AXI_AWQOS),
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
        .M06_AXI_arqos(smartconnect_0_M06_AXI_ARQOS),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arsize(smartconnect_0_M06_AXI_ARSIZE),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awburst(smartconnect_0_M06_AXI_AWBURST),
        .M06_AXI_awcache(smartconnect_0_M06_AXI_AWCACHE),
        .M06_AXI_awlen(smartconnect_0_M06_AXI_AWLEN),
        .M06_AXI_awlock(smartconnect_0_M06_AXI_AWLOCK),
        .M06_AXI_awprot(smartconnect_0_M06_AXI_AWPROT),
        .M06_AXI_awqos(smartconnect_0_M06_AXI_AWQOS),
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
        .M07_AXI_arqos(smartconnect_0_M07_AXI_ARQOS),
        .M07_AXI_arready(smartconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arsize(smartconnect_0_M07_AXI_ARSIZE),
        .M07_AXI_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awburst(smartconnect_0_M07_AXI_AWBURST),
        .M07_AXI_awcache(smartconnect_0_M07_AXI_AWCACHE),
        .M07_AXI_awlen(smartconnect_0_M07_AXI_AWLEN),
        .M07_AXI_awlock(smartconnect_0_M07_AXI_AWLOCK),
        .M07_AXI_awprot(smartconnect_0_M07_AXI_AWPROT),
        .M07_AXI_awqos(smartconnect_0_M07_AXI_AWQOS),
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
        .M08_AXI_arqos(smartconnect_0_M08_AXI_ARQOS),
        .M08_AXI_arready(smartconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arsize(smartconnect_0_M08_AXI_ARSIZE),
        .M08_AXI_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awburst(smartconnect_0_M08_AXI_AWBURST),
        .M08_AXI_awcache(smartconnect_0_M08_AXI_AWCACHE),
        .M08_AXI_awlen(smartconnect_0_M08_AXI_AWLEN),
        .M08_AXI_awlock(smartconnect_0_M08_AXI_AWLOCK),
        .M08_AXI_awprot(smartconnect_0_M08_AXI_AWPROT),
        .M08_AXI_awqos(smartconnect_0_M08_AXI_AWQOS),
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
        .M09_AXI_arqos(smartconnect_0_M09_AXI_ARQOS),
        .M09_AXI_arready(smartconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arsize(smartconnect_0_M09_AXI_ARSIZE),
        .M09_AXI_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awburst(smartconnect_0_M09_AXI_AWBURST),
        .M09_AXI_awcache(smartconnect_0_M09_AXI_AWCACHE),
        .M09_AXI_awlen(smartconnect_0_M09_AXI_AWLEN),
        .M09_AXI_awlock(smartconnect_0_M09_AXI_AWLOCK),
        .M09_AXI_awprot(smartconnect_0_M09_AXI_AWPROT),
        .M09_AXI_awqos(smartconnect_0_M09_AXI_AWQOS),
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
        .M10_AXI_arqos(smartconnect_0_M10_AXI_ARQOS),
        .M10_AXI_arready(smartconnect_0_M10_AXI_ARREADY),
        .M10_AXI_arsize(smartconnect_0_M10_AXI_ARSIZE),
        .M10_AXI_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .M10_AXI_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .M10_AXI_awburst(smartconnect_0_M10_AXI_AWBURST),
        .M10_AXI_awcache(smartconnect_0_M10_AXI_AWCACHE),
        .M10_AXI_awlen(smartconnect_0_M10_AXI_AWLEN),
        .M10_AXI_awlock(smartconnect_0_M10_AXI_AWLOCK),
        .M10_AXI_awprot(smartconnect_0_M10_AXI_AWPROT),
        .M10_AXI_awqos(smartconnect_0_M10_AXI_AWQOS),
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
        .M11_AXI_arqos(smartconnect_0_M11_AXI_ARQOS),
        .M11_AXI_arready(smartconnect_0_M11_AXI_ARREADY),
        .M11_AXI_arsize(smartconnect_0_M11_AXI_ARSIZE),
        .M11_AXI_arvalid(smartconnect_0_M11_AXI_ARVALID),
        .M11_AXI_awaddr(smartconnect_0_M11_AXI_AWADDR),
        .M11_AXI_awburst(smartconnect_0_M11_AXI_AWBURST),
        .M11_AXI_awcache(smartconnect_0_M11_AXI_AWCACHE),
        .M11_AXI_awlen(smartconnect_0_M11_AXI_AWLEN),
        .M11_AXI_awlock(smartconnect_0_M11_AXI_AWLOCK),
        .M11_AXI_awprot(smartconnect_0_M11_AXI_AWPROT),
        .M11_AXI_awqos(smartconnect_0_M11_AXI_AWQOS),
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
        .aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn));
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
        .m_axil_arready(1'b0),
        .m_axil_awready(1'b0),
        .m_axil_bresp({1'b0,1'b0}),
        .m_axil_bvalid(1'b0),
        .m_axil_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axil_rresp({1'b0,1'b0}),
        .m_axil_rvalid(1'b0),
        .m_axil_wready(1'b0),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(sys_clk_0_1),
        .sys_rst_n(sys_rst_n_0_1),
        .usr_irq_req(xlconstant_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
