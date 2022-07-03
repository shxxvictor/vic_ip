-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Jun 28 15:27:22 2022
-- Host        : DESKTOP-1TSGDPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top fifo_clk_trans -prefix
--               fifo_clk_trans_ fifo_clk_trans_stub.vhdl
-- Design      : fifo_clk_trans
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu4ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_clk_trans is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 34 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 34 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end fifo_clk_trans;

architecture stub of fifo_clk_trans is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[34:0],wr_en,rd_en,dout[34:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_6,Vivado 2021.2";
begin
end;
