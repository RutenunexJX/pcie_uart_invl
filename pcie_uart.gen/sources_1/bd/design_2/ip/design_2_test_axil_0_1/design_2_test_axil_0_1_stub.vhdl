-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Apr 19 20:18:29 2026
-- Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/bd/design_2/ip/design_2_test_axil_0_1/design_2_test_axil_0_1_stub.vhdl
-- Design      : design_2_test_axil_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_test_axil_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    lite_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    lite_awready : out STD_LOGIC;
    lite_awvalid : in STD_LOGIC;
    lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lite_wready : out STD_LOGIC;
    lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lite_wvalid : in STD_LOGIC;
    lite_bready : in STD_LOGIC;
    lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lite_bvalid : out STD_LOGIC;
    lite_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    lite_arready : out STD_LOGIC;
    lite_arvalid : in STD_LOGIC;
    lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lite_rready : in STD_LOGIC;
    lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lite_rvalid : out STD_LOGIC
  );

end design_2_test_axil_0_1;

architecture stub of design_2_test_axil_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,lite_awaddr[31:0],lite_awprot[2:0],lite_awready,lite_awvalid,lite_wdata[31:0],lite_wready,lite_wstrb[3:0],lite_wvalid,lite_bready,lite_bresp[1:0],lite_bvalid,lite_araddr[31:0],lite_arprot[2:0],lite_arready,lite_arvalid,lite_rdata[31:0],lite_rready,lite_rresp[1:0],lite_rvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "test_axil,Vivado 2022.2";
begin
end;
