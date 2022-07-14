// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jul 13 16:15:32 2022
// Host        : DESKTOP-1TSGDPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top fifo_clk_trans -prefix
//               fifo_clk_trans_ fifo_clk_trans_stub.v
// Design      : fifo_clk_trans
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *)
module fifo_clk_trans(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[34:0],wr_en,rd_en,dout[34:0],full,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [34:0]din;
  input wr_en;
  input rd_en;
  output [34:0]dout;
  output full;
  output empty;
endmodule
