`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2022 10:41:55 AM
// Design Name: 
// Module Name: rgb2YCbCr
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


(*use_dsp = "yes"*)
module rgb2YCbCr #(
parameter pix_per_clock = 1,
parameter data_width    = 8
)
(
//==================================================
// input clock and reset
input wire clk_in                                   ,
input wire reset                                    ,

//==================================================
// input axistream video data
input wire[(data_width*pix_per_clock*3)-1 :0] rdata ,
input wire rlast                                    ,
output reg rready                                   ,
input wire ruser                                    ,
input wire rvalid                                   ,

//==================================================
// output axistream video data
output reg[(data_width*pix_per_clock*3)-1 :0] tdata ,
output reg tlast                                    ,
input wire tready                                   ,
output reg tuser                                    ,
output reg tvalid                                   
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
// formula
// Y  = 0.183*R + 0.614*G + 0.062*B + 16;
// Cb = -0.101*R - 0.338*G + 0.439*B + 128;
// Cr = 0.439*R -0.399*G - 0.040*B + 128;

//---------------------------------------
// multiply 256
localparam para_0183_10b = 10'd47; //0.183*256
localparam para_0614_10b = 10'd157;
localparam para_0062_10b = 10'd16;
localparam para_0101_10b = 10'd26;
localparam para_0338_10b = 10'd86;
localparam para_0439_10b = 10'd112;
localparam para_0399_10b = 10'd102;
localparam para_0040_10b = 10'd10;
localparam para_16_18b   = 18'd4096;
localparam para_128_18b  = 18'd32768;

//---------------------------------------
// color overstep
wire[pix_per_clock-1:0] sign_cb;
wire[pix_per_clock-1:0] sign_cr;

//---------------------------------------
// RGB data template
wire[data_width-1:0] R[pix_per_clock-1:0];
wire[data_width-1:0] G[pix_per_clock-1:0];
wire[data_width-1:0] B[pix_per_clock-1:0];

//---------------------------------------
// multiplication template
reg[data_width+9:0] M0[pix_per_clock-1:0];
reg[data_width+9:0] M1[pix_per_clock-1:0];
reg[data_width+9:0] M2[pix_per_clock-1:0];
reg[data_width+9:0] M3[pix_per_clock-1:0];
reg[data_width+9:0] M4[pix_per_clock-1:0];
reg[data_width+9:0] M5[pix_per_clock-1:0];
reg[data_width+9:0] M6[pix_per_clock-1:0];
reg[data_width+9:0] M7[pix_per_clock-1:0];
reg[data_width+9:0] M8[pix_per_clock-1:0];

//---------------------------------------
// add template 1
reg[data_width+9:0] A0[pix_per_clock-1:0];
reg[data_width+9:0] A1[pix_per_clock-1:0];
reg[data_width+9:0] A2[pix_per_clock-1:0];  
reg[data_width+9:0] A3[pix_per_clock-1:0];
reg[data_width+9:0] A4[pix_per_clock-1:0];
reg[data_width+9:0] A5[pix_per_clock-1:0];

//---------------------------------------
// add template 2
reg[data_width+9:0] Y[pix_per_clock-1:0];
reg[data_width+9:0] Cb[pix_per_clock-1:0];
reg[data_width+9:0] Cr[pix_per_clock-1:0];

//---------------------------------------
// RGB data remapping
genvar i;
generate 
    for (i = 1; i < (pix_per_clock + 1); i = i + 1)
    begin
        assign R[i-1] = rdata[(data_width*3*i-1) -: data_width];
        assign G[i-1] = rdata[(data_width*2*i-1) -: data_width];
        assign B[i-1] = rdata[(data_width*1*i-1) -: data_width];
    end
endgenerate

//---------------------------------------
// color space transform
generate
    for (i = 0; i < pix_per_clock; i = i + 1)
    begin:convert
        always @ (posedge clk_in)
        begin
            M0[i] <= #TCQ para_0183_10b * R[i];
            M1[i] <= #TCQ para_0614_10b * G[i];
            M2[i] <= #TCQ para_0062_10b * B[i];
                  
            M3[i] <= #TCQ para_0101_10b * R[i];
            M4[i] <= #TCQ para_0338_10b * G[i];
            M5[i] <= #TCQ para_0439_10b * B[i];
                  
            M6[i] <= #TCQ para_0439_10b * R[i];
            M7[i] <= #TCQ para_0399_10b * G[i];
            M8[i] <= #TCQ para_0040_10b * B[i];
        end
        
        always @ (posedge clk_in)
        begin
            A0[i] <= #TCQ M0[i] + M1[i];
            A1[i] <= #TCQ M2[i] + para_16_18b;
                  
            A2[i] <= #TCQ M5[i] + para_128_18b;
            A3[i] <= #TCQ M3[i] + M4[i];
                  
            A4[i] <= #TCQ M6[i] + para_128_18b;
            A5[i] <= #TCQ M7[i] + M8[i];
        end
        
        assign sign_cb[i] = (A2[i] >= A3[i]);
        assign sign_cr[i] = (A4[i] >= A5[i]);
        
        always @ (posedge clk_in)
        begin
            Y[i]    <= #TCQ A0[i] + A1[i];
            Cb[i]   <= #TCQ sign_cb ? (A2[i] - A3[i]) : 18'd0;
            Cr[i]   <= #TCQ sign_cr ? (A4[i] - A5[i]) : 18'd0;
        end
    end
endgenerate

//---------------------------------------
// YUV data remapping
generate
    for (i = 1; i < (pix_per_clock + 1); i = i + 1)
    begin
        always @ (posedge clk_in)
        begin
            tdata[(data_width*3*i-1) -: data_width] <= #TCQ Cr[i-1][data_width+9:8];
            tdata[(data_width*2*i-1) -: data_width] <= #TCQ Cb[i-1][data_width+9:8];
            tdata[(data_width*1*i-1) -: data_width] <= #TCQ Y[i-1][data_width+9:8];
        end
    end
endgenerate

//---------------------------------------
// last/user/valid signal delay
reg     rlast_dly1;
(* ASYNC_REG = "TRUE" *)
reg     rlast_dly2;
(* ASYNC_REG = "TRUE" *)
reg     rlast_dly3;

reg     ruser_dly1;
(* ASYNC_REG = "TRUE" *)
reg     ruser_dly2;
(* ASYNC_REG = "TRUE" *)
reg     ruser_dly3;

reg     rvalid_dly1;
(* ASYNC_REG = "TRUE" *)
reg     rvalid_dly2;
(* ASYNC_REG = "TRUE" *)
reg     rvalid_dly3;

always @ (posedge clk_in)
begin
    rlast_dly1  <= #TCQ rlast;
    rlast_dly2  <= #TCQ rlast_dly1;
    rlast_dly3  <= #TCQ rlast_dly2;

    ruser_dly1  <= #TCQ ruser;
    ruser_dly2  <= #TCQ ruser_dly1;
    ruser_dly3  <= #TCQ ruser_dly2;

    rvalid_dly1 <= #TCQ rvalid;
    rvalid_dly2 <= #TCQ rvalid_dly1;
    rvalid_dly3 <= #TCQ rvalid_dly2;
end
                        
always @ (posedge clk_in)
begin
    tlast   <= #TCQ rlast_dly3  ;
    rready  <= #TCQ tready ;
    tuser   <= #TCQ ruser_dly3  ;
    tvalid  <= #TCQ rvalid_dly3 ;
end



endmodule
