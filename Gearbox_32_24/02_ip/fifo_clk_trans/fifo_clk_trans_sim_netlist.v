// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jun 28 15:27:22 2022
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
+1lEdmlsBD0dLIrocY5aRbMNKiCaVHOZ3bNpWY0S5D2zb0U3sKIhNR8U47YW+wXr8JrQubggWAhb
m9yqldriyOOsuLPL/yYflnzjPr7UfakkMvbVmd4rzykP+of/3eQoxN/7hUMfcotn8SXkBmNmwnZV
1eg/y9fo6ZnXLQ+n/nLsgjIb3HsVLtGBc9F5InhBz8hiQw/UyVlpvwP3rLcGgEPu0g117jM5WbtI
giJ2JTnUOn2MgWjvg6MZnj33C2rau71HGzCeEDCrER2pxZkPDuVVPFyq8NMXIi6SFnrd6HNojKM6
X9RWNWwcnwpgR/auSU7O8QUGbAqAPCWgJto1Iufunbw10Bg7fmiJx4xlLFU78V+UKrV0gi92TeIA
lI7MbdHQuh2XyvX3JbPQwVN8kYMqP+I2IvVOYis4ufWYaT5lw7uqs+LbAuj8Gz4Mq4lUUxQmkVoW
5QPKBQLqQ0k4n3aMKi+SZUV3Sj2UkIxI4B5zggfkJYlrj1IIKpCPgOWlg4tyB9DCECHbTMX/x7wp
T1Ul4ZH7fjgQSM9YhamnN55//3SBO9rZa1KTPnPY+8MDil3oiRaLhDYC9Skgk4vybelBAC+p7R/j
4626iOdbbpXNArKZv7XNC3chtUd3D+s4sUc55Aivgxz0viiWLZoVDm5OGKIqFj8ZtPTXBweCyhBE
IaFqVJAgu0eozbr9zkMRpr0tfiddgZobn9+iRIw4/Ib/s6xyRREMmx6XU0yIBZM0/Tu65CRHYCeD
pz3+eO+WCVPLj/XEEHI9yc6RWDdZsmxY/aTy0WrJUJjHC/SHn6yaNe3IXwW/pbnxiEL35sEeVEce
5iERMiA4VqUsK1p3WUBH44mrkA1HppIo9sT2wZ/lo7jvTYEhEv2z1Nf4c9r0YiP6BdRLrgRtlTVl
w4+pmXEAMvYxcRQ2ibn7Wzp7PoPdTkKXMBsgg2Vxy/MazN7ZC+dmI79jIOfOsbfbmcKd4Ru9OiFt
wcsYVV8QxXi/lPB+4qOPxq67Wij7Xfmily7RAZJS18su9qgb9cCK+U/eQyGPhuaGgv2T8GdrSZsZ
vYrpAQmCS7ZR1+NlYisNjWJv4QZ/A5RB8CJUPmaid6SCZsWQhsGUgoAzkR2pS74T4DRmBhCFvX15
2I4CmO58I+ibxVBHAs5DWDdWqCoqYn25E7HIShF5KsgvnJr9iHexMaSwS7CkgWrQKoIJILV7PGu2
ihGF7XFkwdhh8x80q26AAAbAuzOkEPw3kq2ooKq094KGsPNzKi0iMqHbyDJnVqU7BqYeMRcXm3LZ
tnzhoqu9ktYGDatlxwl0RoYFt72bZe5dads2HmPtUyPdAArVhwRX4cAzWk10xoOQPYor2VRqg/u9
LsNP4az1uuZ+iGTh6EVDzvpVB0i8c6WNmJuiYpukNEN7LA8S2qPAKZwn4hGZgK9FKPDdVT7oevdj
E3T7YEsBs/ALEavE2s2Cwinx+uKZDLsuGWxy3Z3gUXgIVFbPFz+xZPeiEeNTig9CC+Uw1qQAPl7s
deVQzHiRiQwOqCwNhnHVz1fSEoO+tGFmnam61fkURcr+8NXSOoE5hy5FqosXd4eUJLymKr70gnod
7bTHcusuSLa/yIdl/3MlnfRpAFABhnlYH4kH2qKrSJiCdHOVUsVlPF9m/czevAoOSyU2kky3kSQv
HD4V46laUlIXHKfxQHKqaw5K7wuKf/EMroti4A4Atb3AeB9Lo43C2xO3AKviOho3ArLc0qykpPrP
rMXFhq2Qt9xtF1OijsiLMnfdDxNfmmOjPFCuv9m/RyJdT7zzr7uJVj9BYboLVNYis9HA5MnwvNTt
dYOKCnTOZo/+uDWZ2sSQYqPntRISAPO8koQ5TwesliESTMn08EIwQZfVUNl627bZNlq8ucIzQgR+
WgipbzlzfW2YeEjvNxYvLHXSiL2Egwc0NvrDfm0CPqoR7JCv8Xh4inte8FCxffsF0RKLOqEFoEvG
faNfhA5RVj5tmZeXMLOXK1PtW7xHwat/N83f23gO7J3z5YLnAD9VJjyZb1WoVJKyvuzewyyaZ5Oo
QAXGWF2wjhvrB5dJztKxqmnlKYV/Kkh43v0E6ZTR7TrVhI0fORg7az815UL0ePAY/guHM4q7shYG
U+kh9+uQVM+ppi9yK3aKGW1m6cgwqKJKXKUSfSxOgc4XEBi8/DSoAsGJnA7BVcktWnYchykAvd+D
8AwklYRCjUi5cWx76C/QN2BC9hbKZfVDWaiLQT2Z7QgiA3sG5nWwk8sxq33JvDnSWBhNFjHKJgAo
pLfhiGi6BDRV0ofPsjvmzGtB4U3p9alm1LsjFC9uUG3qrW1EwjlETss/uG69u0CEewDksdtRjTBX
dARJp4yp/+TlW3HnDQXxBpwuqiEPpjwVOmqdm2HdcDmqPyRBakm4VHgxFYee40a+WA6FbrkerXsw
nEjtRDJKMIoPII2M0J/T0NDPX7TZY5p1exfSKZE1FdjWwiEZmuQL2dFSJ/YXmTc97c2SRxlEQIps
5kAUTCTqhPfWswxmAil1ec6auf2orx/OsXHRkyopGSDOWROMsdYBwUkxV0g1nDBel7N/4NmhqWLL
rFxEBb5YBqig+n6K8owfixDXsVnWy+zxYm3Sa46Dawqi0hZobl/TYGEMAAtEQlMKdTRv77iPEmXu
HDcEVVC7UGe7IysqojTL6mD9daL1tokLI+SJFHqr9iUNqOUu5kB2J42sFTXR3epQ6Gts7vR4yc/f
iIJP1bR7wCR1ekrbxMmY6PVLwD/BcdmmvqkDqbfSjAkKh7ccYCiAt+phYI0/19B9i+3pXcskRbbS
uFPE/e/etqMmWKsOPuJoCSye4MdmLr8FeYkS07QrSWmacX2vLutSWVdalT3NVgqubHtg/kEGMFj4
I4Fqx+Y9JfoudWk7s4bJL6BnpJguGyHKE+E20IrXxDd7d6uFqV8rQ+LVLcHrZV1/vkHjkjoKG5we
42Mb0R6SDwuDm3cREayNcnk8viVXdDp1yTCp1JZxcEgW+F33KUWDlpsOuWqdOrG8ic7TgsGkP7G1
iDaDsuDfdHhrlv43b6mIxO5E/LyFusKC35LYY8t1WYUp5poCM1WRSyVXUOMWKkrzxkWQsiJfg1td
h9XIHpd+I0goiUi6TW68z4yB8GiTL8GHBL6XykjJNTmlRCWemt+ArOsx5mATssuKu4wKDXY03ASG
ChBE3NmRdcAa+ZvAK2HR8aadVM4n5c0cS1jpbC2zhH8wIqEvSqB/dMdzFZWBTsK/2y46kodEqxfV
o2KqRnr2+2Zp0Y8PGNgVi+fuDLM0AYDRhl1gprC6iO+NLGnCjePWxnydkpQ8a/5Qrd3cw2JgePk3
bLpkOf6WgTu/RPCZz3zMOnZGvRRWcU5M2SHe/eGfvEuL5W/6X5OJGZfGcVmj0zJ9FFHisLWF8ll/
SRMVAEW5NiHhY6V9KZWatumKP3cgyNCk8BjtYL5VhcQRuTE7t8xnqvuGfWP0/+Cn8EWCcES1RYjP
y1LwkiQC6Z+MA9FHtIQ6CqIiES8ypehkHj1ClEKDpe1Tr0WA949XDZK7eL7wf7k8h15AVZRY9moo
CrK0fGFWpTNtSWI2kDfpn1hrNuK/0Ek3ScnXeJ6joDJnTf9lYEdfEVOopBNiYFBFa+dv0J0DGsmp
MOul20xn9XUalHGyExB8W8aYv/CKdzufmeK28aTe24PgbNPYN5Pj8KENix2pfDck1S98YA38QRXo
Y0NsWLx/hC+NNUTKv3VK0aLNnjWu8bPf6phwMsPuG1+SusuSpEphs6ua9jfg6plq1K+2RZnSN/mQ
HPSfp89iFgET4+hchgZ5H7PKbtoYvmM54gG3WD6A+mh1gcnqbPatKNQRrG8BdRo5+WnEungrIrr5
ABMTXxQCTUgzvmoJt0niELF9M1bW5x1pZITVjPJMsCAU7pu9pF7+JGHN5eSHy665sap18UEdt5b1
sOzfkKgh0KtyEoFE5FvTQYaRFLseZpJRj1JXmlClD6FSMrXMxXGbCRC3F8Gw0z+TUgqaNtAGfrQI
9rUJAgl/ZxCMQOM5vIKEP7ZVcUhqXcHDnYKD5K7iQzp7p14vV/NB6viVsb/vjMo8pyY1pxtC6D+j
ETDQxP4wOZcohXooaVFgHhW78PBSV5L0RAECSAxLyw+N9yRoiaTGyjMe66amdDIMG4hXvkEQ1Nzz
/7PsraqOrrPr017vKtZIaRTO2u8UYxX/IuXzv4gCO1ftGGPvEjGpSjP/WzP6NsIMwFn7hAzXMpvG
6s8UWFyRnfTRD20c4/W05QuYdzglWOI+p4Dpc18SLKLPta/H/mMe3AMNym4obJ7XMCsladYQuxsR
sKFNN58P0jS+nIVrxwqVq8gyxZzpWrkXs/fcdN9D6Oix5yatwa0slfXNstUHaccD3hERO2I1xfZU
egy48lTSgeDc2qs96ROCAsh2lKR+AzXbGwsDJTI4edN7XefuCR/TEemdz97WxoBy0qH3q+w1EWgZ
CDqYfJN4uf9RLVOrIMCtgLWP2hCfDwJ1sHc41sAXFqMNC3ByRMMXquDPv2E2rOeZFOFuxbx8ndAu
juXsrZV47CxsKnnNbJBZKfyoKYykgHX+aSYgDCojmySDxkPBmMbex7dl0+duN0E6dMaDw6Bio1XX
vZ8I4uDYv/F19aiSXI6FrEIC/SXAa41iZD+yjLC9MRj6axMMS8ROzivdiDhxfLbruuRi6TjDMuKF
RqMdfEhrXpm+Sh4UnpI9MUBDW6alDD0jkdzbMBRkXSo1xixY/Yr0ELBA6S1MGUY1lnkvj+Q7bz6O
4SL96I+EGo3VEA85NCyZIMPC42TysqoJAklSqgQvQ/QLm5Pq5qHvo2mJdW7z/Bt/fDmtNrj9D7YH
sMaPIh9gHmNd7U+uyqv84ImXADIhCqD8h1/hPPmI2YEHaNrslos7o4nfulkbekaZ6Dj2ca83iB0s
IGi/xe2z3xKmh8sH0gmuUzq3FVCiWmuOx/lG/tCOBCgcP2+++LKsDQcIgBD2PxL2mvgaXSM4YNaI
yBDvBkJFppw9Fi9DjmGKniVPvRMczaV2+r8XtBDLsOCIoByHAWi2XUgvAJbb/lKOu9wI5k+hY7da
6EY/gXvGCjVzj90/8nZsrc1zCoNNmvJwA8mzbWXCK7OIbW/eOq2Jhy+oNJs+d4QtsD9VnGeeE7Ig
vD0D/2cFusCuFF+gTzT+jaAVjd4kHKqY2gTN3TjbdbVUe+DwdUc4Uq+SPC/ARh/fYfOi0Rr6QFYv
Z2KiD/e2xKj7Q1ukfrHzahfOelNWxkziyJmvSPhPk7CLbAu7ZToi6F2j1fyyE74Ij/+65ZBmk4lu
O1dTu8cnv3kAHQGz0uHFdgA3TNSrXnBOIfbn/83sXaKE28Idv3y8ppn8UhxJDZsiQdzEsAkW9n21
60rgJ2VSq2EE2CPieFdkBrmAy2mMUm6VRagyz/AKiLqGFW/AP5dl5AAwMSqf7TvKQg4Ut5O3Nb6h
YEILfMEx/PnKOALf7xlEGWczmNdxbVjuwoMlmJFqZ3Uv7Lawai3vHT+E47IBJTtvh4tzEZ7V4IHj
ZNELMZjgfKmXqssCjeGsxNM9jqFJ61NPyMlVwdSQMCSONj4OOs2cuPZj2fTbUT3mKhNNjnRXpJW/
5V+FFKyH2lfxJDrw6TKrHt3h7nITp8oVoAKd3tFG3kq7vpqC16PaQFbrJxPQYKE1TmTs9OrnI8cC
12/UP3ZktYCkdvgIBN9LYb7YljP+TrV7cOUp9bOOoykekNdj//+oI8UseoK8RgnXNH0RxlFjJUEx
YUlVKwTM8vipcXposhyRw+zsbrlxI73ud7bAKz1OrYDDbbb4tfRzQkgX8NjCDIEjE0PlQml1tX8T
tmvxlOFyFAUESRtKtz5w/tKE0Zq2z0jo9SKdxW1DP8KgGx9rydKff9kphnqRXs2ly+cHnH41I0rF
4fJeZEGoi3dd0bAvMBOBSa1hdIapep0c20ygoOqZDCnc3g97iYukQDW3O3sfVMsm9/KNiaujOVVT
Am0dlGwfyL9VnU08tRV08hLIMjDd8SI9cc6tEEC4+njkJg4LP66pXSLuyI0fVMLbMk9ot1nGbXZn
SXPXnt8t7daGoe8tMFREl9EIRjaMiczKjv4lVK5gGi/jX88yjhUEIovLwKGdie3A0JWIk2UJq1Bv
y+HLtAsBopel1UlG40FSHF6aaF4t963CYA6O0XnNKVK0De9V7MRGWa733SYA+v/yHOLUeIg4G0qg
DyC2E+Wp8Vo2sO6EBOWaBvA2DDwxTA2mDdtF7H/HxfLXcczKgAJtX/xyyDwJwUxbgqKqF14ITdzI
iNNW4ecYyPwzH4uKXvdBQ3XgoEwR5MXG7VBUW5uVtoMNU32j627f5NfTAdzZgGq/J7lObIvBj3U+
MO+jGXsqh9lKhj8wN6j2vUvvIDzXTqpf4o0FrPUDiWbN+vipKc9hQI+QCFF+Mkox+OLY80Mppq+k
jT6RanNJLw5+YrOx69MLkQvkHiv+bUB+91SXaK0u84pZsLKHhr7dYm137sAvYPqDxYuO5laz7Kzd
mnnJ8j5UnaZQN7MLghPbTQr8N+35ZxTEAAGT4ps5lWHz9j4yPT5r+vWY9YWmLA58twbpH2iJt3sj
f+QRswiNLz4iOIDOZDAvzRiK0R1UoZBWe9IRZVjAW3d8dmyn+HwUf0Op4Y6mLoRAvydH4sEXW5QD
rVDFG4TNgRVXUodS/Cu3qb9AnFTLUQVrmWL7SVkZryLGQa3hrw84bxWGvRJvnzz852km0//jAKZz
bYA1njWjbwsAp8WNHEjf++7SRYDQwkELCYxF2wpZypJxyKDkfR3MvV5zYXROaqKBYnfPqih8YD98
BI3UelMQnieyVxIbMs66xfc5JgtiJ5Xnd7CpHDFmdiYLyJg7no0OhRTjQD929XZZRm6xinqjKORa
974KOctSOLkGjFsgyVvNnhyh02Vf4gux5W/5AjwPFo2dppOkTAW/LlNXiEWSRInP5jqp4VfRsO4z
HPf2Rq99p2idLOfPfZyZbAYsLlnX3RGHtQP3YgRKLlixnowXacbUrXR0shQy0ZPmNDWZ96vbNi5a
i5S+HQIdgU3GfIL9dXWQaaRfi+6DpDswfAWrEp2KH05Eqa/ixDIQatfZtbXvdA8+2Gsq3cTnDbIV
iEKt552olMmpUqJHiEtedLwS++pdZjLvbh8IYbTvZ3QhniHxY/ULVvPZpYIsRxWXojgWbZCr3uCW
0rw+GKldsRjRzxK87DJLSem8YU+5di1y7sCRQZaLoAQLdUgCggy0phs5F3Dchip0G8BKc+QCHSKG
75LgNXKPzbIlSnc7y2ujqJgh+tviM7SSYmW7uQFEldqETaO3FBRXp8SyFR1EuRV4T/v7RMruit0D
6mJDbupIiCQYnsFyRmvZMpJCubE2utEpoQRsHxQoYAEcDUUx4q6S84ZywnTdcCNbUGr+Of7oENz+
58EDHvdUB8ySGToz8NYjC15kHL1ACQZYq9PRk1HY/HIBbOfTBOP9XHiocxOL0SZa1kuMbpWOpRw4
Hwoa88GS9AsOzo3cdq82GiLfMwourBWWbSW31xQleQJhgou/YkK8dAktvpuV94hbb7XaX7dTMAJR
FvfggPgDG2W8iRIfxuZ9PTS2VfRNFyU5sJ10HNKDASKDK7K9m+2o2YvJ8ut9mGEk9XgTnhKE2o7+
ISbw+gkhILjpkmn8ORrE4IiGm9umMCNFg78IOu+r79gbFSSOuFP6VwFYxbMtlU8MxRYj6CtG/OvW
w+mKtcgJyQTKwhF0zaMkXOWidfKaDI+foWULgySUuwJrwGfYZNrLv3O1FiWku6wPPF0caHSDlsXK
GSVqRGt1p9b7UrEZDNMpHVwbfMwUemdXK+nZOH0H+bQkUNYfX06O0eUNKGFRX7CwauHiDti/Gb41
6z+w1VWiDlP5qEZK9WaNQ4IbuV8l8g9hEsEJTqqRduigYffzwdLUWEMrtzeGB5k6SaQd/EQJZypo
gAxrpytunzWqzJZCbN+nJkCnWlWEfMjUPB6aD5a556RzKnuIq5FzxJY89GXnNMeTId4LYj0juGxZ
716zLGDe7t2Q3dZqJkVHZ/n8K5ALbqLPpsr375uL2pBGXFelFxeJT9YLNUTsPX/zRGwGiOpbA24Q
ZhMjx5Fk3tYGz3DbRJnxy5XWlKu1bt5Spfdy6RUvhzPQ1Vj6HitogarsdufA5RtdwPbIYK9Sa/kF
Xd7dQlqGXm708g22zFoKzaVljTaNkuQ8jMPvehBaalq8JYDJ3hRJi19MyYYd+PZHNyMNpHb4GPF5
56uqnascP9kZ+ficewNpiI14BVuAOdlgoL1BSVZoMZBbJw3i8MvNwAeK53RVwKRgBj+VTumaheT0
ujMP9b1b3BnqBVckL0oVOZ88LNGLynQImT0bf1ZU6Y+PaHg+il9rmSVAnnN5SsDtJWWsYXaK/4iI
m9bsB/DMP6qHDMWmnrI74qYeoMlgBfyb7Pd/D8QxRzcjPIqQTHklpJVZtnm7eFhsAFF/NOvWGXUj
Wn8gJAUP35l6pXFsIda1ZHNOvae7Ydp+UFUh2WyMiYcgAZbZGpN5J9OuzYUbrjbsok0Nipz3MdKG
LMQ760LTwPe/3uZBSh5+SXsRPVUxoSqiU9NPvnUgQFkylPcEvUDZhz8D+TIyEhpxvmYhEBn17d5o
JeA99GhQn9YAztLQY6hJU/9WwoWTb8l/pUdIFCXADlf2C0Lsyziv8ZrESy1MsY/v54TNeFRDsX8C
xy4B6Zn/lhspByK7QMDPDnAxWSU0x272CQihW5MoK6GeZbc8OHhoH70SAfWao8GxIozXvnpJ2q4D
wsxyG9QTMNObd/XhFZ/VA094TqhmOR9l+MgNSKAC0hhnSNeEkfUms0ZkyBAyonRmNv/n+r92yers
nZigPgCPF0HqTCal+nz13erLj/hklf2OVc45J35I9ondCVobWuaNYyc2PpbegJoY0b1dfnwgi5mv
2XLs8EoQTu93OF1NmQkxE29ycnPacyMPnX/qIQIoIK/syy30JPkF8HFi2uT9iawO1ymXmmRN4KNi
UyLPQQjs8NTH6e6ptN9/C6MlWUN44jywNnfRyxgX6HszBDN5s+PvrXvyGIVtovi6+Z5Ebb4AECTR
lunEZtZZogb4plYa19UGWIjkpddFaF9l7ZY2gelw7xuJg54OFSeCPftkoHelOj2gfxRYM+TSjHk/
cN3pB8St19JSmvBSpkvI0o6QT5LVA1zpaZcL6DfexyQn/N3izJ1dpt7yUcSat5En7z/7TujOakgH
akcOun0H6qJSZNtzYqgwyEkt9VkpNIf3vlY07e3F+uTjSMeZjanS0pBp3lzXp7z/CammRGkf6x7x
NAbuDKnE5ec99KEoC67zqGPvr3lNj2opzdWjJEEQtHh/qbB0PJoZzZ42aWqxTvy8YFiCsxZFdikY
i2YeL4fLv5tpg32vJWv8NRF5rQmttbyXGS/K0y4ncAHPe7xQJggQll7lXmLT5QVvHRyzb+5UsOeH
0M6xEhQ0ZuBor4u01Lgzd9Viclwg3SM/3H0JMbfGfbhJFuL5VSHB/zZsLlQGYQtXzX/lwR+ctqi9
0f4BJ4BkyhqSlLhLFsSCm89Q1GBsa5oMr0bCSy0tQ/VKlmzTcTx0wzCwQg4W3GXMzGSTtlPh4hLk
P7hTMuAmi3rgE4kVS+qcU7KGr8tBYiFlo1Y9vgOBNBr6vEO9lEh7UG+aj+jQlKrpcpLecIyNEmT4
PsCUGtw5v7mI1+GBNEmhNO5uIqeHw9O/3xBReeIx32AcqXIK1DcFFHLD0NxzjvV7/IQflG8T6Hox
U8myixzP2LJyMdkt3w65ozx9IUlkmJkzdJKvRRoaQTeSsAd+h44Dvh2QsTOJ9/sGnk9zIGnW+vtu
E/6gFYr+vGfEuVqo2/d9s2TrBNd59ahBCDVU+HwwHlnv1XX8LLIh5EEpG1LWrZHWpL7neQZRiZoO
ycVmsYOJ4TYVVK0rAG5jhXJRcp3hncFnEyILy3E5pa5fsRs4on64CGjSkmCtJaTaBm16OsnmkFXD
sg6+hWzvmIexMqR6ZilxoW1ilqW/wIfJ3oZ/9N3Qnewjwtqndyeh/svqicRIXWV1j4fiOimvCNE0
jg4s4b/zwiN/OT25IhxxgIvcBbEBR4VpF3IWBof3c5HkSBJ8GKYeXL361x+DQfeHa1jQxyKA0yGn
KNs3pwux3y5iPEdPLeDrAXtbZnyDpiGV+eJIXjPkbcS1+Zgp0poVaeoOh0LKn6aTtfmvwfMJAFV2
AVJ9dU1hU+jMuuBaIbqfHYqHSr4ESbt2+z5Zmw85SoOOoFMOv2uYHisR+TFPeXr/pZo8gxY47JRK
wCVL+exf++Za+2YuxE8nbF+AJ0bLiwKm2e+Ff0ho7jqsNUB6m6OXO69gYhnUa/gPxq1GrxBvGSEB
4HcQ8E6+0H1/W9Ra85ly4nrz2K3dYba4YBMIWTA6PzsMigc+JP8hsPHKjbvyN6b6s2fFaJJAx8Kv
zErFYXTymFQ3Ilbfwl+F4EVlmz4yKpU57r3eYZCRdb7sT++UuuSdUtzQNzcFPIDjYdFQJXq0Ld6t
QkNZ1M/UCAAi9t9joOjEEHWsUglMFyuhcONZsnxVPSNT5wt/TtCYa57OIj8VTjfg1hdFy/GtovGE
X7Ljh9POYkJ8K63+KVhEe5Q0ypTm6fR3j8Nv1/VSK+v0RAgEBPsMCbfZOwfU77XSIr+Lp9EWky3Q
bBkJjCd9ZUGWhXZXdCU2y0+B40Y7dEW1UL9lJDUK5CKTJrCyutvg9khRULrOuUwpleLSWYinvNGU
s/p5jq0EzQeHNRsiiRL/iYjNbepOWO3imGOIAyfb/u3wPwtQsx/LIsR6lL/T0q75nuXvojmUbblt
A8mln2+mDBtgshskwVLsOlDc7hgWGZQM0p5WlB0Fe5iNV+osubXq9LLg1Am9Lp9dCKsdH3dCs+br
UgR/WoAI77KRgVWlZQHPAY+LmDVl37qjPoxC8OCOgGx2M+Az315gh21gltex7eWQV25JAh3uXTFU
eitjD53Fbh/9eYy0lEl1YezfUeHj4H4mzozfWfDtI1bbKxvyRdKXgUYO5Tbk3wHPU40K+DyukSHq
kU92Nng38Uh7UhaAbn+cIEkAJZ7uiKCaxaEyik61kWdsX4GFzcx3LEum7jY2pe5zFE1o2et2NCJO
TuP+mMJoawdZueiwb1VG+s19qlTZJESXWHqbMmqgaVcasmCrYhS0/3psvSz+sB1wIxDeZxfO7eah
VvzYAoS/rG/q8f69bATbiPkV9i/jVBg6bsS/sys4I+mwk37SM+GAkjNrvpebf4a+C0SyZaMd+Ztj
9B4LYKz/I0G40vqR4NCaeqAvsKroK5dsC2AlrNb6l5+wdpQGB4RuOb1vfmIEPzZFi1HJvDnwCGkj
oLXpIC9elI1fki4uaz7/XAUScb579uzU+cNOm/G8TwZa2FCpXxilXwuA+krrDnG3r1xwJBxT5W6Z
c6Z2zJJUd7s9LGDiNqyfcS4TDJkUEwN5pfaX1T/FeRgQmBugkgl2gBYEhAeQXlJ50qvWeAV/tNUy
gjunvalusdzXQLC8yZrLZHnxLVc64nUBSBf8SjgB40ggbLfJy3O+ZUTw7sz3jCwn852dUnGDnVAM
zyNDDfuJv4VzoYAgwHIOozeHJzcVD+Ae05Dcxu/nGUJGkjlCkTL7ZyrvfwrKQHaPYK7DkYRs/GUV
5EenS9GrJh/DQP7IFsbUr1RA9RWRpcpCesRZNoAsx3spGEMw0ElsHiPW541xjaau1VXAEruLZSFX
8ingzgtNhycGcOr8d4E1smO4iIIqn28b90RrMmejEBTVDQ8QLRDNyRLnw8FmBf0rUfnsaC6rdIAU
u4mTIdKtgpzom3in+SkOaZBRywTh7ASJJdaHeiM1uIwV7/7b9yvf+oEP79QYdyiB1RWuQShYmbX5
IYDr8j9ZlsIlSdZpi+K0+Q+dYNqGSiT+hVZUVUROr+kVv1nex8cf7P7ncHtL5sU/KQd6GEbhj42e
y7ssfmjD9cI8Z5tFQMG1wXAdEJFXg6PTmBkT3DiCbx5kTjbQPodVcarDENQJ/4CANbiyc6pamy7+
IAJhe1x1X3KX4Li1TMQb+4Iv8cEcrNbyl5sqop7V1rMfhCJ5/0/Yk44KDkYYex7sLvDsIco3xxGr
0m7gt28K90iqhig0xKxl/qxsKrF0RlsqJBsWitUnEXwQP4BW7e0npf+aAd54bG8sgUwCmcEMn0y+
CfLk55My2FGk72m1kJ8RnhErHi5Gv/e4TfEY+VMOfbLyIqWjRZdFlI8TxLyVWlCcoJ6kjY3PsvDW
T1SGkm/0NObA80KiYfZghYXZtxtcQajCzfbm697eXf00NPibQdP4vntyNjxiQj+cqhOLPcZaesZG
Hds+vQgVVWIjp7qZueXFw/WcI7xxV4cWNzU+FQM6sMOo1uGgDTYnJYbDEe7sq1YbtjiZM07ImXcT
9HY7K4qY3SvmI+fA9eYuq1VI0UEyK73Y8W2QCcpmeAAuweIOvoJpdD8+6eHbBjQl/3gnhKCS/CWf
5AK4j82z6ZsUJ7+7d91mGS/YJGr8KFQ5c20DlB0pjzNkYZC9PciKE3N1EyAGvPZbv0JR0Q+wFAAe
C5sMRHXhGY5XK3JLe9rieCo5/rT7BocNIoavgSN/ZVT1YEcMoee8Eba+m8XIfupUGVq4hONkZtnH
PtFJZh88BNShIOZEBEReYPlz/EX3WY2BFfZlDFVoDF7U5rTz8Dc9+ezp51THmaJWloDvm/qzkh2i
H6zPl5cJvznl6SpQ4NqbP3eHrC4evCULGmNZ0eje5LFuEDs1bhZxESTQCWgYjhsN/I1v0k91ZrxE
3d5+5RB4lPd1gSbyDIxXdda2ugdke0eZAsJ7ORq+HBvg8Vny+L1AylLjmgSwymd81ZwjHrOxIyvc
3QXOAXrkMKEnoZknPDoB0/CP6AQ6WkN1pQjkc5Dz0RFD3RoWSbweVwzQJmbPUHLvl7zfDT7F/V6E
4J1XwD+5BubQLuWE5pTTqHlf/0F6ZGvG79oZN1pizrgU5SmLzxHdLg9wG6oX7dJFAOWCJTt5ybc0
RRQWCDbaBjt7dg+CyNzSJVmmjrWm6y3/yNge6mpiKeSkPuXebJeLENh9rxjPH3EQeQN1U+0s335+
lFTm/hLHC3hlstaRvUQchMn8N4KytHODcUz4lhaI61Jkv96FpH55Hs2ey6QbK9WczkVEmpVjkCki
6AqTBgB+AFX1NJBP3HhRVAu0LxRvvkYwCL1xvnMt2pv6wf0cY3mMH2o3BbJeuCZRCkz0XTvcHxlg
rAu31NNY6fygQ4ITsgfo7ebUA9t9LkU7lKvYNDZFi7n4do7Y85AP0e9joSg0qeSJHCBOuKbI4TGl
OCvWuAFM8HmpsEqPjPbF9P4a7PQsnSHDeyFWt1sROQVMLTgXM2h1f2e+njduu2X0kWvOprXwxsXI
xkRg7oG05ytk1opdqzGy9WA/ufJFVMHA/pC610oK45BTzylXCJQw1lWNceusAVxq/adxPGAixa6z
BEwjnazrIJOsc7fgCQXr1E9LvHFlajJ7vwS2/saQYHkoidpY3NNg/6f9Pee2CMLo5pLEKT2pifSH
5srsZIdlIn9QGTeZSGTfaXyY2YY+l9ePRhG6+Bmacd3I2UQozjpKmy1/DvQiQD7KiSVNzK2BGute
eeDQw0yKJaf/hHY3MjpJbB6dO6z+TigoR9dNogDdM+5rgkIpdhWL4MUsty3dhH3P4Q75Bd8L2bqE
5C46CTDT8icV3OBmdiaU0giZ54N1/Z1Uu8nYlHZVy5a5O3YCk+kCUiDlVxe6wyr1C0VMMQbtrd4G
x5dwkVVx/iU/EhCzT1r2oy9vBVe9QgrwpahuXtSXC4IlmQ/13oacdCF+j6QifolSQJ+5Bn+tyHzl
4bDIlGdsS+jVfcgDDgKtAOpdiBJRxCfZafO7zfLM5fCNqFnE0J/HOiAgsn6N/e8GlnqySMcmPHFi
IeDPmI7QR/Orj0tqQcit6kyB3/q/IK8k165ZHxeSedokSD01G2AJy80GhINBZkjHrvUvDVabQBZx
m5xdGNJ1muHC+VwO/RHSLiq6vP/g4D9sOe2gRib+VGUUn1WAnMqN5HjLvYTSigmt+PgveBx96mub
EgS174ZKwRqzOuGhjhDEs3E3wj+OIzYMUeBfiCmJy4Kq66/msx2j0JTkzmkiPZkUWdAk95DnYHvm
EFCxiQWRSL/jnPUaCH4RE7z1Hp7o2h+s4e40BMQRommjTeYHWa5va0HoySpcI0fzIx9YsxedA3DW
auKvzkzQ1gekt7QhzGbyJREcBpCySlAeETnjo+QdLGySUommA2JF22RAqci6gIM+eko1dUPoif9h
9hutrRDtc3mW4lDe4R9mfW9StSYy8Fy8HtQ3zLEPD+L875volIOLZidWQaMgotkPLmaSckVPl2Xv
q3x6bzzHVA71j9nQrRpT1+WXGTWB1mCsdlxgY4tS4ORXxgPL9EzYMhjJmRALXplzC3ijvXicLL5F
BMSgYNE7X06QSqpvHSLc4mkmTqIzQf/ioY9VyK8hN1u5G0ZtlwUjTf9ZPc5zjYyfWSfGm5jKqHuc
jEB550A6cZu8CZM+7TXKQL2DZYEQ1jh3PbfgPy7k3Ya1dwK6qvObESJ35uZ6BcNjXa5oa7tNHO+P
3dk0WXMMBdSKt71v/8JlKIzzQMZWbko4ww01Bkkkfw0d8MTwJQcr2N4ErOK3P7vfwZbwVSDeHf2Z
hFlducJZbB4Q9tbsYCqLU3gamriFoxUuU9CdxLOPSGc0YQZ4UUSybN44RfQG/5qErGgo1AQ1KQ+o
eknzuEL4zrUz89mM9l9yTc19QgHQnWzx5l+TyYDpX+vsMZtRO14Shk31cf+VD80MB943MfpksBBk
oCm1BRWNM+8aD5UfAUmsnrTBfb2sHDdvEzT/dF40tSbniR9qFgyCW7FxRiiBM37ToAi/tvUyce4h
b+L4NIrxv4ifyOL1wJ62R961gFE1PYREa+YZi8X4N5IN32epIZ8yv7HpCplDHXM7CYRNimzGL+EC
JIYtRzdCmQfVFkio1ArN1jleFNGYg4RZHWm3yHKRUJtVai3BekZzrA27AsnftFjl9rGT2TaQ3KIY
Hu7tHO5ruPCXgTAc2GUSWjmRbi+CY0EabJ+pGkm3r4ywPm2YpR1xHbjk0lire5OfMz0g2gZYEjjD
lvTA5T3DuRa2V0Q5A0DIj0vkuS8w9ACjPFciuJZ1ut3a+XXIRbUV+5ipHEpL+q/P0PoWUjooG2F9
bYbTR5fo4HWc9kEIB+F3lHyyqJxK9XB6c1lew3lK2g/KbuFpZ5A07Rfoc+Xt6BeIGQ0OQKgsga5p
YLEEx1NbxrVEh8WSd41RPUbXzUapvntxgHxtZhJ5YIeoHUKic/mlE1jwbFURc15T9z/G8TXSrYAY
rxVamkbLmbpNBygJi95iAJvBS+af4zw0VfEyrhGEqrZkXQxnXoiUvOoduoYW70omo5H7MWIc/4dZ
0SIO4kfrseNUf1oTTiXMqrG9B++UKhL+g4UnBayN3gkYL1E5iWL7PWWsMaqP/90o8qLT898QE6GA
MuhMGB2rgj+ftTQDtXigDuW/t0FG/3vVMLsSiJeN38r55MPnzMAccQJTFCknUfuScGzZxxO0RxZx
TEOyWvOsTw9Q3BxoqPbCZwN3R5dDdzXQIkRhlFcxIfgDShpWP/Mqy/vEuWX/wyDO4ezdL6Dlvw+y
ionrrkveDQ1ZxD4QPKWv1m9U0ZlxhB6t+oko/ZK8IIpKI6DBZQiP/KlBF97Ggp/07T+qCSmwrXCF
Ljv9HQunc/I76QCfPX2IXcVSBQY+VHtecW+k9evobWpLWgybGO6qDJgctV5r/TOuHuZIHQ2pEPJn
bPBZ5JeG9nK4qoK0IDYQR46tQ3mDbKWkpmnL5N0yyYDXclnHTKI/5n45bd00+2fuJF4HM78i4vJm
2/0+Grm+iOeuIMvP0e7LCUViC8Oy1L9lWB5aEwthDBBLhqxQ2Thr8NRIlnSgPdDvEL8TXB292qU+
G9mB6pQcE9KZPRG/Nn/2/RNhUlim9wsShgB+uHp/6EvEX33EGWldZhd8C4wNrz84GBCwoygiXk6X
svRLmxGp80Naa0ua+VT88pTD/qIsmqJM3HdxvDFQHKiF+n363tp9dSVsL1SI3CgPjwy20RuDJJ85
ybZNTIjaanEkHvK/9lsskYWGYIq3ZQAdx89bJGv1+lnt36ZTAkltvUmLNr46UjbRos+OIVhp/iAU
V30pyTcBSJ+TcfOKmT2KZuFAQjmi6++PURdfMB8r4INC67l/0Yer9Fy8LGrqKXuMJysbcW3Qo8RK
EcFPYeNiFT8YTznO2oOTNqqFM10gCdJmwMOUm38mWfZwgdswmN9bD457+7J+dATfI7NtLXDQDRVX
vbguPVhqhLVeJm+qF3tfyIoCLQlqWtj5UkZnfYCFUhb7zE9GxYXzmvKdd7g3P9SiRNF41yzYsB+E
3xP4pI96WLg4TGOOQFRWpO2ubK+qTBiWZp5HtTC/RzUnACck7P8DjEphPqo2zcGjsW5xcLbqAjmu
b6YSB2UsVXnr6RDDNVBXDyJ5eyEUl3RGgHcv3GtyTQhQxhqtp4NvqHdxQauSEcrGD5nQ1Z3ohT/j
thbzHRcgzGBOvxKfMWKf6uEanZe0OjpG2BVLKbL7FC8Ef+/Sr7KMq18LPqDjuZ5CVhoeldnoNLmU
t+GhSCpW0h3XESnOOhd8M5yFJJygSc5EP/OmDTQ+lbWLUxHeF13+FJmXFsaw8OKLLc+00umpmzpP
t9eTruanDk3KRPoqziMN2EFrC774ooud3Qkc2zgwLuS2tWRIjt4nBUDWZ7tP81isdW2xPjmCeE85
T5Ie5plzPwUhsxMFeeJina2iLDwaUQ9k3C9qVAj9/DAMEYOPbiIKnZFRoJPM9vik9OM9h2WznAHH
CKpxcXBX9HbM8hohdn4qcgelVbvSayVwRuGRn3DYeVlVdhd1apOniLbgJirQ21RgMZFORpUYVfsM
/xJIrkTxuB1y1WC55izGeTmR+xYgAqH9caQ/uqEbMHyp87XFaqwbQCJFHHqphR6MDF1K4DAm4Xtw
n0BAInxDH4gZUso96ooYmSj2JFYjnaefexdBJ66uvHThU/W+9NkjWo5ZZm1b8MWRTqDnHaxhoEeh
MJf0z7aaCCqDyKZkDXfJ0zo+bzzo01bpLYXhyODULC3qHfBdTLkOMdxtKoLxNBFz8O8AntuewEIk
WfTY0FVdwCV8OrYkXo8Z1EpI6kPBcx3GkzeqJ2mEWBFiE2NwZ8gFWHKmE0eT2SWIR4mJabwRJccQ
2DMqdeT3xsnmjKMfOcHU0g1l4fhPilBZkLHqyMiv6AXK8qJTRsYCt7GzYUpdWmXfbKiFgxe4jDJG
irZn/z2vR9bdlpQjH3IH53aygyJ1JOBFC3wkmOHg7Zuwj+GlPhuTcbtDiQkPoyMIxDIzsvyq7KW6
CYvz6UA9DLSjVa7jOqSJwdICFqSETlqBhcOYbdiQppVA/t8RFQ5mh8vKAa3v2pZU3y6sYHpQbODJ
dfVtEPneRIlQJbwFvma6XFcc2z6BayaZ+3Oi9TEwg/XwZroC7rZ/uHNj9fmaXn2pr+NHCCLHf1b0
YB2I+MYnTs8f/TQJwHym7iZnUW9LRA6FI1c/XQyaNtnI7nmNJp9t0oQUElSPKpdGmEowrFVCNbf7
WhMCQS4W4kGgB0VSGyzTh4CmG4FHmb/JORJR+fz+JWKz+JJcFALVuHbIPKbprGWJ+a2a7tZEjkS/
YKJrlt7FjC14HODNOGoGBS5f/b6DWK6aYgH5Eu9a5LcthN9yBRJxNorTY4XzxjyDXnZpHZdF7oxs
9cg0Yzj6trS14itFu0YIjbmabdhIDo4QDXRqQJvCYShSGukvo/9o46WbMyGj0uQQrakAzLXlDcki
FEXYphtkDBrU0QhM0S0e7jAj/dtoq/IBNaih/6ua+a4/NVyqAFZw8gISGotR159Z5U8TnktIhvgB
luXl3acO4bPf5+Xsr5WqtwrZ75UJ5o2qusoc/XiU+icBJ1bBCNyth4DTdD5MFYpl2Ei6x9PoACkj
gV5iYYcey3bNu8wV09vuPdBSV6j8RtSMGaOkSMNf7Y8r21MYZ9Mvje90t+aS+hKxSQ2zCD9HvF6M
ab/C4ikp2Em0qv9OJ6lXUcg/2asNlrI5NGn/X3QJKmWyx2eYgbzF3/0A1HRQl41XiMa0zLSpurcr
oJKbTRrmW7ixAChVPo2FQVRxHPjlAElqLX8+0vnQeVUKsHifhvASwGzuuO9z38o14cgSlXAnIHhs
u7rMAsR9F0ZQHVdxL/g1fLSey1vpwgtSVmd6rPwUjnaFInTaqUqD0PKSGwtPFbeEsFHWHEqHEBOG
krWG2Hat0jHf+Q6S/a2HIiksEQRRaRmDrh3UkRIbDnDP9uFihjfGrsagTymCxwaIy/mUd07t7yRD
b7w39J8yajOQdPxlcw7o8FodVwHvjNyaaPja3Eu6hTd0qwvHhYaZzumxhQ02rLbgMXUPWcUHVb8j
wUHvGs9DBKHpfKdXOzyxcx8Ym5JXpdGXDum/BZBuqsAL+WfHJWkbu9/d67PJcSB/trpEhxQej8ka
faYSnrhUJ9z+5eHoPRE+Fmy8VgnUIwfKGJFaWl9D1BZi8okcw3IAS5xNi+/OHn2FjWMsIslLP2GW
A1J3XQO/ppmhGOaA+mP0IXADCDBtzHVOlj9+xVT8MBD7z5QD+e3SOOtTNCuxcx19dGro4pMyg47Z
HnmUIhv/CuCYoP2RmMilAMUOZzcSoB/rsTWUz5av210m6L8oFX7CRPNWLqOPrpoeeAOIn2EM83Da
whlOnsAobiXVuMMIbMVO/QQvsgGcddiYH3GRaRxRUFiSVlr4UtvbFhiqX5CH4xPWAgHJu2Y8X7B1
0WwQ5/O1qprK6fzyKO+Hxh7FeMawXMtSQFiFuW0GoXdwD+6H117IswMOqD7W+b2nSrV57IHwvsTB
MR43SrQscMvGXsB7NFda6rmsWkH5MBIGHgIBCIG/wjteNkhipRGUTIu1Dz9ho3xUD2QOTTSXoxnU
/zaLFa3ZOLHAVSDderYfSCPJeOLUmPP0Jfxl/NIIKDhtwo4SLeqpPq38A7cqthDZ3xwTo2KXe1sC
Eb2hYCSKYqi4kp44FwomcWqfNS8WoGDLdZsYGZFWAFIIUQcYhTicXbFs11hX2/HIXFqKOl82cLRC
YLv5vXBrUodMd4QjNe0Lq5Rx1aXkTbHu95Bw5bcLvojHwz0REn+U6bEgY/ja3xlgSFRgznRFzJ6W
hyN8ZQVuFsHbMCOFaEh+tKRGhMdBzxzyeJGiI1j/SUnvsqcUyNT3My/reCj4ItQQfJE6iW+1lEAy
3IE2bYAX5TycmPrSG7goQNaZOQ+MWUqtJyPml4bfOT8wh1mEqOqoQbnb1ydwGiEj2ZjywnU0Pppp
WUYOTg5H2iMryEwNB5sFdj3TjKL3r9eNNsi64QhRHgVeRnU5ihKbyqLYvaRNkflA9Zs64OPK8yw2
WfuOpW4rsWlukAyhwU3dYSQXw8Qqo6GT9ZNpiP46eqS+9J0rDRo4f5Pxav/Gz2EKW2SLn+4laCk1
iBUtI0frZ+7oQyqR9e4uxP3z2WKLSPo0tm4EEtUwrXJU1I+dnRlRcsicAiyivjnEFRU78HleZIAG
6hhSF3KTz6EjYgr1naVVXxipuAlihaUnnzPxe1/o3VbxckeYT2L4z6Wato9YtXoEQXntIe1Tc8IT
U0CcigBKz4f42sP8V6UPO0FcsERUWRnclmoQgZvO1BAofWkuZNsIyDGE8+1ERkTaWeHDgHchdLfQ
qbQVZKSREW+gtZI0FRUpjdX95SASx6VgofaJ+dT/Lyjqc7DIhP7Ml/g0CfSNjh+vEgYTdlC4VgVJ
pNdBNZA1mBi7tvvOtAOPi8N/pU1fNbgjj0mG0CJHQOTgQyqrOFp/M4wDvuMmdww3IKNprMZOSwFt
lm/Y+Ykd04b4hK9Y9IdgFykZZIzzuceyi6EccyGLggGVWQRS5u26CtzDnw68bbOofTlN0Z3FUlXp
mVs3WLDIq84b7r21HCGsUCHI6M2gput4yQu73AI/EXIpza8a2yp1OeLLICqNPDQ6PFpRpsyzNQ1Z
cwJSRno+iS5XCG9uu0wQg5IaFbYTxj37Ti7Xlq0ofFXxqkz7ECJAB5P9vBAjOreb9zSQjf8Pe8ki
p5Ax7wOFggOBeXc5o044c4BoEATIXrgFhvnBcJ7Q1blpCmMFSFifMvj4aSN30xn7yhxULtQEC+up
9qk/SWbdo2xKmeftmNkZ0pfcqgwNtxpbLgkaP764CzkeocaZwdPHTkDTllKyYAsOeeh0iXpC0TvR
gW7+oezZE6x8P/6ujnksYnKW5retLOY2Bg3armFOdoB3dWPhJBzonEcappewL7synpQfGioPpM1P
aHx4HZdXxroMndMFrhUSn58fdoPqcNYJ+DYqBYNKShy0k0G2dV9N81t3tn1bTII4sWvkLbZk9NCU
gN1iVHcFxk0kIPEOKgAY+KyOiiHd7xMwZqVD1wdCJxKmHF5W/qOY4rJ7Khf96OmcgE4JXyDp6ZHM
3mM5zxUAPoBBYZ9Z9qYnyWr8xjqu7ZVhbVyg4i2q5OZO4nnDt0lv19UAjffNqkujI7L6NpPROi5O
G8Fj8LzBums6uInUwUDOe1c84xd1Mke28ZFCRbAGqkVF+E/VPZyWUhmcOPMwpdlj3zV/lOlkBjrO
T9wLbkCgSO93O5EMltz64pzLKNSi4GsFGYU++5UirXMLmJtl9SE7LDNtArzQQSdnf8LmdgnxF6gI
rPldQHhvgZuAh7TW50QvCNf6w1peo48hOsNcMBEqotZ+Xj8iJupK7/XA33HKVQaOqvTfD+lnM1r1
M3sh/JlWUU3vKQuqUMH8c0hGEPbJf8TzzMvjpN7AXcfb9jnA55siNJKNS65PQ4CCg8JENek9SBwm
jw4X4I1L89X9shTTENEAMf2WDcxn+aSRdRS0C8gkT9tgaTOtT12V7Ex9CJcjWACHj2A4qCz22T3K
7uQ6/wNTjomdlswqqGLf4mbmT7l25rmBT0fpEHo+N6hiUudfBk7QeuMQXBEBtnf+RiKPBNl56ddA
iegmwrhAb9HtDUtrLylAFv03y5+BvWguMpXD1gpuP4oNQcWkvpLVcjA50c7uL8RAjhsfVuxh8PGV
PH0hoDfi07IGiR3hHrWpiPtl9ivcMDfy80a410fM65ZRbhudWdGxQhAh5kZs+Izvg/8a/LBUl9T3
Ug6pdY99IDBL+yTCFyepfeHzdfP0bsZaGTalJwZjAE1t06bWE3Do7BXszrUItxnEmzLZ0DX8lIAu
2ijS4VDAaML2WzmsiAg1g5PLO7TH4KV9iFel7MA5qgjbk04I0yqppJ4pYEJvmQCTuN13x7h+XGVV
UX2zGYJCpun7NcQwLN7kGvN+HCGfSISJmiPUU0DfyR8fD9iRs5DgbXnaTx5P9vkXLb6PmqHmojbO
SZLyLZ9ZMF7rJE5nn8kgTryW3FIEUgaZ2xrtRXAozSd0EDVcbwoL+RZFoOrXkQ70HDXozlj+GWL9
trHa98jRT98SVWjThVAMLDWO6MHOA8SsWWB39g+MlLCmTJbE7BWSsqWj7u5fKp3Zu9oerx9bMstH
Ysp4XUtP/xzBsLex0U5Mknn95LlsMIWz0ZJkvhfmKdDmWa5DBtyE6SI2UWZOc8wiD5r9YWPlKLkV
YSk5QiOe47e1krorXJc1cscWAtIFn1S6Rj1+/Mol8T2A2zmhYck1aYvwmpkq7eL00xU2/HPABOPJ
pxVpmEQ7ioj6fTJIorvkFZDfqiaChuz9ZcDb2/0L5Nl/4nmrC6K/M+wgFgkwjea9Tg+YROMr3R+P
VJFMf0cK06IAmDpYlradalIHMeDMdDJ4hredIclhno3dGFtVRLiDG+xG91aEkK7nN7J3IhC3sMgK
1o4NPeM1VFgx4Up3DgO10ivSx54weJlO5kNuuh6JzFxi7jfZ7Dunols4mQbRDeNkvgQqymO4oxyf
hpWb1jp5yqnsx28OCkQAP3Sx1LckdwswhvIk4JpYR7JGomIqXXQAPjPkAbj1irvXtu4vX5V9W7pY
t20GqvMaR1JIsaiwgg41iyb66a2F0ORI4vOIeBCKrGJ4X8omZ6aaQ4ve4XE4Bvba/9R/rVziDV9I
CPN5dquXbd/Runf94Yto+7ZHBttbqtstyw3H9PQJmbygotCNr5SJn+iRIUnk403X/0+v2dz02ALk
JZfek7tITUVE8lYhHilTsNvRrCWNwIt9aTLUW7aFVYgvrLXy5de1Zxp0yV5x21ONYiqCz9CzFqwC
A/b4NPZot8Bmvk+MAZYxvwhFh3aYoGHNd37xBiNYgLc/72d011M206xMpHdZE0GTI5mf4pA5czJv
AtbmLnm4BpBW+hPr1j/E45ad4U6Iur/gBUH1Tk4ieZw/yVYOhYG+BYjXoscSM3MSlnDCka+pNY0b
TX8lJ4NNsWDxB3+dShBWYtF4qqKXXC1buenIkqJBroTe0YwUxMgT44t4kE2McH43NGG9hQi/IgGy
1HEnyP38io1wrq9VkW/IlSCua4VhVbC3VZ00AxQjro/seXDpSf8Zw1fYEqqUuxK8l5VrVgR2+pqD
/Fhh+9hL4chJtrRtIZLwvGkz+koPVlTl2XhqL0HgFgaswY9k23YhDNJWrv7kHdp/KUn29/xLrc+X
qUu7l/6QGTbSK0LRVoYbk2jWr58VcizdGphZEQDAJndPE+EGbwlAG6eaAKw7TYS+DjKwAR2IeNMn
ZLtTGZCUuoAdkI3AwwyIhJFHd3X7CbHFD1k7sKAVb9IU4EM1h79H8IXaAs4VQa/NiUJ8gt6qVbIe
fjcGlXYiAa5PTFKQySGPZySaZRU/CngRlYh/rBudJJePyi61LqsH+fJ0KzcyxPlo2QuFQJ75LFSr
3I0L20TtUTOCNhKTyIXCt+vLo0l5/xWWufWv3nBUyhUZLqGFHqQG22ZkxFlLvUHdMOGx90FXttNd
3gnGV4G277xgluMqRY+WhCOkhRVstIap1rZ+pwFX3Xal95x+d2N4xre/VNozXwV2SZ1m9iR5Zz7q
EAW+Jons2ncxZGXjSICnHB/zGdB5u1206fD4GfDbkJ6s92wyV7jMdZKujR6E833Mt8AJNC+ARJPY
lT4hMtgSt22yXDlSt0Z0AezQFRpWEVl8XAMwW3H0Jg6Zr4vaqiEiia9vdBEhQVDUIAzQTZ0o0RWt
6irk3FovpdJhW5OCGdUEVB1lXNSYUw7FBBPUcKAvlJ5bxgth8gpuCPaQGFPmC7xlUPSgWvN4QHqg
bcGASPMYuysbYngjQct/3+kd9o/7yCij9GEiEQ2PIQFRentiD3UfKu9z7rCORCCZSE1iPBJolqoo
bxqarriA/fexngVXzt/NjWHT2B1gbdkHGWgdcmjXy7CRpqgxD/FDVv0Wn9QtoFMwgq26qHXqQxdV
Y613XnRFeOCyBer0J4xEhyOI7Z2UYZilJR13CWnQgGDQ70gEeVryGv0CCIZZc5uTyuJymoQBtV+N
pkOaNmtDzizQSt57uWILe7I5qFLiVYxpBhaqd8fdR1//QlNnBapMfu33ynaKU15As9Dj3P73Cr88
8lByhVbn7TMPwauG2g5lyOx+2USdQASobss3iBzTMt/yjAPoIEZz5bvpzpt8UdKH7m6Okhckm3Uq
fwQwkPS/MCp9PA+BokywH8OqFwJaSkz/rsgCUZw1Ln+ACcvMr8LZZlwvqpbiFkpTh0Emdg7zltfD
m7QJEnoNPJ3yjjLLNALR0Xre9eh/Hf1hSp1b9boYPZkx06Z4gGjVXnDKomFNi0j2IfELexujPLAY
N/NQbVLLr99sR7p0SOw6E2Sii3wWIVst869lo+iGBfI/c9k42m2qEztN1vlOv4oVU9uKB3lk4w6s
ii7X+aMdT7DgTLmFST95NWa3zrNuHfCwM0XZwyYT59eo0ItBVwFECJyfl4HE9o9B4bix0c0qap2s
LZw3h10eHO/qyAyvEwiIgDvRorKrweq8KYXKvkLlrG/ddKSZB3KDvb/56KUkheAWGWo5EyuGkghF
duFt7PtvviqQGJF0CQGhIQHEUKkkxEG7mfJrMuAu8Uk8g+BIwsbeSzftDcggq0zUjqKUjPyCPCvu
N8OLg9pkDIb3HR/8KE5l/lfrClaT9FIKvoljn+RwZocs9VixPyuqvc5DFZmcozK2Z/k/gzC9R0/2
ghvQxzIIIfO2/uUfcbUR39uSF1nC9VWvqc+7yF3G1+2nu3lP/N2uUaXabYRRk3vm8vU2Qa5vEnsO
aATcIgUSTbghqKVArrYd8V0RDx2YeEPLV5uVqykiq/hMJRFUigrCKvBk9BGXzi+FQFtQEfjGiXfC
DTzbmkkdzwotxBgxNPecXypF8hAXSC+GE5y2SzWeCtbG7apfFh+4u0hqaQghRXoraWLfzKMJ0zK6
DZeZbKtUnDSFJlnUkj3abcEq046EWpmcxeocvJQs/c2VNuImf8fyw7f9M/FuL1clePFZ0E58oWnc
/JOMBSQ/l1QIeVg3zi949zpawcl2LNnSsAfoI39vCDmfcTjlz5/cNPNSGS3VC8icvO1ecxSC2ktX
FEjvwKqebBDF9Uuc9XU/Tac6AHMvAxnnlUdM/zqPjuqDU6y6p5bABa3csnBNhTFZzc9R7pONETIs
GD4bgi2C1UNfBJnRfie6WOSiWC/awJhY9/E+p+tNe3xVMdUzMy8Hfx7HUTOyS9Qqf7Txnido+XIn
A/SkKSSq8iKz26d5UuqK2dbeTMR5gkl+A+ZJjorjMZMOoQ/aH//8mXAhXBFWRFH4Oll5567HUheV
guz9SihUfeSd5yZxXUXwTMn04/N6mYbmBRvTn8yJpkmU6A0HqOFgQV2zjFXgvl6/jM1BnjsjQ3Wz
5KKae67RQ7xHUzfZGWJmj/c5fgmiPXrpIMX6zmIce6Bl4fN/VSP/rkPymH2s8XEsaJe3XrSTPLfo
g/eQocaRu4gvPbyL2E1F8dnujK8lXN2wt1b/oj8+MAPuarXLod9tK0z0f1NdeHsQKZFfQ+n9sNl0
8X2aR2OgTjrvAwpf0PGeLZY+jM/nBhDc+JWFgj7W/ApAeXZQZuDCjogYxHPXIrJd+yPwvzakRERP
zFehZqijoyb2puFuLmbYj4tCi74EvOgY6FAyvO1rpXxp8QIV6i+6jkTFTY6Wab5wp9NPA5EehfkI
sG63VHqnw6cMGA6qqBbeGqaeZQpX/K51PsNUZ+v4qp3jP1NLFpDExX46vN4y2SdWjzEoVZB9kbe8
DihCdoIlbxww4TnhD9145sci7Lb8NEKAOALI6XCsVfi1nb/IzFnzxR9jgvTkGDT3iIubuEXtL7Lq
9y/H2C1HpcfgeJmk9ZF1pClkt7D7JnJZ3C2OIc1a3Lw8PwCn6jPVk/KSchTnN78diEG7RBK86/NU
vHCDdF0Y4yHyJ/U/G/wYIpm4Fb2gHJohcuabi5OHKRbK5B5JG43dy2TbIKVvmd3IhD7szzrfczIA
hxWbcucYESo20DLr9+K/f0ST/1O7Bsc9KkVigpJHYoi+iKYWnn8RwBbPr5FWXuQVg/2mZal7gdPn
IpgB7CzaXTEDs8kPEiZAvB0BLdpMh7+SmcbbRrFDzL/5oeDf6cMylR9CfHtbtk3FYaM7Scgy1CQB
WGUnTJG8MFFld0wBvF+1vb/qGZtk2aqlgNQkADFen5EyVi3LZr1sWOFSQxuP/VydqvS0sNk49Tth
ByGzFSvH+qE7Spu3f8ZY7uUbmkh1hWCn5wef4xUOO+CFKenHVKWnAgQJIaB4T5GDpJvPBmuSLoCw
ugI7OKwfylY9344W1J5A7hJaZhRTAYUa4T/fzIjLcnNam7F9lr1veGqSuMDPxWQZ14sJmQnwHUjJ
oYpfSehvaRmV4an9JgtVJYhbfl5GDoGtMZjfJBGeGDIphpZFaVTAnZcaDbb4ZsB2SENZvGCnVEvr
++3sK1o9JhyQRwk3nGrEdVMhUpxyYN8wHdMwFci9ouUGsK8ashB2h/MBT4Sf0ChRh+D7BVD9tlWu
K7iGuwGFy6GxzxBtfz1CouxwUyHVlZufhg59zzS9VuN7ncctLRIUn5qTIB9W8eqoU8ys83tkXAQ2
1DJDI0A7JmkOAsZaTfoRkXjx1fH7GrvwZQk5/LGf3f73B20GF9iKjf33H7G+p/DewAKPIpz7pZ0p
tloy+en3V3JxYxCQaslw7n9ifQqH7X7N0EKwCIERn5J7Jciv0+qO2rvO9J8yFQwVFSowlhNqBvuk
GnxhZcmip1/OL8bqycAUHGF0N8iysb06TMLhrDJem2ZVl3NwfjGWA2xZDxg0DgwWSnUqn+SnZrMc
HF5gYuPR4cqmvCOJBC3D+EVCAluMi2dt0z73m+jh4a92t3wTyaHIfQWjAR8i7ZTywVucnXlpnaTU
gHfHjPun81glKbag8WgbfQSMWMcZFz/mf0zdPjRTWZQJ8h2UshvM8zg5wGTND3GHC8aVgyCM8R2p
9VYQrTddyPJ3qS6a0MKJawJ3aFPbV8UUCxMOOmiOhA5ND5wClYFc3uEf3vvEOFrR9l+Fnvnmx7RM
q0Ov9Dcdkwn4cQXI1MdApLLwAAbDRSGXAGAs0rRrKm1tlmwkdzyRFLG+oIR4fIHBp8axlfSr+cIV
coelxmsauVC+8LCwywhzUFjeTO1FqCGRZmnDmcVRxE0vaVy23P1gSP+t0pXPMyJysp9csX5TXIch
iKxj5xqmes+WgCwA2r2AJ/DYqOLCeiej1R0Iu50fgglg2njAocFO+MrUurbzvgoa8AbxvZSTheL6
wc/yICbhV/2tbVS3WarbfOXkat2UAh5QpZB1MCO5xbk9/yGz7SldPlapaqr49d9LX0LrIN8Wpl5a
XlabVFAr5ofsciKpcr+2b7SLVGMJxDbTg21sFdS+6c85OYt1Ai0RO/avDtFUaKjEVpNu6O45hwxJ
YrOgk/ZvWhhR1I9Qs24s0b+ZbqczHjuafqTpHEQhtlS0pMUNFdUfWP7SYCjOzbZpRfNA+jdJzf/1
DoZzMOFXzui5MpFGDUanp4YdMQovIA4siowR1TeQSkwHZ1pE+IRuiuequa6/kUVoIbKJSH63NfPM
wYcuwS669kIBP5wSVKILd8bP7yz6FLK+4cEtopoE8zmqf4u1sOuksUM+k5Ql2GQvq6HSsLUKgfBe
xc38ETrts1xCh1lngMVDXSRajnyWx0dAlP/ENZSDwwcILCxSsjkRVgwfyqQrXbRNQZPwJIf3s4Il
Zt3reqBJMFYFQN7DIShOG8XdsxCEnX+aVbiUVe8l4JidjxuHqThMmG52Mt5dei1Se9tjnAKU3KcG
UIIB6CDSUjmULPHJlIKb1XsdWjEVfbB+NnlCWWVCdT6usjSNUoDrCsSy1sJMCIY+mBDp0qOO/BRE
lXMRJQ0HV/bNX8RxNghCShXjXrycIeOMCNJDHLi757ee9NZoP5I1uvN5Z7/bNIpFKfBOuZyXhQJo
E3b7oL9XKHaUpXyyE1przvSVJF0IckjZtGJJj+OHBWAOM5S/77Tb61qYgtZ+1zfun5+ZfsKa4Uq/
j8IJndB11CailFnJP30Ea2fXeDNVHGwB4EByoBRyM4OigHV263ioD9UkG0wi6k5dqEnvfuBk9ckX
4mXUF+ewUT33dH/DlPPZf0YZIGPLcCqPp7EEPe9+QK3HEAu0XIpz64/UgBehOmYtdFrpl/TaPlR7
6tO+KMpMS0dgYVJEGT4zqR+Vf//bPjm/2H3FUEA8rDM+bKXt8V72eBCm1unBtfdpM6Rvjx6vqpZ8
BOvy5ZjLvFAOVX/ibsi+oO26InE0TH7fCVvJRArOzoWu6/5e5a9pSQZc4phwxZGObP5xkVb2FKRI
J3Dj2MBXo2LuZaqvF4k2sy6EyrZieSe01kDmCN79Aor7rajJwMp0HLlQARMUCwKxuWsAI98ErJOe
7MrA3VMvtvlag//z6KqlqiP2E87PnDsQyi77VOadfAB1Z6ihVtgp/z6WwHChvIxG287Yv8CiedeC
iviQxfv6w1/4hoal5MrDuqEd7qUMk7urAo1FrfAsWr+sR5myv6MWXjpYPWqBYNjtvBOX/IXiEneG
cQ614tZ2b/yiRzPLDd6DywSpW6NU3Roe148QVwRc1KEJ2YO4TDr5oEJH4u1NhuiIkvVuqgfmdQMv
+RY4BXO/QlsaeE9fvXQvHz1KNKYJR3GqL2mq/wIKy4xMmoKDJYiMnKJ2cO8mv9yjWE5hwoK1m2KM
4Ucfywg6G6qL2zNzV45om/esVIBdSZcvvYG7/3+AI1Q+oxvLwy0Ta9AvkxPEO6wth2k4vVZV3ZNa
H1yU4o68xd5RngCKFwTRKJKkVFPvDC0hyh+8i2smiDg1EIfCm2b4tokLGBWUDoaBn3bvWiqA1NM9
x1VcdzPVug02dQYGsdqtbVtMO5roHwxKUQTk2F/SLrKrPRtxXnTQO0qQp5hpkiTn3nb8P/t04cNl
2BAK/SomtgadB8LL58T+5mq0LM8wx8QW8x/KiVQdZW9lPN0bJRGPNr6HVw7p8hjRCRvsYpBjUa4Q
tGxeLQv7Olg74emuMCkR7doDIMaj63L0gH2vxgTGIkUX5GsdkJFrQ/QpOzM467z8hUCl1Xc1MtsZ
vtvZ6jqn6fmohSDlGeQaaAXmoG0q/IFQhY7u75CEuXvX8wxEb0VoP1aLdqV8z6PFFFqa0iMGvHs+
TDSScmxc95kDwBIzGzNqXln0G5QryFFexYIS8hbLGx9g4YbNVqqiOiG83qfhe478E3afc78fEHv2
8UE2EjfflzwAmioPGih7YXWQXchM8t4hU4XZQ+duidsWXdfT7vp5uJRVVOEe5wXf6pij/5I0GBc6
e/32mEIhfukLb5AhBD8CB66VycfKYlYUn3VrhkJeLKKirkOx91+B5psueDPs8wHosJX6u2qLYLUk
fHvc4snN8wBL9x5QYNAtzPjKiIHZ6nKfzWucO2ZSkQxSs2bl8EAm3t9BbqM1OmY7WsuSg8Y7v8MZ
mWsUU7LnbScB50hhUIUsSEaV5KfA6sCUqlEOP4PO4ksjNduTZG9KQYZYCj3tFiMYucPnopFpHxAf
cFH9lz+PdMXjmBvgkCWBryu5ZQPfv+532z81EClxTE6462c7POLNrcVKFD8ppFdb3acCVIpE9wmB
GiSSkyf67e1FWUJuSgNonJAj0dIUx5WAC8MdAOziF42sXVS3eakSpbeYat3li21uHBUvOPZZJxxt
CXYk9O9DRTQ/E0yUHLm1ovTmM5TooSzCa2GxRNBtqp7A9siZlpIjzTNs4XkZ9+IkDuWeW4Q5GPDR
8pTvnr+S40GPDWQwvWHqkjmPah1HLegtPFDGDMxUgAXOSZ1rk5yt7CJ0kmkCSVpHDEzWYkNBnRK/
5z0U/n2q1ai8JUBnGEPfQDdhO4XlPRxDUyYrhm6ZZZ2xhUN3MrmN3D5DDs6y+BMBIK2BVwcMNPV5
jrogUXPe++U3vL5FXAhc7o3RzCSt1R+iijFOrgkrp6tXC1QXgVVlA6pVzSTCkXEi3TbRX0Z927oy
F1rVXfhYe7JF6PJbmwEStj6jwVyngyym5kzBoQLVv4ZlvVCg74vCUF6u+hODWDxsDN2Z1UhnkUJS
PCWqZ9iJLik/YlzoOYmuIgoPlk1LHmAMXzpRq9J8NMN+737GaBYhM9cw9I6XrVnvDINryP5/HbmN
I5dzY3GShx+X82pQ7Li6ukYG0p+hmYJI99mpsxLpPw80FcO5U+fL1vwSYEuzuj4PdYT7eKXqGsz9
aNJXJLVNdsp6BVxFFTlRMU2ZzF8qHoEuQdgrNWv8Pv3vRRQIvukh4FjJSTP2jyShyP1R+iCjjH91
kEEw5Dvk90hdo3le3VJIw/diXzvF4xZOSQ+I4YnJIxIRwIC7nd4HAwF69DtN6uv61EWvWyhuSWsG
DvqUE8S3jUTatSg1CU2X6rBT1ponAy8AUvZSqdrBv9Qm/M0HqjutQcXkf4pZIPJQUAEI17uao3h0
y604TlbG/81FG/ydEn9Q9AHszfxOfy9Nnv3xFVcodrOjxyhGqjnSufl+085qTCHGXJNZG2ztmmln
zwxh2W6PR5gv8gVN5n2S7rp5BIcpmWbnjFZPDanLnmb76mZXMj6gzPVOxrQwBaqQPuX669XC2zZ+
XCnLJzx4DQPcJONpQyBDjiMT06R6T+XdxvTQt6tvj4Cydp//x4SHe2FHw0JeYOwmiru3ZOWmYyk6
CDX9smnfyssZ0yFgtGyC6RBPCQtcnQwkNnoI27ICbnKpO3BkmxTxI/jx+rgdH2PGWqQNaIXRPQW1
fzQ7rLw4yzY5Y/6afL1AAeThM0C/ljIBpX6fIglOENXXxs04YFPXB6haoLTBYsHpp8O0a4jIXOV7
Tr64RJCIFbRWNKQjgvbCyG7vEEVxEkjEpnWyA+20itDC46dKQzfMT2RyL14pSeQQ7DEd58Rtswqm
/kNqN4XtgEzFk9y31duZQ3N5qUfIIN1YFBTDp2WRu79n20ywFiM+fCnf+1laPFOCHyBBASpM9RzK
vtP9zM7pqPFBZaDBvjJ/ZP4DfF1i/XD8amzOSWMiAowf6cNPonnksMwVFw+IjnsQVN/3dmxJm64f
uZRVP2HOracNTRb5ln4L1iCu1IfMb0gdh63WUwWJPsFX28I8kxsye7muApzRBJC5ed6in/TtDbhx
j6hdb+8QeqKICEq6eOz36+oU/yZMcwdXUBS+rrjcBRiZDqfPZ0Yrl0hHWz3XmW6ao8yQ3FIoj+si
pFRsrPVIeWoEWofYhjWLNVK2J0+yQYRKJuAK151etB3FDARmbuFPd4XIxjg7PZ0gA5My7weDfeny
O3wmiug7IzCBVg1cdW1r0WxEcD/eIhF1sZ/3E2hDRE66i/yl7NRLCfkFHJGoitNxRBl/WJPHnw+x
Rr9+JJGLYAM/947V4sD+orZyvBxxyx1ZlxSP3pSVerxfTxSS9raf3QMgrm0pRXqwh1gLOvvEKZrG
XIdKNVWQC73w2KEpUNiQVmtvZ4JnZnnXas8fVD4oiKsAj4YTM8jCCzKHLpB7GIokpZKlGBBYJvMr
EO6MBnXeFlydwpiGDyZ6HhiuQcK3UztUIMaGdhjt8yVRoWKidi1tB5YyqqzrrQXLhWJAR7FEagda
YKqAUY42gvFwMrT2cfrpF/AMjqVMfwMp4mZ7JGugjN0d0QUv5GMDBtYDrb+CPl4tlZrKtrz4mAFI
lm7ua6VCSzbGsorw8iE+RYdxVgvs2Wl5izcggP/Dq7ubqJwABMZIP+Eo0mEJ0lC1onBF/K6qf0yO
QLlATSDiJlm5Va67v72jjsKGia1N5NYQgv794OQPu4BlofxGIuVHL8LKKI/666wqCyJOi4fWK67N
4L/kByP02WJZFfqAe3saXJsscUb+d2XcGEEbpP61Ii9bWRpVevbHqji+Rsf/OMUlpgZBB62lqmpd
q0YfAt8jaQdQh0s3OpkUqybJlgs/FnL96j15PClFQQwcRP0tOShLIJI+C3g1XVzcJla715+mX8u2
Xx8sI34QrsT5LPJ6yI9QOZMlhw5PdXYeL3SSvu0SeXKaxsHbzgZoDoqFn6oYDWj7PTqUb6/y70Nm
TPufCIJkM7NalRnQ00ds9gnq7ngs011HhTWbxjvMoVOu90I6Nup0mFy6kxm7axKHDvoecSUln0EC
lzCqOJSrgGX3RFwNa18qk2K2j8LlxOevRr72clsoBtqWleU34g7HeE80x9SAZezk413prNciq7Gf
UJj81lALzlfLc2f80BaSDwCu6XSnkVW4ljs4lnAtj+pgx2qtB8Yc5ApkQ4B7DQLeVV5Hz7P0uZJW
YIyDR+i6rig+YuJTQMAq8dh5muongRuTUv4Sin3+AqzFM5ROt0mBNMSv//yyDd5L9Vdkbk7eOwHk
V9xLIjdUg6K4RDHE5SonJMWc713GwadXnidLRoneW1waSxSheHE0XihpS8CEs2fVXYtJvh+kG9I5
EtKLhDdnikeOPkmpXzsKe+DdKVvHcqjrgiNQnlZpWMnXZnTnP4kg8eAg/Mf/x2yITQBuamBYv2DC
7mJfA6D3SAFXiszjTjfz3G8w3+DDGsXE9qCKWxsm+RvkhPK7D99Hk3WxN5m5OvRXanVwIpfYBzSf
loEbCl4TVpGD5tYp2g8cysLVjZiqSuUtGT9f2NMC8/FXRbm1ybVuLnN+nAWJhwKcRPbznMTApRWr
rdps/a4A1wrnb9pP9VMCCyLa8LDze7h8PVZ5B69mbBJlWe2Rt2t8pApBSiR8vxXbfijqYBP1uIQL
gjjFcW9too2m3RRWapZiLQRZFFgp/AnTa7BqTGxqyegQueH37/6SN91EDcttcnIK7z6Dqdh0x66F
Xf2bRGa3LQ0QKZ5SQDl76c1abvfv105Oy94lfeg92v9DdAjR/zGxLuXycdUMF38rICgNltxRDr+k
UgWhSd7dC6tMjDmpNNbpV0YxR0ROSVMtl+4QDTzN68O1XtGmM/3ltWT6nwgdKve+T6Mbjgu/OKuu
tTNtGQl9uKbdrXIMF+YKXf/652UFCEVCSXrD+7pWG6/5GuokjYO0DgcYAwy8gfRoj4EkValHvvkt
va/rJS5UzY9yyMT/sfT7+fb47XI34MoOSgb5z93zhCZ1JWa6mDtgz4A63zqW6u6RuvGYKC9OHi3z
E3TXoa58UoDTrsavFPB0YyPv8OYrCeEX4a01TqK1Vu8h0syEEtkQpKTitzmMxwtRNDdxCjQonjvW
M1Civha17mDjFn+XK5ZrjZABJfJ1fKVzEqpQEJS9XfMtv4t4ryxxWGq+GSDdy5LxxHcogo58f4hJ
Ii0xGHxJ3mzYar9qNr99vXoJ2fG+5/PKiln5/b6n4c9tDTYf45ozbyBsdfQvVI0UlQ2f9+JLDJFk
n4fX+7NwSrFHNMXgyPcLBL2i/vMcnuZXEtsvMiWzxozxQRc+ZR2SWaFhtU5gOndc75ATRfzHLl7P
7lNbVjeIU7IlVJCgeTMclQPNY291prbHvT5gC1TIzZ72Wwvwyu694pyRPgBp4SoO9k7y9O3m4Ra+
9tW48V2b8VGgrJr4mWVy28xY4AsPe74hTEymO2UnA1iAF7fLDxyaOWFqzSDO7DuqmwcVI8ByCMP0
jyWu7dQodVr3jiUy/6tdkVqngLh9e8k5B6udnYMUwMT4E+pw1WA7N1tRVKZDzcUh6pVJUA6lc6Ba
JTeYBIiNiELsPbGjKMHVnkr9z9xhTcUvyESsr1RH1zLvJ/y7XgxE1aCdOJKjAa1PPYfh0x6sv3A0
kZQi3NhjS52tswQqWKzkhKwSgg+opfEBS9H1MOBp5YM0hwuKPZg+U2F7+acnflN0JQob6xupcu3A
jr7Avq+TrbFTh6Z/noG6jFpZIl+H9Cgd/wrUiyz09VhLCyUp0bM01CPpKUqIvpAHAC3r9YwMsoX9
SEDdNrzfCWNgj5fmOj/JoaQ4/VVmfH8BOnSu9unDRpw+Hf/wX/xzmu/8uIUv/z5hbA5ul2YIM6xp
8rH7d+CpNlvN7kuvtFWZkPc3w55ZuvnzddWGvh2n87tV50h33ZXNDoTfQ1Ud1qvGymcHaH4knHMK
ajH4UyxY1bXMTZe9Cb1E2k12k/fOiq+Q6pgirSZA9OXpUO55jH67Ye8dIzmG4UjRbYCz2Ts9wrkP
FoNqCmNovV4bF7d6TZAxtOLvoRqc+hLbOtuWjTpHiIL2uhH5804ME6vyP8xQ85D7OXd3C7Ob5m54
cLGXd0gI+8j21jnGK+XbHBIA8nQ1ccUtxFD4adnYFlSn5/H7m6RjC7iMubFbsmCIGHppNppBQDrO
IFhwd7GaAp2FwgXeD+YvfSe0PZSCEt21a7PuxpcqLYmGJ24IlMdgQUVP3PKMpuf42B087oXt4JXF
8WjFpPlulbRp+tNQfUQQQzrW9Rc6RhKywgXK71V3amCiJEm9pM6F8Uf1mW2iovrH0AmmO8/g7UeC
hN3uUW5cWHhMaP7tyjy6Dvb1YPkImLZFMdsxwqvkZwWUMBntZp03bJVPGqwRqq6PLD9aCWEuCkUN
NDnRS4vGEE6BsFmMU5+de1qitZbRdfzzB4sjtgzJjdJFa35gkE9qTvsKeCOaUnnzhqHyAZOvao9E
2d61G+fkI1QOEfxXeVQPYiVB6mwYxrZ4HmN9ZVCrNFzuiYzF+DAAK8CxQaQKkheVq+ic9zrgXaF5
kXrAlAmcycEgExtk9+cCQlXW/Mm45DOtEwtJKlD01MEfJhRVPeWZSJ/2i+gSIA7nhtX7+QG0Sm8t
lMq6L7vSM+pRjZkH3/tDTCegfkhNTdoUc3HdV5SClS8RSXa62jSixtvoeujjrElDdZZQvX2Bn29x
JIneSbF2JFAYmiDUGfp+iEtpLlGcgUZs1cLyrj1uFjJibgxDfmXH4/BnTGfOfB4XF3ExP34ss95S
OvwAeKQq+a+PL9Sg5tCALfBxx1UUsru6MlJsjwM9ue+buDyYlW5V8iVlQdqHuJEdoJZxAzdlkd5U
pJSOYxPQzGme1JSjnxZP8sK5u5fNQlYZqTED/lsJtidX7vsPO4qL0hkCu0RHasCfLTSYHHJ3D6GT
/2JFm3gBeRxq+fvE/51NkRWVPdplD0SF5R7Nz0NKW02CwNbWpA8o5SZkKZJtHXDu+J62eMVJeE1N
U0Po1bG6qpc9MVgDnazbp4UIB/0RKmm2pEpv2Hitx9TvV8yy10MeO0GBCBYSxDNAtqZ+iFgFlLDv
fIlaj+aOEGv0XDjSDv+DozyHIGEoxQAXglVbSmhYTBpfoV10Y9tZ1QYK4iAzLTeU7jZar2nSl0nD
nLVx0nfNX0teKLcvFcYYDr2BOkHsQnYRbDW91FiCOioRB+pMMOzME3tp1Qa46ViYW6FzCIyWJ85U
TY+VOYlUEL/SQmgkPeDP226G4lVCKVSTMWmTkO5gA6J2gQk63Zo2c38nbzd2haeXrB/wmN1osjNE
VGTJqjIVOYwfvYCac9v/z3XiLueDPkGdJBETJQkqdTeqB+iIdg/bbo4qMMg1yswSliK8W+ZNAFX6
iXefAo+p4yUEQTQZG1GLk3QbL2Le8Y3sDii3uN+fs+X3k5uhtCGnyfA0LlplJ8kLmEuUhrXQQ7ZZ
2vX81GtVf49Tzf00DnJ1h3kBpVIGCVkcU0778KyLsffmJS3SOtX8x/n8Y2QjbOvu3ZvHPKdisE6c
Me0vh/Vokx3EEPssvp8HHsgyIL92twWX6Nz/4LiNJ9spDn6znPi8CG0BzFYhtdhVhgt+3U5DaF0/
LvKoWhlkUIBxj3bbwnSzFOJ0wEAZfX7iZ2xEmdftpSZfq/qeR1teMJtACUF4oLPCMYyxxh81KOr1
qZ371pETwY3wYbS0paqxfb6N4lMyv7teVPgrM4e5f2bRW4Ng5TpdzLyEdtlKkR79yy0ShMah8wtC
8qSvlr05rcuiCqd8Sg11X2uE54VQIwy55G/p5XUzblo6/8MOsmTKxvg1koMi0R/hFVPuMOqETS6o
Jiduo862++YSxIxefjftDQJwIQsZUk7e+ExO7hYpeqX+po4bZlVhYMoSAc9QKGsMfPPv7K4UnuCx
UOy/vwSfDc27N9uFKO3O3ZWYdGlQXTG/7S7boSb+hV6rcD7YZehkEVRpWid7bH9FIEpqG7kpinfn
mOKDopNrdBj11hbhN1pc46KRejc6872gN+/39RCNJE/UeIgxjX5v34NwLdNH+BlSHpSUD1Oi7GE6
2FgDdFR9oANK8iKXaO451lCFdXjOiHTd9pVH0YXX8CiYWyfvrG4JkLwVdI4s6uSoH3L7tpPoZwUQ
sOsEDvijrfNoBcXSU4CEBqLBHCBRfz7DVp2mv5zDFvYq5r93Ebo46f+HOMrZmTeerptxwkSxfyVO
AntCRPOnLVNPURcJLGfYNv3v1mUnL/GcKpAHOVdXNFEsn56E3bWskQyCUYszRqjsiqH48zmmTx3i
kIOcQEBfFigHGbnrPclL79IVpYwLHAY6r0EIO3BM/v8xXkKnjPztTe/PXLXXToepi+pjAibCnoRx
9s3ap7UYTS74kJPTPxCO6RCKTDmgeHhZzXrrV/Dz+ZYEZq0EuhGIcfsdtjO6RoN6wq5dvRhG+7g2
xooiHeN+iXVCJCufkpmqcn/Au8VgvQMFbXq+vVaQmw5RmZ8qY+bg07XRBOaRJ/ag5LA5W3YVijyp
te3KZMvJq5Xjgh5HPSnc0bJFnpPxBKUdtcctbkO/o5hY/Mb6vLMWrh1Hnr+0pvqFa964Kgtqk1oh
KgdSDUtJpOJhHuZtoXJSob7pSFgSBMwYu2fJSSK4GIYihStEhwamDRVg/6M02ZVHRC+VOxUSsSXb
D040NDa5omSSCHftOkvhHBkRJGYccdjz3MWOBYJidvHBquIdE29h7Hh2Zve2eMAakGefaRu96epf
1oiD/mwSRQWstMTGOQcz96+/u1rQr1cSCfWEZ4TTxh7bfLDHNN5/yIi5A+cPMz7xdJOVJ+uRKGpG
SoHyP9zcN/rNIFTKFEuhdXj/88NNt55jIZPqhSRx554O0MmgJk8cKnBOIEfFNTdW90PxObhhTjwN
0j1raewdDkiNnhqqzvIVfFiI22b3NZewUHs6HVF0cdU9skEUEPlrvIL5HP9hieomr2/RMDJZ3tmn
EhZG6StSJN7zhiKZHIeZa++oJ1Kpsf5dtXoJKyT0m9M+df7qfLlHaBCVRbk7C0dxgu9POaKTIKzu
+LwEWtFXzLKXKeIH1VV9G34+eM0f++zqKOdtUB0W3p//38gZurpW1NVUH2OaWhQ2fDTh3ZCzmcDY
0lIPm8WWN0CvjjNR+Une7DgIPcQlJaJXFd/VLZfn7WoP2fudlGenIlUD6q1TyeQeFQ5OBkLjYMGw
KgCtyxmAWP8YHI+GUI5PPbobWBqYMpRv5+Z37mDOOWNsHMmP4hUFQ6Xcx8AVzh7fUGmb2VK/kLkH
rl8OA4pzgnEx+XZcGonolO6TpxXjr9LAHeh3AeciWnEFX4zpcpf+3ebQwI9UI/BAQ/Swc+uG245X
E+xadkvcxtmcMuIQGmKoFVvnLx0dt4AeCwi/wATfxV5RRzzhZEQW39X03RTBnLm+Udy54Ooln/0O
pqilNXBa945juH3a7HBIhAjbByOcmzprd1RREJjx5GiFLfjM50lSEycf2nN5ITb/R82lsGxx7BG8
uChTTvG5Jo5CoNM+yOF6vlnDqKl9Gler+aOjse0OFgHmS0pQtbWXGEON1LZdRqSaBkkLQ8XGFnD8
8+L2Sy4n6Newkkmy5QBiydq+/1QMg/58wub6KQBD6HLVWSUOt5zAMSSuKsyA83S5Ub3kSuB+fi1P
k6hZVKhqtXhL/cjz0u3s/AVvPnkRL1yOZC+36Laf9ZA5aPoFPwmNSlZZrauVAsXHnYkZJKm0HnPq
i3smP5DXTwkQEFDcu4urW+jlA6qzCU1Iur/SPGekj1yLKYyi9gAA4z+7L2XtdZbX4yS1O945tyTI
tGZLiyXji0PLbQFDWMwaCjAOJ15fizzxahhHh9zfxrLjGefRolBEIs5b6bE4fjDtTPxaQBXcoeUi
T5xkN0f47iU2MrswY/3hycZF2Geat2yMirUzXptE24+av2V7OHyfEEHB2ZXlxJRaKtyGL+LrZjic
ugmquAlc9D0lynO0UhZQAXjHK5c5JFx9hFVzBQgkRoGcvrQQ09jI48k89GmK9zfDAap+ZOSDxY0u
Pdgs+mA0qXAg5UZBFtIkl6NgNoXgt3cidnpmGSNL7nvS1kdnWvsHEg43j6J2/VNLWX0ATbwoKRF8
MRh0x/8L2AuntfaujQINUEL/oyIR4vuyGNWdh3adsh56Ki1iYh5CS81IU5zGRBkCkeIcq//7r7II
IBNzDMTYt0QKRko7+aOuIAV03OOy44YS5/pnSFQZeu6KKWgVrVV9+Vhz7P5YyuvYIQjDzvxKsEEz
AsSEMNXRtUqs6lliDCBy4MLCo8RjqggrB5Jf9dgY0VSYz9SV1p+7EnRH11IcYNWnds5Ps6227j+P
LmY/cjB8oZQKGdEOlVOh8X4dKnSco4/ykdzoXRc2DqmfaceyOnts6DJYu2lol0pba+8ThG0G8TQO
LBd0ZCZLzNuyQ8G7iZlkBx9wxxn4mSi03VFqx1CdCxjQyaXaP3Yt5HzUL6QfDjAvGC77qaBxwhVH
Ram5HXLkUP1lTVW+NEYdNzo01eswwyAzn28Jk6ddzD2yKczNI4oP5EHrmDi/cXW3eVF/QjJhHB/j
wF+6MqpDy2eWgY8R/m1AKyuQQszELMeMLw+B9nwtReqDtsevQNbLw/SRelC3AhbqANYFGd+lrNVO
M9WnK0slpxlfHlQlecVGjhtMp0smi5qsPXgkYPkQNCRskj88PaLvootFSSpd6m866qr0768fxxVp
8UfQ5JLYWLzqfsFtlyeNFS+Als+3cVSJspSP39YAmqeUJhj8V6r7Bj9MgpzPAuz/7fTgpPWsQN1J
Vh0PZgkrvAxa/Wqkt62aEAKgO28gejnILwW1P8w+7zzp62Ge8msFCnl115G8yz8lxm/9CC+mBQCz
13KZpL7pgxvH4cy3hrUGeA+uY4IUZFoZb+ppF3IHpC/d5acQmDUr2wFBUxOFpJVRdku1BQmgex5X
g+Fq7jA/KC/VAAKQj8yh1lCcNcRnlWeCHxPcP+0tcKt1UlxFcs21cXBg/QOuhH/4u/IPZz9Ta/o+
07gitS47nU67Nnl3fMY0nmmaSRYcjRf+3AqNfSQ3Lirfz3Kfed+IBXW2g6fRcKng3CJI6cMRvSV5
HElZiTw8bWRRYNqDE4It6DRa9axJ70L3Rrl0fWzNshdN0JjuRtnrYvhJxaUt7iSHAlHJkDAGViEW
Jgm4EmthOMNZKX6ASEBpg3N0YKRUlnUP2bR05mFhmcPb+nWSt7fVObop6C/W6yDrgsA/WWQ7pWJn
laC8Ct2PKeA5oAChJPD9gsr/OBonmurriES2t+0GYzEu+0CEHst+Fm9J9mggtcudFQ4KmRiiVmZl
mJwNLnDQgd5Pr17jEKKaKinta81ENJdNZC2nba30u8YD6/kTrXWL0hxPSrx7sraE8xa3OSf9AcfH
uuc9KZ+hMpiy6Av9QHIoMKP4AZ6NGQ/oarUSGF4gvtmWMPpm28pPB2RZov1v2pl7kwrBrT3hGHKo
SYTVgstu/PFB6MjC25/Q5ikHHMn2uP1Z0zG2GjjupaqVNc9VhO/2GCiGgfdIx3Cm0FAEQY7V+UeZ
s/8bfwSK4jvRbONZTNCt7pi6QDd3qXJK2JIBbSP0nGTKRx/E8cXGW+E+0xO0QoynSN2zIsirv0oF
7c8wVlwbMeq0Vgte7Y9SHnBzAML4VJuJmfgFHxg1NGtq8dZLzAeGcDG8WXYWzIP8Vfr8HrzEIm8i
rqtHosdddOPGAXnP64a+twMnYYuD8au2/iB1kT0MyPWqs/nw/fu6Vr7uONNELyAN4cLXWR+wx8t4
A22fychFNsmz6yUC/f4i7P5KlDjB34eHmlOjNWE9Zz5+an+8w30McKh0xR2/9W5t2OzDn50T4RSR
sLhnE5Rzc7sx/8fNDCvDrrVCfy9r+mazXNMuOV7SXP2ZUu2990neMzPO6alWnM/hj/qTb+kZv1AK
3wTPAV6xZSmC0CTSl9q2ZVk7JK/uf5AOQwM8vf89qyzsuosV/eq5UMt5uh7Z3SXUEdNGxp9Wqaub
BPSkGuRFdJ8TJYJ1L6Rzvy35Ka4pz1AdLvE3F4fxrEaUcipKxIFbpO6nQeyCa4BvEz1tG+e1L0oY
QKTti+fUlernQbKHYTx9bnb0vkOq5tuB6Wc38mDZ25fyJWB2IZDfkDGaVXw8Uw3rsHRJITGtKTkV
8dlnPnjhPu3FBF1T7odg6haG0qLV54S0/dOTkb2ZoI7Qz7IQWGmk6PrjpPwj+itD8+/9qQGCf1Xb
kNkZqJ3TGlAWfXqF7IJf4nF8zrOLl9hHqDgOa2bdtx2/lxl6S4GqHtjoknEdXFD49rGYr1M+a/Vt
xFi/npeQg2r9nEPsSRW9KwWYM0NBoGO3aRtRIlWbwQAg+5Bi0z9kn8tU36Fp3cxH+lXXkgQFos5M
3pgwDntssIyC1VUUXJWM2pXHhBw7Gc/hNMNqlaxSG+8dKnbjShF4d2P/JKsaeSplMhzGX+RvR2Ie
fscfiVI+g0JHvE7AXf4Wj3QFOEZo1A9EMLOsyW84QHD/syQMBlXiMbfg0DcOv0q5n8lLw81+MXHk
BJUpY+4TGyW+oEGfnqsYHJzzAb0VDOV+qHMDPlE3GGAsOkNONLpEWcNlIpVw9FqqSN88ipwIDqER
eUZ4BngghlQbxypPxzVp3qmBxi7CeUMH9pbGjcgyUm8RSD1MGG0wzrwt9ioHKKCSraOWAdTLYmPp
FBU5LTQ7GEvN10fQ6/bF/V8ZhuRVI5Bv+Frxw8kjkyXPwRHS2fvhDaWDebTI9RiAY3M19/45mUTo
aUmgs/oc5fqFTawDXEtLnzy3eINUIPqafzE8Gqy/IA+AyRnof6EXQiPoSt2U145/XrnAuKyFtmX8
rupiy2VsXaCo7olfKvgKEdL/9jCXYsOux0pps6/thv5Dkk3LaCqybpdgON/rkzc9Nb4nwAMQkEps
ADtF10vzAjqNN1UKKyGqKx6U+12/qpyAgpovVSqLcw25zJwKCnKNTsmvPiComKJtMwWdXqnEoFzG
QbB+59ogmpkZ3pQ5Di4DgJ3HwU2aOrGAlTuUDivOT69t7RqYvo+SeH2LtIVNQPyq2pGMh9pjfKHH
ohroQZ+/KtNEeXR25hhIXQdSlCj8VWFaSFHS4L6loTxYpoH7GihFG9i1TtUd9dP4Y9zymUrbDTft
RIPhFDd0v4UxoLx4izCP3lziNyfV6zeHjC1zvsxSw7vTmAgG4FyLONoPP1bvSK6ASvRAy+E77DMo
tjLTC2HW/3JftutdTqmpvNtOXlWVWmJD0uR6+sOHb8kvOfiaQRnbfZEt2g0ngaldJfAtTyI5Qdii
0PfVF4I2QB26IVst/q0esAaXKSxIK88PgiipDSBbmVy2wkGFHsJBUw50Gnjg7xLavY90/e4Qaumz
C3AFZ9jlOPzHtVxUHnM/EXBhxIUzfUd0Wxczpoiw5RXauwKrTSpnzwzLEXvJRNLMxNVELExbehqK
vEqTNDT1GWSpPGgCQ3LzzaE+ggbfDDc/p5CcOk4b/k4UCSlb+Dq66dbiXG14++UwLMBZouy8CrJ3
Pqi0FU5tfT4KJ3Ia6o9b3GsgdUSO6UAhgN35znopiG/g3geK8PcE1v8edDytG1BVup4u4bMItYEv
ih2G7i1gFOyJPCxeFfmj2/uvz9s9Ot/5jBwOqXZxDup9B2rvZHHTgKtF4Z+tjbiuQ3j+2MBbsH/l
2eYTlQyljvqqIDOTd5T343l0YijCPvy1PafvpfSObdgRUSZdPhCa9/BkJOO1KNnPcp1kZK0TOc0r
WeSBcO/SBsxBgNQwijF90cbWBHazJRk0Q6o/I7qLJWYU8YNiPNhjkce2tKG+1VXI90GxPPnUOmpz
6IETvT/viefeDzfn9/Ov2AvcQlnq9hZIZMXydxsDx5m6nS/djNOIYeWKompJQM+d4xYfp4EUASEw
kbily5+Cp/lmcANMwrEL/2fE5Crqk5UwxX0oScS7UtvyD0A/K8tdgPR0dRoNhezIKZCqXASARp6B
Xn0Xoz211RjEWAe4Dh1w9oLf2dnmQqugJT5Cp0kPIWzJIaRatquiwQEiITSpE/aeT61Y8h6SQTOL
YNdgkM+h3SarnF59E5Q9o5D+HilhlHy9RyqpS90vlbwDoTr4Pkkd9BDXVps8zqWTb7H2i1XdQ2Ku
rmzmlTl6N1gzXc3kCLWhgwzVRb3R/xT+HPCq5YN5Uk9JRwB2dXpr0DM+/HI9SbjFO5Tt5TKgPF1E
ySYDNgAuqvrnBIqLEfKLxFzfuHBHMptJoAzSt2WfUuHqUSEBDnoIOUJKcAjBVsqTw3RDTH0jMjua
4hLxiITIOmgXRYU3m73Q4brISbZeo2XwNLVNiWCZYGjV7TAjCmQ0QUUk3a5xgwWj6pYE349owGo7
8C1i3CW86g790xCirJo5C5u7nHOwHJn4fUbobWvbr9oYOSer/1nc3oUkRn6wsZXcIVrgPfaLgvBu
9nCR77p7LL7F2CNTn+9rUdejJKWCgosfpteB2CDIBMy+taPnvjIwEj/w0NI7/sYeT99VU+Q6VifW
cSBSFmSNzrjMPq3OdnJ+XO6Em+OpoqrcIfrrwMfoR1/Io+k+spirt16BWAcuXaWpLkM3RjWad5xn
X/FvXd/R2CQGC13LlR2LXLei4rfYVZXkQPGpRcEzoeHxj2oFLMBpxkJHj5CaQ9WvAuMI7MjZdF9G
qPQSHF9OTtS/ITcsdGKyTa8AlkZSWWnfDUImpL1PyRvuAn50gOciMpV25fmoMDat0Xwc9sGdjnGI
1N0ecdHuP35oykCMfVt8WTJ3nWZqCi0GSTgvz2uVIOmej5OrkvBZc7fKgcbimyV2wdplv+ExYk60
ItH1h87UiLM/7Xtt7KpPFJKNP7aVP8EHJXKKX/JSmAAJ4+kenOfoPUz5i+qwNg33xUJ+NaZwqF7u
F/cqWu6H8n/oq7q/Fj2IRFad8JXRpcz8MIAW5pQ/AbU79gehVGeszXtTLIR5AB0DX0tL+Ts+gSHz
kv9+EbHJ/Cr575QxARMw8ghmLjxC5tDPpttExWVJTPjuEKFD2ASGYdZnFLYes9a/S4IXt/8mKJ3J
3L6lzfi6uJ+TDYFbadduPoJAMau4rG934zCCkKoFWkktvBww34yvndg/s/OdSn5Wa4NU09TO9h6c
Qcc0t8HUsjrfnBCt+xGLnoYjT3fh26UFaGYr8tSniEWJXKCNPpIsxPFG9AUM8jDvs1fuaePpaNQ5
3s7y848ILLIafDYVpjbBb+XOpRsFP9rUorLTkVWjZE5XiCNmZFo/XF37cFoOIB+M+WsKGJh0K6os
pFF8yWKF/tFLnuwz+XwIftGVcR4shVPkQASoL+dUaOX+CeLBY1703UZP7ZImBp6sY85k3nbwaJb0
qxjfqhNgxAkVBDHmCov1TJHA/eUlPW2LR57anQKtWXhtvFxWJHYyTTFaa4Li+FsVQl+nCc2fCsMz
0bfdh8mxZs8Sv8n/8sOsu7sixRw9k2WaIVC4eYun8OERxbuNk5zG/JhicS7zlZXkzbjs3q2Df56V
yuPnIZLCdkrTkYsLmUEulcFoV/ZkUekYwSU44EdSBXgOPcQkjrRpXdPusMGTzfuMO/0yhvBFdJSf
E7G3OOPZByXSBL6dndjTXb4Au0n74NprTveVf7nNcUkfL9Q3eiNsEGU7ycB9wxrE36MGpX4UcDLL
g/eLPe758YCMFp7CGQATHLYaPYf7jTPZanoEGuGTBO5yLf7xOlHjWyNL7mNQasD1C/E7pcmiDBRJ
Z487VJMjE3Bxyw1ILFwZ8jYTDFPQubnFJdbArws7muG4GxtfyWJx0dhD7UnykPlWK7L7up+VNw7G
J2vnnh1fyxgvsxxHnL8Z2P77rqJLpT7R5gY78j8z4PEs1h4qhnjISAIUTJXaqLj6AzwpF0VGWMZM
iCd2Q5krvymcjCx3D/aR+SfXtSf4JRM3tjW/gty1eVSy+7nNJjNH5dsXm+btU7ZKbICVfBoVPsaa
QsvV2XwUXbMmC7xpN7SzvIT/sfDCu53tx8OtHRJ4O1DFNzFNVuaG/gzWtssPp1VlKKkSSThpiv1a
xCL2ktG7+i8vcLbHvbjWbrcgJ7pgpwYxrcPxKC56XChKbY5bFOWwU0SHK5rj7gxHHBZjLL9DotKM
k2wYBJpVHkW/i+gDufMNNc1jRU2WF83kbcDtBZedA7dPNBjmMK94zfXGflefDF/IUkzunFO70uoE
iWTg5BSW0clIoeCrziHtyd+A5W39Vv+Cl7FN7ibXYwEdDO1DjBpSGqvBxMX3BJM1hmbi9DQg7oKP
nB5n1kiqm8p6rjxXVU5a9FaFkJOrElXUlTjLEsavuaZBFGqnhxBLgT4XfxfJJUZTbb6R67GbbAS3
S3Zr0txJEG0KkYpLyQgyJ+cPxC221wVRjpqFUdeg3iAI80iupJB6urWesedHWPFk9RNiWcy3R1Uy
rxrRdWGfQX+3sq8ak1JjH9RTySed9Pwqs9f2N2H1jjsLDqXuJYKuB9VmtRcPNsTWMkU+gwJt4xtA
uR5STTPUXRJT8jUNcLMNwH1ck1i0Qzm9G3L3eYq6moTRyTpZCYqBtxPCHGfpvJvbLIAqHhqLp602
tcatXKM6UZMyvyCdhF96ZB0rbjLAmo2cNtASQLTywlyWqAsPf8fUf98j8BPl33VNufbN+YoXPQff
CBykcVmrsifTTewEvrUx/QGi4er3tiANu4DVXvOwYBsLzRsde/9NpjfWyQSvhSb2ZjSaptgEMwlO
Kf1TMxzYR8KDUkRPzFF4SeA9sJT8r/7Tb0YExWvhUQEeCX4/ePDEY2B7L6qf7fVh9mBgxz+erbRX
kjK0xDvEIZnr4bBbQGreHXSCWx7kqbcMBuUUeDKE0ALQN1P+xKUEewxu/z7Jx/k/qbDePatSdsw5
D4KgyTdMVl3iJv+9HsfVHO2m/FMGmGP1apxz0/jFCdXQ+kgYHnwECe8KSm/EEDgVm+bnyCAJqFow
U8jyfXVFZch5tXFQ7B7V6DRtDJpRh5NpQnT97uCjaRDOJb0O0km1lPMh4GD3S7G5QahSTz7H59Mc
FYiUO1Q1nXwapjI21rEAYetVUzRA94iCOtAPKQEgggUvDoL2zn7aDDn4TFwll2gi4ADBgpIEARqV
JVirrDp10N/2m7zell4lkySjf8QkTdEaNJ7hEjgwyLCh6jYhm3lUMKJgv/FZsm9sg+dCyoK1NxvX
t86YCN0zamH06oLr38HOqiA581Ea8JzGaIPDsdyZri4kdjmXybkHGM5AnQN5ZDa/7lh/561PYBnw
kg5J0NoEnA1zwc6p7THVxxvJ/8BVDm1X9kipsLhY514pgurcqLQ4X1g9dOHTySmWzZHn65gUun4D
pufkCrhwYsHPUgSVI5NHMym630FMwMrIuRoWnrIMRz3gcb7kXjFzUXnFDiBKbFC57LxyDlgN1pf9
7QK3BxNzbdmMO0hOZ+4GTYi5VwSg3EmrkEkAuiDVttxbz7gyib8JaPPykFSpp+Lio0WyNEYj+hPO
WBYTghUGLZBabcTNCdfxE79J+Oj1UPeZLiGylPzNKvLzegwEhjelpRtt2kfiYPTI3kJ+skGdX2S/
dcefgIwK3/McJRtKFdGz4Ce28gZ9QfFyH7HZOLjz7R61NOlM9ciCDPxKg2qpbIKLHp8IH4W952ZA
BktjjwKZk5Pj1AGA/2T4TRnB96VUL2K+sgo0/z8hKDPcpsblv09Hy8FAy0gJsbPu7GM/wjqI//hg
2gjAzmoXIByw2nYYtQMs+NX2jyq2LBk97ok32b5oMWQRh53L9QJ5iOEGid9t5D6OeENqeIx9RLkW
oMy3fIYs/0uraGg1aHEwjA/MKKIWC5ySVIPGZgh2ZBrYnzdhcVpuUuB20IXrXi/9ELwh64hmK8uE
vsuvAX/EeVSy2D5WG1bgpG1bWuB+PKRgmVSkrz41HDGJe66T7tt/D6Zyfsfa++JCSDvA4EX7S+8X
bUm1Ir0zFq/Z5TczTlbhoEvSTpGrFsDMH3RAu0rpYpqRTtdvSy7XHkeINjanMfs96dURglNvpgu4
qENLwa/2s/vKbp0FSuRKN6H55nC6jW9dVpPb9Gg2CX5RESN3mzHO9VSOqYNXj+xG7oBGTLp/RC+6
6GXEdKCqgViULDV1PbuxHuelyiOfu8pvJ+jeyPeHX0y8nCuBRk3Z1o5EkzaWvGWhyHzrKmnw3UBq
OtQAYwmroy4+rSl3pt4IbSRoU0r/HnLdTURzikGaPAUiUoNYCsJPiRlkH+7Q1WTMbsYYZQR5pwLm
93N02SVFlEYFeRBlVOvI7LYoaf6wgwHxZBiY7Qt5+kTl/kT4UEyZ42t/uYEbUT2J8hf6T/sENUsI
X9MWDInnFLRa5lrvZsu5wSHRflq6chfeVbHwIkh6CqrJHN7CEDDBNexhVPId1GQCZd1BZVeAnvE/
S46SHrqf+QR/PKKT4XwtHKRlGkyNJOffjK0YkQg0obX0d2hqEtXikVW6P1psV/go24cq3EBPIh0b
bU9ljMAo82W+Itte7Kz5nU+eNUX+LtpIkpg+ITTwEZiqWSITKtHTgAyhrMJCFw9bJH5zha+URyCR
VzRp2gS2RensCmbvvQyHt8n9/NrTioLwUqhwobDPZkqowFb/ZvYmml2e3xudXJ3GDE+kpHkHto+g
ONZlWDcOzzvrIztRAUCVLzEzqC3nTQRhppKzd8zkH5bGCX7gMeWSfj2O1grV0wczJK0cc36+1Ku0
JLFniP0Q8Y4W0tkHeDHzVzBjiT51OvWQC/08olmGwZGJiYjqmq+eZOl9dN7KP3Kpxin6t9OPGjAt
OvL9sgoTQLCFmf7eu0UVFamIlcJMZ81TNRVDRQlQn7CPHAE9Vsc9C7DN8ph8XA8TaMAY903Rb6wj
2sehPgV1hQp0O5ZRWJhm+Hq4sm/Bv0EFOMVpjkCsNsfwFoXJlgMedpMaZpV9Dw9Br4Oq4TXkdErS
EfDBonW1a7IfuyQpsIVeZvpdrBfsdy1WjwPnQ+uJbopCywoM7dKGLYGRyCu5Ot0UUA4A8m49fPc4
jOy/bzMsYa1zTKQMq4Ol7akBr/3QctS/SMgdPDwaffZgqv/8rclkcxKu3ZwAG2znyY1lgyp2DFa+
4bhPwImQQ63cG1SNpcfX7rm29aNB5Y+BnjLN596K7MpRBsIMDEMrz/YLbN9Ab097Xljs7cKINCi9
ZCjqp7g9I46JlUyd0ADb4uDQR4vLO1HrGaiw328pwRnKKJTxnu8rrrMSVkFQfbWuNDgMrU4kHOGX
GCxehVw0TSEe9VXEs0y1PQZEKG9IuR8Fu9MsKOQKNraSFl7/YWZXDTo52LHEnmKpb8W4V/1NW743
P9p6OtYt3W7ksTwQK5I/XHzT+5s1gNJlcc9sRDa8Qd0NGddZ5zjV/I7QVmxUYtABwfUxwU9Au/s1
Q5a+aqENHsSGrf2X8M8lQlAZoXJcegKiOtEtgoWvJBqQ3na9UCCMHU3/i/ohejTduztPcLQ1T5HX
wJpXqCU8MOMjkbYdlylBsAFmObFLcF1QW/52zEAAj/Uh1qD0iUUrzTsemyymf/RlZTVn/lRZI6YI
hrwuQa8YdcljEYZDPWQ2BX8PLQ3dqcsd69K96YXiCsa563AQGOa9H7f/5bi0JHrNzLTS1eSJHd3m
sIo2Zu+EWYS+o97yHhonty8YGsDI2zNbPBTI+wQdRT4aq9JCERs2/nnSXtpqi35cbo4AV+2Vlipe
iY+8OGt2pzxryuCiUSE31A2xVuzG19vjh27qoUXN6EJvtopNOvvrDv2RyTEwFSHX9GptYT2rvwaz
7Rwmy9utMbTQjhNhWc07OmqpdyqZJtOBYPNJpvH8Qs3CmwFzLj5HOM6REfykpsHSsOjd2OiaqxZt
gXIKIgiAvMX3AaiTcKgCDXCo33uo/N+v2oNrWrdheZaQXPfAVoSRsoBd7i9hzX9Tl7D7H15LsP8l
ohekUVZ60JsrtlrD9yl/GA1BU99qObqNDgjwqxtmbVBMNtqkIOG9b+kn5tTyZRCV2iV8LO7oZVxH
/jwB5C8EOBNsQifDKtzymS70ZR7ealm0PSdGjmSlQXwT2lunnJwnsF2bJxxKaJay/2GE8RO4WAps
5x4CWR7SxxoUqCRT7PEEBO7J86RDY4sz+Ege6CPDSpxX74ZrryHm2AIB/33+RhBNVBIx3os6Om9i
GS+MwLiXzfgKA16bU9o+OH5TU7tETc6sk2/ndtsBLfTklb0PP5uXIb4yTqsbI37RYhS6sceZ4cWW
5C2Z5NkqA8eJajVD5wovOYz31oQYnztw8mbeu9EBYZHn/jWDeu0fI5Z1UPqb1K2e4jxV6IzvBb78
2AtUyoaxhI9Oz2byozu4H3HpMdwlWQ28xFWMVrHxH6+eo/eN+34GJ/1iQob+x3sunV2sJd1LsXqO
Sief9FRScqZkatOmmfQy5rYqs87O9u85sAdbfIApBMyR3TMxGeBdf++iehd0UT5FqnQPdPD+uYsm
5dk5bi/wlcgFcgPqTyBZ/L3NM0BSHmBiO0ljeSLLxkxxCwTW3wUCzvfAkvYM5y2bdU1su2p8liGM
qj+Oylhmt0r1fdUsz9MBDmqrik418RVkGWvT1zKkuUBB56ph7yyiNXNebLhy3ECt/GBd1yECD2ry
coN4FpG+ek7xcr1lSmRNIYwbiC2xoc9YmNHpHtwTCOk52hp3/jyoYMdo8jm639z3W0WqgqXkTKBu
5bsKR9D5DZKokFI1Dzme40056ByYLOpBn1L1ff8wvPc80WFrr+biu+a5tt4MmaH/JidKL46eo8VV
DqZ07DwlUlhGuAhLLmyeXz6zX/KcYHjyUNgeQXe/wLYUOIDw0Rw0FyCazgATfJHoJ5yxxDu95uAa
oXRZOGKX9vT2b1WA3xMJ0INjjsCWgNVAS1PDSsDm+0vNxfzcYuKOHHC+NpMegx6NgIERU/z9Bkvo
Rv2GLN++De4MRSSI8mG5goM/lV6jB9ki/NjS8bYd4o/wvmzXv7K25wgwgpoZqBr52oJc1ThDP/n0
9bDjt4NZBMSarf7VF26PlyLBvEPTvBzOUOFo3x8PtBSYXOY1g5r21v/ue+gOixCuqBPxHfjWpoTq
ZmsHkBSPRk/e+BOcKne2Q07jgrAf2GvKs9F1h+JAeBeU0R0+aiRu7LhyqabgGbTsHlsPiJkJjVFl
DZZt4WrhXd6D5IZfhxWzVg/TtWVYncO4cqMbNH0Mg8xa2ZnqU8QRnal5A0FUHJjVkYJeNDNHmM3E
mkKyalZy56A02BeM/qBRnSO/sGnv1Vr53MQYlOgACaJbqoBko2zbK8OBJVBTW1i3jmAOT8wseZzh
qVRoy+l9prYUmImRqnPyAqSMU8R78F65WCBqYReVRobp1ez1eiuFZ97qEtdQdFD3Y7cJzLMvB/6z
EOICe36U/DwEBRA7SLpwCEi2LE4XHxDcvRVRl60bbMHvkDXPyWaTpZinsGqeRShBVTe3wYmjbsbq
Gm1BMatbSLSvx8pfdkZVHxzfC1p97tq390GXYj7L4JIH1FAtg/DWfzv4kdRW8fKHEyi/yR5+KsbD
VPYyjDbPyE7kuMneh64sfMR2093yjgbSuI1blO80K3Zg1uKWOGi8MG6NuNXCBDOoMkSL3/cYWrnP
Q14NEeQQohQjjVPwwmTq3iebfTorKeKtZAZgFwbDxVmYiA1TniFNMkL6CdAk9r8YEl47sQrk/e6h
Uz5T/CY+cKgkuvfY74FaXFTyzryTA+pITJHpVg8+CDJefmzBOddDsSeWyiegeD85/YEET+sE+nGk
H4svA8uw2Sc3WUirOmPavSJIbWXvdvRitSYru+60TRnhaWzNUnRwQa54cdVb+RRD/qSNsPeqpzkQ
97EpPIFj3jax/FG+TAlejhLnAyUVn/jCxjKJcb14iPEo8HmrRYInFYXVLro/PWglyKHWBmD7okyD
sxjqaAk6l/Z58sSp450cBCeAh5PgwmRc1btwGV3+VXojck6ps0mr34L10JpXn8pwOd5KSDnpCSmy
2970DhBaZg+PrwLc4Ybol7daDYpvWAGlNliJoo/NULP7Z1vfWctaliyfBauahglNGoQYbbNFZmLP
TdHeKaBS0scjStz3v3W3mf29HhmURbcCo6DoKgbFixfzOi/fu16Sk0AFGefY5lufFdacS3RkZeSV
M8DFM5JzMnhkTQbNjoA0h8/TNHjwYmVE4PaiLn4k0bufKUU88eSVIcd7IdUykXTrOanqkP3W2vE/
j0IXGpvFMzb76newvbgxDpCbjyqp0GT+xWmlu5V5xQsVkfa5EDhsKJ3kLljn5UU4pQPKYPc/MNfO
SdsLGhHomi3huszdBt3Z2/NBtv82FgiIT9LuQPCQ3ViG+zfdp4Dy9nZ834k08R+OYL0133ch9avH
/CXPeaqu3fp65Zjjhlf27eg+RSJYOlwWnyIvxh7++UTj0v46hVRWWtCBa/88Y2nnY1jrxw9kg/3g
t4VgEx5XhxVmNUBfWG0PvUqV9riB8x7wuoDOSUQlwVmPcdFNgNk3wlXIVUH/i5AFI2NMM3Krb3cE
6LqjlwiyZgXvH4emtJamcoYCivErgG96jOVSH+maQWb4NHkvS+Gw4Qf3NvSFaUTLt3BeBdvirPkX
ETNhdVzXpgQ9CVFNdHhb9/RmYgaa3kz6no96WBqCmO6k647ILByEnaZ7PDPETU7sN+OnUP8S2J15
ja2NSnih44uJ3S/t07aeFzQA7PP38+pHLKPFHVUpJDOrUkjfP+7/tSQUUkNn7gyVPkBrZgbqjry8
BHnIDKiuv6aHDPNYybJ5WMkb2Sx2TrGanc4FYWhUcIuiH+dZ5RKE/+NNqTqeZT4flmldBk3tRVJH
+J6yVyRhfvjUuqbZoU5/y0Mgyeyr/NZZf3BgxNHT//5OBaeXL79rqPyDMDpz/uqsxAT+yIXWG/b8
TqgXiUVphtkLa+9bkztE2Z2ETtLsicEN9o3Au1uJWoHWIrNNIzLQXCiOtHOoVxpSU2OOy0JXDD5d
V8stpMGRIMXEpt/zQzms/vLWg9QBealDaRjvJBDRNjfmrOMWrtxKonfAxoAdIIwfr9GhLH0T05yq
nR0+6RzDrGxl4AUwVUZrSwXOAzNCxAnrvKoj5xyef82F4gy5B9wFwQii31QRPHHndW9oyQrikqG9
0ROWsvKIXKfAb8By0P6CqXKvPD0mEwllLL/taMxy6X8UVwA+ip4YIbMHc+P/aVToxTpDtk8uMxWs
mJSKdMrLFrKZm3ItuDecrt40LK+pC0QqRmlgYUL+Fz8JhHiZ+5Pu2V2fOPy7BqM/QgnULO7bu73I
jbnU55cztHX3ZBE59n/VlQxwB+iBMqhoBvOb8Pim+xWiHQubYSfUS2axFpPY9KvhA12gG7ohaElj
YNiJ7cYOBSrthkn/YvJMDp8sUqMuKdz1+q0zFHMIfOc1zDFNBj1BmvoITfRbx6ff0lTKLhA+YCpX
+yuqXZMPEg7pPNNxMIwJEBzL2PW7YfLe8O1xFBSCk5qAc6AN/DtBoBagM0HJKYgvhVjQg/D7mONC
ffRALJuMglBJpq4mU+Jo1SvBX+bNpNlKKverknfHik824CIrtlXlACfawrlp3fSl8TfEiLA1ELm/
p9hE7rqXa4nMkZrqbU2ZsNMqbIZhDjb/NAtOPFDUdasQRay9Aujd7soc+0BGJYC4H/eWFTlyVRSL
wbBCB1yFgz8gkuSty2Y7jsSL4dKEPbJIc7T5+SSNr+SHigYis5UJLSafA1SW1QJQM+p60dEBtJRa
yq9NPAHKISkDZFTwc8EEDLkZVH+CF+7XdLFuJb+CW3Z1sICY3QfDNj+/w97+W+TV4+KKQuf2IbvB
E4WCHFYxAWAyOPpekGRGot41f5uq4YaeEWYyqLMWfXCQWl6dwFs3SmWLr3i+rDOti/1tssDITyfE
Hb6f0G3IzN5uqJQSmKCZNQlEu2+SONZNaU8Ev9ytL9g12idIbRWqNz1igCiNtd6RL9jBa2FZI3uU
PYn5nSNVw4YBTAqtDSGqX3MA6jDJ17jofJY4xvlO+YuW62IOxoKAEdqOutaVRkjLLe887urBN3OK
76syjRxDQRCtMAZFxrqwDTLpDRW17iUKOBk14BBh1+D8lYTQhIOZiQNzkcrWWvPcKgVrh4JOSe46
kKJjefuFFkvMKe7jWEq0i2ZvP6PXG5OVoe20OVxqlEbxw5qbY+W/aZdKtcAsi25rCOvWEQj++61l
7m4mMVSwD+mG+P7dmfMNUSTZZL/mIZqB0c1hQ5xjVUGlyESAtBEU3kLGzsjMcUYxIjFzjQWXuASl
6cwriQwObkfjByoMz9sN2J8frEhuQId8lD6E8910DrMrSMnizf+IAoTez5H6SQam6N/HynnrsvFJ
j9JtMNUQzMjoLmZMge4KXSfqtWGEJiZhrwSGTzpAKJTbIH/IAUlzpRwliKlihmhokawLjCv5grNN
EY/03Ae+UMRKgMtj5NWT3ZpyxayswRnIWTY8sqcMkmERUq4VukiGZQ7dwcbOhsdU9GJ2uJJOwIRc
VGWZ5VixC2LJdBCtgc6fk3W97ufNPy8B0yFQsFsO5qMeskR8penSG5iRvYct/mGi02n6dLFEYEby
X1cabM9kxDLZ7zKpdRl2vhU5OYztuo+H17fJh/TdC+I+6sw68a/HC6iNBRLEgmj9daHseizm8Mi6
ZtCW+Qy9uV6GWVlsQKntabXQqr42ob+4SEkVopTzgTBsjPGUGaWtQUjr8ryL8le4nPJRKjW8RMv0
hfjOt5Jssi0k268ESY/u25mEQyQDc32Tkh9RjtM+oOuYwDy0Cd8EF9MInrmXDqMxC134gStX+CQk
jcp230JVpC8z30cKtvKPNe/3DX+VbWGHnzMMpXDwEnJKwgbAp7SivNNM2E5CUr27ky+54DipqKJa
Md3DEAhY6UfCXiVcuZDDgWLuXkuPl9B+BtDKWQhUIE8oh7yPA0K1qn/2nJpd9lkbA2v72B/o9Wgi
Hs+kWdKAh0Yk9pdV2aMu/cZyUUtru6oQAn/dOfng4kH/QowdQvOclIPPhBfTulgrLu9TNS10Qf+Y
UDgvudx7pB0XqQbnsSSNJGNRM4nxE2j4dVxmyBn90iZZund3vA+GPw6/fB5WkmmSmlmckMhnGiFX
Fj4LWAK7wpSysFjnQvl6w+3ju36amUNJj5RIPfrTapLGmGJPdE64tNLG3NO+eweV/JkFcl/Khp6U
ySNAUtxhMZl4H14s+il39FoX33Asx78IkUwHumhJ6VUnjkECcHdqqr8mQ1tZv+jiBI+JLrsiKA7W
029naIucJlxOzyhVnH0ZOfnT2pu/JVIIdFMhF9X+4H6D5bEXfbnyP4chTEM6e4iUHEGe3yjsUcM7
jRlTXgg5AXdko584FPJHecjSZmRuuuKDsir3uUU+6a7z7/33FesbB0+j+iuVHQSqh2jlMu3rSzw6
U5ipTFtsnrISl3WtqkYrHT6ARrQYFeQ3aMbnJdN5hzVl72Z10H6WyOWSqZ1mBRqR+SUcMStq5v/w
DCKushddvpJpfJExzCMLve7R8876XEVlCW3hyQO7jyBJLvbeeHV3mhwEBPjB1jPai5Srz4hMogHL
w+vjyIQ73Q+XIrpWm9MwvVAcS4e93oRX3jrjByDnu6+t0gzUe1rIamlDPYheu/lwfxGuequWwDaF
4jsd5uR+xOVBY7bFfVFk/oryz1iomTdX6B2gSW1SGDMkG/xbsHtFx2VuXn2e7pYuXE3UWneTqk47
hOxZ81QfAY99QuvGCpCVjw59mGTI+BDO6GltMKOkaZogBgsO8tlTBAHP1oW/yTo4++Slbj/f4eCr
3V0eHCHVAGt5MGtUsO9BnNEqBfRIVqaJrciGIlfPx2hzpQE5W7l36vo4U3rnqYAnUBJECCVwmvkL
rigEXwWB+ngtMr0kHO1M0Xmv/TClPvm6qL0ykburnv0+Psq0LQXvw1Ppyf86WfZGeB24bn9kcaep
nmBtLSO4Y93uKoQLwgmISQYLd149RNNZniezBsBOSsbJIwfHKVus/IvULd6z5Rtbi6ZofT0nvmjH
4AUwk3DmaQYuDaiDjGWnW9XWOPeuWayUDPjigh5bMcnsS9A52DstBaL4yLjcqHsDexpUxBemJUZl
kDm0jrQMARaWgVDlwE1FQ8Aqsh9AWxlBuHgcrDA1YCjKAT9gV/JFgQZOxj2Wc2gL8qR0SfRNoPsT
iJBv2sCYarmlx//nQru4kGasxtrPs7DnEI0hZlk4gwS4gIc6NijYQavWkPgKbrrLg+0kC2Dgs/2d
h8dROKerJA1zBZ5ojatRouXihEDcS4GgRgzauClDhaDo5s3JcCOv4gitLPQ9+YM+31y02tkIWXpb
QgT7FJIhREdGrE9ejZ2mFP8YipxqXwkeHbeDsvQvz/J2M2+kCgsoQCWCRkRpPw00OUrmhdXrg1Dw
dShm/j2sL/hhhm5DnSrlm+2MfawvzriFZx/hJ5levE8Ksoj09jbl67+TSjdb5e0C1iXG0eiZUsZT
UH6TPkQltkZI7EAhYei173q/9gE5fBwW9OvzNbTdiMeKnnilj7qQW+72LBOFhqMGT8xjRhFtdu0N
3guDL8UR9OhlFXadSwzcgb8Jrdi06f4E0C8DTCKgiEN47uuRFGVEB9vfSyvK/1WyZbLR4q/1n7tj
NyPIJlMCOwVDVSITfTFn6K7/c+asoZ5VSIYD3u6BdQBzcNBnU0tyYfkJoaxN1Og3RQrvPKaMN+TU
jplV72lpTDU130h9PgxsuzmdOFsmii/qZrI/frWVTZiMLI0GmSRg+dcJI2r69kXN5iYLekYzurrb
pd16d5e8bORMoZxmJn1OHG6ojWrBIgdeChS/EF11vwF/+YsoJ3p29fLLCp5evfkIOM1NN5Aae6gd
1kQ987BfoR9LEXD1HiODjn2Fs7oY0nR+jXgDwyk0S5OO1S3QdTAOSWO0Rm9f49nuiNJKtGsz+tIe
PDCRo9Un2uJVl0hBH+e6tLtunr6ovnmaJ1pYxIK+XBuOytTFNwbfaPLPhyn6HYcOs1SVpgqsB2cb
8z9J4KUz6hGtvDeeZPOg4BvcwrLTXwxH+3IA5THajXdpu6SEHWD2Sde9bXlPusKhp6CFF5TcNpSU
A8Uq8yf4HmXoilNTUdi4jCJDLvTIeSo5BOhFCJyAO8shx32Qtd0dEoiycNsSuOpGjKXWX26TQF7H
61asR4KdGAG9Ti2QSfZcyZ63f1ludoBMsTzH7htPBjkF53UTehJF3qjg6S671hUegkOSfm7Badze
igYF+RpcGGsonFHsF2rIDjZnF2bpMxDMCnigRGpFoQJuKkLoQjAr7oA13JTz8kvYC/S1ajvaPVuJ
i65eFuKXXN4Uwfq+HXEaGUczR5xFijeO04TOdFuL5ciq50Ud25HjdNH+PdE7wWGfyo0nSGUncYr3
b0kxg7pkZlGiBZl8DA7UF22T006/ZIFjbv0vK9xuzIAOyAilJKTpmroaj8cDMbNzBs5labrLneq/
OpZyI/uJVQ7GZ2eXnk0oZd2gosesJzz32eo8zak2StxaHAiGDwDuVEfk464xbjWInz4XWKFoG9AW
I+HU0rxzdIw1NQd1Qn65goy5Nj43IxT1NaZREuh+869Ya1Xl8LgGxG6B1YKPjNjjGAZcEr1LwkMu
rIUChzs+PDr5ElsmKi1xvxLsWpfu1ZJe/xDB8WnS6tRhzN6vwBU7dpn4UN5AOrK+59zQeYyXQ3yd
xDIltnw40ZiLOdYr3oi/uPeWBZizSizaF2GTw7m22Ku2mDukNbJNfR0K3oLNrjoUSNIiXQzm2mi2
HpvFMqZJ6TFIuq0IRNVM0Qqx71a2VLsiLUrFwojaAHygd4UF3vj7puSC0p9WQ14rJHSuehh5LjsZ
z6JgFv5dNXElLPlmuEGcZedAQs2EkTUtVD+oGAZTtRhm+MKK3pBzk1XU8kwymFxmPieDIYbsn+em
MbKvrWsE9gP35JkuEJjAixsr2c/QU6WL8+TD/WKrhwxq7nYadXRuDoUGE6W1ktSC8ensEmQVZ5s5
7Vnt2gFtizSXZ5yQGpqR8mD9c8fTnNGxRRkxpCxRuwaCqfVm8Z7OsBnMJItcmGAwzvbXMpDp84m0
XCGvEphN+8A2wkrJ7pXnrEqzdnUG+5izTR9qwr2EYpl+B4gumBwaYf2/VmMM0pyfLXANCmcv3Ao8
nIpwNlIFhyHUIPOQIEqixR0/6Ea8Ey8osYhVoKLp7DRe2THYXadELBsKLAOw73mFAN5W6YnV98eN
MEAocKU+PXvhLjtvmWorRvdRw/dV08j0Q1WeA+a5ozNVR48K83SvAmF99/+F98I/1LW3wT8IhInZ
5UokHvgct6YfTZIU+m0mDmXnrkDE1J8E8G0Ke8zYKoUhJ1gvNeiAJl2kydwRaXgmjL8avWhuboja
vPH/fTIFjOHuzUaiNrlYFyOYOSNSRTn3YDSWGTkRkB34u9QXn1nTxKxC20iNwLDarH5cWJnb6i8I
wWE6DetDl+J0APbYlE4Rm0HK30w/SceAgu/0QT/T2uR2Z1h2Vnb6lIUX2EVjUx1VxbnnilnCMTYU
bVIpqaEh+KVUfkOd15g9g4Uyy75TGMSY3o0MUdQMosiT2bSsxQYxU+zpWM+zSEx/3lhokfo1n51K
15vxrAAzAQLHr5jpqRglu39pixYt63n6JRkHDB650XRalut94U2/Ob9HOfunLDI8QCiKBUD0BpNn
FDwAKE4CaM4Oe/KwK8/NP7OXgMYbMAOGmM0H70CRxCwwcbk9WQ1gyur4Jvn7UeQPqjSrAcJ0il4s
XKvmpQA2g6UgLa9geG/2uk9YHSaCRmbONI1kom6786n8BhK1WfbusawTsLaVYXxBKkOMUehqj7Dz
Frs9/701UBmQ0wjR5XbUXsnswDx/eIyooiBe67YEnVIdyzcF2nOL2KeKu1gPe0/gsaHvza3RjnZW
cteb4cckvZZwWXsTH5n1Atmwtx1gaqggXP3LgFKTubXLxHkrsCMfmVM24dX9an0RtIVJQcg6Ynv8
sIFld4RwwiRH5PJ9DFy85wGVmuLwVrYlzt0IjbFI7JxdIPEcFYKKxYxn3/a/p5AiOuOqJBqMfOBq
BkBMzyd36qJKRybeU7IvPRakBhXnFz48SPIZt4mItHMMG/6F7ebaPzQByRgWxWdF+Wi4zMlKYyd3
kw2pyfKVNDu47M/7OUDhaI1YP4Ql7HFT0DAsJQe43lVyvbtjw1dCfTcv8TfAhWL0KGonb5Jko1D3
VnhttlKDL8xz5vC8g+hRnAmn+Yw+z8UkgoK8iZ2LNMzTrkEE/Q3sEg3+qq2sHE63PoXgYrWPp9Sa
vyPP9vjM3U0AX/+4tn+A7hJsOji9zDHzgniX9L40dIP8TNxAD5Oiocwa1shg6GYKWB7waQjhhNGF
0Ye0M3xHOlZ/lL3ZGqsRl17aWfUE6mHBv6pDx1QZu6rqbciZ5BWw/GyUGRuA9xZliLFK35p8CZMm
+3UQZK+5Bu2C7/xixbFTsjXvuIk2DMitT9onS9fMfkOu1wLaOK4uoAjNjxWecUmXSXowYdfZqVkm
WlnczdP1qwF0d3Diz05zSvDbjxjh6Qcc2WuX4DXKITwCi9Wthx4BLRXpoA/5y3OvRur56K7TJs40
T1S0BHvSULQg74dkXedtIUU1uzHB0XVXgPG7+XfntaUw799jhZLWxU1SJkrnvcAZfG4lNxdFvMLh
lwYhZnx5bg6/OaC2CU9WYP/S3VoWUL6uYC82gGOQNFR9zyAKf0+LQQC6vunx3H9aCYkQBLZL3u7x
NpA96Bm075K+fl5bTdLXIMgfB3bKlc+MkHjfa0IWbDUu2xnfPmiOlbh+6kucHD+uOYFZic2GAXmk
ML+QX84yoKhW2W7I1dXl3wMty2LpVVYQAk4TmcgBvkzKdWBcvY/ksQXh0U6WsmNp0PIXhDoeSpHM
oXsKliD8V4F0mISWHzymAjpfxHhX0qP8jfZiWnGt7a+3wBWX+GLiLhnu/5jeWCddGHY4IJX3CvAy
5NIL5JGNVjVF4APcdlZ+lbqPEvvRpNa0CDBgkPVvS59oId2mx6IfTQrXbvhCx1KLKvmkVqkPO+pP
D8Q+LAYcwXSfpnfWld5V3tn8SkEp6kKy6fzsqtd6PEAOeuKs9Ekh7a7zkVYYP7z2QQ4TrfmDBSD8
PfjBpgGZp8L6bYIpt3MvisrLBw8OXyTcakU1HQvc+yUdrmy8mNU3RBYBO9JmOcV5ukMsH1KPnrJ3
0ymc2wU8M7YIy/f5HMdVleM9/ucww/DWU/9bg6cWidAEuqo0jabjDmDPnyti/cNoHZU7TW7hgV3u
MKYLxDT2UaSC373HbqY99AT7YcSHviaxXCC6lSQZOEcbM9phwCi6s/3pPMz7pCeBkTvZMPHfe/4l
dbsAKUY9fu6NK31xEcKu2g979lklqCE1cy66aeOFYcItt6da03teAyIvOOp4eRnx33kr04vg7bPh
XsswzAsA876WLIdi/E7HQUKu+w7VHxd+eLRrIRNwr0eBuk6YXhPCLZ8XhcjPSvdABjEgwKupEr+5
yLnUZgUXhwQAiTC7jElLKkMystr5jOK24jrdjEOqtXflSDvGCCs2ut2mAEFul6xfSfccLvVvfXha
MMgvCNxhHggadpbyZM/7zDuMbmXHUPJpD90EYU2mXBNEPDvKFDVEsrtrLnjOgFvi7PIfbs1SRvOV
8bfpu8AJsfUYglR/Z3+laYZK+JKthZYAIP/OzhG5yW9iMoNbksPWT76iMGXSN2tidciUAWVU62JK
vSSPdKTNxuQX+TUzVJKx0H9qbOrJ2Mdv85B3XQc0AYBYv7RvobHnn789Bk+YVHdhmeDA47P7gkwV
7YWm2KaRM79LZADxW8u2EOv6+nTs1pbJeVYZrG/vwnvQo7FdMnvinEzfwHlBkCQscsG8RNEY+ZGF
nB+lGpM64TYgyinrASCMUMJrJxjhnmM8YgXn19udGZYzOkLCxvx1Kijy5a196WdJD5FyLZ4L4E0K
xC9IyDw1vOApyQPiGJrGuc/svb1mTneuLjCPs0Bv2oRDN7kegQMsgfDoi2GpNu/PNkgeHeN4bTkw
04zRtqgiasb+kWoS+bJYYirrNSYtFynXnv8VtniBLZyuRToIsiXB3AXSae/uocCHnTAQGTYQ/TkW
gctHOESDbvvj4yLioHz1x+hGB0rUKbYRxF+rfiEl6icsWf6Pf3NVcw0VCvWpmMGqiC5wFAiZ+ksr
dgXpGyHpuX2LDm+BaYNK6+Mh802u0FvepBjzN+5dkxfP/G6rX8MVPy63peFeZ7KrIJLb4ZWK8zWT
zqnHNl426k1LovPH5mzhxAJgVqI0PCwGPVnnP26EgL3PbTV0tOZDCx9Kq29HaucWPupxpDedQBdv
FFf7nCo20hbj8B6sRSjmNJatJ1LXWi/74M8WmCyqlpgLt89ognBwZoRPwLTZpCy5KCY74jC8X30X
eZqMczm0HrRUSP2PRnRW2QQ4wbjkYC5QO6KilJ9w5eYvYRvl3qfIm73LYOfXyx4+mgezZ8nutVb5
j5Ma0GN+P//nGflyxvB8t31YnKjAOOnIyMMtU6f626TpLHpqI6FxoaoM/EidbNSThpqFifVo1Im6
lkpa5FSURRJaZmSNhBH8N0U/T29xr0amZX46Pt2d4Tsqn6OITAJo/oIePQHZ9m+LSJaHQvbQlzUK
wS3nluLse6FWdz45gD+szON6zWttTMswCPvui/aNa221aD92R0cUwUeExM8SDxpzd7oWQb7QOzcS
Gt/F9MVDch7o+1Td0S1BL5hJ1Kts2FuSSWdwS9bPp4ktB7VC207ohsA7cvjeOTgMODvfKA0qy+MO
NwDakeUtr1rm3pNrHOfRWxDt/8I9/ShxUZXNGFvwz0XhjzjUWnj2dALQka+4DV6i6Nm55U1IihaZ
zyvNoYBZPd0iAr+uA/iGSM0OupgXQdUZv8JI4v7BgUJZrbuKmdOJLIqkuxuIH+rV3J8tDXJ1DjdN
VsXFL+kGmBYMZHCsgxgmIdvuGpEDTmun7F6bRVuoeA23mF6y7Q9dqiowrI05Hj8cEA6E+U/57Rnq
NTMSq39fkhgvGCo5Me7Wrr3vVV4sdu3k4eDOeLEKDSOYxmiJlZN7HeXFuhJ4YbfuwtlI5ulaDNyi
JrbZBw7KNGg5PeCzw3TAE0be5ZPVZh/J9Xslc3nN0JTZ8Iw1kyU4aSpsURyvNBdPgXDj81rCJMDm
LBMWgL7RsjNPRX0vxFvyIj0uuPcR1sP7/6bNXVHU14VmkHcIXhaC05BR62oPAorA6AlTq/o/cP4x
j+4gfwbhOniJDzqP3wO49W45X8Q3OSuIXdZ79L1M8H0zEJQRBU8h7prmrxmF5NH7CFgVAeDnMRIV
unULQyE31jVyxzJjDv9Unh4te2iVFDCHSODFpjMV7Kn6HYABVoDLiDJdns4UqPDfPieiwl5gmJcv
AtKRaUCivfMKZtpFcbZSSmPgn6ud+zsZtRDhID55qj+8uAUG8z2K15jTJxgR7OnWC8JrHfOoPRM9
UZ+0khNn7NMZdJ9NXvs26Zm3J2yKHrEY20zPURyNyrNUM4OJa/3hUGq9EQO37ALBYI43EPcXVxPm
4vZlj8l7EvZiOBmNkgtEvGVOwNWsb/9gqC6SbwRFLsEo9FDEP+BAHpdJe4+GDgkzVo3BxsggGQcu
cvPUl0cNQsR9YoTKl5g9ds9doslOZwrJ9vfF9VPsQGQxY9BUCmbDAkINtE+pm4xVq1FKkwYcDYEM
uVqFzP+46aRkmDW7v11Tr0Vb6toJowSpSr/q4XO44Rxyvi12MG9MhyV3Dvpik4P01AMIlgNayTCP
1G41qtDx9Z1xUANzsBWTsbgiV+taQbDCoM85kwnNg+X1e6eo0TYI+tGHJJRobAjE92ibFM9CSRYq
jow+1jYSA2wNQRUttc28VK0o+uSKkiGF7KA7sVqwAp9Ib2/G+x8e+kLE3cdkwIaCluRzHNiNGha0
lsxXb+qgOgi5/U21N1OKQfzl2mVJWUwjLn9gdB+4qVj35uTj11yXXHIXXe/NLahKGp4s/FRYlmkV
MbL7t7Ds0id8jEpS/kmz4nb2pP4EDkZJ6rxWpc8NwdWO2x0cCCzTh/8VZnamTryVYBogW06DlyiX
i+hFLoZNLOnNlGrnT6mmizwoMPIRCcr6tWm6kmjtzXob4Vce5C6LYKHAZcHBM3dy++0bFNxxORzI
JXPe89FJIr2Y6Yn1Wv4hIvtKdswkshx7c64wZyQtrRGHcCHM/FQFNrdcmw7XLv7/aJE/sBRKvEvU
2HUr/TXVRNlrlPbtx7HXEJaJHrYGovtTpLIjtkZFAa6E91FKiwu1ChxImosymfgWBVPP+O/mOznT
2ys63wvjHjrGEClgxJww+P19cD8up04m1rZhWq6CGrySF5K1D94HU774M+M9OEGYCuEn2nwyAMER
c6713M9kVoltrIqn4ZBK+J2E21nVKU+Dt/hikcrTIqO9ahNJjhmbnBQ1+oCJ/8XjevgafB3ci4jb
G8XFhYx3qRK92IbacHMpzGzh9OwxVYiIs3rIoQNlBLFvfnSTTXQ0a/zwpYNDUbKxW2zMyPxDSQGV
P1IOrxCWl0fZ5Xpu7DzllAgZ1EIZBbJC909KP1FG9zQwuGEzvPGZQEAlitPh5EkTeEitRKzBICxv
oWisLxVwco4xCuAtglzPrsshtm4I+lcELuLidfqQMAdltHknQVGGJ2Lo5Ne9iFpMZ6LkHteEy6+s
SxEiunnGlOgrQ4kLLzJ9/U06p72vCaJBkFtJQlphZEYmUqOvTvvybVaolpD+b10I+YtXb63Idjy6
JnBO4oMO+DyyfjGI0ukSYzUA1d7vkt8+/NrapPVX+8gANsT5MHhPmxZdPKNLpxV1x73CDI52JEyT
iznUuhofuq8+mxGipAyB3uriHoBcGGDUkod9dYiyKOU7TLqExgB2gQ4aVXM3sJ4DFqRI16r47JsL
W7oBlXtcXnWu6YxnrHAjA7mQB4GIA7r9f0K3mtNIMdForUzC8DFZObvO93pCbm52bT2MRGAya5N+
4ENJ+c1W4NMHXUdkXQrnVNV8KL3kfHWdBdwTKFyJq7onVEb9hbblW0t/T/gqulY4yFnFrWp3uTpu
F1WejB9z6dCkV0xNcMeUfveaB+qym1hPOUp9WSyBIlb0uONykiwZUZNIaYwxorSx/XuGjzTqvD2S
ch1XWQzyVKj8vlbPeXLDy0ktvaSVBu1FF0Vh+t0PUO15V98YF+SmnTE7y8ZHoQ/ziK7t9el3Cnin
cvuoxthwVxJojwtZNQn8WaBA+VrHIYMX/BBEO86mwe+KlQCGbmRSFFxBI6wFJYbzZiIXNLY3OfZh
1cX4e7K+iN7czXIua8GOzOMXR0e8pvIZU2trjs/WR2i2RI2kC/6ULdgCEf2oLBnUZZoFVKs7QO7B
q35POkVm1urO/WgsuP+IPD5jCpX4Ru/8trUQKZwwSwLlX3qTHczpoDAtNa5nKX8QFUaV96OK7Zb3
y+y+6HILzNUfjyi8Tm8OSGFztl4hmTUkCD6lngrBl7D7mJ5+J1gregLpr3PxXV4z+ppgugd0nIbr
Hmsy/QnFbuWN4GIi4bPsAPpdyBsoMAroyZsJGJMMO6+5sRQzO/nYdtcjsVCqrGdWn/0fNtWHfdwR
AuaWlQMv6eq7nYulEOJdn0n0omQ84m+s0ipqfk8G0wzMfTsN7tG/HRLryfsm4caywzfnM5uWXMaK
X5gMpWNq42aDcemxiz9FThe5QwSzwA4Mhm/2cvg9U3ovV0lTqyCIzyDtqU+EMAwFLJMcBcWumcCP
vzRc1OiUao1ZyaeI9VUI77ihAtdZS1mkeMCi2lSOngqeQG38Pcipgv+xrOd0bIMzWuC9T1uIpKiW
Auz2myorTEGKjeLg0/KyxpeLaqc0uBhmOe2jZ/AKMCvCmmSWaGxJg5eLrD4OMa5s8/HiRD4/soKl
wYhAGEv7JrDFPNb6IRC9ncpJS5U9eFmXeNYahQ5yIKXAqd5/iy3Cc4sjX0WoTStjDdcnRKtO9Vxk
8QRBSEvLZVC/BmvwHy+kQfA6VWu8QexvKkIL94M6LwhZoTOoxzxh2fWlnIDXsqx1WqkNAJcg7/wf
m6lU/xotSAYT614QYLvIQtBarNkPsa2uJdK/CA+EV6Z65lBcTAs2pa6E1QV30iNuKsG7RAF68P3e
kSwa9q1bXOh5ksP4Qj6gTerO7p86Mnw/9lfNMLgqY55RNoeiPsYzRprDJtYvdxg+UJTNywA75RTI
qhNIbpBoV84vYGoJAp51mzvtc+MJv56AR4QouARXrmsDvK3qM7lMU9Usb6ygIVofIE5p0454bULM
ffzhdpxaJtXGpW/4o1QhpdGMLSh3CM7rxJzDowYY0j+dbC1cPQNFKw+V5cj3ztnX9ANXhTk8L+3R
iVsJwZcGDn1UrJdk0IrGwcDnhnOkXaBRPTbpWKsiJutbdf4FVQ3/Kl61qNtErupjuurO7oN1I8UU
SfwSO6ErexBx/POXOnQTpeTuGwR2gAY8/XJpF15nKROl6HdkHIHKvWwTZ+8nWd4zNnULUJzIAmBW
l1k9WXGj3OOCMbY6FvzHILuvuiwuVRxaT7bpPN83qQH19QbZGroROr8IIf61RQ5BSxx+MDAN0gwk
QDf3dGmrpgbJQcfBNdlFkGzc9Lg6EJ3BXkxcZQyOkKc2k3pXqCWOLDQ+MAisd8Z6FWC0Is8ZpU91
5rME4pob+aP+c+/2eizQvKFUqeSLf/9pft63ynjmUFIaydfaM+8BTW0Jl8Imw8b5L5EePBHrw0CU
EYP7Ds4EbLkm15P/H9gY1DxI6T3c7HS5D7Y0W+KindV8SG9DOurooD60ogx13NFtTKitfzJTzh9t
87XfVCyYGZsq9n1Y3l5NXEFxG3LBVLMCh5HTSGQv4S8FJGp+G1DYm3UG6vxZSaUFPYDOx7kZzkjJ
ytV6+L5orrDDarwY4xYDMTuUwhaO2hQvnAAMbSVgZM+JzuhgzCLaFzd5DKjMPtxYr6FFrkV9wg+t
SmpA6Rc2I2Ons6jicN2k311AX3/qhjPNAPekYiVXvu9wPAqzUAFNQqhQ2VPqadnRYdVgp8Y1C7tI
c9aemd8+vR11xuO4DdXlqEW8I6dB3l0v54ufnByR8OtyT03uD+/UxHN5E0j2/ty9yezA/ss8W3yp
V1R9JqObKGbpDEyl5qvdwGYyow3pi+cTqk80qygJt18J7k3K6gdyCl/k/vmnMEEUgD/spvecu/W0
QgJbvaZgotaj6Q6Vi7oPQliyX5HIgLwnqyPbNNNdfVgEbJNjHuY5sjBK5AYdYmvSWYyPn2lx/KuR
zietkMoCKfcplNi2itMFw3XfLvkkc2zfZdh00UER1rTNMybvZbifXrUVqzzEP5D6aVXWLvvT37az
Cv9hgwUsw0DV4inPUj33hbfOvUdkkDeFAYOp0CBqicId0RoGzdxdLrsmIWAtX5h4Gtqb+ofuvpJc
mqOuzGPUaZsFDQv0bN7aC8R1SNOYiQ7B8ptUKh665TvY6ZLEDHM1nI/ZeghmJuvPPO2vheLIouQf
Y+3yUbkFKwSNK0bkDUZ01096MNzS7UBiN8wENWCQ+yQ+bwL9lEqC7+FelZL/gd2PuTJeJ5NhVB1K
LGJav5/TDhlYi4w/2UEj/9xLdQ/J7PCCDlSb4v9paNcfBaKDtFcPT0LOVXa3DiPcD68Nr2VJJOXM
lJyXxXwTsuZOCWwAMzpDvEEH1q7ySHPCnxt4ibJdYeDAbb6GXE1PKv8mqagUQzZ/nCCdqAY16J7W
Z4tI1TiOgSawWHcnDpglh85y0drDBPeJYAOEOjYHsnefx7R7LnItVes59egyV3KeuSEBLanwwu9U
zv9qHZAt4UNu8Qg+PVQBjQ3z7ClUK6R0lwIEJMGX97OaYACLeSVE//W67J8DjYeQq66IDLPiSu0K
a3bAjjIIE6i+zlHTUeHDr0uQ+FfLX3bepAaV5E/5L4OMHvqUYbpx1d5lRBHDzmQYdZ2QgQ2COOtP
Yh1zvdnW2C8ts6JChSae+uiglqAKpCH2TQxGEWLaY7sDmdAq9L+TfBdXgv4fIqpm32m0XM7FvWlR
1kjk9KBG2p9Hm9dcM0vcWB9RO9SRhdifWAgpHvtGWR7A+vfONIcVBywNEXVm6j/h1LK/HSEBeyYB
YQJkSIXaO9dH+fLgXkB9iHgrPj0HZaCu29tIvZ4oy9nBJFkrFNstANr58rdFO/Bx4T7TrNoIVtf1
HEAR7TrMaM767pF4nbOxHScfgn5rNRSHEN3AHxL5qSobxeo69IuFDuBlycam3etBGeUJcICyhOMo
Kxiey3GtQANZqZRfZR7zPjXx6DPcRxdQ21p7zWnJ5IJHeP5oSeTXbvhskzc6PKBpTCgLcER5seXz
Z7KB+8pICVXXAkD6pbBAQhSOxOJKKbTT9KoSQfvqmt7EzyWlo4PGKdpTAqGvAAm9mHDVeFRXPbJa
tgdMS/cKur0+CGCuHhrssJywmotj1teIdnsiDPlEeW+fHrYICQyYsCAOcW6X5XD4tXtBEeTcA581
Wdlar+2TpOQ7lo/qFHsOadztBLg1bGVxef3hsoop9dhVTqv2gVU6v3tdOSTU8erUr8EHJXMu/7J6
sWEWlNNq1uFF4XnaCz51mdNPadnGJJDvxkvwT4xEmDiqL/cXJExKE8jcAgawo/YqCy8f9ID5I1nV
0wpsdSf0VkcE9hbbgg+oa4L9p8/+GJmAdw6yziVTJa0e4oUL1anWtzx9epNj2ndozA2RRZRRePi/
iXvcriPo2QmZNlBvIIud/fEtqARykVcBNFzIB3xC/LvNyoQMWXdyErTY3Cx3x/qy4NKfWQV8Sv0o
Ne1UKy+TvteX9pmA0MsQAq/U0Vmkeft7LHTBUe7zXQaw0CrzPRet4m23g3OQMFuj5EJUhs2WZ1ET
caA8ZKdRujyBIx4I7MhLwfXj3zEqEuc9TLT/JFrlAxF5sVhVPVBdI5ebri2BTh/qhlDW+MOc7JLY
sJ7fmRL7/wQikV+gniiRKjINBPedOq/YDAEuiM8yEpfJeKo6oGLdB68CzmorrVhkkWFEp4a/hQVR
6MGGKhXtV80BeOt/eOiLXKKlS1XWh22Od2jMB2SunuWkbm+xRg71wRWujilM1UgJbRok7IhT1oiV
pw7WxQvCqFFQZmKj3e0IubrnerZCmFmJZQSsrfHHfjKZ+/FQN6W8nlvVN7SWGRoULNg9zvnMBKyG
C/37e2CoQTNwIMnmOjgweQuHDiTKpAaz87TuQhyZJzbrG4GtEcfJFpTlnimSazwn4xwu+2R+7SgC
b/iXzTCvf7JCa+c9xD9puT9s3IGrjoYf80kvAMHAHAFA2CJbviYmSppoIxOEQl4tNDcnbAsKeWhB
5yz04vf0SITssAD03DQzCbPNPfCFSWQtxoqwPhHvLh67yMrJHoR12qa9oP6+4aMYmx+x4omp2lYt
yLcJZaHc4AcZwD5eF71uUs0LkxkytN+U2eKswWy8U1P13rLbRjQpq37rvpILF4ESd8aKXC+lowkZ
0qFKZvYIHZ11tvFH68S6cq/I6CbCV36lx85qpaojp98UDg2d2xilgR3hgVU0k//5E+rrg1kEJttA
qtXlFYjn2Ek5HPBeuEu6UxQgnph5VO0QwMG2pMQ2f8klFOA6bqts313ISXpQt/g1qE5V/htkGYKM
WlprZ5zFhOrVD1X+jsHgejt504lO7eht0dmgCYCXS2YRYiyTNzp0x3CXNDhFlLs4YaLKj+8aXl0q
2dv/yW3Gu1hg6mmYsH17F7F23FWQcHtOrJ6eRm/cW1wEnjF3lZw3SB7boI8XD9U7zjdA3+r0fpmK
Ax9YlnUX/hlod5Rx/Be8MtyLHOnIg2H2PAJeAOLIE6XMaCqt6Pfc8YO43a4cZKPFIW616JgnF4uQ
ehHhw0hpR9n5o0eXxsybjb2BbsNG9Z/25Hxgs7kowofsqQ3JOr3O/e+aQhjDFjHvadBb+cvwfpfB
4Nrwejhze2X2X2cuNJLJ+Hr/jzrHtjAtOmKksBAjWuNvdJZe48F62vCLZgX8zB55n7Q/Sa4o3lCC
hxgQV4V6pAjYFbHgnOSTU/Yej4n0mkEwmQGMngWMa2KIcGf/1T4Zf2op8KmTk6zmey69K/4iweHW
PzbTehPydNLR64/wwHZROaI3He5fY9MrlE4k5o4I+A54t5/kirFCUbc5apVUwTWckGyBYET0cx3a
qo5yKtvHWwLD0lDcvIADaMr+CQ2rp2jvGA0luQAeQN3fae9hr6pKAE8iRe6PFpMRRa50eTZ3S2Wt
oI9RqEFk0wk/6qsKFmvAtV73n5K3SbejtsVVZ0id3Gzicib3B/RF8Z6OBPP7dFRTtbU75Jg41Sn0
tL9i8x6Wz3YLqqc1ZRcsjq6mMBmpQZcQsXy6K+ZFxAGdtv6nHbCm6kmF/CUSmjgUWqSLRB8bxIQj
C/ZCP30WNd2fwjz70mPuldmmnz6Q9uumlXq/Zzz6+X4vJjdGHAzGnyYnSICAR4AhLLHVuIzPCiVp
ErvWD8uR9ACfFgl36WEJN+23S0VUpPyg3RIaF1Bf1mrGSz7YtxNIwzeC2EspTXtfX9ZWEEriQkAO
mWbQJNfnIvhdtSx4nJkeQda7QIbz2N4LRT43AtWLsg57o18G0DTeXyoHmOUz+blJV+ho91bl3ChK
jpJ0ml573/1xmQFd1FdlGnVvDnd0NIdD47zcq8UP9eV4er08UYagoXFsnxChhHihzCH93OkkR0PO
mT9p9u+cDJL+K12rH+8hLdE4AKQ3HW/X/UhTo8u4IJQ3VcSIyDqgnD4h0lM78aC6Usmt15+CYRSl
ArnrvZBSffS8rrvoLRbqasCjzPSlv/dr1pS3sim9rEALS7bxrfiw1X+35csJnmvYA3XFH/g70Cpk
NOHtMgAphQQmj6S8eHOT59A3EvAYAmMaqXZsmAbcPoNSG4uBfWB4zmpwzq8UP5AtM6Y/NE8ec2WE
aLZG0uz7bR5PiQkDHJMKaFL0e7QwhTemy9s40k4nqmPFsbm9quwdfFMCwOpiY76ZVtTZYm0MpMda
E7S0wqJVd9lPSoWNsbFXHPnc3IzgeVr/buZUlalNCPAgSZz0iQEImt9BreRhEQy/hS11huMQNi9u
7EZgwuzm+s3bipDELG22N89hl0nj0H3rNufooriInWcSrt7n1tuUHrRMU1Pcvm0+Bx8Xtq58RlVX
4FT4JoqWdMbGwoXTA91iivduJf6x5YhkYSH6gDd+jQyiyCV2r0bb7mpRtunrdx6xhX0GxgHmt3pu
fU+v9SzcgGuPQ/OSGKeH8BMhIWYCIC3Pp+Pmpr2FHHhK4gC5tn4ZOfPnZtOAsP4BYcyp4j+z5eCY
gSt+haaGv9NrXZ6LCLg1CEHuLvKQ6rZfoe2sJzGc+SetCWjFsUB6Ihv50P83vMBj37+mKxVDjSBs
mex3Mx6ZglpIJbc+ufXlkzt1T87YNgUD2i83eyCWW0InRDIMetFAbcUnKcUlYdc2r34kXjAIfUqV
bX43PGoQHSIleejRzt6ajP8IaQEch7cSCsSRxqmsX/GbWsHq+okmJC7iJ0E2/Ts8UPXM4ZOLL8E3
n9YYjvfEHG1NaxtuDqEuBRFOtNDl+0SMeZu755KRDkZxqMkOEVX8qKUTZDSrBMPQmtfH6xI2QBfY
coOPSI4E2UwOYbICfLsHcYU9JlEPoyiW/nINyTOYXPTXG8GnlAH2BYId2QLV8tNHaxbsv0ps8cFW
CzwakANxpSbMvcLoefOT35tg0fUNilRwp43WKAbzv8ds+2uQwmXGhmSg1RsMdvs4TZiLVh5hsaoO
28ttj6GQxwdiyp2fVFntW0vgYZbBmP56cQOI/hX7xRpZJb3zTLy7P9LtijLKMmsl7eeRJu4VrbiU
afy/dZJ9KN54wZ2TNiItBqh7WhZWbILPU4c6wBu4e8yTHqGAQjrPASaCihyKMOljH8jN/wnAs8f6
HRzi0bMhYMTZmqBw8u2k3AHF2Wtgh1eVYnfm2L9dY8OY/Ine3J8b9A5WuEEv4VfAIViiciNNCzpJ
d8DalIa/P+j9fcWpOlxSahQmEX1eH3Xu3ip1pUaIIw3Kq6WDY4xPqXSADL5pkmltoCh2eoRQ5DnP
tP2jXj+5QcSDSQ80Z4Z0kfJkYg5EBndkqT3NnLVuonry4m8KBlwmWAmi98sluxyakGmSxhTKulss
r6tpYPb9zj6m9TwSpEiXiR6w/uyLW+MWg04u8Ib5TUhzZenMpFgcss3EHejD0cyAHnu+CZDtnT/7
yCeHFfuNXyS1gHjghzqYizM45Fk88tv83wK1dz0Nv8FkmMgdx7I9RTka5FfaWZJI7sd4hovXGiH5
MMiKCbOnxnny2l6G/I2hdGPhFkTE3LTfm4nJfbyFQi8qC4dkoQx2m5R89hGgYZ42QsEmnxjaH8Pr
eOt5bgj8esHos2FNQKGgqSlelSRbVqujYiNlz7MhuQjlUtJTFeL2MGgEUR5S/ODyZVyJJfjkO+mk
mmuAUEDxNNWKwfyOodt5vqzJNjjRc4m/MmEh59tVV5Z36aFbbWoFlFB+a5SZ8res++DhVVDXrBKM
dDnDXmcEcqz9a1KsG+T6nmskMZpFviiy20ntAGyrRW77lMBgoGAB4/yTDIPc2jkb1kRnqs4YGQK3
vnBq9nKhPw+unbPMZi4ePuQEupDfX/eKq4fIbzyhGU7mgTk/d8mvN3xAEVLcTiEPnp01x/HQorDU
DtdwzzQgZmfYiD4yHzQTUPwlL86TacBDKbzkIBQvbxBteLeCgkZDret1vh0qbTaqHrFb2alPYoR8
/kW7hfpY7LVy8q+KrMMaFdztm85fa61+jqr7wR7vEjgr9xmtjI2KcHIvSQdd3CD0KqVndIGeVMKL
4ukHKnIvz99WMJEUoEHUiOIncXgCEQggMLI4yDfyWNx1Jbox09rIi1lZZB4GMHNEt+Ca4PM9YD/q
INf2mxujMEzVoAeBtRXhXfjJI2OnDfA84A8Ip96mB3fTGCe8cy1w+ZFgSqFmQwbQMbmGsMdMo1pa
mrx4j/iOTLCnQRybT0bh/m8yw7neZ3/6Tvt534En/4nrjjwOt7pDSR4+UfAOJ4QjfF151r0BG+z0
XvmV/Xsqo+1sHN4g9afQGjsIjpGrYjUBKg1m3QxbFvaTU47mM1sQj81kn5V0xZJQKbt/VXA8lqxw
mqJ0MYo3PZDQz+VRf2c6P0K7DJBDZ9YWweBeEJnPWB04QeBLHll+vfnIbhDNc6qQfYp3thXUfYQj
/724dQQzSZUbZBMrLRjSFUCT67tBn11dC9rzZD0nQxLtCqN3NZh3nrRDkqQS1Iw0FD/ioRpVuGFJ
8otVenrYzPgVP8Bqx2X4EIxzooJ2a/2ukqu7/h0HnKiTrK+BnNIuNxCkdAqEBFFiLmD34gruSWKf
NJxbYXRomKiAi1EZ7E7jAgoedYjy1OSeF2v6pIPBdrEPrST09XT/BG0J7h6HXWY/FA9qYCiwrJEK
r4n12efvAkm/Xi5gifOJrYoKEXUQvB7maMM6YHThclZ1X6HIKr/AbuvN8nTJg1xPn5RAESTTHh9i
0eV/gtP7PfrjEkQqa2yEv4YwW1hbuWo0RKr4PfMmGFbf6IEy9rT96sx9T+VR8lAepCNJQxBqIvh5
E0Ye4EiDdAnKqy7+ve5klaFdnl+PsT4SdcXs4J5rKe/ieHRvsVs4dTp4A097uZbkW90TSJtU55kw
AKZjuPtRcmNQXTE2PYRpkuftdNCccPOy6zceGQuTto1V+alITRN6gSdPMEnjNqw/OTy1QYNO/K8f
T3Kf5Cefdc563hB0PpTDm+K8vUzRy9tH+hgklrsSLJqgYWR0hlaY0CUe4fZkCyPhTFW5KR9qel9h
e+DBLVP96iRJKkGGyp3lxZQ0zFI/xHdU4C4li5W40R2xwi1wKUb5ZsWcfkF6AxWNBQOwBEsgtCkp
D7CdqF11UDU2P7dRKVSwqHmIffC9RZHN8qKB4JkAtrdrlAPan1YgyvYl2V0AtkTrk0f9JxH5NhdG
cJWHp2O5akt8M0UWXAVMJyE6uqED5nIyJoO6ULF1jTY8LfE+tbp3rOZykN7Q2VXmPpg1xt8v2jtI
jV7opHHP6vuvtVTjlDL9AbVmu3IqrZP0USCMX4hWMVnewwswnDoFnRm3nlKgQwSjQ1X4afjfv5aJ
GIXYwTJ+cv6GfiTHDO29IJKTHixt8rZlsWU9IRGRGu6b9UtanzOa5v50kPAfcTd37aZGePXQTQ4H
2jsNRgfCPog2bjfuNZaFzI3j+wj8pGfUyOJ0pz4sfYQsnkZbDtcwWoY6mJaktk/FI9R2Scxyos2G
MLzjcFBydV7wvLCEcXaynflXcE24RDHQ2KqoY8RDvvd7DaH296MrgoJ2rQJ0u6uuFqE5AygyxXlL
hn+RRGzUmb6mmbprNndmPO9NwmNQnBar32axqbDust2n1blPNKDTpZOPTqdINNxPOwvVT0dNjfXe
An0Ujqfzt3mOTjL+7TyCSKFnLIoRzjfN2z/ZXuIuW10z7RyvRCJapXS7s2qUMuuQELG2JXsccxiG
v1nFTviIVuGoqNAnAkjW7nHWWfUIF7kkp/K7xatk6tMABdCTKaVio/y6ceDJLkuS3m7l+sDd7hc3
xx7vEiZ1Ggd0JtqGIziuuFEogXc6mcoz+/ZE9ecHy7ilL2a4y4Nxrs4FVeiqPgbWxURkGe0TlrRW
Hm9+F5lU3SdpkWj7jJBu3vRwzqXk2KQ0mVLR4QrZQgttP89zcGcZVdmNhOwW1/OIPej5zLi96jf+
BL1ZUjRS4NTcTk6yqXjzzwvGIyNzNoxYdTYSBhC8HOlsYlYjwjIRMQ+ssWi9CwwE/UO3Z21m0Bbz
XU+VnCPbnF1WswLFb2YtkKmBmiq5QM/5yAvQd+hmYV2Ysjbe+CbMJZEnL9QtVFOJdpmikPhXFQF+
XDV4ODVagUXbxldEfXcYDm7jvgbliYgTjhM6joMNEEEHbAwydIIKObVZLofdIqnp0E05u04SoJjh
InLHHXXmcpCJgBJKEoSGX56JIW+s0mveRwyVM+ivlnhpTvumi4dhg54qYz2Yy7S67v4+5M98Onby
hgTs2Ls4p8unq/9l3Li+wCSIUVa3qmPK82P/oVgxtNlq/Wuf3UV5wSItUWte50ZOZ/c8giJFEdVn
5ZPBXRgOTv9UiYZ64ig1vlbTN7onNcjh2o9IzFSnHOIq9fQ/PFtl0/3FReygQgUFNqx5HxLeSR/F
COdADqyUkBIgwnr76er2merNbpKi0I9XZZ6AWoK1Asx61kHqjm4dyFUaRSNp0oZDvvHQeQKOHvI0
PbxCWcAG1CY9A3KE7zsSH4ZI0totZ1vveyTvX/d2MiHHUESePGjJVm3d/myA/+ligryiA+AgCj7w
3+sK6vKhXrbN6r81j3jfK3rpZa7DO0pnEd4U+9bW/pK39Cm8+rKC85oUEDLdsWOH0oLkfYc+wbPz
80XDWypT+VHYhQ0lRmke/N8ZhVy55ZtPt+t40i6NKGOaYdPCDU/Eve8f7TgT7GKa32io/Gmy6Rnh
6n6iWRCtFOCRGCG1pHVDqVNEOpeBZy7flZbzs60BhxH7iuCliyG50mICjGA+sgxZ8JNhYBp2S6FT
4Q9RtSSDGRmhBQTxFi7rqlNJ9Z2EH08rYGJd/nup8YN7o+YDrVnPDBukZzIUKMdJmO+vnMTe4p46
tkUpaACwMVyR5dTOYK7vwZZrCSKb/daiiD/10IDAXtu+yfAQOv8BxxA18f3P91V/o9pe7n6JLpqa
X3zvhg3OAL2XL+7wv8g/wmlO7MqDsWlzjUXqObNLvgZ21BC7uZ+6rXrpwQpWkCrcQsGUSJ+NAXfH
JyznpO9kE/uEM+Q4kpyd6UJSq5zkb3tokAC/uAEH20p2PUSYz3G7oGF2McHSmrnvXJOGZoSygSJM
KolAJJ8bUzNR7bCWcDeTS2zYGYqi5g2O9NUoI9gXvkE2T+eRhIZsVdpAzkeUUaWq9G4fe4v9rtCV
q5xUMPgzfHcan41v3Z7Z+NUYjdubcKFzM26EFKJfxvh4oTvPYsy8CDuCNmic8lyZnNyunu5KWhjM
F0E6kp7pBsFFCUa+imYw8vv29BPqRRmxoOhkhQxXMfGDOBxrdPFuZtfv0II/TWiMgSiLu8MM3GSk
C8j5hEcxtz4X8Lic7YA1AwQpEQkBAtlxcnoc7NXX9Lw2E1vbcy4dGP32eFffn9HhVplPvTM3/eAn
BjBAg1psytz2xdeCKft4mWEzIi3vxqGh9qK0dRHA14/dWJl0mhgKO4mZHqmBLlQ7MzIUtMrxORuI
n+2UxEfUfjQHwLNNVduNe8O9nWwceV1V30dZOyt0167QefuVbBkK2Oun7O2TD3C9dSd+Yw/EfCsx
clEZ2IOBELK7Yxd5gSdmw2KSwbw14eFppJhU6ebf7IGLi5NBDgovrTSFwHKfk4u8YuV5e56QQGeq
wLehQ3jY6jdbV/3L8w9pWwSmlR91MUhjJml5wYMB9IOL2WcD0J0a0GUB/cvL51nrjttVg1dvwdOK
7PUMvm7dqrrDMD1gDgr5sSO5aQrQmXnDyG7oq7FPhuZwqwWM8iOKEHgfAITr3tagE0vXCWLK1y57
NhgVIoOqbdVN5F3OnFLEf0DDHeyaAagBHHWWoe5PX/iDBH6i/A5u/X04oifDsjJKtGB8tq69LU0f
FaKPxxYZb8vJpAx4xM47hBT344TqS1qXxmbTlF0nGjvM3To2zUVdl3gEIwG8Oa5jlInBa8fruKu9
u0HI5ypHs2HpPwOSqYn4dF7W1LDVVsKHWQ9nZ17HVEuWFs3/I61qvj/rBIICiBErhLglcnNCxFzM
BtmZyEEQbSV2JfqskZFGKMVolIyQ+swZShhnHUWcasBJ1kKhdV5dcJgzqkABE5PiwNHbMqPR5c7z
bHJmWykZbm8DgkQb0FGEGUBFb4JUsHn7T4V1C7F720WEH+WWmKfMe10ysGn3y2Ekx6gdtEYIJyqR
qeFx4tfg5rosJsccHz6cgtwizqsok32pRT9kvpfbQDbSEyL03/ZTX6qhILXbuQlGQojlWr+fGncl
8agOt1b4gaZs3xs9NV0mT2XLv+j0W3eqnGb3hFaXhkSeVFF7bTr9zvRsuBxMTw2LRl2bk7boEYEM
IWsdoVxxyPk+uuhwEmoBHSNbFy4zcF4MAZ0VZgNRFJIwR9P+kb0SbVMTsPTzl5wOkdebxb28KnXR
I5b+l+sN4TR92LRPHi8gK0kf7LrBke1LrDSsxssKd6SqXu/xCNe7JXPAKM/0/1t+ZubFmRN9EVX1
ISUk5riBVCnuTCEzvQd1LLngTOwqVziRMjc1VRpHSFrjoJ2pToKPGHD6U2hXM80cxCPGTomMgBwU
Hs8QKvUqUclRxQFoP8kOVenEqm+76jvsTK1lUvSiHLZkv+y2o9RS4jz5xeUrYQeCtToFBJdVpM6V
0Xfmj+AYBhjwkwAiQBCU+4JeJ4vPjKMsCQrJ+NfgVjFgkdN0H5L40uiqfWhbQwxGpaujqjkYtOji
W5zEVUdjJi+n+TRE/Dy50YfkkfdcccNUhllRgRAzvkIlJc3+W2TqrhESkcvLP5zJqJcAb42Z4RfG
vfcOC3La+PoF9gTvbdv/V6j882I7QLcr2kqbeyt7WOZP7GOvNB2mOtWKdZJfa5esju6rrXH7uqB4
PXh/tv+UXLULszwkz20FO89lgMpVBPk9O7oXsw3zYJrYObuvqeYgZX2JM9cfkPznoYafcMdPfJBi
bIboXBn3j3dotV3XdoPHOr5uB0gGPTyOpFkTySK7nRI/3AICh9cfmjctzacGvnef+OdiKm0wLDwv
/mdLV+pQD1+VvZFJSL5FlFfedh9qI5OZIMhJUH2weGM8eEd98ezOToefuJOwR5KAvHuZORdtG8Ps
b0+Z/axlstUq3sYqjCXpZsoI7gMi8NWJa/Qivn5pCdIKs/lQyFBmDXKmW0BNN+NENqNAG0gymZLU
9UTq0oEtuYO3EToyJmM4Ez/IRLs8fO6m1huWpi+35EBGdH+5Av/vXDfq4njaQpnTSNOxz8eekAHm
Nkq9pCLGNaBNhPQ8tir+n0fqNpk2LC/sbjCCUBv3OJWX7EIaPerAf8kmlz2ZJRkNw8bPhHB377mq
dEGt76AgSlntn7iCgvNn0IwLvGQrdrxgsQoBe2Jm2zJ5XuDWJmtwyIW3neQkLWmllk9DpU/ja4Mz
VfAkK63+z/evJE9kLqFob9dTj99e82Lag0e6gDEPv2eXdzpfa8tIN4uJcwBHTwLV1lecHPJ46pev
tXhkJn17MeH05m65EgrRyWsknLpOn/nJDBG/X6EHYeymmgl8UlXYyq+BoKTKfPZam4NhhTXfceeN
3CI7RvWJwL2LDTYc04xmn1Pi4Ke8ly/zxm7MaUgfWcwYvdDcrjYSTRwtWVtsdL4yXCvs00LdmBcD
5sSKPuEt23t3FOZ7Ts2iCxWlKSVy+ihv4q3mejIzKQKw03f3F8as5m9zbtE2daX6CMrIfpygQmvy
A61IYZKw9JLu89av6mKJZah93Kn3b2gdSNdSvbf9wzjWFO6uCT/aMbVyroPjDEFYtd+6WfOhypft
DJzLFUymECjV+3LvSAbvfMVBZAmMOvl93wM1ltwr4Zj2Xi6vfkCljE+QusPee4jSjUPW/l05YBXy
Nr8Pnw0+H10gp3hWysEWR0Xpki9gNlWJMoc0SpgRvoE48kHcKh+12JlM2yOfcCa1djabtJuAwI9H
em+1Vh3QmMU5A9wn+/XFZQIz0t5zMel9/RFcZ99zRxTdtepcfvQvwW2OJirJtYxzXfoXce35TQno
sx7zRJrtplitUI3N8sH79jcFkTdNfYfFH6C27RDqgXPT/IDUfgQaPs9ljh8dmlOZ7vx4eeZJ2Vug
QjXe3K77erT4kxjm3ex4Wdb3BcMzkQA40RricR3SLHg9qNttQjSVFHgf9+B5RO2g5pE++lBGz+o8
qP4q4IqqtYI1/lWpPurVsrmRbqhJoRJ4p+cyn766vs2RMBVi7Ta2pXl5UGe+HA0P6W6X4NeJC0a8
DL506mWzYcXnYP00w6QHaiAzYW9LXUMks7oGcqQxxvKYxnHGwbNiW4DdB/mcIJ2TQolItSV9zgv8
OSfFXJgZSj2ayNzakZmj38I0cw7Uf9wjOEUdoPDRdSaT/pf4/c4vznBNcrmXe29/Mp9XhmckIBNW
W5JzCjgF/aUsBu4MdLJNDJlatC46ID62LOv0D76GxWZgMSsTh/yqochz9NgFnR8HErBa+MNCEIEZ
9T+Uvsvb6QFLrz/NRnyWagHuKCYK2GFrg/NBD0WrFg0Lm8VtYW+GUe6xujNWs++5Ddqs0uee5Fx5
ek92qcpOw4NmuXeQrMbx/kIP1Srd7jjkCboFpKbNvRHsRh3rJ0pa3cWXL9L8frtpFIEgGeQE/V2Q
vgCTwB82DJHeNctt8Sw+RZdQHQlRFOvfZfWpyPqUihesv05byXomiEEaYJir1j3WMcZPPQ1dxKDf
RPduRy4rYbyXbf/iMQEmXZwakWBKipCjoAi0nRQu3IJL8nMnVSFy0mbWB4sm1csuqAiRKq/iHrfs
5AiMQDldKIjunBX/08dkaZY2/BTTvCU0ygd8pnrQS4VjrDV5tofLiqmG3dK1hVNDMO8oDUgUaACr
oy+uX0iVPjmQhc9RWkAXQrxa7XSUP8iQ8BTp9wzzj96DIRkuQ7nv1iERGl76kCrrUz2nl+0KgZJy
T3M01cKmPS8y/7Fihd4dsXeLiFD7hHqwW1G4eN3dpXVrwz21yBzYGJlKDCc4QtEWP+6HbWIArQ+R
AZ/+CL2rlkSHC3elVzewizi7EfWrYAuxgqXCiXIgYXUYuy9W0FSGpdFlu5cumYUw6YHAS+PAbLbU
7y5H1rC5VErUfC5+AvkEtLBJSjikINUa+6EdywQqjZubDz41teVbych/5q0falr4igxKS2O5zhad
jvyN3Gxu2Fwei1J5tpG41HCqsS00HGkbbLQcSwQrzVJDXYkHXgoXe2/bxeMwYD50wkAaqr2qvp/v
Jn+YlN782i/6Ku68IEDPEk+ZcqS4K32wJgmmm8siE9apj+hDq3JqhFRV9Fmlclwh7yO+c+REtgO6
cV64sphHOhmfjov793V3xPt4oGzldID+Jdzsy6sRvwYlsusqeuxWy/XGhMHg0WYw0BXdg0alAC4Q
9vbNKZk0eZvNxaIMi3h+3mv8Pg06Fau2XClEL19K1ltaQUg96lAUche9Lp0Vb5pYIhm/2Bu1ui30
FQ+Mpp+OIVawP4wZjjTru4jb/MDNtgHRqf45s6Iko26ynjJOyTuGsg2ISKMoRVem0E1gXnAAxUHT
9kL4yZk1wNW8ktF57JEgA/wcOR2Of/M7ezUMy8V9CNVBIcQ4HRlWtIpAZGit4hYm40nqzbcrvifo
DOjtIZay+qL5JQYkGsAsHnGfRSlcGpGgBdHZCjlBHU3WNpZEFqhc/0VAGSEhEh8ZxXGl3r5RFWxS
ngfAJWizbnNIFOBskRrYFvYNVFMHIr9Asn0nujIZu2q1WS07HEuto9cSF2IgSzsTyX7PwDuR1DKc
KNv/UOqzcu6XgfH9sH18gkg4Azc/5myb2ongmwmHY7Mi02PwAJpxjpwWPjFxoUCl9wJu06YtPeW1
wdjw9TMYsSlsr+tl5AHQAvNPjXmchIvJdiLSIViJ1HEqzhoJ7kurMYlLf43ZtzC4cE9AhWTfTP8s
gXgqJ78+Vyn2RKbmu0eopuRp42DfuriI9Cp014g410Cdt38jhGAROddT2Ka/A+GCg6Tu51WYjC7Q
ydGOD304FNJQYkyA2P7kKFwYQctVG4WXIRNSQBy2GHzctV3kN2vBI8kHzxWGA2b84I/oUYKN6HCO
RLdj8CJZA0qEWMXvBBPwtVO5TpUIbAFIXyXBMRYLRKkbdCVfk+igT2GWpErWp/cygnSV/vagUG+M
U4EeO4OXGReHbDqfylGlrcZKQJ6hQgtG97WGMwWYEj6N7ya6ym273pAVIzr3NwVATrDSrZ7MO06d
QhhdwFfNiKTYjk2kUvDyDy/QhDvQoposBTQnluHCDNErtY9v6fi9r+nJ3gXXLBjkYja5JSuZ5eQD
XZEePcG+N5UAm0QRfARyNPYFPU44T/N0+YEj7KnQxmI23+0yWoYYny8721vYPdpRXaBpvmcB+H4C
lW0qB46zaxOiMeqZZXe91rDFgv85ZbWqoS5XK21whDjmfLrxFwezvN+aMqAYlA+P29xqAbM73Cf8
0CGRU6/eJqW+wCJQG1gTs4GgbUfhrb14DGiskMLT8aCicwOH//vX9WezgTaRpgisTc1MD36xiIES
VkY6sfOVuaBWFah57cnIoVNTpp+aFK1WcGvE1udrkrENNE7reQ8zOsBg4LvHKIS3UoCbTnQOdTy9
Kj9pbWLSlCIMG4nt++kqYqlB0rBzndIpVFtAKI55ILJjjZ4MVvOC19r01T4lM0d0LNL+FScuQ9EU
yq/VWGtQj1hsD7zgmL+5dDNfRVnsSYa3DmAtOIEDqUVsF5+x5GmTaxbrcfiWi6GQ4ec6Q0jhlpxy
XUK7u/zwHlo0SUABpgMTlTrD5BFdMwBQVkbMHNGMf7xzQMGw3Tg88jpU7raHioYySZ2lhJXDmACa
UBMVirkCCijmPUGm/s02lLBeM3s9pqetLXZ7GHvBkkBEixIOCmKm/OIHpZDiLlT9DMOUSzF6lgRT
/su+BD4vLT6CdQPQ5uV7EpXrjfnGLW5XktrMRvYBmxYidHqHxM32plruizTPEIHEmCcwDRL47VwW
8IlkYZ5nK1nFLyicn7JXuwznF9x6sTDKB+va9wJ1Qy+l+Px9qu0VCc0NYV1XQRYDtJfkoTqaYFEE
h7Q86ZXFHCeV9i2K0lYhEdA4vIkGlMhIE+SdSpKsr4RThZ5YxXVU4nalYdGJFOCv1YWbCedwL+9D
B/N26z0UDYwU5c51oJ8i+MQDDYdigxDB3eTb0rTbhfteIIz6DQIiFCASeNRuNdlh0YZfppsWEKBV
cNs2UnZyAZJNeL5whBJmuHB/zgODwo6lvbODAs5R03pzRzRUkz13TxQPi0L4XrExBgAjRS6RpUFU
29JX1UYBX7OVjUTIZALXQPLP9NZcFEWEHj5LC7X0k7PIsW0qJV68ysZ2kJd3iE5JM8hOtNaxH0tN
yzwmU6EHEVcsZhZBR35urjZAeeBF3lZrc0iw9ILiQByJILqlLAPv6ogCy8TonHXWohMLhl42svO8
PrDPKgvezhWesucGQ1tMkaDDvz68R1bN4ihG4RN/1Y2tIrwZhrcq4w7a1tH0+krVOKdfBo+OkOKS
y6PA338MS+11XohniCreSBVt1L1ON6gdqt4UIDfp9nxkqei+Rzibgk1E95nmnZaMMPWid/DhlIQg
2t039aIsRu7KD4RA8DLYV5y9IAVANWjdTBVsn+Ux6pEgIbvRxIFsA3z0cdlW3tDUIFf2XQAXpU2G
/urIBpCkfyzT5WVwX5XwKFfGaLZTelTLmNzY13CNuLEp5c6cgLZP57bfk8p0RTHOIVVckM1KKn5Q
ccawIutyKg96lwJvnuiyNk6YwJUMPz72EYTe8An3NsnHZKJYvfmmZuoAxdb6qB3FVFA3jUUnyz+N
AvJjaWvmOU4qxxH6JQ+btJt8xsXooiq4HoBhzMtXRRgbVtsHyb3e/hCP3Pqrecf7eaYMxweLMXth
QHivcSSJPFEJXOK8soNcrutGXjytq48R2OBUaZ7fTIy1NzSbmGU1BBS0Wb1G4mC8tmxlLXX2e0Tt
YRRXW9tCO9dGxYdMalycvWg92P4tdLn7ANCfLcLniOqkuT693rsM7Nr5zER1dIlRt7Kp7se+n5kK
FPeZFqq0Ud3Q1xmXnZ6GkTgiBFyzeVRY7u0GWo96n50U/eVOtlkJtKq5/T0ZTRzjjukIy8BD5T0w
+XEuqF5ejDEQTN3+TG0eqJIC1/Eh6M+Br41jMsqIrInvBFTCP1vvCHSi8095Uef9xSyS4FXOefU6
17RmKqoMS3pUbRvFi5G7MAkezUSEBJzfMHPB6TTs0qqyDjtmYw266zg8PpXaJscF8fPSUATWE7JW
vGeUAnMN7sd6TbZS2K5hIebSbRCVwNowxyG6uM5P3EAiaN7G+eLRVjR7enFXm3AyZ/zhlYnITQny
H1fVNJ+oRl3mdCmQL//Gz1lM0BOAxXL/0CFCq3OhlrzBqXia9iCgMEWWwwxnPI6mohILEmqPKeMK
rVOnBU5/E0UQBiQObTxEQpr0PdEaWZQldnhwa7N0L8Kl3u84IGievVIes4LqqirIYTlR2FrAg9bk
V/OWZ7F+iS+atzR6gbIYZaAsldZIelSTYT+S3ynqIo+HCoj1ti+f4sE8F0b4XIS4+vxiVsUVgsOc
Y0W7BMx02Z1QImqt/63kHGCZ0pq/rNQlrULtrDinuP/dvjiH7a2aaW4zpg1j3Z5LXc64vR5HLWF2
F1fEJuJAGMdR65802NnKvYO8PjiaEk5nbLBdBPAHceVbea3qBqa6WLZYEQC4a3o7XewRNj+ku9oc
b1plbzH88iPbdfqrUz/sxamtzNNgit2PLOPJOnBsAXH8xi8qVv6HYEU1qWbWnl1e4V7JQI0drBo1
1jdoohe0LA1oeh0tD3U2atTm2/XjTEm7N5rCnYcZoXtFJtcfVqDyIAhml8/Bta2SchhqdxX2SPqq
fcMY1LwFQWqjtZUb9pRoe0m7upSJTnIYGqU37mCwf58OV0QbBn8AT5oymT8l3LghkNBOUkF+7hkn
giLV5/M6cW54ciYYoSYm+NHU0sbQwZsoHXKyR7ZOeU4IUBdol80uzYWaMcKuPlZmkfAFqo5Jsnuw
W6Q3ybYIlDjsfrOh6EONZfPcMArdSqPdvsCzcqlTzC2n8lKGLFZwcbf9F8gG8S+uri/aOOuC/6AL
Umx5zV22k5tfkJv4scLwlX7tr5o779kqWdIEZ5jY7T6gvhkDseOlvQFsiyqgrYOsE8By1InQuZUv
wNl942ikaDMuw/DbJWHG2ZVn0QffUu9VpJS+T6ZY7XT4PPHm4xcx64CQPYHchT+40NREq3Ec512L
HA3GAOIsT9Ex3G6zuopkfb11c8/0JN4EYd3E7cukfVs0H9XEZCR2oM2O939U6Fe8oYI/ma3hmH9A
wjgKOcR1Z801Utv2GmoXDP4DVF9nKPVikJlBnK9lDHgMz7cEoEUknoqjZCylcDQEoVsfzeLBwIWj
e7aMYNkvE/t0rmy3Vl45jgtU37KNvxypWU4DJnV7yV9QeNkQGdzGl+Q4/xo8KAG1OzeoYtAJULhx
v2oE6mHRhfRLBQBJlm1yiRbphtsSdXKySkQrL0ZBKLJXSlCxhPapQTI61cG9J5OUogb/eyWpOHOz
ShSimx/HzAIFH/pojGhs4Bg5XHSRz//ogCzPBd0KVP6Eu/W/OIPpG5VTFovynREXGfalXeqLcm7V
MNDYmcda2jQJvCYhBtBDldDoXml7dkP0AxFVAZdSyXz7u8KLgVbwR7SxKcrX/8NodAwSuAOX19pK
Zb+QGt0W6Ot6ZPincBzfdoruTpYRnxRwM2AdyvTOxZfGtdFsn0Cqni4lxd5nOOAi7fbQWVrg74qJ
TJGOO6VY1R2szoO5kEh4UMj520i//l5S4vjoWkJQur3JjiIsXyeqix0qZXgJKPFWTNENjxvjdhfb
D5f2qd4OwyV7zLCoC45oGQZInCOsn213BqAbe7GDjQ0AejBnAmf+SoiEhsK+JzWsTsoFthadr3vO
y/JE6/HKlJuXr34VVkfHVWeRWnaetibAh7IVIMeUXLzrFxus+IFBxD/kXOWG4SjlbXS/Y0LuXLo3
xTeFvYTSpuGXEi+bZHU6Az1SOtz9OD5XXeeAv7Ra5/wEV2akQ2zLvFXCmwURyi3i/+ZKXF9sM+Y0
Wrazd/6uj5RbdXTZrmSiUIdNnHksFnm+h/gEmwsbzsT1CF3FrZclyvgGTbVD8Ovlr9AOAMp8668F
mnCQd1Ilj89tVNSMPDwF8tmQoaGm8AOia19YsTAvQt07yavVKriEOHY50qNczabryof0+no0KgpO
rA+Fj50KeFNp5EajtaXh2N/0h9EjWebG2jfNtkfwdjFtGafttKEOJmE9VdF1WoYq4d/g0bCfM5uN
zpeQSHz3O24zj1pV7hzraJ7J/pcspawS2M/QB2TfqryWu5ew7eZ0JXFjl0KDxs5SVQjGZv6fsJwJ
JVHYpyc8AUr+GbIQ9Cu7hJIm5ws8HfJRwPsd8/UCTkbQW3SSwNfATcQllERJvjksQvxLzeh/+XP3
m6k7JVS9FUMReXi6VX1FUzmZNcrGTgwEUcs/f59Kr597C2f9y3cnKzh1MDP25TWNygDVN/MHtDtq
435EXBSNTA+adWYKoPxZhBGHC4aT7bVxNFzsWr7SCdtvbprgQhDDhbZO1Cwh/fr5hhjn864UP1WG
l65smH943mvsTXb56RBLh+c5X8oNJT/6jJ0YIQ6+I3v7T4kHpGZkapN1vtl+ypb46eNpfvCfIZ+5
YwSM+KALgm7L8U8i2gSq68c8y3gZRhitLRKmDRrhoaZRCRGgwH80Zih+x4ejW81t0FVrgH5iU/9P
DVCcKX6TjXtZ5nZM+DFNs7cyBTGfUySU4Loy6Rw2fWyeP2PhMhdmmm/ns0b3OnZWz4A7zM9hET6c
zZfJUEIUCSSwNDYgpuIJMIqWdQfg39h+sWN+ZDLggAjgxWY1/8qE0odMK9JAG1YzQr/WtM2zRloI
E5aSWAUIHQzswVGPswtfHA/n5a5dISNOBo5d4rkHYQL9vgxIdpq4fH+waDlQzNEH952KZgSm4YPG
z1CT/CZZV+DTZy2i7Z24xBhQDZgxzWd4KkyL6ZhZxJyj0KuifMZc/ubcFG8cSBoLWAeEvZqQaGQj
05YYUU01F3eUC/THKYZRT6bq4v9WqzA62KSPk1KX/b8+fYfPfUDMN0AABd3Vy5cFBpeQjzXfRS6B
92s1bsaIj4n19ojnOzF4j3zJoZOMK+o0jMpHWmi+HsD/+ZqdMI8TlQV7hF4XBZjcWk60G/giUM20
v+tgQe1VaeqCiVFI6EjzDQpmnLhw+HlS2qYEiquHzE+o/uJsICHU1sJlK5cjMfmCBcRRyOdqi70A
zsgLjs671dKgesgpS6zPzkHgV9KhOjhAw0ZrYf4d9xAfePMB9zaE84whyBgl+pCHYK8Mh+MuyZ96
AZr9uDvlBJkOw/4TPBwiuiuOlaJ1KPJM7NYJdobBh2M8QbR2iRSFXiXZjZcEMGeCfa3g519xFMyL
KUIg1bbz/2fh6goCavzsbMQPFhftmLo8x6CS/gGp24YAhcONxiW8QdAPi0Y/s7KogyzSdQiJsk/8
r0pz/gcTcn0FGiYWm19UjFWaB9qDVu91scokyDPJilwoiUAk4W6xqYNnGdf8ZMKSodiR9RoYC3ce
CUydM5w9xJJs9xfYgV6VYChyP+MUGiqKDV0QTOtmcHBRATBeIAKdxTKLoqqIZA1zhwQKUWfIA/hK
KDtNHyiMpy47IGWlehugdpwqAP9HLLB6b2tORdmVThcl5sBECkL1din/MzAlyIIfGpwBTuBn0Xwh
IYx7iNeoMPndcFRS1wGpjde32+auCgeaYtk1cmem9gopzkpYmFiqwrFRBCuCRwwWrVH07KcnGnR7
uv2IkMPqWXdxTUPa3pW09biw+oDmtnkwWpTDg3dNtwHqrdNWzHklyADjlvz0FUFFYpUqI9TsmPF8
0tqJs9/CKEOOSTWJ1oqvcTMOZrgSiSg7V1vS2ZbGnBZUwryUYnHebitCmCagtqwXNTXLMknpY59x
URfEu/uVdFsS9uC+AwsX9zMPKdHndQsiv3FNs1bOZak5JZKAfIehmorvW4tLHIZVV4EZ2y8MQfuG
qlXZ8M6bBz+/mE4W74fWbyUnpR/ZwgUZvl23oHG37lTHBK+RxejFnxoWd40yjdWJ/tL6yx6aW36u
5vdAqTi7usU8k8Sf6R6ol6a6SornJKxI3L6PPzVXcxKkngSCka9Rz1+hoWf+SJ7cyoOqWwQVMGf8
miGBiF1BUw2OosbKO8hIw9W8wfJ+ML+ebOZfXqpX2cOoqUTAONOFeUnA6oTLsmNDW3W1Mfj2kCWe
Xa2Vb7KRUPutaYp6+ktltuGZymjrjPSRMEYzJuRnjMPbEuOzoX+AeDgplfYfZb3nJ7H5RemYaa2K
k9aQXXQVMgg3xOmUF37QTTpI5xCOk991bBmWLJIS7uo8ki7WzpSWt0WdEc+SF78XQHWBaFMb2bdO
ooAHEpGzksp+WQS5REE4cTFU69CuFUA8OmjSo5Z/1LlnTxFOkdOZurQzDDNwKSXIAD+j6jEI9OWC
b+dXBYmIkdI3VojDApplesDx28EZar5V7p+0QL672qHZ9VdswfmK/Zi/4hdVFs33ijmWE1FsgPF0
92hLfEbfCqMLxxKU6jsd7lYzIVfBM62XpbElrhbr2NbTotTwefwxq3CO3kXj9kd9O0t2YqcdUNu3
22Zf9ZqR/JVHvnbO0L0/u2wq/rgqNDwCPs8hQ1iqOH2QsqnjW9zHKQkgzAyWcPTrmZe5zlTF4hwg
eKhMfAqof/fORwkvY6hzpW4/pigqYr+iIZjLz+5YPh5qslzhAyT10OE5NYQpc/ACpAliWvXUBm69
1S5qoAQcMUeLxRpIG2ijYUws3Jy4IvuQmCYRm3zwchwQYjwkdO0RLeNAu9UOMRK4u8A7fUbasMSE
zSzb8hgPHLodhSxctevWwdZCqWDev4IoRkynXBL5k5cOBmP9H6fbPTij+RbYHpX89zn+GaaaN/7d
ofSWJQDKso/aARkX1PousHt1vBeOGAdWXv9yvGJ/a8o7cM037VD0N/cwO05Eu/kLr4ZmF61duXNL
5mbfsvf9IrPYHMZD+fbYZn6ymlItPESZKlcWuUKBTz3HWsAnQu+p6kOANf7ygM9CgDnvBT9gbHwb
aGsFS7HWMtMXqOocu/9lRB9bZiLDJXAMvZGy4NIXZo3j4b4G53TA6LIfxHxncStt7bdkHzJyxm1C
8EOTqIPxO3qt5+8Kub7ZBZdGCwqG4HOeKQloXroutT1j2W9nlzj6gb6QTebPpaD6/qMXOryRw82Y
fYewQye6OEfRdwuYPXNKEinpIpAbnNFGgydOXx+jvf7VZ3ZUZ8tOMg5apn4Uc785C/dtY8MdBVsD
VJNgBqyftgnx7StW+pz6YR+uBynRJsZdHxjnA48LWLTliyNK6eciDa6UK+hqXhBJpbCKQl7XbHey
MGdVgbacLPaG8xZetiER02kakeK8SY38Y57cD2r+Hog38+n3sExxzn9Jp56Bh1VBqItn5DZT9B/G
WXQU1SxvTUvNBWAtRKZ555zeXz9JViM17BVw/3Ed2bpEJE1igUoiOugLQMYryIkDYbKZ92dRFOca
8U2PSeQHCUJxD6CDejyeU2nTc8M9G/Ikk+QSqmGb/iyCEEGa60O8dQv6S41AoEkSv/kOdglaPFxs
PGkLC+ogqcSXQDwNb3Z6Yd9hkawotICNjf5IvRiO73ekfb/X54jI4Bf7fhMbCsBTMUxZDwhN2JkU
15OUL3ba74M+4Chq6tp6SZRC5iKE8xAxUaXjHWISUnNrRGSo6b+pYak8+b1joDwmpVaetS75/h+b
ObvRFePKFwiNltDY8Y0OhWWyQSX2e1mzaV/vjSYFzz0HkmOV8HJSbRMgJDgMZKkUkgtf5NNJCMx9
EWbj8sFZ81XwtVZdsagTuhDa67ET/DJCg7YZkMu3GIV62XvGG+xBQD5DTRi1xcpsakrv8LDdLLZ7
Oesp2vS9E6KZ/JH1O0rprrCPvakW16Zq3fsTcpYItthbak9CfZ2QO224KIGwkcZ8DxHcqHhIJGEr
DqBZ877UsC48+rM71EvKFOkYh9JlFVx8SQ0tAt67RCfqZc/CvE3cyERgQxkUCltjcxLL4FtL9WnH
+sT/9G2/Rk/QJTfdfVi7mniQmk+AiCHdI2hJw1LyIyjRo49KU+25w/BDMUGtwWp1vUtSefVZYr+x
rRl4UxOzQTVYF4AuQ0nSzbqGU6aeth6pDcz61vSoDzUOPonlk2dYgPoGbumkvH4V8lvGUkjlqpw3
U88zxTTYYefxTkgzFtvpI+S+gA89yPtTmSh9wVhs/stWKT0OxS2xSkZ8aUtWDamKr3Thul9n1UnC
s8i9WcZXXMIWnknjK1nb9erNOwNB//5QiDQ71o6pApkncIbCeqa/V7bk1yoVuX09I/AYsDRzFifn
eCVDxOjJPImF5wwpLpYFahzZS2iCwiOHPPsIwmny4Dv5tDtpONfYmNmnO/9yG8lxzCmZ0wVsE6uj
1nO1xYpgqNNyFEmkAFJpX4zCvj16t8JEJ/6Bk7IZkjDNsda9U2FDxeQwErgt+sinlcRlotd6jBDL
gQYVhbothywc7Zl+TQiOs2h8ElUfNLo4kNjnP8m6tF1IC7mZKgZLgCaL4ZR0IYJDautolPdQ6u/T
GWDy3aAVy36l8QfRG12F7F0E8aw4Ktr9h2sDWb0Y1BJFKIAGO9Ete1dQsB0DUpTKuTqypjNy7K6d
lUVqKtNc1bEMwmuOG329/8PWTys5a21r+xandBn/hmCVoCg7wTbrPIWZQ5TUWxaNT+PZbjCK3H+i
742kp8KsQCS0N3I8u77hPmFiM3boXdDNSAtU92sJfOAiJ89csiV/kQVdx7m7Ew4Ig+bjXPTaE5qi
eR5+FDYcpcK5VZFgsXYe+MtX3sA1JoIvHnpWb8FfhuwK9hb384y5c5S6vGq7RsyxwTXp0+UedVsS
Wv5nzTpz56YD5dYfzmPSm6wSTuQ5uM4lfGTjPkS22Sbw3NCQZAtG9sk/i+mo+MIl6LR7kzR1hKzE
3ItQCL2pSOvY+fzUa87at+8rI4M4pIYWqxV04UUWBR9lYtyT9jBcDRdHcwuYUAqae5+7X62XXqS1
/byhL82ASPlaNVs0070g7HRDiK9xzszntHPe9aPhIVOz5y2hv4g7s41+2iAOgpoWgo3sQCI4kP2t
htP6gORuoY+0n2pXk9rero/aQRd9GWixqZVBw3Zg9SouowaN51MJNDgAUoRmiV+Tb1vGoiX4I0l+
+B80fSFV5NH7SO2HxU4dtw5viSB8Rt7NotxZIWbySZXcQvmr05SGb5z5v8Z463iqC5Kxu5zvxdIA
CGoWxcmnVgIUH3Qzt4ab26pP496tUtYXPCQbXIqLLO0wu25epzT8yXHHcLVXRIWK4xrmYDLo/w+O
P8Oawd4PI2Z08vp7ZuIDPvt39MFyBL+W1MyN7veXVk/qGZfMjWH7XIKPBI6lqGSgedRGkJSJigjC
Th8WRSBDUdlHj9YyQdPf5ploBfJJbfgZdSMf11J8k19hPjzPa1AHPbEYBMnVcoJXNdnu179ivk/H
cTSopH+20HW5czBSIGSFYgwNOQc5vT7V352vsjCrGc9vJedrIkSoMVp2D8RzmUSbVAOA5pZOZWsQ
jBD7ERahWAL7OxieXJNY2C1VgKoNbsqJwQ1xM40MATpC67C8bbn37T7cuV4bKEuKHZWcS5LVq8Ph
UvYbp27tpCH0MohWruKmVvlGbUXUnEIw7c1AYM1IXYnXsCsxzFOKPD453vPtrZQQ64rldxpmpWpm
+xh6lkeu0/eIuMTGSAQs5LMgj+6S6QusE4x75vk0y++bGn24xejHrxztCuYvn9Co7+6JlumLGDev
E8PLzOh23YmJqvxiYwU1cznP6l2AcxnFNGl5jkyCBCYkEvq6uSlCD2yEAk1oWHVCeNpaDrH4WAND
nLcKuyv5j+UuwEuXsQgFucFsw0QKtMScKZ0GTEiYnAyfgT/YnSJlhDlsz9w7cCs4dgo1UuNRURqo
/EK8N/mWQv7forPrwLhisL5YKbBY+ewtE5fP5GUteny6zVYnOpkAdtszKtc0eSzBo3ZZFy//c+9t
fCFZNapYjSm1CJBegvHJlfLAnnaSzY3WFSvQ6efWM6SSaz+qyNNeB/KjDHewMZOggkyrYiH0J/hi
uPUL4A3NwrAfEzO40v8xmeCnNUEXvdXZ8oL4PN1ZyBteRmVV9jpJLrGzD4Vo9SGXUcW6c6uqm3cD
dztzFe3nC8U9Q/hoEJhzHr9ojZaIuunWCFPsBJ0mA2/g7MgfoQ1JiMVi/QEjuasU6eFUuoRMggnv
WkHz3tQvaB/kWtN/KO/il8g3xwGeo00SMpKiZHsgMLtooufn/P/x2WG2lpwLw5N4NhcmynZ29V8o
OwJy8V70QZnVRbYJHKISUbb/87OJ4EBu1TMUUgx0VkQ9Z2jJ4T+vpnl88XcV44r+oMPdSJvgCi7b
mIopo5OlAlg20eXUc4oV81Z2TOG+/JAlplSXrhRH81X8831fFx5eLa8uO0KkXC+MwlEmJo2Cm1wh
Fb4AfpbWw0bIkVqbExEldD+m1l+fOEvMGLfua+zjxD4sH9Fah8goLWX2yZIpC9d9Z23RfT9yZSoe
i2zGpY4V0xiqMv9gPO5axETqkyHp9fZ35LHJpNqzMKjYyH7q7GldvGfGZTDF1bwqEcLSwuJ6ae0J
2JKJdoriyElzLmzIuehBOSdv7iCnZXBn7rDwGskj5Ww8MpAgiO3VxffGI1ddn+H6k2m0sIMcWEos
dSf2EtwzaawKtzTHETz+DnKl08twkCo5Out3gRZbSnKZ98PZmnMuEFD7nqnUuVBPs888betMvFah
a+yTZrxR5jyVr4H0yjJqsGdb+/BOibWyxTrRkZmgePPxy78d1K5oZYtAsdE8agmRKjZMkB3dwEtP
JHAfHhjxBRs4vAK04AUM2kTX2AtlPAZ3SuVPxqJp2l1S3PuOqfjuvJ3BmVsw8eHkujuAkR1MNFEI
1Y35hMq2BN9a//GuZbhabw7OVeXqjNzhAMbGJqP6n56hhlTTqXspMI5stHXB8AyOLn6jDvDAIL4K
lg9fpQ6naoYKxCujs9krSCNoGTEJ3+3VuKB6CBh/A0ft8PHo2QGLgMqzN562IS84byg/r+5jL+fh
9ZajyjEuOkwadrPaw3UgGeOUhk4gXZ/P/cmjICaKfiSS3U6I1uYlcCFDhwSZNlsehjqOPH9UBJuw
K5dIGWGR1UyRxaG813AYpt7kp631lYq+lyWjzk4msNUBCAUqPJPGnSFYgkRpV2719WVRnEiJk/9M
d//m3mQ3/Z8HI3FUa5w+iQHeZ0FhfF6y8RoSvJazUn3vftY/dCwo7dqRO24I2711JBRipIaEl06X
xKZ9wWsDYvaqiTCPvGyfRtnier9aeivks63LdpvMwNpp/3jdqi4/xc/w1zAl0a15Xj4vdRxxEq6s
88mAvuqoN0M7LSpKxTuZkflB/f0nnbQIOXC7dGJiW0YvmcgapgFOr3wQhe4qngkG6f+zNJnTEayu
yVdlETXoJzKOMWRUSnEfqSysrphu8Ycvmv9cZnqBdfec8ywF0ztEOIHDnzjqg+2G6dKIjcJUJKBy
aO6ZFCIMQbHi0WvTZRKlon/bxVlrZe5NocUGWNdYksmIDpwNTNGRgkGGpiVbcLMkIhadS5bD6Rar
3MVrl4uEXAzWM43yZoy23EfB5nBWebGS4ycU5UcUl6sb/bJrUy85xF6FGzeZ2Vy+aXzoNW6ZCwAl
VXA88Bxw2r3gPCBo9qygxKL5TBj3fxcYbZhftwYwnGTfujh+Z1PNMP4Qv+jYLzq59AEoRenYKwIt
kW1yOA1Tq2tVFPFmxbekNZVFhVSJdWo3L5ewvIEmCvI2W1r7igWE+OI4xbq4ReGYMWwRAAQuofoZ
EMyPWTdtjg63t8xngNXJ+6rZKUs4noE6pPPFN5FoHWiRmyA7A88EbQ9oq9VUpzX0e5iiAjStl8IX
2+yg8vkDGRTi9wZj05KAKB1SpRs5UWtwDYqw9VZRB/8X8HQc7pG3EpdVi7I1yQO+KhOpbVrEbXyD
imQSYdF71x+i/33XXIyZMPqHq8h5V6pxftYrc6DIUaxVMBPMdiT07GG+i9Q3H/Ad6sKiBRHW9qU+
JE6er06P4TfJvwB09l/Xf6ahkBKAjPzojzvb7jT4UFtrgrNCAQRv5AZgvm7/zOMAVdPQ8daWl2tu
udrx3qRCFzeYrEPMzQRxKL8eqzt6CwrH1YAVD4jVnzKjH7Zn66Y2PlN8bSZSmZ2ufad82+eb3m4b
EtB0960RroSFXc9k9m+bVfOK7v94t5Ik8piPj29br9QUb4cec5zacsu0wdx4oeJxhy4iLzZbJeXW
RVkeoPlnToDiKimyKdXJQ8/i8ILQEggRXer5aWfrozZPsWvNPORIaj3YZPoaUYUpTw3UzJxuLXnY
DRMCvoKnkGsEUBYginzF6yNCXd8mRYTHwlhfaw19TNyscb8UaZuYLnoUGMGv1sSHUYUZ6IJ7DKRJ
SNeKhzUhX0YbzBVCqWM0H8pRzN0Y6gDcn/chX3m2k4x3yvQ4WwFmu2MfSrhq3GpywxtFpKPYgQsz
m1vOVh4feNa2SVokXhyhL8kF8hqKlIsWf9xr5iCk/uRr62tIGu/YAtUkgPxWQtwZyRRyJrWQdDyL
GF4kmD3Gc1wrLhrVxD5ooSNKKbXwZeqZGapyUEzpLWXdNuJHDwflD/21qxOAk6unx44zO17HlPJx
tCtFMC86COxKND9CDb1+PEOC+91RLEhrHwEmQeHpq97xo4jw9BHp0DYcSg8YxcfEimFWRN5s/Y9H
1GAf9qfRYsa+J1a2WI6ywEvRzLqRTXdhr0Xkef7/QE39F4XYBM3PDWIiJ7XgTRQG5IBclYtGjzmg
XdTEHFyg168T7ooN6+/mgYcJTs79s7ZWnR688F+91dXsDpfPa7l3SuHW27ianBn3HDhimwzLp/h9
oWErjPEs//mlkq0x0lNwdnCkcq7NluMWBYM1U/jIVX7V4mOE5pSpcaNeNlW2mXHX9GjsyP1gSoM3
njRTBSzc9XT8TxFvoEXH2jD9ETraF/58nUo6RLViXlDC1x190GZJ/u+nDoKS+fSdhV5PGmRF1Ua5
kQDS/BI21LmJcCMCbyvfOuvEP3haVOe0PvWt5pGFK+/LUwh0FzHrlgXq5oyWw1FuYRdCQDriKTX7
hre++QNtSC7fnjUMpe9haWVjjmyV/OmToShz70XkZYKGgg5+PMnNg0MLgdlgUebsA6Q0FRA3zsTG
7fxHejsFRwdh61oej1IUPBIDuRmowUcMO54T58Pf/IvmCwkDP3QcxyffX6a03vv6eBJNgxJsJkD2
uqzrhyBm//5mcND8WwZoB2y1YqY3IV3wQUj7lj1os3w40jyFNGAHOeXeVIVG5i3BW8QdHImDoByy
c4w4d74qRz85M4Q1qTb/+f6zifKpXglJopA+nXud8+WVwzNsIv4yHAFUEQN2DwHWwP3YIJ4p9R1P
JhzEMh1xURn44nT3er70vbJwp+MB/0sJxPROt7bwhOMwz3M3oC2yF6Rk8sozMR3PwyIm1SM92FWg
Iocg/NeCE+FrRZPlM9/yFDHdnt3phsosej0ScNPp3qGrZKcc7GGD7jBsrkb0OF6y9vmANVOJ8V9y
33bDvsbCQZbU2XUp25Y+Qc2FyHE0AsSRYFhE3maeBYBLTbGkWOaIpzfF+5TW4tO/Yzpfs6+LjdaY
ybnwr8GWglWGrYjEqSw8wm+QpBP0cs5lDB8fiE9r2Tsc0Vn5hYRWHBoVVM/+h51Xvrkj3tzISpbK
2yK4JDrBK7RHBBAQ8OFD1epivZEYlVuyUN+0CT/FBKjgotPN+aWd1RN5865x2h8PFx/QR+78kEkX
zPWDA8BX+8KM4aIqejzbHQjcLpXJBYbLYQwZ2vSCn7zdA2UCluHM5PLa89x6U3Q6yHfletNJ4zGr
ZU14p+WpSplYkrtEjJXyHjfB9uLhFxBdWk5HpLCiag/3CuUpA9h5254WhxSqQZoqiY69Xrw9vjqK
2t2PbNP6G7cVgIHu4r082CvYGdiu/sYe+JbdbF4Gr6eSLtuPKD9KOQf5v4OOMndES9KlbOW3QiCz
t7v3g7BDJD8ir2ObJwB80upuHa3L37b22QOrq3ZafRqUq9zJEE7axzePKmP9m3qKG8x3Vy8U7arf
C5SgZMdXUjfu8+uZKXn45SQMXm019OuQFNxszqswiQWluaNNMYcL0Y3tJECz2rx/8qglVxkH4SpP
ZcAcirhAKWA2Js7Lkau9Vh6GbZ00qxN2C7xFJVLPpYwp1/W0bU7imV9UOtqIWd9ev4t81Qe7dQ/0
mEEyrsBH7K+fsZ/gvxcJ1myMBR6q0IyC93RiUf4R8azHZyxqFf3eUIbixBkrvsk34pj/qaeaafKg
M6G8TD+3vy96Kju5vQ+DYHA9vRQ1XwrR/9z3zX4XoKSf4S8bqtgXJrxjnVOIaunCzcRbtZkXTvW5
yOKmPtxR2FC2AUZnnZEwJwnwAEh2q32KPbrY1xf/4qXcPnTG54eac34jUAqysdOjl8JGIfMBMAus
BEYJu5WDjMIV9Lo/jVkGHumFDv/3k7kw928UiFe54GUD/+G4Rfpuu4Ew9qcNM1BRI+nbGl4cpE7k
HAd+K9v6wKAYwmcViOslwPhky4jqyl+mQhS0tQwHcI/HyoeAqsI4HpNVo2EHj07VL4iBKkwhVZXA
6baCCXjlQENFGFlQQA9zipO8zgo7p/W/dw8+n5LH+mEDvqSQ3s4yElsafC8qC0tdu5HuGGKVfbgI
ilwS05RVITQeSjUNjWfRcIe2B9q05xjFNSiXefLLlWoVj+tkamu2PmghxZV4MFLbpO+77ahBGMmu
aVziKm2Y87WzXJCPFLxhYMwI0T4ONeEka1sLllm74SbvF3upUvmwkBMnLpmKq0AkGserFSq8vgGw
tsv6mFo4N71iueSe+Ln7LkE3kFpNIRUAEtURYFDq52h1t7aftJbjEXUNUMJW4t2yxe3eROd8ATCk
sA8uCorL6TaIS/yVBtn/9Qyv1ubV9vuKhDjmCjTnZy+EVv0zVvFgIGYqjVqrJqsHTUPfcmEjEEMD
nfQa0Zw9NBtjkOFJUwtD5HuFwR5EGNcICmqomIeszCu59xyGnJuGUTPrKDehBWoNp6MooUhyitdQ
6VkXc7f/G1TlJSsqYw1F+aBKBYWXWQCDlyjis2R6JxVOBSKli2Cj64uAR0eokPpR3T2RSn0MjuW2
nXLVSmkPpGnkGFLU6h4DAK37zH2fw7vZsI2zpiyhZRwiteuqZ62V+pn5PdOkacsn+OYUAbdN+/iX
qA9+Nf1EJ6qtyaPnjlZUFRlfeqVWc8JMwm11DavpV5sg+QirX9RUmgJsOvSUQxcJwwfd+418KyKP
HZ6jISFY5EFdxRtBeZRw0oibo7342s4krNOKhB/xF2LkjkD2MRmJVF1QYURULROIscfWCNLcylrp
YW3zNqpk+S6pZrAESQn/B7G4ACSwHEmABZgMFddG+sea4EA9kNwZgfwbqwpRVLunVWq620OUKuEP
FD+sGgQuHzEt24gZnehBxPE7QONd5wWotN5rg1oGe1jLNW+tWSIT2pfCdzCGBgrWLVRFYcUXcqOv
PP4/EoP1DP1Pn7ggGLfjK5HDJ4bdJ5Yns+Q8RxjwYElWwJSZWe8gX+HuGZbIBGZdBjOlzh65FOyr
B2nmUVOQtl5CWp2Kw9oAEKlit0+7YQZpIj8vNMJkEcYEMI+YAyo42P2SQ0fBB/rHF539y2/cF8Sz
QNQx6+lBA3UJhQx0y2rvQ9hMZvPUX8oiszEVNPmq3PvoBKtTpYKvmsI0fFLcyh1cO91o/7GfNA5c
tIKeBFp7JxU/14ALVerlfrYh3jz6wnR4CYeQfKB44kIUdVIssjTSbLR3brt+fKpGKskwmE8SLpIQ
9aZPcs/DqkIxoMq6TvHjKme/rkYW03PKPYBs7iu2WsnuuKnWvFJa2OAtAWnaV+1aA9E07j8oRbZp
a3J21i7dp/EXvIk763MmggkEnxMgrNu6pETX6qnhAmUqGhHA1q5dWj2EydMuqbSyTZLdJcxgA9yw
8yZ4Wf1tAnfqDEO1Q/WK5/3THAEJXNm9O4MR6l+CG7VoUzet+6ZwagzOiDo2i+H1uVPSzF80Ia14
gdHLHrqAAki/UC6xZ2qD3vPB/RC9ravZE4YdB0IHAhzhX8TwfxvvJtyJpx9WegCyZ+LJJXh+YAjl
rdhELVv4OHMqbB097fHmXtvxuhaBa/l7/jwDdjfj3aVQ2rQhV3Bypt1bQnoTatMnxnswsTGT2aL4
vqHIWoVKb1T2cVj86Ie3F4HrCx7e24BcZxxrSYboBCnePobsJA6RgFEifpYmQ+iFH0hIiKMANfwX
00UEdF4RQYCyEDHV8lCVBq7KiIZ61UbxK6WHDbySf3QvnxsNDJGt0tlhvK12iqIPE4SFHclVhmpj
RZ4D/G59OtIEJOKl4Q641zCdAaecEdMaGJp2Zu2ps0PV3IzRpI1lHrd1y4RBjKAiDN23WXhgEYXW
OMhNrhPYSIgb8qzN5gcAXkwNbfI8vlKNuEEvisEx/kWAZ6DITlTV9/0AUuWkib93GfWYY6gqqu4w
az9CA67NnMPGVjkcl+r9FHqSyYhpRLaMkYt9Nzxad5kPxclgoE6i9J0GdCShqrszAOs5X1KkN3tD
9deJVAITtwqtSAYLTT0JRyEo4Aae5rOkggtFoJMIZClNWAf1Dd8rdcCRRhPQTHNAsVatCW6Xwv1q
QGZwXvjsi5UsY/36UER37BAJhD/nC5tusEZ8wrQqiNw68TYiRl3J8trwCyBjxibQWx4HO7k1MKi2
E+LDPOQGcd+s7b29LHkVVpGh0zxRwm8qyigFKry5cFqTZVaEHguy0+dNwKU6OEtVg++IdNvCmKLP
dHTPMbQf6ABQYNNmGRNc2v9rnxYS56iUu0EBAFDrcoC8ErA9f7w86QbJYctKjp4uLHykTvgTBjVg
/gI/Z2cbHpY1RkCTKOuD91d+gHcFVXi0RVlqj2sejqmyl94Eb8raMEpc+2mihJPm3fxj1InzrsPC
bb1Z9IDy8KA1l2DGnDkBDE9U+Kg6WT39qx3HTIQncAsW+SyzLnUubHwvbx/LX7cFw6F579bkVhAl
GNw4e60SPSDrDBnaZHxa4EW3rIGPbnVup1JqPQC8TeTAy0GqmCmYPZWf1UkUj413Bz7n41XHtE1o
mrqCjBZE+/uCWU3qgTr9XCAlfVJKzd6nec1DjaTy6twgWVmrbHgw8zsPN+P3zwS5uch278hQ0t4A
vOX6UBLO8KBsdOkWR/88b3WffiY/VomcsMQwMuJRcjlkm3VW72cyezvGMqVNvbANCA3BY3v2MfjW
oo8otorQUdrBFcAkVRoExChYR1OHXfuSIA2Re46uK9qAWVu9bxO3fcTE/ppNWOZHy/G36ClhqqHg
cqoz1TvKP1rnC3DpbPnG8Tv7OLJOczBFFLkYf9CFvN+o7TxCKvntXbdfkgDDimFvbFY8A7FAR+fi
mmtLjlfP4f5sZaoc0JiX8bsb/K4zqywkwcB67zB/x5Wd2+ENEknsYW5/dodNlOckCz6gyNEUi3L1
5etTuQOZz4coMVcPWEeNBhEbVfyMZpP/XjlqLYMwD0ZSZO70vNYm6HxcScFQej5mSSumSOi1WMW1
RsSNoq49W6tgZyy/KuWCXimOGeuqXhCu++Bm7EITp/EG6PVXAEMs4gVPyEjt7jk/OdcvzkF0Fe9Y
vM67NnAQE6aCWbbl6fUNtUn6lCy1RI2yqeKWa7N6Mt9PfZ5iFEL9oZUutndj3u+MR5UAspThF86k
efGTZ9doY0n/XAr66sBY5i7fmV7zixRjJahaVg2SiODs+T1mSJSR0NDWO9HDgKywWHNoVC0WQjH6
KsOGioimnVNNEL3N77iAZCDh/VEoP7gmL+U0K8Na0g7Hz0n05lBmfN8JNDtf+WTbW/Wz+gEhWEdZ
CNVceQ77CV08Qy2pkBdPrFIFHgiGtzsmg6Bo7U2KIgRHzHzKnQE2KOHo1CfPVMP4UJUTkQp7G7EN
eDpAdsAJIEPDRykAgNRALByv0jrKIq0ktRPQRRiI7+s4yBjLrHgK27oIaB6GsH1mGPD/N2QcbYxA
wCyFYImAyGoteo5gND7bR1VYUL4ob4B6+MY7yX22jO/Gs6+IIf4gplTQ2MeexprWzBGleaNLYx6H
0kAy78FSXW/s2QkMhYc4ezifg/akYMAfMy3hEFDC/61/yJSA0+R/10M1MvxYPNxWtujJRgwvSSmQ
/Y2ewUs3I1KGNQzIoQk1SZY1uJU93R/3FjLqCipQkqgV3eTw54A1j4PziXzCYTqYz7CGiGW7M8FR
O4e1850oJxhzBvbODRj3KtMWSQ2Zl+RizuJ4LDDwutMUOGpgaPpSMBD7A7xQR4Nb0zBsvVUEOQrE
71U0FPSKa+gIp/lq+OWQ7ZinA/yYAYvhQZoLcAD4RB9DiBJauqyZouHgNwJCnaW4y8H33LiAotN1
yFJ37QvTsEkcUNRs5Aay+yVuywnSqxi0yxAkOqPXOd+EfgzhFALGlRTTRtM0htFDOJZkJoyQcVRa
Tix4DjJdcQEZHIQQz+6PHfrNGjqo7rthA1VU3Rufx/wf73+aWhujIQHpFadKteHmcF/2moaznvBY
84PvPBzayPR7+ph+eb84qKo+onIgHgJncZ4xohwamBoZPTa/mY2pCsaYhparrZCSrpskdxu7ZAUD
NcgLBTP3Wz3KAy4PLKQnOwreS2VMNmzvHYwfONjVC9/vIuv4kyBTSMfDkEROr48zZCMCvRmYJO1v
oNzQrUGhKbqdxAWZBtLje5PiPqrr7lqQ45yE6n4EbxQ2I52iN4xQqNoRAUe8DtedNQFot7UjuaU/
weRQlc8g3VRPF9XxHDSJdWDIgH+LC2pvT2BW/OMH2gL1jeG2oPZED2qz4lS9uvDbgje6BzRwN+Y+
hCLj6CsraHn08OHsVnQ+7dnWuaQE+aY0Aw0DtT0wBrGFvcY9wj/4qM3mQkNMvJKAPlCHF/EbVA/K
8GvCmk5Vi0BGzI91Q60UFTDwoyM/o2ZvBgnyL7820esiAFwKV74A/+DND1AqkpNbCzAUs+Fh6+7M
9QcCkQ5D3I4ZtzSkDy8WlSsofxZTRp+QCyHfRp8blsKm7E7JX/72jsy4x5f22sW3rEtq7ZY2rwST
qFS7yDBhKTnxkGeteQP8G5vtECVGUGK9fLhTSlzs9qlSzT5NBiZBQMUYSrShw97cr1kspCBEAN9b
JqRkHV4L/k3sgpcuKZYoXbiTrlwsaYh5iHiDRfpaDe8irD+JDZT8Lu2OhuMtWqlhhu6d4gEwt+5w
72DDeazkeYQBd4PgbDCCHt10F35rlPiK9y+qwGMjNeemtA+5QNOdC94UfDa0XBJG1N9oSfOT0bkd
aQs8vycpjZTrWl2xgCTVvVa7lDBv2pTFV5+5FCZlwM+HV48lHQwNCRhsqa5cYr+oXbh76D1WXt4I
7dV2nOvkze/zsNODmiu59vtHdxFMU7MqA7zyEFQkCsODcsSTqVPihDA/TU3dln1BFFBRdht17OGJ
elQOdBl5TriQAc8OiNN4Cwin17JXTsOXHpGoDki05jc3cT3qPwSXQdiaqT8HS/HIZlZPx4S0LUab
DTFDBr175OOnGFXTBf2ZzzcEWCfsdxp9JnFSsjZQcsZz8Barwa3dHYdNKI2srh7DvkR9ke3vhb05
e9TjSdYzhFzLNCtn26+oPwwXFj6w7cI5doEBgUxfYgX1R31O7GK4Dw9aQCYMoJVfWh9wjaIoDRxh
jSrIVyU3HKdv6FVEszzNLJnoDEXcIcqyxUqfbRe09QWr5ShClJx24lQMr/ks3y9cQmQ1VNqLxcrk
zhh/hgBCtQih3E8fMf4HxVZ4T3JnKurmHq5ysIJL53E9DQoQ6pEgDkphfCsfSI6xERUwvRoSMZoQ
C0nSa7e4w6w5DxQGWg8uiudnW87DrITePXUeMgQ5M3ql9cw46luo52Abu8Gx+WovjmkP7FmF7h3T
zust5YvMdB2rEz8G4eeO/cw+c8xV7fHU9cgQFkkwHf//b8KBfovGVUtkn5N+qriaeLR78XDRVey8
vfGPWEsXQhidDzkY0hcxUgc0990Sq1fXV+gmWYd4CdfGbhchk1cgHlbCvTq4KyLAQOE4ujouNXQ1
qeQc4qlvsbz19IASjKE0Mi6pelyQUuKD7FteA2rzP89Khcog9KMhaXALZh9q2zpYOzMcW3Mwt9EN
IoRNhzr2tVhQHIJQWj25vYQMq1NeRirEomsxXxuTyXU2GXhv5EMSNNIvNxHNSyXuwgCBJQ3ggx3d
UbQcliuqvBDfqycXqaozzZBzLTDxO9ZwOcM1abGgY7rCFZBg9bHdGpzlCIjrSuybnv1wt4FMEAFj
MbPdC71T3isyAxCZf495j5DKWJwL+Pc4Eno7joW7piMrEwlk20s/oT1a3HOFONrZGvK6F6Zt+m6f
Chm3YJzaxm8pQhGKi/8R7tzI1nuuVSgkQ1+1Zo8t0Bv5COuZsf2OSC+uTQHo81Pjx09JJaw+oglb
WQ4VsJgoeOyIzdBHqy0XqynrwDkYMrXjNRVNQSKuaLGl5DgmCeVwXrjq8oCElY+LMnDJyfEPIWGp
I2lxr2ndXdDBTUtKrxEQbTsGYFpk7qY6CfP/J552iDP0taxksTRbuTk4RCzx2OA2EFdaJKB5+sa3
CVg13JN2VLHIoYtbFnfa1CCkYwLzKpNCbe/H+SJ57C0Lm7Myw4DVoq63cA5M9gYfixcX6WJ0qzAj
4tpW0PrFsn+Z5X6+LW+Qhov4Qvguk/WfBAsVljQS2lzSDdPjbL227nx7jrCrv8HmeHUESjo8X81b
pfIPL7l9Tu+oVYwaQ8GGA2hZUbECp4g0VeyC094a5pZiONzAACv9A9mBBTnN1NdKP7RrzmPpR7LA
IpuoomaCEvF4HrGk7yPQbDHjCHvyfgGFyOhRMYoRnrHISbBpW17kuLZZAGtS+y7zss1d1zZj1r8b
StfCRtEPVVpVup8YGWfDw/ua679kCZ480m9Z/pq/XF0a6AKCMNkA73icudf9ZdRxHGHdrJbeHHmK
i58AnVZK2Sr7WgNKVhJiSd0Fu4PN8ruBo+GNKolqk4b9vu50Og+DwnXJcXvnf7FoA3uk2Oet4I0k
hD0Xja5IlxTB+cRdEbyYRjgDXd+yTYKa9x7PE6cs41kBK0WZCb9ubQs85bNdu239bYbXOr2OTpmA
d7MuXhf9sVg0maWfpTtwdPMxQqfmgdnSveK1nMFWoE1pCS8h8lsCZ/wTPglu4xuV/24+zWqp5peR
3jYczIC5MFK+k46YhMT62LW3PqrCvUAY3FR6gUVPq64jju9+naPBiMqZgiQrg7AUj0LvFWDH/J2H
9MlLbn8rWHBfSkSYmCDpKutoZ8J1dOfk74tVLKdKCHUSVRjiuufWftp+BsTN0JqTSBGyZZVCO5c2
j0Yg4XZZxgObjKhMwa02tDkyERR9MA4sc/ISnQbozbcAROVf5GpYMG9/1S+frVp7v3IIs0ynLkAC
j4unT4whneg0VNHwpv/XT0OAIKZq9dZ4A1vayYvFtV0fweFxU5g5fFcKs8FOh6WG5W9j/0RguJYV
mkN8U4Duw1dX1P5UVZH5Oa/HiYzN4OzbX5QfuMYOS3GNBL9hnpEUDZvnqBthb55hODESdOvzht5d
KWaxJPRT8H0fuE7X0ZffKPr6VR+uUBFp/SIlfrBx9DWvoCqw9poR7hiwLqvXRveizfqmPi9etcEX
LU7qQtaFQF8fC8PI/4ip0WCUSJ5etbkfsmhwQKVj9oZ8qwb1ZQjb3oAETqmd9+u+GQDXJDOoPjid
y9YzTp6+lu5dw5J6KYufKKCxN01AnSt+7B7s2vFKMV9FxrKUk6wc5V3Eqgybs6iVAI+mZfzp9UyL
P+s50T8MC5uCKMfSu61b+qkKPWm9+um0o3LZZ2xfIMR9BgIlRkwBt8yH98Gt6G5WKQVEKpn10FGf
ftpFM/YbdUC9zc7IWKJzRVLrHv/8v4liMY7xzEQ0DHrSRx0He5WAD3LV3ZDiKZqKAerPKMKD64pK
25eN4pblz5P/3Hk3oioHA6sXtE6e9W9uOIu2Lr1rZbf1BANagot2XGlr9yPbllWfLuB6bOaMU/zW
zpXA7QgrIqnlvO0Hc7zL64wBaJlnsfd6q1ceaH4iPtC8HCfMTmiJ+uNAXvV/mDCHbl0z0TVbDlip
NvFw0b5PuPmAW9aV2PSrNS1wOpuZZbg98LvN411HfzBk7pSauSQGN49fa/liMjkRxzr2mNrXiaFD
1teBdIOSXBuORi6RX0GB0Bt3phjh8acls27yScZrAgBdLCy6nENkfx3XmDHBCtrFhhVMaaNHGdwv
pVD4MZ4W8Nchlb+JI5/TS908aatgRFV3PD/Fi7hUmpE5SpzWhMYKIHLDzs8VTg5gwTL9mBTv/XK4
8ovb2iJJELD47MTvsZlra+nLJJdL4S5OpIpiGPpvrnRVIeCHq2Sys1TccqVFnq1p5xNpzvevmmEv
644aGSTBcrlNamJq/sEYbkVA0FcEqZlx4a3OSrvi3UYcVOdmLDFVrl6FkI9xhHmTq7ZtxWEWYrj6
PEIaKU/V3QkWaHM57qjnAzL5Qh/gGK6YE04oPzjGPEesu+FI/SN+qEXECzfYcf+MPOaInz8Xjq/9
B2K9moFogvUEfIdVnt/oaC94mSVepVsg5FkG26A+ASGLOF4AYhGBoc2yfRaP1jfClv9OvaUQvxOm
xkX3ZTGt4IJt0d1UA0xvVFTcqVaTUjR5jXtIcAjftsZgg/nt1zBSOV660xsatV1ZoyadhhwJfeyv
WcgXaQ770/bRoxbfEdXPgNdgtFi3ABvx/zJ4ia1lyywt3lryc5MR8/KA6bnIZrjmf0ripMVrvRCt
w7cMUFjc7xrv8tfXi51izyiwUK8znPisPaF7Q2jNKPp2ibfthlLXIsuxwm6V/kDKjw/XlEp26q+E
sPHolIeI0i3N1skQnKttRhatdwUfWerwlB9A9bIbAA3hpTCDzSHJKOg1MdDZ5LkS77hjbuap3uTi
AUcRnqfxLHO8IQzJK4Z/OyFuI6NjB91XcJ9zFB7ptYS1CXJHBa7dBIUHVFrO8jRoEMC/dLtyDIGW
lmcwsf3bxMqpOh/a+sHzASBhMp+b5aCzvS5LVhuXZUuPW2ND5veOzlBwrptyDRAyo6XcLAOnoWpW
IkSpHC1PX/+4NhHpgCYuvG6kFhKyN5O1y6EoYjHe+vaYCnpLGRKGfnIQh49XSVP9u1IGBDdLdA1L
QklT4t2/U7UBxsnKqG3jkMHLetttFaWWaLpB1OsWXBkkFx2D5QCDNhfoLSu/3qR3sVj/AvW+q4hE
YVsupTDXjob2vYRBOcuEtl5aidkaE9ynF9uE31jBHJXfpyV3JDzt81vhJVrquaNyy0G/JG+8Qz6D
UEMAljl5xXjb97OdB/d1LN4AfHi0pvFNjiCO63gWqvGlup9qVYv8X9YjJFZZxiaE9kqffZdKaSnN
P0Xgum1UgUB2DdjLiTuUV0vG4ooBRkhCidQ7jFCQHWtLk72NZRt46qAknkBc//5MRtwD+4J0zM9H
FA4EWXv27B4koHyXV08+STQctaEDFfvXYxwQfLAOS9qI9uzN9A6NrOkqroINLKtjcfsy3Ew2KkCG
nbeMjT2p9pSlsL20BNTGyzvi+HER3+skS9lRagyAgqEo3U3bq2YfRv3Tzm9pg6rSuw8F0swQj+ed
lsYAlVwPqpyVqbAE9fvX+ZlO35tfXNmCNsWoGbMLLj1Tg+J81BFqazBGcfL6zk9HmLqDKdIBYw+R
LLO4MzAGKvtWXuCBLAWcrkBXGFaNF9YtTiX74CcPGrezN6/VCXXiFH/hpgyM28WCZwMcfEwZIiw4
9QjduyGaxMY7dLhsB8G+w5GlkU5hED9dT2Rgb6btpLz5PReqUCGKCOhsEzvUDhkPEWcQhcs0Y3+x
AqYDymppmttrAGUqNm4/0gBOkfih1726r4WqE7y6uHob/s/1Op999oqDmiFCawDbZwpNijRRWPyM
cyHxi4bblbW/3ECWQUv5+Q+XAKz13bFJPhRBSBdYPUALyk9LYSPAmBd5vb3F1j79HF1noEd/iDbr
iNGQXxVrlHrwoCUvRkw93xJe1U6tqeCbOCNOlly08fpEs0S8C/B9f4AeaWDzc8MUirdQBvkkrZI4
oza8XKJXFAgyqFWwbMVtZsBYJfrQD33Ap/+aaVtf/rkN9zOWBbjQfJu9eUXWMMa1OvlrStUkJLv6
7b+Gbhnv1TUQqtAzir05RAPzFHBmaEU/7b2IAIZ2gsa/ZkGA0/K6hvgIoQlqr1KyCiPR4f6Aajcl
NGEcn8Uj5Nxym1IvbjEy+SBBWxHLhaYHUXWHeyfC10XSTJ97fpCwgYWdSOL8mwm6YusoErXJW59m
UiB6mPzAtemA2LAXbdLnSTKEkdxgdWCs6IfIzYUXFqzcSGwRr3qrHpJL/Jr1MY2A0hW0DqabLPOo
QiM1nCQAI63EbzLRiCtxSx3MmkPWUAsnaxPgz7B4OMF+vAM3flHGYMFsgsunBNJHMs0cqg8QysYG
Up5MnDCXFN8ThZ+NDmj6DrZufr6ueSG3Y/KhT6u0E363xxAmnyYHDT19aQMh1Jo4XirwibqBb+90
v017zPpCzSej0/D8XNVAZsoOdzGfyWRAxBfgQVTi1F9i8ePfEMhyOJu1QMOu3eN05ECn2+OUZuuG
lo2MpWJzNSHyGA6L1yFoX1haVmCJ1Z7nUw+t/jmxsIHXjCSo8p4iD39hTkXtx1hs/JNICrLS6j9l
m/VstQQpKA6aiOMC8BwSAZauAUTHgfugBf9danwPtP7b/6ujqXpt9lu1aT/sMnDXXZTCzNt/c7hA
TCFoqQhyH/+6NNspHZzg4CoIvcWf73krxok6KihhHvAv3tSN9CWBJoreyaCsRRmp6vl8n13n7vgP
Zks1e42s+pXeoAiasGjnaPCx1c2Ob5MssTTNtRjSPsJ7kce0oMIA7dkSJ/1TjOq1Twd+fquIfd6/
dQGM3a/jJfeXoEP+/Tkqi+u3MaugxTwOcqYSm8G2cYOMrs2ci1a3PBEBnPhTSd3Hni+/GdKIwNMM
pxfNl35AqfjVBPR9/ir37k7bdZ3Wv6UMhrnqvZRLlfjHzyjCLz3JYZfLAHt53pjkhCE9AlpgIE3g
LSlwpvgHY+4RUBLmm28Z1kY8GQ4VBBZmO/p8IXtXU4WyXKlnWCUg57t46qxMytP0hFY2dGf3nQFW
ldCPm3I6hd69dzfjzNoyjVQ6ukuJu6lBuUgead2SQsw72jahueHz+wLFv3jR9LeMAX+/SvTtPCW0
0niNGxtrOd40qb9JUcTRcWHT4uiCM6CYNZETnPyUb8pPHQvic3+KpD3CHHwZXZHzH/Cn179vAdUJ
sr8VbXz94SUCZJiJm3YcTnZsRqvD7j1kqSVrD3rE9ID6m2ipd9rgF9U0o/EBpgRnzEwDbH7Zw2hI
9RAmAkdsh5zWL9I6/s/dmV7iSu2Fh9ibgBe9U5liswDNaaSbA5BTjSD3imFlisPzIv5AkYcTb58S
7wFb9vGlSXX9ytkb5UWY/gx2EHVdt+TgJDvIAfHbr8vwo2Qciz6d6ywAk0/OSaUv4J6+XB94M0Cr
O15XS7WrgGgsbdIExzMKbe5bQXJxT6vYZvNcZqFLVLy8Y1pSyfMQ6Sas4T7IK+bthSNRykcByepK
mMFr3KtEaqc9BT+FE0ik69mzTolePK0i36LMOCnc/Acsb2SG40OAH6Ds7GAI1vpMQXBAnwGnKofx
wgSe/unMa+Nu+ITAYXsBK3TpzB8jTONR2fCbCrrd/2/Qlh+iAU61zd5yXSAmkkEPR4O3EER6UPY0
w4QAEbUIiHB/Osy1866QHjrGyB5/5ic8o6Lzopf+WawwKrfRf7OvOC39Q29DsRsWqAmirCM1OTTE
AJGAeHR+ddP18AtPyk4Yuz/MH/MO1mZeNHccgAweugd5o3bDUxIxm7YyG+mOyNoENCGkb4QjFk5T
GLZ+MYEnVbVwK/UxAlIrcKT1a5hsbL4EzXO4lYIbrVMweaHQStOQp47eGlzoW2JEey7boFsikDSP
uxagFymw5CKRDWof5NIeSm7PHNNajQWiTLHU+ePz2Ik73Gx1uEiq7nbDP0bPZHBcGvUZPoPbHMIV
f8LuN3+jorxlhrDR0ivsan/NTuU5vP+iNNxjMU2OmNNyinb5k3Yn17uFonACX9q89mPNbcqXu2kI
txQgbBJ03sp4/jL+ZyiUc3rtQz2NzthvqF65PXdTwO22MnDh+pTMyFDxUXc628hIEaMfK3GKfscq
xAeSZkSJaMOiYQGUNyUzQ3nY3Ai4F1g8xByn8JkvlwaMyz8ROpLlSiANxO6+Zck5mZJJRIin4HBE
DRnAR3B+NRt2q7iRGRpxp+HJiRWj3TOyRUBNA2o5ZGTeYnUYJOcgHX9Sd6FC6Evl8vj6njbLo4xd
TV5mIvSsJCWOKglnK8+y8pGIjPUMyl1pjqG+gT4SpAjjC8kOMktQRyyoaK5GJXp/Q2ObMG6lsacn
YX2oNwDXBFklmZ9HS5ExGmj7XSxZesXkNin+y4QRIEBj1TUzxSC4GO7T365dx+ojEQ4Oz7s5sfd/
IYYWP7XbXdzmdP3u7WR9JeSrQIlKsCPbTCDFSuDSeSFphM1iZRFfOQCoL5ieSw8+BjBX3T2T6f1U
DRS1bMcOjfGSbKzHj79ZDZCuExn4wivC2/yRH4jbgtlghgTOeFdtLES06AXKLEGrBlnHjIfscVvn
B4Yhg+bi8SG7w8VPoa8O6MpOQPaShvaBEnxzM6jrbjrsJWhte93ilyI6dFuVpKjynwhjNmgQO1Bt
A8m8i7ysswAydqyLGqV1QoSVAnT8H905ygxMogHslzQ7m/8ZnafI0lHyWBq3w0uvGeOKg1db6eH3
PaAAXzTSz7Ll5fMoXjqON6H89R9Fj0crTqocOgQ/9qBnKe6QMFx4w0TJ6S133x4IaWLZ51mI/uRi
bfRpetLefV72SNrCZEpRzPY3ztUBKgSzCsssnT8utRChrLQQDoCM0ZjVRkLGY99hpqsxdb3xfJUy
8ZauryvRKyGiuDi+6b7QiJqnJ2yHM7SAFv6KQy23Ro0ov020tz70rnpfxp16ahmtoQVpqKl/fNFE
NskJ8jESU0wy6rH++5ED5XGGcWue6aadS4lCK9LxKgqHd5iDu4l12J+xXVUZleKTAFt+jsPxYLIs
DjlODi08x0mtwLrzKaUJZKMgAUMNduKwXBRVaM3rzuAI9GKqzSkzITzSHh6N+Pp/dFceurf8+Oja
aPJ/EbQwvYEqXS1k7Sc321nmBTSGCIk70dv6mxfyLEOxJlCSr4yJ6uc5suqoI6oVCUMSInN5UEqJ
oCXFvRu949Y2TbdRVR6H88YfKczk92lcwrI9+o5DAb73axAMq2c//a0obiknq7vN3DUmsMuxAubk
bCvgO2DadE6657XbCRXIBNC45f7uEWJSGlrFGAe5YdCBKl3JtKyy+T+J7Gxiiz/xNMMcRzkISoff
shLJnvjedkszT7PYMXOeBSZqqAvgmrrPqejOG8A1ObBfbw1m4TZM+nlqr9cF7733aI6DOxYNUL9T
z7HZG3IfGTDcljc71VN2Y1YPSwnHLlxxb03WXCY8ja9RGvP/tMiBg4xiKYSaxTsuMDQonOp8PUtQ
5kATdwADjkR64R/MUSYlsZLKq3BBwWl7+aFxjx4A/YB5mHSkqXgm87xDQIlEJTJr716uZ6Jtvxxk
mXM61qoOGX8fJE7f1FC3YaJuyamrVXKsr+OpwlbM/pnZozcIVXUuRLhNXnb0RXLPHydbR9h7Gg4H
+32tVy8X7i979e+8vbuWwOMfpdHWh5sHtMFT53PxvDu8jhRtRFvbwbTOhwF8On1VMbWxZNVWTz4D
ZzEysD6spX1H9+/UkuV4hbufagJfGucol+JQejuSQr6E+34zwgUkvaDh8NOw9TidhSDiPydbNKrP
LMLmiMJHQcG+unW3aj21K2LfaIxsBqy2yctvDbzptJJOqOzfHF5+WrKJ5PD/B+PxefUA0XEZzEY4
uvB01e62RCZkA1h1WNBN7xXDUa860/apP2lreOF0QaAPkSq5FAyZzzGHntikpEsei5OsPlcPSVNM
Y5xODUMMPnwExE3aGqdHBAJTsVtFiBuBkYM31212rVrfp4APS1jYobhU1fdJ+WYewaSO51Z2OtNf
5pv+AYmfgVLN0XRrbubDDDVMgfIACrriTXmJWLFMn2e48JTN+BtqAx57WHL7fZPSeBr6xMY7QtzY
eHrPJEKYOx8w8QyBvhjgEsLV5yLELq05CZ+F1RS0DAdIohmzHwzb6KNt0sbB7Oc0O64ckNLGrY45
2lyz9LD/owRSLJOLL25+cgRlwyjRu+7Cnt/wwhutOS0Gd1T0hFUoHRkOVs0Kj2IkpTfgWtaNET15
zvVXoEJ04qzH903L5I54OHxWVHPIW5psY+sG0SAex+ztbqYXeme0vHtV6N8Sx8goRmPkGPbAL6G6
uzSwhi6zkYOQugZE54r5guHC99clX1c4Q86xDi0vFO9Rw60sGdEXmELxVnIsRSkbsGX+Q2Y1r3ly
rmemnqnNqMMvt4J9IHP264RCQnbwbgfPhewhXlsCQHkfAOZXTJf6s1iMGz1GinBwBmIAFCYVxWIV
lMK91KKdrVMoIi0lkgqqhnioIkv7af8YzLmlWl2sEqwo7LHRVfZxtwGisq3zo07xVtPa9+NmeCws
uXhQGgaWnsFoL/ZH2aGKa/n52UEkVuuZaujhTlcn305jNDKvNODRcabMELIcas+Ncv1Y/DrV1+OA
YnKSWw9oEaDiHf/f1+zOWEwXomF44g42v0vJoIumz+WCTLhUcRBb9ZS7+afoxYrHnZrhBQN2iVHe
y2k1xVgLxYhQCG8vGqyw/iyy29jHF39NrxH3W19cNNa6KBC9eobs7Ji2lLIAY+GB5Eec0V8Htvmc
tfDZTpqqv+G7mYUn1DD6YeweeNjwj3yRXdyGw8xRLZHpdG9kU1q/ao8h6PxzYZzoCMBQcJuchN+M
AEQKCCobuDuIqofMDAyTQMmNwD86S1M5LeJaNgSVaaoHnlr4vu1fRBMl463mzNWe8sB6m5hz0poA
t6qC9futfSblK+FIuALTgbD+7G3v+6uIZQucMHildbsS7mzmMZV/e0JZm6WjzOcUSabTPAWeuR3f
DspamaV5lYl/Arh2S5XJLMUD8F0TCJhzEoHY7O2FPqE8LvrgOaRXO0j/IWbdzZffCGBBLSe5pW/l
I6CsLqu4eSJzxOepHE9DCe5ldUzpCr/5CCzehRtzIEoo4gyLHH1m21dKwSYAy5G+RBOLXI8viNzF
yofdVWoMVk+xR1qqG/qqWN3X3Dmg120bLXMjvPro7cm+ar7plG/Ksr2NBnreRQ29fF8Y680TU8hR
jdt2wumYq2pPwtwezVQL25VkHOVRRkh9IvfLWkEQsQExswLYhZmlBuEUYMiZrMOoLgtR7Z7pQ2PD
ag5UGKH7xHcRqHfQN6r2zzYFpE280GRkHA77ph0mIwGRRvvdSrDgc5PBq2uP5XP7LhX7QiXJKPit
mRpKZN+kpwIaW3vF2DhRC+jBEAL/v8RFI8VviX3pho+QYiEKbGv2VzEmLjAfls94Piw+HL824lwO
DS1z7HKtnKafRnz5qdi6MWO6P8/tiSkzgFsle6vzH9GTZjiSxE3QgU9bs12JqiolD0upO8rAyfFL
kbRZuXtBDOxbzgQhrE42Or15uzFT+VEG9B6gvK1MOOa4hzI5ruVZlwEmIO4IDt8E88JUN7mYX0uZ
BHAcsLVC+5fHHXf1L8tYwDotI9rZ/45kCC2CKfjKCamuk0Loo/+ck9U0ZR5e+LIuaN634sXXB2rJ
kwH0cfdmygOfAkDAIqP0l5VEidjv3kubyKN+qczmnZuWa6U+u13mGPSFd4YWgosl3c+Csh7bYtpu
f/tcFM7qdQ82Kx5/xEjUA7d5G0Pku314z8i3RCYoRBZwYf+2ESFxJAFETAMlFbSqVhVi2kBKzsSJ
6+70pbZh1Zb+23LDETb7MgXBg0rf71uRW5YCi2Mc6189gXNGSyJDMrwHkxy5+ZfVLTYDZ5LqhKif
Yr9Aja5gawRlbgZGRM6stDgsDp3q+GzYVFrJ5swexr8V3Yw0g9+qDQzmfkODYHe9rwnKZliHtfYm
rfVdG2F5CRHIo9AAM5BpwDQISRRoAMYXx/dfhMDWtUCjT/QOWc/zJ2CXs+iD7fDnRV0w2OuuGlCE
07Zrql1Na3trGemyG60as9NXP3Dq1/w62OLS+StNtdzuY3CQgw4HI4+RpEhCUQGE4VUMMuCV+Mlv
0TLODU0xOjY0QPM6w0PJoZgzesR/BsEYI4u2faBkSaSgTTPKB9eR6FP7fSnhusMWuPYpb3siHUFj
Q1KxTXIBLvq9b64YkG8DM8N4NAMMxijOYzN2c5Em/FwAd6o7+c3YirMUspgiIaPSvpsshFye8kd+
fh/F0WhuzvrmROOHGy96XIAoqnJo9LtS1dNbXGMgSt38j7GpTn0p4pnn5BiUXgvikaJ8e/yo7Hdr
KSr+uKek03SN/UFhFEs+uJvx8cWJplqW7xXG5F6idyF9DQGQIWpLrGP8etrV+ueMO5fGSLAqPsvP
nex2r6NTSZDKpYyA2Vnppxdkt7j1f8QshIzbTeccjUtn767yDLQ/G5UXf0Beie5rAr8AUkz68NaV
OdDqLt7R8qfZkbZGRQ6mKuN6PYpzId1hPxIoVW/qjWIIOwQ6cIBEakr6o0S6H7KUscsr6a+2aCZH
zTSDrMlgDZylGL7o/UDUYH8Gi/jkBMpY6pm9yuuAwM8F4994vPcSz3iY/k2rSOfeci/u7rJDkXDn
qypTk/u/cwYBZaUa8tcg+6pGrpmMzET78NxeCRrqP5SBGokAFhoGKcaGeV14dnou91+a6tE0UPv9
5zowlE+HBINY6aEqkVgwbABy9KwrB9XatDWW4VMiQwQDs0R4kD1APTIcwBxb4IVz0WPRmaRbvJQc
sYMFs0IcJ79p2XYxJtdrzi0mHa2bzm20aCuERuN3X9/5q08ae5fqCikKzk8rPGVqFt1fKjfxp1Qx
B1xPa+Si5Xin0QLB0LVptXxZZO7IM3pbat7kvRcpn/+C/CkrcGYr1/m8RTA6fCeagfnuqHt6d2oT
YpKOPWTbHXfY93tdxcbgR59JWJvgJRql+HnQIdQKLyKDRJZ88izZWI77xFBKldENuxK8J47bcnKe
XHL/efrlPtJEQkRNjlCHdaja8N04XgzrnBiokb8X9ojcDbgznlZvlRYi6h/Mm62j3k8a1neA1Nnc
E4WEBINc29LNeFm46oMmF0WRWnvJbjJXWIZ8Ez7BypzSpH/lLevZd97c0kmVEGWZ28SgllcIq6q0
6QG6q+DzUbGORvsi/djz8Wga5Mszu4nNMmfgKsQAanq4RSpobZzj3r1msC7b5f8dBU3zszdf5OIl
mV5yx969mUFDDdNAom5MHZ9IueS+eNmltmCVL3iwIdlq4PPyDEbs6tefEcWSOOTLpNpROOlgiHpA
nWfubIHIY426n5tKjLsYYWTAzcdNqkAiBeuqhqDuiQ7DglXYZ/nWE4j/G3x2XH3ItQsscLE0lV4j
sD/Jc/lR1tl6Jj28Y0ypHCFDgPpoN53jbardlG8eJ28vUUshqnoG5PTt6FMGdq7ArqkxiQL1jBeQ
+xqV+XQ48vI2Neo1U+O4RFkM2h3/2nWE+y+VU7xPRkVatjaOlF7+QN/dlzKpfElMlmntXl5QOWfS
5Ssz7YCYgLAxPbVeurL/XhKAZQCq1GE7FZLwwMEteBRS/u0NOd8crgz2IynVZA8F/hXEGD//AePK
1SYq7Gh9WADNj3ObOCUxiK/TREviFXnVgt8BwjmJBhA1Vo2LiCbUfi5CTzz+8eperz6LrI6aSPHy
+3n6kdnZyD3M9jcioj9Rz/JpkwxFzdxKAq7ro5zdC4NDLajzrj9++cwxLUit5w3VvoJp4SIRn3Uu
5jMfmU730Rur4XiEsQo7vubYzuVus1MadLniClDviz5SvuBFzEf8MJ/6GVXzOF9IumzlKTbDNpSS
GUZSLWv3Nb17lOvEfGdfHtLF69zTq2f5ioEfYQeIip0+wDeMa+xiCGQQRmmmR8Yliw62DMOuOQPk
twO1ZLSNhJTELLcX3+WGgfa+SCjsHyty0APKeMj/1pqQMjlKhE5Fa3Bsm4zUvP1ZSycqA34pIRIc
D+S9evQ7RL2SfWqe9/Smv1kaZnbrftqcD+BuIk9PqKCbbSY3PFlBg63EszAACjtJ3LSmIfnKZI6c
4jX1PAQbuIVKdjwyy8V3Gk1ersEo7AYcPh9wBgkJ9uGry0DORzqWcfITwRs7+3uubvOrLVLVsAwk
XkSNHEtkter21BJ59rgWuPriqzWo9EcH4wJtk8lyWeQJTdz2VCZX7tWXF1iryp0v41NZt7NgvHsf
QvFDZJpYofLX+rcprbIS2v3mTBofsdkGJf0aBMuMOSw1hSpEzutE0xkMh66jGkEK9AhXG0XdFfMG
SAVoR1LNyj7yJYs7djHmM30RRYOS8O2XFZTj3tX2U3igKKjnjGfJVpPvm74ld+rW2Pg4wUOzvHTL
ydIjm71Hkl9Goh3JIuL/oumf1dje6JpzzeBdJw9rXgl4qz+zZbz2vnYAC8cHnfOKpFvXOByL3eCl
FhhPqxMatBMsUk5IQ7SQOsyEgafgsG6YuxvskyLBWQE7u/wF+nYf1tyPKvDQq40AeHiuTorQ8kmt
Tqf99oykA8ewrpxzc7J06EITTAe0mANkLGXtZBtXzn3LJLpRfZ1eA/TCgK77Xyp03i+N0qy4BdVL
dDzcjomSVpghYBqIrE9jJjLAYIpo09J531/d/7gn3vxH/x8FXdWj1ms2G3dvdhG1VyvtadpIIuvm
22lLC7dWhQSelncD9zm8yPZCX/U9bCpdQ3V1l7E1qMDYtUKay4OMGlDeu7r/N4MVP/kRT7fVx2yp
r1DdT9TBijxAiTfQwBt2uU9ywDh6/a1wW0qcqqbaN/iiK5HoVRYOStgxrWeWWymQ66lRFEAxFPxB
dMG6Jq5gLNZZ8CQHt1F7erUICn0OOJR+0kDocmCk6hU4svVaRz9sr+Egf1EhjtpEdDzHwKcZX0FI
/ldtMFHwMCQofRvuIi+/TOI7aoR9Y/2PK5P0/bD33lApr4juW6TGn6HMFHiOyXS2gav+OwGQJ+Ie
Ij2QggNt5LeAejTgfDpVvRbdIYdeEGF+7BD/NPGgNYSjhDeU6AM56OG2ioZmptnnXb0CzdIt/Lm/
fgElIuddoTdR9wTuiD3POEWmidj36TovNOwiwQl2xtY6yUplTk39567Ee9Yq++1taSoUftao9hQX
L1OsIvCNZZLxv38t2v/LLEnsw+7Om78c67oghddIt7HYRrjZktIh+g9N4jyYYnhwTnkzmJzhlwFt
BRCmiuqeteP6BYYGqtuN17p5Ragb47aADJTI1vMldcARIeYMANmR1mYCAyyossBxtiSeHoJhNWT+
Th/TM3NAi7KOMfne686BHAyOSbp3ZJu6i6/jRxCOVcwtJffQLqBZpYYZf1IsP0sUn/Tac+PobNnB
GVwvEsP4PxKeskxyRn6/Cpbh5KH7hKackO1uSl4pRbEAmIRXNeIwYZ/tYr1sLQWvlYxIyOQiR7aA
rBkFc8xEojvv4oo87AykUtjOkPlvUovlOvj+zAKP7BX8blqsM6BktKi/amRx9XQrf6TKmZz5NFLh
xzIq/3rn/XEUtKKr6mbvlMzx8tT3o7rxmBmxLT2I17eJCUo9nXhT86BwiwLhmLSt58EMfQV9x4wA
SSin9inxFIhtj06RDu5AJmWGrkHgBuMXO8ndgXDGP4mbdXIR16sblt03sF22t6pC3W/Mn/7li5A9
5y85mhwuwlD/OEh3Gl04pqK8wJb/itTrPgeboBEo4WbsWWbNZ8E1snieCiu22tLV59YI75qnQ6Dv
y4ZMDOrASyOqF3dRVSWFtEDegC9KzvPvEdoYgnvcTSNy76iLsAV3Nv0g8i7GPm8y5pIvcS/2ZGo1
QEBqUKrvdmfTzUlE//YbXWn0k3etvCUhXEzMxjPqK2vwCH1SceR0Gs9uqsZmAV/0zr1Y3eiuSftv
NkDRhDzUZJBuCenGqEc6caS5lLyYnr0S12fwRSlmoR7KZ5R6F6Lqg60LIpdzesWmbOhA5egtwR6H
b5LNHZh1YC/x8EZo9cb7hWycv853ZwRKLvNqzZYghv5LlIRJHl+M5pZuT/s1KkzP7FNQXtSm4SVZ
SB1msNIvWX4497eGaioFvxGD0K/szkSgTU9PyKAHdrmDdr2bFUamG+dsgfGfq0JmzUmclOAxvwjr
2RlbOH6+1Cmt4R/bPLaqf0O702FXDbTa8JNYFakw7bdoRdaZuyfbrtRQD6gua2tNz+fA7UJBvWOI
wy7mq8ggtrnqfKomZ+fuLYVkaKB0kfYfcCX7Kx6CCBmHMDnFft95hARI2UwtJN64pMhHY83L0l16
ea6byi53lxeBek9sWGkfoBFTzV9LBl0JO5Z4lY6ihrTC82DYZRSDtJF71zAEBj5R4wK+0QrQCL2w
gGIKrhtj3wdNi1AUMRZ6YPEGdnf8RZE9pSc2PxHAXbSxnl5ryF4+W9TsYtYmPYQWiqVJ8ZS/7ox+
enu090YkQJPiZU3vpycT9ZLXokktAYjZrjs2Cai2LjRX/IJHd5xUHBLXeV5pg+5nuXwJDbrMNOpC
jP7okOY7P+mMPtSaIB3cqtbE2j+wk1wlkJdCVy15l0YVhH//HoDupx9zq589ZZ+R+zRs2N9IYLfS
Bwd/kFhQyzvfobco9P9umFqtznHoXuHGoKJ83HaQLz6BWEgV0YyO96mAliHz6Navskj5zzhT3EXR
jVIhgfWu1Yztx2dwkLkiCyDmH6d94dlGY3GqCX//mD80GzswR/8hxaX1/ZqwzZHjaUKO0E7tjCVy
7zbDw3Tyc8JQ0oG0G9RnS7oj3qn8OUiZSurdcHITihOwEwzQcycrB8tVAGSSpdiGkryboUsp9iRY
/+eSlw1skudm+SeaNQuKrGS3VEMqv8Q3/EuXnYQqTgun+LPd7PF44NtnuazSVuz3ffvywpVR7Aeg
0fLhPNTIv/TwGVNgOQhKE24EM7RZ0zZJqh66hFoDeTehiBb74c4S3C7e3zZkSZgelIrbHBGcI1Ub
fvERohtmWOMAk4go2Fmx62wYDJD2EkBAducNyd3aKmDnA4rgbZ+TjDxzOmKGUb9Ut+VTknaDdHUa
ZbL9sG5UbX0ud33IJ529JQK8QtQMBKa1ACUq2nRIPkB5VkLrSxdDdDcxbMtODhjcexrF1qj6USgr
NR1tjRyxssZ6QA0RCg8PqzACqEAqD2FPjqvyysp+s81ykeEmA3mIC2uuvHgHgiNNLgMF8wuahYgi
e4UbxnEEEV7HipoYmgc0VOvlv8QOZEyq2/UIhBLhCeio1QBbY+ZJWB600Uz8uwvze0Ov6INQW8HR
wBzf8dPdu5RVAiRcy/+N/VOOURIt67bI3JkBq5Jrgvgyl8VmrNaID2MV2P4UKe6NWpNSqG8nS6Eb
KBOw5aX/tcofZhcYsRQ4xRF2yEmk/ecP2/K6n1DuN29hoXPzhfjeuw4rYKI0+e3h64e/peVnzioL
jKYMjyIwv51qDrKV5sk8mfxVYTBumQ9DodsI+vjMxu1UXBO9rf+onwwgFc/emxwZ4fOeP++LlNN3
IkJClL1NTOmsKv1NK02hA6MDhmZhJx3FUxE/b3MTieaoTIiDA8CL6KD1mbTrPU3sOTJZoHzsxBop
3r3+/XRQSPfnEyakF8xkWqGDZPDMxUJdP64h6bebrkgGgCUcGgQRldvZwITPMdqlNIjIUAqG24fw
55Zn0+FTiNcHgcSIbkeBQvrDUoCs+7LeYr7ETABW6oV0osyK4j8pGoGOnxbpkW/R5EgSNqdVMKfH
JPHYWqi+pcYeBvqninsFSPbe4SAGwBI9x3HYm/ga/yNs04QecQ9L0QTT5BDyeuSZGmCoKD4Y5pRY
ePCr9DQdUF3EO+hVq6WQwCLgywU0XPvxXgbLcxYPHA13dHMk43TNf+4LOGC8Gr0U6ZvOnlq+jDmc
/8F6wUnt/epFd7KeKrTRHg6/pj4rGB1neySJT7KzgJQ8P+2Iv6zUuSmoIG8CEM683vQ2r2qq0i0N
R5zFtde/mNTeUSeWW2Meur4xREJAPzdTWPhDmL28N0H+dQplHY0eAoAu6OTDHx+RgMpp105EP0G4
U9wM7XXliF07+gh75Y8ovFF6NKbM/1S/W8PCdTh3vumY2Zg9ux4E3YxQB3NSTZEQj2ub9VBWIUB3
vxKQ71DSSKDHnO2LNFofL1t62ozTt2o7jXWIhLfPYWP2NR+V3Z4BgWz6+NMaknkgjvzTV5qFrU2N
mZN8ZNue1s90jhoOFOtt0iuAEkmeWRX6UB1FPF7x35L4KLdLiUB9OQJg8U6i1V6LflcGeOnoZzMV
Sasyw9Ku+7D08IbbVQr6nFfxe3lUGpdxXbvXTpIWXzHIv+0LtBrAdWl/jsbPie8/QUUqeVYumjLd
7Q3cEVBN/QOl5kDY3f7u91uGJi830jVwH4EAmbRWPDcI6pyY3elUwoliN3k0UOSo0uqYNjgtVH/y
aVy3nmTzF3PPW1fjnFPQ7beCOS7a9CNrHgtHc8obIM5ph+NKd80WC7QjyogCOyi4vwBXP4iXYV/2
iAM/SKAW3IkQ7y++5GMuuQ+w/fAE8kcokotrL145F/Nt9DE2QFSSSXto9Z/9lalBias+zW55TSfc
xZJCVKEo3oCWzeAbdk3gOQbfZjr1d+T9Q6YfpAR2G7fN/MGpRCIGWfNvzcqQSEa4g+iHQ5+PeF+Y
fFEMn9/m2iHhWXmRbBzAAP+lDmLHAYEpC1dM9zwLpY8vnytAM7Dt8CZJvk/T3Gw2xDaMAz8D07Py
qsC7m4ZrHc3miVyq3q7kWrY3usK5uIItduT2pWcLsaK3kFimq7K7R7kAk216Vbn9Cran84f5GhQq
sscoMpAZa3ntRHjY8LjphrG9sM/PVDHV+rxZ+Z9bMJD0xAeIyGfoOvdvoGu9qAvdNUECneOrn+HS
GqoMmaMglc4SWC4uC1AjWSK7l2LTBxplk5zuyts9xOzdc3YbXikTyhOsQ4iztzxYgC/Ga8YEmoFG
SXjubzTvZwyZIfyIYop+Zqm3p/0gYWA8Q3h+FxWrNzrZUIpbgd3+EKVK18D1jjZD7SXy3miI8CX/
rBTzo7sqAtI6ORwAS7x3pyTMAlRdNQkrgousMwvaxcVjyLBkuydyECV67PGoU7bvVxhaw73KFM9S
/cyhGjTSeVgv1rE04YkokRc5EAnsrrv4zuEOs+yA9ENuVPfWnnXRTb/bm/lqKh2PxnhxcWyoFHKL
wHQVOtrdG5/oHpeMw25LPRPu4te+glB3+h+GEiuUZ+c3ec0EhzF3VToIW0MpamYFuwkyD9mGbPNE
Heh7DNSzcyx/exutUgDPu7vKlSo9NzZTC7H+8SrrDfrD5gQxMeGt7e+BbuCCX4uOE3o/vjSO+YpR
66pMfrggIb/+TdqYswP7qBEwyUBgAG0cjk1arhNS5TCS8lv99pNHGOhYrq2fY+EI77YF74sJa2Yu
/YqhAQUeEqoiG+VUzGuBUr2xkxQVfkx+7YuffSDkJnpJykXZ6MXAmoftehF84o4CXwmP58yuIMdQ
xit8oF370LemH9zmo2/hEjiGPokXQVaX/VCbD5Jt+lBXIIS9R5/Wlj0fJcLkDot/D5vwIAkWeSde
uNU478v2/ajAWx7GF0IRC/+5F6GNNXWvMkTQkcijBpLwElr7pw/ElMZni/vUXbI2fwjPtEkpDJqb
XL3IuZq2RFSufD4pd4+XmWKNRz15R4aJKVVdFhkibVHwSk/QMgpbTWcJnZ9soajV9NGgZ2DIkEHs
sRudOnzo0UBTGaPwIDp/tid4hcsPvj5FnHd/Y3sAiq3LxaXxScoZSyk8tVT4jptWOqAcsCaFqkfq
c9HSwAI6VRwaGfRzl2gT5o5SFvC4DZrg1ojWjwQEbZmvlJe/2UG0S+mHiad2jPu20MFKN3OCk8+s
tMa/7rqwOrK8Epbo+oJn98iKUCcVDsh0g3Yzf0smi7fj3Y7LZiwv2VN+oWRd11miDK9L7f9kafTp
9x6HhWvbfErwk3JF9kUr2D3b/bYQyZt5awaT/PVUVuNOKmlkyJpjgXffYH0nbd56uYCxREdr9DDG
MFgynRWeoZMdkV66R3SvyvsNTBY3OpH61Ekfm8W6HLVbqMS4j91KbKfuuZVfd2CsduThu3pG04hz
5Qb2B2ltUOiY+ixFaM9t4Yl8eCBtEpAkRoux6kc+lksj+43gulmFihsqzunZ0EycbgTogrosCayl
V/KEr5VW8ddYb6hS9uyG7Lacwrd4dx4fYC6rgxLC79pGgkud/5Qh8XpN6atppj0dfQoRORtqW6kx
5ZA701za3wufMnVALRCsRvQnkI/5KrBhOdQ5mXrZPM8GWt9xcoBbup5RaBB2ngwPQnoHFJPfluwa
drENWboJQsEdCJFs+E15ABvieSHBT65QskLiDu7XvoIhd8F7aqX1g1PEzklwbBOJAgAVLeZoTRvr
i0gauul4SL8SnQ+RQWKbLdhzZuiq03Ghx3bXoNflyBBBkjJ42vtdlf05rP9Pgj7fFOolrssSmrXN
m82d9G0fso7MjM1luxLMXC31ljvqOfsqXkKpbpwfwQhvz1eM3hoMAI7h0wrwaK0E8YNxWMIfjB8b
6oEhZvsqo5VcGM/OU1NHukQy25EH4VpFTgK46hCiHiUjvmcFLd5O3z1aPsKxrZIMOI6e5n9nY8km
k5S9YUVOOpGVgZeFg0PzHIypHj5C7RZyANAIcUrS4ndvVbFCMYEl5mczbzJ5xIajygCZRNlgtXS4
7hIHegbTWmz066/8Ahg16KNcq62hiLqb0pTAVGMipFo91lJHuMJm18tF4bdr6Vm5NlXZjeQ28/Q1
rWyF4hdV03Py+r2G3roerHhr0p+IoYxbrzvG9n9jynUlXEmOEPhgcjLEaWaEwTqUDXq9TJlaFDEq
6595RD44frXjDXZLzFACr5UgDTpgCN0T3orwgVncsHWnwBiEnuURNsFEltHWg9V557IdDk4mmZ7L
0Jl9KbeHc9A8ggF66zQ0zovF+cQv7hNEcHupVEHZr4SzsE2AhpDe5n8etGRdwQZFleaHV+oSbIdP
cTJf2WLgoBejk70nj9vhgmI5iWb5BYcWztbph7xT4QmIF48CtOAOx017MPheyaBsiGQ3oM2oQI0G
b8ouUV1rmNGjn0TEFu4Ta4i7xe6lmrN6sCogMkWzkUFRb3NEeh1HD6iKH/EWw3aTLuaANnzwH1uv
oEOQtRVBCoRZxhvZIRygf760PHxELJobSYkRygYu/qEzPCdsJtlUxzXX0AlUvdcPk4j6FdZo2H8j
1MJIdgfhElHUqhZGE++VsYS9697Xrsm4f4Q1+KMveNkCdt040OEG8c9UmcJJ5WQ2hRtVcdn6m7M6
VTlERYvRfXs2XD6OOz/PQZqIQj/m2P1s8Zaxwsto86C1/RqAqYwDl4rx/6Hm+3JjIYOpp05W5gA8
mw4j6Sg1LmJCOw8XqKNDH+y4D1AOPxW8GCVePQSw70WAUtahKjjYn9bFl+zyhEVjNsuVxePkg/mY
N+RLoq5ubEdeD2/Zs8A54EfBINOTeLusKzE3ch1KSKJsoYhvlDxY0eJAxHhmlzNBwJ/UbcIOWyA4
bUZ1Dt7Z+PQbQy5BWSwfHFy9FmKw09x/ggVUrvz9M7OZ8grgYEztlHHj2eFYHjGNUmLBIteE2iHd
srjG0QHrJZsreWpfi+mtwy20R+oojSJRMuL/+jRurOia4xNKvCMhAyPlq4InI71RB0mWpMVMRIDi
8ae1nD8AIcfTSj1YGzqR1PEngWqvPjC2BmjScKX/+2pJsJGhz+5465u5CY86qWD3E7q8quSBysG9
YVCZXaKwRPTK+c/0jbIl5Py8P0LGgZw5d8eeQaqJ39+uidK/xARn24iqdYX5c7BuWSvZii+cDlEl
iJfLNalxK3Ew3uu/lfpoVJ9RRANpB+PJ682B9tO9egLBEJ3ddNn+rToRHhyqv9Plsx6Zb3cY5s5j
8dwwaBloG6hZUSws7dk6Ru94cmX8mh1oqOO2yMCBbeN+/OHjKr5apsMwLbNH0HzmBtEz+Mw9cV3B
H74dzGZ02iOE/aduiU8071NrJJxLB+9OZJOHo5MqnWmf4SRwOSXzSzZf1g2iNqkySxJX5ZsOpJ72
gSp4a23L6sSQT+6eye+tK692Rf/GBj9rtCn757gtNECa7y8qR1hXiiA1G/6biqxVGpDzk1VzVlMY
jhmQKkyJlyzBf/YKQnDklLBzrsfGK8pAUtOQ9cLLnThnlD+PWij1ORcmlsWcmAiR1SGypC5fQuoD
lqulqvbwTKHM03waELAvb0WatAk+vb/JmhfRRoQleNanEQcj6czDXBBr5hHwm6WTx/iaecLEsonE
wJbsLzjvzy8xax/e/7SDQTSQaxXFJ+cRhe1SVBWSEZXkbcdWEuVWaoqr/4ZQHL4YMq7qArADOFfQ
cEftSDnYmgsNkbBohOuZcVRC07poO4bYTttWR4xspsny4KuDeukUkJPlMLD3kEmhha+HkroKohMp
9GmeFU3HJrhVPCLNTA/89bX19Z82s+0qxjSoNl9uyIvxBvK8lYugXQT7DijDTurspM9JTnsrMFTl
ifvuShZGg7FQVuRTSxvcJpYg+OOz2e0ZdZaVVTxt6ZnPkiLGD24YRl42vcOzmsBqwZYAaIYa1b4B
QmsRhWAxt+X6vwbhTj4jb+gcRqixgb2Xx5ZnQqC6GHC7PQN5u1cKb6bDWZwEzC+QNvoSVmr9DuFc
9c7HlTpBVd2vKa33XVvm8XD/px+h/XgEIuE4nesSFricAevkhrglfH5nrpaCOI44Uro45iFETkFX
TA+DVYiFvdLRdM1P/suZdoFTtABe+iDYfphVjkwDre/FiPUA27FeFgHE6tlg6Glwf1vKPZh2HJtl
ub7J7rTTntePzVzDKi/pU7fnDtGtAMTt1DUTTJbcSwLPlBaAtz3jmZek18D3g70/j0ikwcJ1Wfem
07aFzUzL0T8pa4ae4jOyoFdngY9b225MldefswhOjiHjqTZnTivaKawiHz7ALvy07XVnNfABWI9w
niCVocHTasNnwhdDDaUxf5QUxi0qoG0RvvNWmG10hdxEOol3VEOoiS7HcKn5fm5RD1tjzKYXmiT7
5kset67NzAGAQ9zAJnVuWyKuAryrTbeqsFmdtMUsIDm/1ylk802hYmm/5oaCyvAWKfWp46MR3i2S
nSd7nZlGP+8tE39RaoiRnv7KsE06lrutaqX7YNJClfXuh8+FEpinHNOn7lD3uYNuYGO6l4wswsbp
EEY29KbQcXVKKnevrMxxYlUT205VWOh9Tcdu65GvJRWpidBsG58NJkMiYCwGguuM7tJwSiT38Lcz
9a5qjhAEkFIEQrEGKKTJqLb4eIWO+DP4F8na/0p/Ly3o01v8deySz52RKyWBug1g8zTicttyHYcF
Gdt4fFZgCVmuwol1ENSJN+Fpm1VWFFIs4XFMyMNCB0NQiSPR5PXZ5KR0b3trvtCfNOlU4Ux6qBmv
156djsLdN7XAWQr81T/qh3hMaGo+A7Fih0ebP+eNrS9hHyqM/UyAtc36wdS1eYFKqZjLicnKBRrB
4NnGW1ZjaZepQhNXgHkghL4jnq2fgbRjnAIbn8VcCAgeskZ3whOe0kPSNUbJy2fXantzxO0WLW8P
BH5cYpHCpUCr3KQNrejXB3UDRndntm7X9KBNJB3lWSHZIjdrmwVeGB/yO5e34ikX+dk1sewMaV6S
rwCQeAA1V79uAB+u4kSIfP6fx/EpkNT1I2TdyRoGwHEsCYKVTlKTSmDpUUy32FvXzXO26seHo+vz
yoB8cSR/HrKKdY4ohVn5JHqE1Vp0S24saM7szobyl9LqR7V5osXE5QyNsGHAwxvYsl/gZfGB6y27
C9YSZ0ZynopTNb8/I8e6yYJSGTmD9ucQW2hazhFgUIR9e5OZphBEALcEgj05HNvkJXEksXd/K/BR
kpuyGuiwfoiG5HbpwufgUQakWN/nxqqLY5xctmihgf6EjC8=
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
