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


module gearbox_24_32(
input           reset,
input           clk,

input [23:0]    data_in,
input           data_in_last,
input           data_en,

output reg[31:0]data_out,
output reg      data_out_last,
output reg      data_out_en
);

localparam TCQ = 1;

//=======================================================================
// rst gen
reg     rst         = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg     rst_dly1    = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg     rst_dly2    = 1'b1;

always @ (posedge clk or posedge reset)
begin
    if (reset)
        rst_dly1    <= #TCQ 1'b1;
    else
        rst_dly1    <= #TCQ 1'b0;
end

always @ (posedge clk)
begin
    rst_dly2    <= #TCQ rst_dly1;
    rst         <= #TCQ rst_dly2;
end

//=======================================================================
// gearbox
reg [47:0]      data_reg;
reg [1:0]       gear_cnt;
reg             data_out_en_limit;

// data input delay
always @ (posedge clk)
begin
    if (rst)
        data_reg[47:0]  <= #TCQ 47'd0;
    else if (data_en)
        data_reg[47:0]  <= #TCQ {data_in,data_reg[47:24]};
    else
        data_reg[47:0]  <= #TCQ data_reg[47:0];
end

reg             data_in_last_dly1;
reg             data_in_last_dly2;
reg             data_in_last_dly3;

// data last signal input delay
always @ (posedge clk)
begin
    data_in_last_dly1   <= #TCQ data_in_last;
    data_in_last_dly2   <= #TCQ data_in_last_dly1;
    data_in_last_dly3   <= #TCQ data_in_last_dly2;
end

// data input phase count
always @ (posedge clk)
begin
    if (rst)
        gear_cnt    <= #TCQ 2'd0;
    else if ({data_in_last_dly1,data_in_last_dly2} == 2'b10)
        gear_cnt    <= #TCQ 2'd0;
    else if (data_en)
        gear_cnt    <= #TCQ gear_cnt + 1'b1;
    else
        gear_cnt    <= #TCQ gear_cnt;
end

// data output enable limit
always @ (posedge clk)
begin
    if (rst)
        data_out_en_limit   <= #TCQ 1'b0;
    else if ({data_in_last_dly1,data_in_last_dly2} == 2'b10)
        data_out_en_limit   <= #TCQ 1'b0;
    else if (gear_cnt[0])
        data_out_en_limit   <= #TCQ 1'b1;
    else
        data_out_en_limit   <= #TCQ data_out_en_limit;
end

// data output generate
always @ (posedge clk)
begin
    if (rst)   
        data_out   		<= #TCQ 32'd0;
    else if (data_out_en_limit)
        begin
            case (gear_cnt)
                2'd0:   data_out   		<= #TCQ data_reg[47:16];
                2'd1:   data_out   		<= #TCQ data_out;
                2'd2:   data_out   		<= #TCQ data_reg[31:0];
                2'd3:   data_out   		<= #TCQ data_reg[39:8];
                default:data_out   		<= #TCQ data_out;
            endcase
        end
    else if ({data_in_last_dly2,data_in_last_dly3} == 2'b10)
        begin
            case (gear_cnt_dly)
                2'd0:   data_out   		<= #TCQ data_out;
                2'd1:   data_out   		<= #TCQ {8'd0,data_reg[47:24]};
                2'd2:   data_out   		<= #TCQ {16'd0,data_reg[47:32]};
                2'd3:   data_out   		<= #TCQ {24'd0,data_reg[47:40]};
                default:data_out   		<= #TCQ data_out;
            endcase
        end
    else
        data_out   		<= #TCQ data_out;
end

// data phase count delay
reg[1:0] gear_cnt_dly;

always @ (posedge clk)
begin
    gear_cnt_dly[1:0]   <= #TCQ gear_cnt;
end

// data output enable
always @ (posedge clk)
begin
    if (rst)
        data_out_en <= #TCQ 1'b0;
    else if (data_out_en_limit)
        begin
            if (gear_cnt == 2'd1)
                data_out_en <= #TCQ 1'b0;
            else if (gear_cnt_dly != gear_cnt)
                data_out_en <= #TCQ 1'b1;
            else
                data_out_en <= #TCQ 1'b0;
        end
    else if ({data_in_last_dly2,data_in_last_dly3} == 2'b10)
        begin
            if (gear_cnt_dly == 2'd0)
                data_out_en <= #TCQ 1'b0;
            else
                data_out_en <= #TCQ 1'b1;
        end
    else
        data_out_en <= #TCQ 1'b0;
end 

// this signal represent the input output data rate is exactly 4:3 or not
reg     last_phase;

always @ (posedge clk) 
begin
    if (rst)
        last_phase  <= #TCQ 1'b0;
    else if ({data_in_last_dly1,data_in_last_dly2} == 2'b10)
        if (gear_cnt == 2'd0)
            last_phase  <= #TCQ 1'b1;
        else
            last_phase  <= #TCQ 1'b0;
    else
        last_phase  <= #TCQ last_phase;
end

// data output last signal generate
always @ (posedge clk)
begin
    if (rst)
        data_out_last   <= #TCQ 1'b0;
    else if ({data_in_last_dly1,data_in_last_dly2} == 2'b10 && gear_cnt == 2'd0)
        data_out_last   <= #TCQ data_in_last_dly1;
    else if (last_phase)
        data_out_last   <= #TCQ data_in_last_dly1;
    else
        data_out_last   <= #TCQ data_in_last_dly2;
end 

endmodule
