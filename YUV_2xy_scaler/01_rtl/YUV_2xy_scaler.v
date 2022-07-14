`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2022 10:42:31 AM
// Design Name: 
// Module Name: YCbCr_scaler
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


module YUV_2xy_scaler #(
parameter pix_per_clock     = 1,
parameter data_width        = 8,
parameter scaler_rate       = 2,
parameter out_pix_per_clock = 4,
parameter h_total           = 1920,
parameter v_total           = 1080
)
(
//==================================================
// input clock and reset
input wire clk_in                                   ,
input wire reset                                    ,

//==================================================
// input axistream video data
input wire[23:0] rdata                              ,
input wire rlast                                    ,
output reg rready                                   ,
input wire ruser                                    ,
input wire rvalid                                   ,

//==================================================
// output axistream video data
output reg[63:0] tdata                              ,
output reg tlast                                    ,
input wire tready                                   ,
output reg tuser                                    ,
output reg tvalid                                   

);

localparam TCQ = 1;

//---------------------------------------
// ready bypass
always @ (posedge clk_in)
begin
    rready <= #TCQ tready;
end

//---------------------------------------
// data/last/user/valid signal delay
reg[23:0]   rdata_pre   [2:0];
reg         rlast_pre   [2:0];
reg         ruser_pre   [2:0];   
reg         rvalid_pre  [2:0];

always @ (posedge clk_in)
begin
    rdata_pre[0]    <= #TCQ rdata;
    rlast_pre[0]    <= #TCQ rlast;
    ruser_pre[0]    <= #TCQ ruser;
    rvalid_pre[0]   <= #TCQ rvalid;
end

genvar i;
generate
for (i=1; i<=2; i=i+1)
    begin
        always @ (posedge clk_in)
            begin
                rdata_pre[i]    <= #TCQ rdata_pre[i-1];
                rlast_pre[i]    <= #TCQ rlast_pre[i-1];
                ruser_pre[i]    <= #TCQ ruser_pre[i-1];
                rvalid_pre[i]   <= #TCQ rvalid_pre[i-1];
            end
        end
endgenerate

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
    rst_in         <= #TCQ rst_in_dly2 || ruser;
end


//=============================================================
// data input and pixel count (bram write logic)

//=============================================================
// formula 3*3 => 6*6
// Y00-U00-V00            Y01-U01-V01            Y02-U02-V02
// Y10-U10-V10            Y11-U11-V11            Y12-U12-V12
// Y20-U20-V20            Y21-U21-V21            Y22-U22-V22
//                            ||
//                            ||
//                            \/
// Y00-U00-V00     Y'00   Y01-U01-V01     Y'01   Y02-U02-V02     Y02
// Y'00-U'00-V'00  Y'X    Y'01-U'01-V'01  Y'X    Y'02-U'02-V'02  Y'02
// Y10-U10-V10     Y'10   Y11-U11-V11     Y'11   Y12-U12-V12     Y12
// Y'10-U'10-V'10  Y'X    Y'11-U'11-V'11  Y'X    Y'12-U'12-V'12  Y'12
// Y20-U20-V20     Y'20   Y21-U21-V21     Y'21   Y22-U22-V22     Y22
// Y20-U20-V20     Y'20   Y21-U21-V21     Y'21   Y22-U22-V22     Y22

reg[23:0]       rdata_dly1  = 24'd0     ;
reg[23:0]       rdata_dly2  = 24'd0     ;
reg[31:0]       data_pre    = 32'd0     ;
reg[7:0]        Y           = 8'd0      ;

reg             rlast_dly1  = 1'd0      ;
(* ASYNC_REG = "TRUE" *)
reg             rlast_dly2  = 1'd0      ;

reg             ruser_dly1  = 1'd0      ;
(* ASYNC_REG = "TRUE" *)
reg             ruser_dly2  = 1'd0      ;

reg             rvalid_dly1 = 1'd0      ;
(* ASYNC_REG = "TRUE" *)
reg             rvalid_dly2 = 1'd0      ;


// horizon and vertical count
reg[15:0]       h_cnt		= 16'd0;
reg[15:0]       v_cnt		= 16'd0;

reg[5:0]        h_subcnt    = 6'd0;
reg             h_subcnt_en = 1'b0;
reg             h_subcnt4_dly       ;

// BRAM address
reg[15:0]       w_addr      = 16'd0;

// line last and frame start signal delay
always @ (posedge clk_in)
begin
    rlast_dly1      <= #TCQ rlast_pre[2];
    rlast_dly2      <= #TCQ rlast_dly1;
    h_subcnt4_dly   <= #TCQ h_subcnt[4];

    ruser_dly1      <= #TCQ ruser_pre[2];
    ruser_dly2      <= #TCQ ruser_dly1;
end

// horizon count
always @ (posedge clk_in)
begin
    if (rst_in)
        h_cnt   <= #TCQ 16'd0;
    else if ({h_subcnt4_dly,h_subcnt[4]} == 2'b01)
        h_cnt   <= #TCQ 16'd0;
    else if (rvalid_pre[2] || rvalid_dly1)
        h_cnt   <= #TCQ h_cnt + 1'b1;
    else
        h_cnt   <= #TCQ h_cnt;
end

// vertical count
always @ (posedge clk_in)
begin
    if (rst_in)
        v_cnt   <= #TCQ 16'd0;
    else if ({ruser_dly2,ruser_dly1} == 2'b10)
        v_cnt   <= #TCQ 16'd0;
    else if ({h_subcnt4_dly,h_subcnt[4]} == 2'b01)
        v_cnt   <= #TCQ v_cnt + 1'b1;
    else
        v_cnt   <= #TCQ v_cnt;
end

// horizon subcount
always @ (posedge clk_in)
begin
    if (rst_in)
        h_subcnt_en <= #TCQ 1'd0;
    else if (h_subcnt[5])
        h_subcnt_en <= #TCQ 1'b0;
    else if ({rlast_dly2,rlast_dly1} == 2'b01)
        h_subcnt_en <= #TCQ 1'b1;
    else
        h_subcnt_en <= #TCQ h_subcnt_en;
end

// horizen sub counter, gennerate line end logics
always @ (posedge clk_in)
begin
    if (rst_in)
        h_subcnt   <= #TCQ 6'd0;
    else if (h_subcnt_en)
        h_subcnt   <= #TCQ h_subcnt + 1'b1;
    else
        h_subcnt   <= #TCQ 6'd0;
end

// data valid delay 1
always @ (posedge clk_in)
begin
    if (rst_in)
        rvalid_dly1 <= #TCQ 1'b0;
    else if (w_addr == h_total - 2'd3)
        rvalid_dly1 <= #TCQ 1'b1;
    else
        rvalid_dly1 <= #TCQ rvalid_pre[2];
end

// data valid delay 2
always @ (posedge clk_in)
begin
    if (rst_in)
        rvalid_dly2 <= #TCQ 1'b0;
    else if (rvalid_dly1 && h_cnt != 16'd1)
        rvalid_dly2 <= #TCQ 1'b1;
    else
        rvalid_dly2 <= #TCQ 1'b0;
end

// data delay
always @ (posedge clk_in)
begin
    rdata_dly1  <= #TCQ rdata_pre[2];
    rdata_dly2  <= #TCQ rdata_dly1;
end

// scaler Y creation
always @ (posedge clk_in) 
begin
    if(rst_in)
        Y <= #TCQ 8'd0;
    else
        if (rvalid_pre[2])
            Y   <= #TCQ (rdata_pre[2][7:0] >> 1) + (rdata_dly1[7:0] >> 1);
        else
            Y   <= #TCQ Y;
end

// new data stream generate
always @ (posedge clk_in) 
begin
    if (rst_in)    
        data_pre <= #TCQ 32'd0;
    else
        if (rvalid_dly1)
            data_pre <= #TCQ {rdata_dly2[23:16],Y[7:0],rdata_dly2[15:0]};
        else
            data_pre <= #TCQ 32'd0;
end

// write address
always @ (posedge clk_in)
begin
    if (rst_in)
        w_addr  <= #TCQ 16'd0;
    else if ({h_subcnt4_dly,h_subcnt[4]} == 2'b01)
        w_addr  <= #TCQ 16'd0;
    else if (rvalid_dly2)
        w_addr  <= #TCQ w_addr + 1'b1;
    else
        w_addr  <= #TCQ w_addr;
end

// write enable
reg[2:0]    ena_sw  = 3'd0;

always @ (posedge clk_in) 
begin
    if (rst_in)
        ena_sw  <= 3'd0;    
    else
        case (v_cnt%3)
            0: 
                begin
                    ena_sw[0] = #TCQ 1'b1;
                    ena_sw[1] = #TCQ 1'b0;
                    ena_sw[2] = #TCQ 1'b0;
                end
            1:
                begin
                    ena_sw[0] = #TCQ 1'b0;
                    ena_sw[1] = #TCQ 1'b1;
                    ena_sw[2] = #TCQ 1'b0;
                end
            2: 
                begin
                    ena_sw[0] = #TCQ 1'b0;
                    ena_sw[1] = #TCQ 1'b0;
                    ena_sw[2] = #TCQ 1'b1;
                end
            default: 
                begin
                    ena_sw[0] = #TCQ 1'b0;
                    ena_sw[1] = #TCQ 1'b0;
                    ena_sw[2] = #TCQ 1'b0;
                end
        endcase
end


//===============================================================================
// line scaler (bram read logic)
reg         rd_last;
reg         rd_last_dly1;
reg         rd_last_dly2;

// read line count
reg[15:0]   rd_cnt;
// three bram switch
reg[2:0]    bram_sw     = 3'd0;

always @ (posedge clk_in)
begin
    if (rst_in)
        bram_sw <= #TCQ 3'd0;
    else if ({h_subcnt4_dly,h_subcnt[4]} == 2'b01)
        case (v_cnt%3)
            0: bram_sw[0]   <= #TCQ 1'b1;
            1: bram_sw[1]   <= #TCQ 1'b1;
            2: bram_sw[2]   <= #TCQ 1'b1;
            default: bram_sw    <= #TCQ 3'd0;
        endcase
    else if ({rd_last_dly2,rd_last_dly1} == 2'b10)
        case (rd_cnt%6)
            1: bram_sw[0]   <= #TCQ 1'b0;
            3: bram_sw[1]   <= #TCQ 1'b0;
            5: bram_sw[2]   <= #TCQ 1'b0;
            default: bram_sw    <= #TCQ bram_sw;
        endcase
    else
        bram_sw <= #TCQ bram_sw;
end

// read line count
always @ (posedge clk_in)
begin
    if (rst_in)
        rd_cnt  <= #TCQ 16'd0;
    else if (rd_cnt > (v_total << 1))
        rd_cnt  <= #TCQ 16'd0;
    else if ({rd_last_dly2,rd_last_dly1} == 2'b10) 
        rd_cnt  <= #TCQ rd_cnt + 1'b1;
    else
        rd_cnt  <= #TCQ rd_cnt;
end

// read state machine
localparam  RD_IDLE         = 3'd0;
localparam  RD_READ0c       = 3'd1;     //new line read
localparam  RD_READ1c       = 3'd2;     //new line read
localparam  RD_READ2c       = 3'd3;     //new line read

localparam  RD_READ0s       = 3'd4;     //origen line read
localparam  RD_READ1s       = 3'd5;     //origen line read
localparam  RD_READ2s       = 3'd6;     //origen line read

reg[2:0]    rd_state        = 3'd0;
reg[2:0]    rd_state_dly    = 3'd0;

always @ (posedge clk_in)
begin
    if (rst_in)
        rd_state    <= #TCQ RD_IDLE;
    else
        case (rd_state)
            RD_IDLE :   
                begin
                    if (rd_cnt == v_total << 1)         // frame end last line equal the previous line
                        case (v_total%3)
                            0:  rd_state    <= #TCQ RD_READ2s;
                            1:  rd_state    <= #TCQ RD_READ0s;
                            2:  rd_state    <= #TCQ RD_READ1s;
                            default: rd_state   <= #TCQ RD_IDLE;
                        endcase
                    else if ({h_subcnt[5:4]} == 2'b10)
                        begin
                            case (bram_sw)
                                3'b001: rd_state    <= #TCQ RD_READ0c;
                                3'b010: rd_state    <= #TCQ RD_READ1c;
                                3'b100: rd_state    <= #TCQ RD_READ2c;
                                default: rd_state   <= #TCQ RD_IDLE;
                            endcase
                        end
                    else
                        rd_state    <= #TCQ RD_IDLE;
                end
            RD_READ0c:   
                begin
                    if ({rd_last_dly2,rd_last_dly1} == 2'b10)
                        rd_state    <= #TCQ RD_READ0s;
                    else
                        rd_state    <= #TCQ RD_READ0c;
                end
            RD_READ1c:
                begin
                    if ({rd_last_dly2,rd_last_dly1} == 2'b10)
                        rd_state    <= #TCQ RD_READ1s;
                    else
                        rd_state    <= #TCQ RD_READ1c;
                end   
            RD_READ2c:
                begin
                    if ({rd_last_dly2,rd_last_dly1} == 2'b10)
                        rd_state    <= #TCQ RD_READ2s;
                    else
                        rd_state    <= #TCQ RD_READ2c;
                end
            RD_READ0s:
                begin
                    if ({rd_last_dly2,rd_last_dly1} == 2'b10)
                        rd_state    <= #TCQ RD_IDLE;
                    else
                        rd_state    <= #TCQ RD_READ0s; 
                end
            RD_READ1s:
                begin
                    if ({rd_last_dly2,rd_last_dly1} == 2'b10)
                        rd_state    <= #TCQ RD_IDLE;
                    else
                        rd_state    <= #TCQ RD_READ1s; 
                end
            RD_READ2s:
                begin
                    if ({rd_last_dly2,rd_last_dly1} == 2'b10)
                        rd_state    <= #TCQ RD_IDLE;
                    else
                        rd_state    <= #TCQ RD_READ2s;
                end
            default: rd_state   <= #TCQ RD_IDLE;
        endcase
end

always @ (posedge clk_in)
begin
    rd_state_dly    <= #TCQ rd_state;
end

// read address and enable
reg[9:0]    r_addr  = 10'd0;
reg         enb0;
reg         enb1;
reg         enb2;

always @ (posedge clk_in)
begin
    if (rst_in)
        r_addr  <= #TCQ 10'd0;
    else if (rd_state == RD_IDLE)
        r_addr  <= #TCQ 10'd0;
    else if (rd_state_dly != rd_state)
        r_addr  <= #TCQ 10'd0;
    else if (enb0 || enb1 || enb2)
        r_addr  <= #TCQ r_addr + 1'b1;
    else
        r_addr  <= #TCQ r_addr;
end

always @ (posedge clk_in) 
begin
    if (rst_in)
        begin
            enb0    <= #TCQ 1'b0;
            enb1    <= #TCQ 1'b0;
            enb2    <= #TCQ 1'b0;
        end
    else if (r_addr <= (h_total >> 1))
        case (rd_state)
            RD_IDLE:
                begin
                    enb0    <= #TCQ 1'b0;
                    enb1    <= #TCQ 1'b0;
                    enb2    <= #TCQ 1'b0;
                end
            RD_READ0c:
                begin
                    enb0    <= #TCQ 1'b1;
                    enb1    <= #TCQ 1'b0;
                    enb2    <= #TCQ 1'b1;
                end 
            RD_READ1c:
                begin
                    enb0    <= #TCQ 1'b1;
                    enb1    <= #TCQ 1'b1;
                    enb2    <= #TCQ 1'b0;
                end
            RD_READ2c:
                begin
                    enb0    <= #TCQ 1'b0;
                    enb1    <= #TCQ 1'b1;
                    enb2    <= #TCQ 1'b1;
                end
            RD_READ0s:
                begin
                    enb0    <= #TCQ 1'b1;
                    enb1    <= #TCQ 1'b0;
                    enb2    <= #TCQ 1'b0;
                end
            RD_READ1s:
                begin
                    enb0    <= #TCQ 1'b0;
                    enb1    <= #TCQ 1'b1;
                    enb2    <= #TCQ 1'b0;
                end
            RD_READ2s: 
                begin
                    enb0    <= #TCQ 1'b0;
                    enb1    <= #TCQ 1'b0;
                    enb2    <= #TCQ 1'b1;
                end
            default: 
                begin
                    enb0    <= #TCQ 1'b0;
                    enb1    <= #TCQ 1'b0;
                    enb2    <= #TCQ 1'b0;
                end
        endcase
    else
        begin
            enb0    <= #TCQ 1'b0;
            enb1    <= #TCQ 1'b0;
            enb2    <= #TCQ 1'b0;
        end
end



//===============================================================================
// line double bram0
wire[63:0]      doutb0;
wire[63:0]      doutb1;
wire[63:0]      doutb2;

reg[63:0]       tdata_pre;
reg             tvalid_pre;

bram_32w2048d_64w1024d u0 (
  .clka(clk_in),    // input wire clka
  .ena(ena_sw[0]),      // input wire ena
  .wea(rvalid_dly2),      // input wire [0 : 0] wea
  .addra(w_addr[10:0]),  // input wire [10 : 0] addra
  .dina(data_pre),    // input wire [31 : 0] dina

  .clkb(clk_in),    // input wire clkb
  .enb(enb0),      // input wire enb
  .addrb(r_addr),  // input wire [9 : 0] addrb
  .doutb(doutb0)  // output wire [63 : 0] doutb
);

// line double bram1
bram_32w2048d_64w1024d u1 (
  .clka(clk_in),    // input wire clka
  .ena(ena_sw[1]),      // input wire ena
  .wea(rvalid_dly2),      // input wire [0 : 0] wea
  .addra(w_addr[10:0]),  // input wire [10 : 0] addra
  .dina(data_pre),    // input wire [31 : 0] dina

  .clkb(clk_in),    // input wire clkb
  .enb(enb1),      // input wire enb
  .addrb(r_addr),  // input wire [9 : 0] addrb
  .doutb(doutb1)  // output wire [63 : 0] doutb
);

// line double bram2
bram_32w2048d_64w1024d u2 (
  .clka(clk_in),    // input wire clka
  .ena(ena_sw[2]),      // input wire ena
  .wea(rvalid_dly2),      // input wire [0 : 0] wea
  .addra(w_addr[10:0]),  // input wire [10 : 0] addra
  .dina(data_pre),    // input wire [31 : 0] dina

  .clkb(clk_in),    // input wire clkb
  .enb(enb2),      // input wire enb
  .addrb(r_addr),  // input wire [9 : 0] addrb
  .doutb(doutb2)  // output wire [63 : 0] doutb
);

// read data produce
always @ (posedge clk_in)
begin
    if (rst_in)
        tdata_pre   <= #TCQ 64'd0;
    else
        case (rd_state)
            RD_IDLE:
                begin
                    tdata_pre   <= #TCQ 64'd0;
                end
            RD_READ0c:
                begin
                    tdata_pre   <= #TCQ (doutb0 >> 1) + (doutb2 >>1);
                end
            RD_READ0s:
                begin
                    tdata_pre   <= #TCQ doutb0;
                end
            RD_READ1c:
                begin
                    tdata_pre   <= #TCQ (doutb0 >> 1) + (doutb1 >>1);
                end
            RD_READ1s:
                begin
                    tdata_pre   <= #TCQ doutb1;
                end
            RD_READ2c:
                begin
                    tdata_pre   <= #TCQ (doutb1 >> 1) + (doutb2 >>1);
                end
            RD_READ2s: 
                begin
                    tdata_pre   <= #TCQ doutb2;
                end
            default: 
                begin
                    tdata_pre   <= #TCQ 64'd0;
                end
        endcase
end

// read last
always @ (posedge clk_in) 
begin
    if (rst_in)
        rd_last   <= #TCQ 1'b0;
    else if (r_addr == (h_total >> 1))
        rd_last   <= #TCQ 1'b1;
    else
        rd_last   <= #TCQ 1'b0;
end

always @ (posedge clk_in)
begin
    rd_last_dly1    <= #TCQ rd_last;
    rd_last_dly2    <= #TCQ rd_last_dly1; 
end

// read data register output
always @ (posedge clk_in) 
begin
    if (rst_in)
        tdata   <= #TCQ 64'd0;
    else if (rd_cnt >= 16'd1 && rd_cnt <= (v_total << 1))
        tdata   <= #TCQ tdata_pre;
    else
        tdata   <= #TCQ 64'd0;    
end

// tuser generate
always @ (posedge clk_in)
begin
    if (rst_in)
        tuser   <= #TCQ 1'b0;
    else if (rd_cnt == 16'd1 && r_addr == 16'd3)
        tuser   <= #TCQ 1'b1; 
    else
        tuser   <= #TCQ 1'b0;
end

// tlast generate
always @ (posedge clk_in)
begin
    if (rst_in)
        tlast   <= #TCQ 1'b0;
    else if (rd_cnt >= 1'b1)
        tlast   <= #TCQ rd_last_dly1;
    else
        tlast   <= #TCQ 1'b0;
end

// tvalid generate
always @ (posedge clk_in)
begin
    if (rst_in)
        tvalid_pre  <= #TCQ 1'b0;
    else if (rd_cnt >= 16'd1 && r_addr >= 16'd2)
        tvalid_pre  <= #TCQ enb0 || enb1 || enb2;
    else
        tvalid_pre  <= #TCQ 1'b0;
end

always @ (posedge clk_in) 
begin
    tvalid  <= #TCQ tvalid_pre;    
end


endmodule
