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


// IP VLNV: xilinx.com:module_ref:test_axil:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_2_test_axil_0_1 (
  clk,
  rst_n,
  lite_awaddr,
  lite_awprot,
  lite_awready,
  lite_awvalid,
  lite_wdata,
  lite_wready,
  lite_wstrb,
  lite_wvalid,
  lite_bready,
  lite_bresp,
  lite_bvalid,
  lite_araddr,
  lite_arprot,
  lite_arready,
  lite_arvalid,
  lite_rdata,
  lite_rready,
  lite_rresp,
  lite_rvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF lite, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_xdma_0_0_axi_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite AWADDR" *)
input wire [31 : 0] lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite AWPROT" *)
input wire [2 : 0] lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite AWREADY" *)
output wire lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite AWVALID" *)
input wire lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite WDATA" *)
input wire [31 : 0] lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite WREADY" *)
output wire lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite WSTRB" *)
input wire [3 : 0] lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite WVALID" *)
input wire lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite BREADY" *)
input wire lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite BRESP" *)
output wire [1 : 0] lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite BVALID" *)
output wire lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite ARADDR" *)
input wire [31 : 0] lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite ARPROT" *)
input wire [2 : 0] lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite ARREADY" *)
output wire lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite ARVALID" *)
input wire lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite RDATA" *)
output wire [31 : 0] lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite RREADY" *)
input wire lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite RRESP" *)
output wire [1 : 0] lite_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THR\
EADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 lite RVALID" *)
output wire lite_rvalid;

  test_axil #(
    .LITE_BASE_ADDR(32'H00000000)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .lite_awaddr(lite_awaddr),
    .lite_awprot(lite_awprot),
    .lite_awready(lite_awready),
    .lite_awvalid(lite_awvalid),
    .lite_wdata(lite_wdata),
    .lite_wready(lite_wready),
    .lite_wstrb(lite_wstrb),
    .lite_wvalid(lite_wvalid),
    .lite_bready(lite_bready),
    .lite_bresp(lite_bresp),
    .lite_bvalid(lite_bvalid),
    .lite_araddr(lite_araddr),
    .lite_arprot(lite_arprot),
    .lite_arready(lite_arready),
    .lite_arvalid(lite_arvalid),
    .lite_rdata(lite_rdata),
    .lite_rready(lite_rready),
    .lite_rresp(lite_rresp),
    .lite_rvalid(lite_rvalid)
  );
endmodule
