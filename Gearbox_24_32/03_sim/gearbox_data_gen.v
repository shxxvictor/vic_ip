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


module gearbox_data_gen(
input               reset,
input               clk_200m,

output reg          data_en,
output reg          data_in_last,
output reg[23:0]    data_in_rgb
);
localparam TCQ = 1;

reg[63:0]       main_cnt;

always @ (posedge clk_200m)
begin
    if (reset)
        main_cnt    <= #TCQ 64'd0;
    else
        main_cnt    <= #TCQ main_cnt + 1'b1;
end

always @ (posedge clk_200m)
begin
    if (reset)
        data_en <= #TCQ 1'b0;
    else if (main_cnt >= 64'd10009 || main_cnt[1])
        data_en <= #TCQ 1'b0;
    else if (main_cnt >= 64'd1000)
        data_en <= #TCQ 1'b1;
    else
        data_en <= data_en;
end

always @ (posedge clk_200m)
begin
    if (reset)
        data_in_last <= #TCQ 1'b0;
    else if (main_cnt == 64'd10008)
        data_in_last <= #TCQ 1'b1;
    else
        data_in_last <= #TCQ 1'b0;
end

always @ (posedge clk_200m)
begin 
    if (reset)
        data_in_rgb <= #TCQ 24'h30_20_10;
    else if (data_en)
        data_in_rgb <= #TCQ data_in_rgb + 24'h01_01_01;
    else
        data_in_rgb <= #TCQ data_in_rgb;
end



endmodule
