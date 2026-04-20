-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Apr 19 16:45:19 2026
-- Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/bd/design_2/ip/design_2_test_axi_0_0/design_2_test_axi_0_0_sim_netlist.vhdl
-- Design      : design_2_test_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_test_axi_0_0_test_axi is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_test_axi_0_0_test_axi : entity is "test_axi";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_2_test_axi_0_0_test_axi : entity is "soft";
end design_2_test_axi_0_0_test_axi;

architecture STRUCTURE of design_2_test_axi_0_0_test_axi is
  signal aw_hs : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of aw_hs : signal is std.standard.true;
  signal awaddr : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute MARK_DEBUG of awaddr : signal is std.standard.true;
  signal awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of awburst : signal is std.standard.true;
  signal awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of awcache : signal is std.standard.true;
  signal awid : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of awid : signal is std.standard.true;
  signal awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of awlen : signal is std.standard.true;
  signal awlock : STD_LOGIC;
  attribute MARK_DEBUG of awlock : signal is std.standard.true;
  signal awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of awprot : signal is std.standard.true;
  signal awready : STD_LOGIC;
  attribute MARK_DEBUG of awready : signal is std.standard.true;
  signal awready_i_1_n_0 : STD_LOGIC;
  signal awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of awsize : signal is std.standard.true;
  signal awvalid : STD_LOGIC;
  attribute MARK_DEBUG of awvalid : signal is std.standard.true;
  signal b_hs : STD_LOGIC;
  attribute MARK_DEBUG of b_hs : signal is std.standard.true;
  signal bid : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of bid : signal is std.standard.true;
  signal bready : STD_LOGIC;
  attribute MARK_DEBUG of bready : signal is std.standard.true;
  signal bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of bresp : signal is std.standard.true;
  signal bvalid : STD_LOGIC;
  attribute MARK_DEBUG of bvalid : signal is std.standard.true;
  signal bvalid1_out : STD_LOGIC;
  signal fix_wlast : STD_LOGIC;
  attribute MARK_DEBUG of fix_wlast : signal is std.standard.true;
  signal rst : STD_LOGIC;
  signal w_hs : STD_LOGIC;
  attribute MARK_DEBUG of w_hs : signal is std.standard.true;
  signal wdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute MARK_DEBUG of wdata : signal is std.standard.true;
  signal wlast : STD_LOGIC;
  attribute MARK_DEBUG of wlast : signal is std.standard.true;
  signal wready : STD_LOGIC;
  attribute MARK_DEBUG of wready : signal is std.standard.true;
  signal wready_i_1_n_0 : STD_LOGIC;
  signal wstrb : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of wstrb : signal is std.standard.true;
  signal wvalid : STD_LOGIC;
  attribute MARK_DEBUG of wvalid : signal is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of awready_reg : label is "yes";
  attribute KEEP of \bid_reg[0]\ : label is "yes";
  attribute KEEP of \bid_reg[1]\ : label is "yes";
  attribute KEEP of \bid_reg[2]\ : label is "yes";
  attribute KEEP of \bid_reg[3]\ : label is "yes";
  attribute KEEP of \bresp_reg[0]\ : label is "yes";
  attribute KEEP of \bresp_reg[1]\ : label is "yes";
  attribute KEEP of bvalid_reg : label is "yes";
  attribute KEEP of wready_reg : label is "yes";
begin
  awaddr(63 downto 0) <= s_axi_awaddr(63 downto 0);
  awburst(1 downto 0) <= s_axi_awburst(1 downto 0);
  awcache(3 downto 0) <= s_axi_awcache(3 downto 0);
  awid(3 downto 0) <= s_axi_awid(3 downto 0);
  awlen(7 downto 0) <= s_axi_awlen(7 downto 0);
  awlock <= s_axi_awlock;
  awprot(2 downto 0) <= s_axi_awprot(2 downto 0);
  awsize(2 downto 0) <= s_axi_awsize(2 downto 0);
  awvalid <= s_axi_awvalid;
  bready <= s_axi_bready;
  s_axi_awready <= awready;
  s_axi_bid(3 downto 0) <= bid(3 downto 0);
  s_axi_bresp(1 downto 0) <= bresp(1 downto 0);
  s_axi_bvalid <= bvalid;
  s_axi_wready <= wready;
  wdata(63 downto 0) <= s_axi_wdata(63 downto 0);
  wstrb(7 downto 0) <= s_axi_wstrb(7 downto 0);
  wvalid <= s_axi_wvalid;
aw_hs_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => awready,
      I1 => awvalid,
      O => aw_hs
    );
awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => wlast,
      I1 => aw_hs,
      I2 => awready,
      O => awready_i_1_n_0
    );
awready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => rst
    );
awready_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => awready_i_1_n_0,
      PRE => rst,
      Q => awready
    );
b_hs_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bvalid,
      I1 => bready,
      O => b_hs
    );
\bid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '0',
      Q => bid(0)
    );
\bid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '0',
      Q => bid(1)
    );
\bid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '0',
      Q => bid(2)
    );
\bid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '0',
      Q => bid(3)
    );
\bresp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '0',
      Q => bresp(0)
    );
\bresp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '0',
      Q => bresp(1)
    );
bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => bvalid,
      I1 => wlast,
      I2 => w_hs,
      I3 => b_hs,
      O => bvalid1_out
    );
bvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => bvalid1_out,
      Q => bvalid
    );
fix_wlast_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => wvalid,
      O => fix_wlast
    );
fix_wlast_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fix_wlast,
      O => wlast
    );
w_hs_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wvalid,
      I1 => wready,
      O => w_hs
    );
wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => aw_hs,
      I1 => wlast,
      I2 => wready,
      O => wready_i_1_n_0
    );
wready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => wready_i_1_n_0,
      Q => wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_test_axi_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_test_axi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_test_axi_0_0 : entity is "design_2_test_axi_0_0,test_axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_test_axi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_2_test_axi_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_test_axi_0_0 : entity is "test_axi,Vivado 2022.2";
end design_2_test_axi_0_0;

architecture STRUCTURE of design_2_test_axi_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_xdma_0_0_axi_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_bready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_2_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 s_axi AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 s_axi BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.design_2_test_axi_0_0_test_axi
     port map (
      clk => clk,
      rst_n => rst_n,
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
