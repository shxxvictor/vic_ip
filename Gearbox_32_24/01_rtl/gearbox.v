`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/01 17:39:16
// Design Name: 
// Module Name: gearbox
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gearbox(
input           reset,
input           clk_in,
input           clk_out,

input [31:0]    data_in,
input           data_in_last,
input           data_en,

output reg[23:0]data_out,
output reg      data_out_last,
output reg      data_out_en
);

localparam TCQ = 1;

//=============================================================
// rst_in gen
reg         rst_in         = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg         rst_in_dly1    = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg         rst_in_dly2    = 1'b1;

always @ (posedge clk_in or posedge reset)
begin
    if (reset)
        rst_in_dly1    <= #TCQ 1'b1;
    else
        rst_in_dly1    <= #TCQ 1'b0;
end

always @ (posedge clk_in)
begin
    rst_in_dly2    <= #TCQ rst_in_dly1;
    rst_in         <= #TCQ rst_in_dly2;
end

//=============================================================
// rst_out gen
reg         rst_out         = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg         rst_out_dly1    = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg         rst_out_dly2    = 1'b1;

always @ (posedge clk_out or posedge reset)
begin
    if (reset)
        rst_out_dly1    <= #TCQ 1'b1;
    else
        rst_out_dly1    <= #TCQ 1'b0;
end

always @ (posedge clk_out)
begin
    rst_out_dly2    <= #TCQ rst_out_dly1;
    rst_out         <= #TCQ rst_out_dly2;
end

//=======================================================================
// gearbox
wire[34:0]      data_fifo_pre;
reg[1:0]        gear_cnt;

assign data_fifo_pre = {data_in_last,gear_cnt,data_in};

//------------------------------
// data in last signel delay
reg             data_in_last_dly;

always @ (posedge clk_in)
begin
    if (rst_in)
        data_in_last_dly    <= #TCQ 1'b0;
    else
        data_in_last_dly    <= #TCQ data_in_last;
end

//------------------------------
// input data count, inorder to locate the data while width convert
always @ (posedge clk_in)
begin
    if (rst_in)
        gear_cnt    <= #TCQ 2'd0;
    else if (data_en)
        begin
            if ({data_in_last,data_in_last_dly} == 2'b10)
                gear_cnt    <= #TCQ 2'd0;
            else if (gear_cnt == 2'd2)
                gear_cnt    <= #TCQ 2'd0;
            else if (data_en)
                gear_cnt    <= #TCQ gear_cnt + 1'b1;
        end
    else
        gear_cnt    <= #TCQ gear_cnt;
end

wire[34:0]      data_temp;
wire            rd_en;

wire            full;
wire            empty;

//------------------------------
// data in clock transform, user must garantee the input to output clock rate is less than 3:4.
fifo_clk_trans u_fifo_clk_trans (
.rst(rst_in),        // input wire rst
.wr_clk(clk_in),  // input wire wr_clk
.rd_clk(clk_out),  // input wire rd_clk

.din(data_fifo_pre),        // input wire [34 : 0] din
.wr_en(data_en),    // input wire wr_en
.rd_en(rd_en),    // input wire rd_en
.dout(data_temp),      // output wire [34 : 0] dout

.full(full),      // output wire full
.empty(empty)    // output wire empty
);

wire            data_temp_last;
wire[1:0]       data_temp_cnt;
reg[34:0]       data_temp_dly1;
reg[34:0]       data_temp_dly2;

reg             data_temp_cnt1_dly1;
reg             data_temp_cnt1_dly2;

reg             data_out_last_pre1;
reg             data_out_last_pre2;
reg             data_out_last_pre3;

//------------------------------
// clock transformed data count, inorder to locate the data while width convert
always @ (posedge clk_out)
begin
    data_temp_cnt1_dly1 <= #TCQ data_temp_cnt[1];
    data_temp_cnt1_dly2 <= #TCQ data_temp_cnt1_dly1;
end

assign rd_en = (empty || {data_temp_cnt1_dly1,data_temp_cnt1_dly2} == 2'b10)? 1'b0:1'b1;

//------------------------------
// clock transformed data delay
always @ (posedge clk_out)
begin
    if (rst_out)
        data_temp_dly1   <= #TCQ 35'd0;
    else if (rd_en)
        data_temp_dly1   <= #TCQ data_temp;
    else
        data_temp_dly1   <= #TCQ data_temp_dly1;
end

always @ (posedge clk_out)
begin
    data_temp_dly2  <= #TCQ data_temp_dly1; 
end

assign data_temp_last   = rd_en ? data_temp[34] : 1'b0;
assign data_temp_cnt    = data_temp[33:32];

//------------------------------
// data output count, inorder to locate the data while width convert
reg[1:0]        data_out_cnt;
reg[1:0]        data_out_cnt_dly;

 always @ (posedge clk_out)
 begin
    if (rst_out)
        data_out_cnt <= #TCQ 2'd0;
    else if ({data_temp_cnt1_dly1,data_temp_cnt1_dly2} == 2'b10)
        data_out_cnt <= #TCQ 2'd3;
    else
        data_out_cnt <= #TCQ data_temp_cnt;
 end
 
 //------------------------------
// output data generate
 reg[23:0]      data_out_pre;
 reg            data_out_en_pre1;
 reg            data_out_en_pre2;

always @ (posedge clk_out)
begin
    if (rst_out)   
            data_out_pre   		<= #TCQ 24'd0;
    else if (data_out_en_pre1)
        begin
            case (data_out_cnt)
                2'd0:   data_out_pre   		<= #TCQ data_temp_dly1[23:0];
                2'd1:   data_out_pre   		<= #TCQ {data_temp_dly1[15:0],data_temp_dly2[31:24]};
                2'd2:   data_out_pre   		<= #TCQ {data_temp_dly1[7:0],data_temp_dly2[31:16]};
                2'd3:   data_out_pre   		<= #TCQ data_temp_dly2[31:8];
                default:data_out_pre   		<= #TCQ data_out_pre;
            endcase
        end
    else if ({data_out_last_pre2,data_out_last_pre3} == 2'b10)
        begin
            case (data_out_cnt_dly)
                2'd0:   data_out_pre   		<= #TCQ {16'd0,data_temp_dly2[31:24]};
                2'd1:   data_out_pre   		<= #TCQ {8'd0,data_temp_dly2[31:16]};
                2'd2:   data_out_pre   		<= #TCQ data_out_pre;
                2'd3:   data_out_pre   		<= #TCQ data_out_pre;
                default:data_out_pre   		<= #TCQ data_out_pre;
            endcase
        end
    else
        data_out_pre   		<= #TCQ data_out_pre;
end

//------------------------------
// output data delay, output data enalbe delay and output data count delay
always @ (posedge clk_out)
begin
    data_out            <= #TCQ data_out_pre;
    data_out_en         <= #TCQ data_out_en_pre2;
    data_out_cnt_dly    <= #TCQ data_out_cnt;
end

//------------------------------
// output data enalbe generate
always @ (posedge clk_out)
begin
    if (rst_out)
        data_out_en_pre1 <= #TCQ 1'b0;
    else if (rd_en || {data_temp_cnt1_dly1,data_temp_cnt1_dly2} == 2'b10)
        data_out_en_pre1 <= #TCQ 1'b1;
    else
        data_out_en_pre1 <= #TCQ 1'b0;
end 

always @ (posedge clk_out)
begin
    if (rst_out)
        data_out_en_pre2 <= #TCQ 1'b0;
    else if ({data_out_last_pre2,data_out_last_pre3} == 2'b10)
        begin
            case (data_out_cnt_dly)
                2'd0:   data_out_en_pre2   		<= #TCQ 1'b1;
                2'd1:   data_out_en_pre2   		<= #TCQ 1'b1;
                2'd2:   data_out_en_pre2   		<= #TCQ data_out_en_pre1;
                2'd3:   data_out_en_pre2   		<= #TCQ data_out_en_pre1;
                default:data_out_en_pre2   		<= #TCQ data_out_en_pre1;
            endcase
        end
    else
        data_out_en_pre2 <= #TCQ data_out_en_pre1;
end 
//------------------------------
// output data last delay
 always @ (posedge clk_out)
 begin
    data_out_last_pre1  <= #TCQ data_temp_last;
    data_out_last_pre2  <= #TCQ data_out_last_pre1;
    data_out_last_pre3  <= #TCQ data_out_last_pre2;
 end

//------------------------------
// output data last locating
always @ (posedge clk_out)
begin
    if (rst_out)
        data_out_last <= #TCQ 1'b0;
    else
        data_out_last <= #TCQ data_out_last_pre3;
end 


endmodule
