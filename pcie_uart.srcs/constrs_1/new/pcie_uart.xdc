#PXIE

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]


set_property PACKAGE_PIN G25 [get_ports PCIE_RST_N]
set_property IOSTANDARD LVCMOS33 [get_ports PCIE_RST_N]
set_property PULLUP true [get_ports PCIE_RST_N]
set_false_path -from [get_ports PCIE_RST_N]



create_clock -period 10.000 -name PCIE_CLK [get_ports PCIE_CLK_P]

set_property IOSTANDARD DIFF_SSTL15 [get_ports PCIE_CLK_P]
set_property IOSTANDARD DIFF_SSTL15 [get_ports PCIE_CLK_N]
set_property PACKAGE_PIN F11 [get_ports PCIE_CLK_P]


#set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells {BD/design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells {BD/design_2_i/xdma_0/inst/design_2_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN B11 [get_ports {PCIE_MGT_RX_P[0]}]
#set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells {BD/design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells {BD/design_2_i/xdma_0/inst/design_2_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN D14 [get_ports {PCIE_MGT_RX_P[1]}]


set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_RX[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RS422_TX[0]}]

set_property PACKAGE_PIN E20 [get_ports {RS422_RX[0]}]
set_property PACKAGE_PIN F18 [get_ports {RS422_RX[1]}]
set_property PACKAGE_PIN E18 [get_ports {RS422_RX[2]}]
set_property PACKAGE_PIN F17 [get_ports {RS422_RX[3]}]
set_property PACKAGE_PIN E17 [get_ports {RS422_RX[4]}]
set_property PACKAGE_PIN E16 [get_ports {RS422_RX[5]}]
set_property PACKAGE_PIN F15 [get_ports {RS422_RX[6]}]
set_property PACKAGE_PIN G15 [get_ports {RS422_RX[7]}]
set_property PACKAGE_PIN G16 [get_ports {RS422_RX[8]}]
set_property PACKAGE_PIN D23 [get_ports {RS422_RX[9]}]
set_property PACKAGE_PIN F19 [get_ports {RS422_RX[10]}]
set_property PACKAGE_PIN G17 [get_ports {RS422_RX[11]}]

set_property PACKAGE_PIN B26 [get_ports {RS422_TX[0]}]
set_property PACKAGE_PIN H16 [get_ports {RS422_TX[1]}]
set_property PACKAGE_PIN G19 [get_ports {RS422_TX[2]}]
set_property PACKAGE_PIN H17 [get_ports {RS422_TX[3]}]
set_property PACKAGE_PIN F20 [get_ports {RS422_TX[4]}]
set_property PACKAGE_PIN E21 [get_ports {RS422_TX[5]}]
set_property PACKAGE_PIN C23 [get_ports {RS422_TX[6]}]
set_property PACKAGE_PIN C22 [get_ports {RS422_TX[7]}]
set_property PACKAGE_PIN AA3 [get_ports {RS422_TX[8]}]
set_property PACKAGE_PIN Y7 [get_ports {RS422_TX[9]}]
set_property PACKAGE_PIN C24 [get_ports {RS422_TX[10]}]
set_property PACKAGE_PIN B25 [get_ports {RS422_TX[11]}]


set_property IOSTANDARD LVCMOS33 [get_ports {port_en[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_en[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_en[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_en[0]}]

set_property PACKAGE_PIN AB1 [get_ports {port_en[0]}]
set_property PACKAGE_PIN Y1 [get_ports {port_en[1]}]
set_property PACKAGE_PIN AC2 [get_ports {port_en[2]}]
set_property PACKAGE_PIN Y2 [get_ports {port_en[3]}]

############################
##debug

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list BD/design_2_i/xdma_0/inst/design_2_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/userclk1_i1.usrclk1_i1_0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {BD/design_2_i/test_axi_0/inst/wstrb[0]} {BD/design_2_i/test_axi_0/inst/wstrb[1]} {BD/design_2_i/test_axi_0/inst/wstrb[2]} {BD/design_2_i/test_axi_0/inst/wstrb[3]} {BD/design_2_i/test_axi_0/inst/wstrb[4]} {BD/design_2_i/test_axi_0/inst/wstrb[5]} {BD/design_2_i/test_axi_0/inst/wstrb[6]} {BD/design_2_i/test_axi_0/inst/wstrb[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {BD/design_2_i/test_axi_0/inst/awburst[0]} {BD/design_2_i/test_axi_0/inst/awburst[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {BD/design_2_i/test_axi_0/inst/awcache[0]} {BD/design_2_i/test_axi_0/inst/awcache[1]} {BD/design_2_i/test_axi_0/inst/awcache[2]} {BD/design_2_i/test_axi_0/inst/awcache[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 2 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {BD/design_2_i/test_axi_0/inst/bresp[0]} {BD/design_2_i/test_axi_0/inst/bresp[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {BD/design_2_i/test_axi_0/inst/awlen[0]} {BD/design_2_i/test_axi_0/inst/awlen[1]} {BD/design_2_i/test_axi_0/inst/awlen[2]} {BD/design_2_i/test_axi_0/inst/awlen[3]} {BD/design_2_i/test_axi_0/inst/awlen[4]} {BD/design_2_i/test_axi_0/inst/awlen[5]} {BD/design_2_i/test_axi_0/inst/awlen[6]} {BD/design_2_i/test_axi_0/inst/awlen[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 4 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {BD/design_2_i/test_axi_0/inst/bid[0]} {BD/design_2_i/test_axi_0/inst/bid[1]} {BD/design_2_i/test_axi_0/inst/bid[2]} {BD/design_2_i/test_axi_0/inst/bid[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 3 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {BD/design_2_i/test_axi_0/inst/awprot[0]} {BD/design_2_i/test_axi_0/inst/awprot[1]} {BD/design_2_i/test_axi_0/inst/awprot[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 4 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {BD/design_2_i/test_axi_0/inst/awid[0]} {BD/design_2_i/test_axi_0/inst/awid[1]} {BD/design_2_i/test_axi_0/inst/awid[2]} {BD/design_2_i/test_axi_0/inst/awid[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 64 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {BD/design_2_i/test_axi_0/inst/wdata[0]} {BD/design_2_i/test_axi_0/inst/wdata[1]} {BD/design_2_i/test_axi_0/inst/wdata[2]} {BD/design_2_i/test_axi_0/inst/wdata[3]} {BD/design_2_i/test_axi_0/inst/wdata[4]} {BD/design_2_i/test_axi_0/inst/wdata[5]} {BD/design_2_i/test_axi_0/inst/wdata[6]} {BD/design_2_i/test_axi_0/inst/wdata[7]} {BD/design_2_i/test_axi_0/inst/wdata[8]} {BD/design_2_i/test_axi_0/inst/wdata[9]} {BD/design_2_i/test_axi_0/inst/wdata[10]} {BD/design_2_i/test_axi_0/inst/wdata[11]} {BD/design_2_i/test_axi_0/inst/wdata[12]} {BD/design_2_i/test_axi_0/inst/wdata[13]} {BD/design_2_i/test_axi_0/inst/wdata[14]} {BD/design_2_i/test_axi_0/inst/wdata[15]} {BD/design_2_i/test_axi_0/inst/wdata[16]} {BD/design_2_i/test_axi_0/inst/wdata[17]} {BD/design_2_i/test_axi_0/inst/wdata[18]} {BD/design_2_i/test_axi_0/inst/wdata[19]} {BD/design_2_i/test_axi_0/inst/wdata[20]} {BD/design_2_i/test_axi_0/inst/wdata[21]} {BD/design_2_i/test_axi_0/inst/wdata[22]} {BD/design_2_i/test_axi_0/inst/wdata[23]} {BD/design_2_i/test_axi_0/inst/wdata[24]} {BD/design_2_i/test_axi_0/inst/wdata[25]} {BD/design_2_i/test_axi_0/inst/wdata[26]} {BD/design_2_i/test_axi_0/inst/wdata[27]} {BD/design_2_i/test_axi_0/inst/wdata[28]} {BD/design_2_i/test_axi_0/inst/wdata[29]} {BD/design_2_i/test_axi_0/inst/wdata[30]} {BD/design_2_i/test_axi_0/inst/wdata[31]} {BD/design_2_i/test_axi_0/inst/wdata[32]} {BD/design_2_i/test_axi_0/inst/wdata[33]} {BD/design_2_i/test_axi_0/inst/wdata[34]} {BD/design_2_i/test_axi_0/inst/wdata[35]} {BD/design_2_i/test_axi_0/inst/wdata[36]} {BD/design_2_i/test_axi_0/inst/wdata[37]} {BD/design_2_i/test_axi_0/inst/wdata[38]} {BD/design_2_i/test_axi_0/inst/wdata[39]} {BD/design_2_i/test_axi_0/inst/wdata[40]} {BD/design_2_i/test_axi_0/inst/wdata[41]} {BD/design_2_i/test_axi_0/inst/wdata[42]} {BD/design_2_i/test_axi_0/inst/wdata[43]} {BD/design_2_i/test_axi_0/inst/wdata[44]} {BD/design_2_i/test_axi_0/inst/wdata[45]} {BD/design_2_i/test_axi_0/inst/wdata[46]} {BD/design_2_i/test_axi_0/inst/wdata[47]} {BD/design_2_i/test_axi_0/inst/wdata[48]} {BD/design_2_i/test_axi_0/inst/wdata[49]} {BD/design_2_i/test_axi_0/inst/wdata[50]} {BD/design_2_i/test_axi_0/inst/wdata[51]} {BD/design_2_i/test_axi_0/inst/wdata[52]} {BD/design_2_i/test_axi_0/inst/wdata[53]} {BD/design_2_i/test_axi_0/inst/wdata[54]} {BD/design_2_i/test_axi_0/inst/wdata[55]} {BD/design_2_i/test_axi_0/inst/wdata[56]} {BD/design_2_i/test_axi_0/inst/wdata[57]} {BD/design_2_i/test_axi_0/inst/wdata[58]} {BD/design_2_i/test_axi_0/inst/wdata[59]} {BD/design_2_i/test_axi_0/inst/wdata[60]} {BD/design_2_i/test_axi_0/inst/wdata[61]} {BD/design_2_i/test_axi_0/inst/wdata[62]} {BD/design_2_i/test_axi_0/inst/wdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 64 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {BD/design_2_i/test_axi_0/inst/awaddr[0]} {BD/design_2_i/test_axi_0/inst/awaddr[1]} {BD/design_2_i/test_axi_0/inst/awaddr[2]} {BD/design_2_i/test_axi_0/inst/awaddr[3]} {BD/design_2_i/test_axi_0/inst/awaddr[4]} {BD/design_2_i/test_axi_0/inst/awaddr[5]} {BD/design_2_i/test_axi_0/inst/awaddr[6]} {BD/design_2_i/test_axi_0/inst/awaddr[7]} {BD/design_2_i/test_axi_0/inst/awaddr[8]} {BD/design_2_i/test_axi_0/inst/awaddr[9]} {BD/design_2_i/test_axi_0/inst/awaddr[10]} {BD/design_2_i/test_axi_0/inst/awaddr[11]} {BD/design_2_i/test_axi_0/inst/awaddr[12]} {BD/design_2_i/test_axi_0/inst/awaddr[13]} {BD/design_2_i/test_axi_0/inst/awaddr[14]} {BD/design_2_i/test_axi_0/inst/awaddr[15]} {BD/design_2_i/test_axi_0/inst/awaddr[16]} {BD/design_2_i/test_axi_0/inst/awaddr[17]} {BD/design_2_i/test_axi_0/inst/awaddr[18]} {BD/design_2_i/test_axi_0/inst/awaddr[19]} {BD/design_2_i/test_axi_0/inst/awaddr[20]} {BD/design_2_i/test_axi_0/inst/awaddr[21]} {BD/design_2_i/test_axi_0/inst/awaddr[22]} {BD/design_2_i/test_axi_0/inst/awaddr[23]} {BD/design_2_i/test_axi_0/inst/awaddr[24]} {BD/design_2_i/test_axi_0/inst/awaddr[25]} {BD/design_2_i/test_axi_0/inst/awaddr[26]} {BD/design_2_i/test_axi_0/inst/awaddr[27]} {BD/design_2_i/test_axi_0/inst/awaddr[28]} {BD/design_2_i/test_axi_0/inst/awaddr[29]} {BD/design_2_i/test_axi_0/inst/awaddr[30]} {BD/design_2_i/test_axi_0/inst/awaddr[31]} {BD/design_2_i/test_axi_0/inst/awaddr[32]} {BD/design_2_i/test_axi_0/inst/awaddr[33]} {BD/design_2_i/test_axi_0/inst/awaddr[34]} {BD/design_2_i/test_axi_0/inst/awaddr[35]} {BD/design_2_i/test_axi_0/inst/awaddr[36]} {BD/design_2_i/test_axi_0/inst/awaddr[37]} {BD/design_2_i/test_axi_0/inst/awaddr[38]} {BD/design_2_i/test_axi_0/inst/awaddr[39]} {BD/design_2_i/test_axi_0/inst/awaddr[40]} {BD/design_2_i/test_axi_0/inst/awaddr[41]} {BD/design_2_i/test_axi_0/inst/awaddr[42]} {BD/design_2_i/test_axi_0/inst/awaddr[43]} {BD/design_2_i/test_axi_0/inst/awaddr[44]} {BD/design_2_i/test_axi_0/inst/awaddr[45]} {BD/design_2_i/test_axi_0/inst/awaddr[46]} {BD/design_2_i/test_axi_0/inst/awaddr[47]} {BD/design_2_i/test_axi_0/inst/awaddr[48]} {BD/design_2_i/test_axi_0/inst/awaddr[49]} {BD/design_2_i/test_axi_0/inst/awaddr[50]} {BD/design_2_i/test_axi_0/inst/awaddr[51]} {BD/design_2_i/test_axi_0/inst/awaddr[52]} {BD/design_2_i/test_axi_0/inst/awaddr[53]} {BD/design_2_i/test_axi_0/inst/awaddr[54]} {BD/design_2_i/test_axi_0/inst/awaddr[55]} {BD/design_2_i/test_axi_0/inst/awaddr[56]} {BD/design_2_i/test_axi_0/inst/awaddr[57]} {BD/design_2_i/test_axi_0/inst/awaddr[58]} {BD/design_2_i/test_axi_0/inst/awaddr[59]} {BD/design_2_i/test_axi_0/inst/awaddr[60]} {BD/design_2_i/test_axi_0/inst/awaddr[61]} {BD/design_2_i/test_axi_0/inst/awaddr[62]} {BD/design_2_i/test_axi_0/inst/awaddr[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 3 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {BD/design_2_i/test_axi_0/inst/awsize[0]} {BD/design_2_i/test_axi_0/inst/awsize[1]} {BD/design_2_i/test_axi_0/inst/awsize[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list BD/design_2_i/test_axi_0/inst/aw_hs]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list BD/design_2_i/test_axi_0/inst/awlock]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list BD/design_2_i/test_axi_0/inst/awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list BD/design_2_i/test_axi_0/inst/awvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list BD/design_2_i/test_axi_0/inst/b_hs]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list BD/design_2_i/test_axi_0/inst/bready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list BD/design_2_i/test_axi_0/inst/bvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list BD/design_2_i/test_axi_0/inst/fix_wlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list BD/design_2_i/test_axi_0/inst/w_hs]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list BD/design_2_i/test_axi_0/inst/wlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list BD/design_2_i/test_axi_0/inst/wready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list BD/design_2_i/test_axi_0/inst/wvalid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_userclk1_i1.usrclk1_i1_0]
