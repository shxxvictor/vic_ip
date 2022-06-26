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

wire[23:0]  data_in_rgb  ;
wire        data_in_last ;
wire        data_en      ;

wire[31:0]  data_out_rgbr;
wire        data_out_en  ;

always # 2.5 clk_200m = ~clk_200m;

initial
begin
    clk_200m    = 1'b1;
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

gearbox_data_gen u_gearbox_data_gen(
.reset              (reset1         ),               //input               
.clk_200m           (clk_200m       ),               //input               

.data_en            (data_en        ),               //output reg          
.data_in_last       (data_in_last   ),               //output reg          
.data_in_rgb        (data_in_rgb    )                //output reg[23:0]    
);



gearbox u_gearbox(
.reset        ( reset        ),
.clk          ( clk_200m     ),

.data_in      ( data_in_rgb  ),
.data_in_last ( data_in_last ),
.data_en      ( data_en      ),

.data_out     ( data_out_rgbr),
.data_out_en  ( data_out_en  )
);






endmodule
