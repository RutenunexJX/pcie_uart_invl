-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Apr 17 12:03:29 2026
-- Host        : LAPTOP-ML231TQL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/_xu/_prj/pcie_uart_tx_array/pcie_uart_invl/pcie_uart.gen/sources_1/ip/bram_64x8192/bram_64x8192_stub.vhdl
-- Design      : bram_64x8192
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bram_64x8192 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end bram_64x8192;

architecture stub of bram_64x8192 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[7:0],addra[14:0],dina[63:0],douta[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.2";
begin
end;
