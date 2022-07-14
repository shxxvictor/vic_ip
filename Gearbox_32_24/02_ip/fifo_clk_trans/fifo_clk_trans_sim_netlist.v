// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jul 13 16:15:32 2022
// Host        : DESKTOP-1TSGDPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_clk_trans -prefix
//               fifo_clk_trans_ fifo_clk_trans_sim_netlist.v
// Design      : fifo_clk_trans
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_clk_trans,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module fifo_clk_trans
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [34:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [34:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [34:0]din;
  wire [34:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "35" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "35" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_clk_trans_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module fifo_clk_trans_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_clk_trans_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_clk_trans_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_clk_trans_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module fifo_clk_trans_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_clk_trans_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 89696)
`pragma protect data_block
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
ofkBAaopdw/z1HBudmm2VicYE855IZKFlA//tTvWYpnbyex3xei4BOO3piY1OgAE94fA8oCzJsfV
NrLrXncZggGChpDMINj0RKeDdEwZoL/cAxrc4S2CtFu599lANilxPfjPvFaycfpBdbMOhZxz5+oI
0lxbssnkU5xbDS3yqO8rJF8nYhZuwgySktR1kfCAlelBqao20iTLX8j48iCaXPhxkWwCBq9JBzAU
i02F0jDv9GNasW0KUeq5cmWhIhZyUa8TM/iyWlOkBC0xMVym2N02J7KlcK96OUd24ngIxJDwkRRj
5r5Or4kG6lMpgqcHLW2nSjmZ0i+czVhl019vc/WFhBD9HHfkgGPNUB4TOs5UejkoDSG9SLxesifY
Ou2LJ3irnlj2tuuTszBgy/eYnMFRWS4A5QEeTGfzwmjYfOmS5LTpMR5v9MUbpgs3dC4TfKf1tIKg
U9eW315g2koCJ6xHsNmkW8m6klR7SQRt/0w4p9O1TFXzKXLoPDrtSta0Zc3tOPQsauxm1isf7jfV
jjUK4c16TTebxscCcGVe0FngqqebZAJr8y1lD/FPDemjZTevlmAShsQ1nqJja2F9MR3yTr0CSmbd
n4GBB+sBX+67KBpIvoIoCGxL3p6Gi5EFjCMwKab5dk+ZFjHF+AxJnreHwo80hp6O5KOms1dXjTth
AAyEIYEBL1I3+IOVFdwjQZFZFDNCksrqSOvWpmneKPrcOMDGgBBL2EBXqXSh2pTFHTrVAR2aEL3W
nbjOVkSocsrOFLon95QtmMbjh3JKxJr7HGyctjew3ankf0rqzkdo0zojRwpil/MVH7iof6435O/5
iND5PHw5Fp6NcOdXD0/+i+PtGzQMjLReenaqKYyBNgHoUyngypmouAGg5i65Xwl3KRuJPaXGA4eG
068fP8pycwg8gw5xbKZbOfKZPTis7OPwGwCI0p5EN6EXUxuz27DeOrIHFPT1490fCcmtg16fRVW/
P0yefKQhUtpwLqYPQPdEg84PkNMFQB6NeKk/iTokB2VzAjxesBqcThfw+xw7mcono+yEnmPf+GmZ
hTkyZSiyAr0oKHzLtd9jjHhtlOSMqvqtazXmNAweig62J9Ld7i5vVe9MLRQq0HLrvPu0d5FujBui
DORPgT901mObEwfx3/ZwNq6d+yYisJkiZ7ZzBie+t9qhObGiB6hnhsHjCrgG/7cSKjnrcHSAzJuX
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
