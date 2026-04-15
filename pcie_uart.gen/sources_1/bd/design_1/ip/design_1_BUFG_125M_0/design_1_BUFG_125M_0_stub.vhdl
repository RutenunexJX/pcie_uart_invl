-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Apr 13 16:43:43 2026
-- Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/_xu/_prj/pcie_uart_tx_array/repo/pcie_uart.gen/sources_1/bd/design_1/ip/design_1_BUFG_125M_0/design_1_BUFG_125M_0_stub.vhdl
-- Design      : design_1_BUFG_125M_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_BUFG_125M_0 is
  Port ( 
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_BUFG_125M_0;

architecture stub of design_1_BUFG_125M_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BUFG_I[0:0],BUFG_O[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2022.2";
begin
end;
