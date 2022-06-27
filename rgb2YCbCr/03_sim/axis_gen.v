`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 02:31:58 PM
// Design Name: 
// Module Name: axis_gen
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


module axis_gen(
//==================================================
// input clock and reset
input wire clk_in                                   ,
input wire reset                                    ,

//==================================================
// output axistream video data
output reg[23:0] tdata                              ,
output reg tlast                                    ,
input wire tready                                  ,
output reg tuser                                    ,
output reg tvalid                          ,

output reg  done
);

//=============================================================
// rst_in gen
reg         rst_in         = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg         rst_in_dly1    = 1'b1;
(* ASYNC_REG = "TRUE" *)
reg         rst_in_dly2    = 1'b1;

reg[7:0]    rst_dly_cnt    = 8'd0;

always @ (posedge clk_in or posedge reset)
begin
    if (reset)
        rst_in_dly1    <= 1'b1;
    else
        rst_in_dly1    <= 1'b0;
end

always @ (posedge clk_in)
begin
    if (rst_in_dly1)
        rst_dly_cnt <= 8'd0;
    else if (&rst_dly_cnt)
        rst_dly_cnt <= rst_dly_cnt;
    else
        rst_dly_cnt <= rst_dly_cnt + 1'b1;
end

always @ (posedge clk_in)
begin
    if (&rst_dly_cnt)
        rst_in_dly2 <= rst_in_dly1;
    else
        rst_in_dly2 <= 1'b1; 
end

always @ (posedge clk_in)
begin
    rst_in         <= rst_in_dly2;
end

//=============================================================
// 
localparam FILE_BIN_IN = "../../../../../03_sim/test.bin";

integer         fd_in;
integer         i;
integer         code;
reg[23:0]       rgb_data [1919:0];
reg[15:0]       h_cnt		= 16'd0;
reg[15:0]       v_cnt		= 16'd0;

initial
begin
    done = 1'b0;
    fd_in = $fopen(FILE_BIN_IN, "rb");
    if(fd_in == 0)
    begin
        $display("$open file bin in failed") ;
        $stop;
    end
    $display("\n ============= file bin in opened... ============= ") ;

//    for (i=0; i <= 1919; i = i + 1)
//    begin
//        code = $fread(rgb_data[i], fd_in, 0, 1); 
//    end

//    $fclose(fd_in);
end
  
always @ (posedge clk_in)
begin
    if (rst_in)
        done    <= 1'b0;
    else if (v_cnt == 16'd1081)
        done    <= 1'b1;
    else
        done    <= 1'b0;
end

reg     done_dly;

always @ (posedge clk_in)
begin
    done_dly <= done;
end

always @ (posedge clk_in)
begin
    if ({done_dly,done} == 2'b10)
        $fclose(fd_in);
    else
        ;
end

always @ (posedge clk_in)
begin
    if (rst_in)
        h_cnt   <= 16'd0;
    else if (h_cnt == 16'd2250)
        h_cnt   <= 16'd0;
    else
        h_cnt   <= h_cnt + 1'b1;
end

always @ (posedge clk_in)
begin
    if (rst_in)
        v_cnt   <= 16'd0;
    else if (v_cnt == 16'd1125)
        v_cnt   <= 16'd0;
    else if (h_cnt == 16'd2250)
        v_cnt   <= v_cnt + 1'b1;
    else
        v_cnt   <= v_cnt;
end

always @ (posedge clk_in)
begin
    if (rst_in)
        tdata   <= 24'd0;
    //else if ((h_cnt > 0 && h_cnt <=2 || h_cnt>5 && h_cnt <= 16'd1923) && v_cnt >= 0 && v_cnt <= 1080 -1)
    else if ((h_cnt>0 && h_cnt <= 16'd1920) && v_cnt >= 0 && v_cnt <= 1080 -1)
        begin
             tdata[23:16]   <= $fgetc(fd_in);
             tdata[15:8]   <= $fgetc(fd_in);
             tdata[7:0]   <= $fgetc(fd_in);
//            tdata   <= rgb_data[h_cnt-1];
        end
    else
        tdata   <= tdata;
end

always @ (posedge clk_in)
begin
    if  (h_cnt == 16'd1920 && v_cnt == 1080 -1)
        $fclose(fd_in);
    else
        ;
end

always @ (posedge clk_in)
begin
    if (rst_in)
        tlast   <= 1'b0;
    else if ((h_cnt == 16'd1920 && v_cnt >= 0 && v_cnt <= 1080 - 1))
        tlast   <= 1'b1;
    else
        tlast   <= 1'b0;
end

always @ (posedge clk_in)
begin
    if (rst_in)
        tuser   <= 1'b0;
    else if (h_cnt == 16'd1 && v_cnt == 16'd0)
        tuser   <= 1'b1;
    else
        tuser   <= 1'b0;
end

always @ (posedge clk_in)
begin
    if (rst_in)
        tvalid  <= 1'b0;
    else if ((h_cnt > 0 && h_cnt <= 16'd1920) && v_cnt >= 0 && v_cnt <= 1080 - 1)
        tvalid  <= 1'b1;
    else
        tvalid  <= 1'b0;
end




endmodule
