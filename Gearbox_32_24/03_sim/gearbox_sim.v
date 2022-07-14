`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/01 19:09:56
// Design Name: 
// Module Name: gearbox_sim
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


module gearbox_sim(

);

reg         reset        ;
reg         reset1       ;
reg         clk_200m     ;
reg         clk_300m     ;

wire[31:0]  data_in_rgb  ;
wire        data_in_last ;
wire        data_en      ;

wire[23:0]  data_out_rgbr;
wire        data_out_last;
wire        data_out_en  ;


always 
begin: clk200m
    clk_200m = 0;
    forever #2.5 clk_200m = ~clk_200m;
end

always 
begin: clk300m
    clk_300m = 0;
    forever #1.667 clk_300m = ~clk_300m;
end

initial
begin
    reset       = 1'b1;
    reset1      = 1'b1;
    # 1000;
    reset       = 1'b0; 
    reset1      = 1'b0;
    # 10000;
    reset       = 1'b1;
    # 1000;
    reset       = 1'b0;
end

//----------------------------
// The input data type, Continuous or Intermittent
`define     DATA_TYPE       32'd1
//----------------------------
// The input data end position, you can change this value to adjust where the data ends and observe how this gearbox react to the data_in_last signal.
`define     DATA_END_SIG    32'd3

gearbox_data_gen #(
.DATA_TYPE          (`DATA_TYPE     ),
.DATA_END_SIG       (`DATA_END_SIG  )
)u_gearbox_data_gen(
.reset              (reset1         ),               //input               
.clk_200m           (clk_200m       ),               //input               

.data_en            (data_en        ),               //output reg          
.data_in_last       (data_in_last   ),               //output reg          
.data_in_rgb        (data_in_rgb    )                //output reg[23:0]    
);



gearbox u_gearbox(
.reset        ( reset1       ),
.clk_in       ( clk_200m     ),
.clk_out      ( clk_300m     ),

.data_in      ( data_in_rgb  ),
.data_in_last ( data_in_last ),
.data_en      ( data_en      ),

.data_out     ( data_out_rgbr),
.data_out_last( data_out_last),
.data_out_en  ( data_out_en  )
);






endmodule
