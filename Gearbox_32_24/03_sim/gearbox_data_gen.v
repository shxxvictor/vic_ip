`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/02 15:19:06
// Design Name: 
// Module Name: gearbox_data_gen
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


module gearbox_data_gen #(
parameter           DATA_TYPE       = 32'd0,
parameter           DATA_END_SIG    = 32'd0
)
(
input               reset,
input               clk_200m,

output reg          data_en,
output reg          data_in_last,
output reg[31:0]    data_in_rgb
);
localparam TCQ = 1;
reg[63:0]       data_end;

//----------------------------
// According to the parameter the data end position changes
always @ (posedge clk_200m)
begin
    if (reset)
        data_end    <= #TCQ 64'd10011;
    else if (DATA_TYPE ==  32'd0)
        case (DATA_END_SIG[2:0])
            3'd0:   data_end    <= #TCQ 64'd10010;
            3'd1:   data_end  	<= #TCQ 64'd10011;
            3'd2:   data_end  	<= #TCQ 64'd10012;
            3'd3:   data_end  	<= #TCQ 64'd10013;
            3'd4:   data_end    <= #TCQ 64'd10014;
            3'd5:   data_end  	<= #TCQ 64'd10015;
            3'd6:   data_end  	<= #TCQ 64'd10016;
            3'd7:   data_end  	<= #TCQ 64'd10017;
            default:data_end  	<= #TCQ data_end;
        endcase
    else if (DATA_TYPE ==  32'd1)
        case (DATA_END_SIG[2:0])
            3'd0:   data_end    <= #TCQ 64'd10007;
            3'd1:   data_end  	<= #TCQ 64'd10008;
            3'd2:   data_end  	<= #TCQ 64'd10011;
            3'd3:   data_end  	<= #TCQ 64'd10012;
            3'd4:   data_end    <= #TCQ 64'd10015;
            3'd5:   data_end  	<= #TCQ 64'd10016;
            3'd6:   data_end  	<= #TCQ 64'd10019;
            3'd7:   data_end  	<= #TCQ 64'd10020;
            default:data_end  	<= #TCQ data_end;
        endcase
    else
        data_end    <= #TCQ 64'd10011;
end

reg[63:0]       main_cnt;

always @ (posedge clk_200m)
begin
    if (reset)
        main_cnt    <= #TCQ 64'd0;
    else
        main_cnt    <= #TCQ main_cnt + 1'b1;
end

//----------------------------
// This signal is created to generate a intermittent data.
reg             data_en_limit;

always @ (posedge clk_200m)
begin
    if (reset)
        data_en_limit   <= #TCQ 1'b0;
    else
        case (DATA_TYPE[1:0])
            2'd0:   data_en_limit   <= #TCQ 1'b1;
            2'd1:   data_en_limit  	<= #TCQ main_cnt[1];
            2'd2:   data_en_limit  	<= #TCQ 1'b1;
            2'd3:   data_en_limit  	<= #TCQ 1'b1;
            default:data_en_limit  	<= #TCQ data_en_limit;
        endcase
end

//----------------------------
// Data enable signal
always @ (posedge clk_200m)
begin
    if (reset)
        data_en <= #TCQ 1'b0;
    else if (main_cnt >= (data_end + 1'b1) || !data_en_limit)
        data_en <= #TCQ 1'b0;
    else if (main_cnt >= 64'd1000)
        data_en <= #TCQ 1'b1;
    else
        data_en <= #TCQ data_en;
end

//----------------------------
// Data last signal
always @ (posedge clk_200m)
begin
    if (reset)
        data_in_last <= #TCQ 1'b0;
    else if (main_cnt == data_end)
        data_in_last <= #TCQ 1'b1;
    else
        data_in_last <= #TCQ 1'b0;
end

//----------------------------
// Data itself
always @ (posedge clk_200m)
begin 
    if (reset)
        data_in_rgb <= #TCQ 32'h40_30_20_10;
    else if (data_en)
        data_in_rgb <= #TCQ data_in_rgb + 32'h01_01_01_01;
    else
        data_in_rgb <= #TCQ data_in_rgb;
end



endmodule
