`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 11:14:16 AM
// Design Name: 
// Module Name: sim_top
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


module sim_top(
);

reg clk_in;
reg reset;

initial
begin
    reset = 1'b1;
    # 1000;
    reset = 1'b0;
end

always begin
    clk_in = 1'b0;
    forever #3.333 clk_in = ~clk_in;
end



wire[23:0]      tdata           ;
wire            tlast           ;
wire            treadsy         ;
wire            tuser           ;
wire            tvalid          ;
wire            done            ;


axis_gen u_axis_gen(
    .clk_in   ( clk_in   ),
    .reset    ( reset    ),

    .tdata    ( tdata    ),
    .tlast    ( tlast    ),
    .tready   ( tready   ),
    .tuser    ( tuser    ),
    .tvalid   ( tvalid   ),
    .done     ( done     )
);

reg     done_dly;

always @ (posedge clk_in)
begin
    done_dly <= done;
end


wire[23:0]  tdata_1         ; 
wire        tlast_1         ;
wire        tready_1       ;
wire        tuser_1         ;
wire        tvalid_1        ;

localparam FILE_BIN_OUT = "../../../../../03_sim/test_out.bin";

integer     fd_out;

initial
begin

    fd_out = $fopen(FILE_BIN_OUT, "wb");
    if(fd_out == 0)
    begin
        $display("$open file bin out failed") ;
        $stop;
    end
    $display("\n ============= file bin out opened... ============= ") ;

end

reg[15:0]   vic_delay = 16'hffff;

always @ (posedge clk_in)
begin
    if (reset)
        vic_delay   <= 16'hffff;
    else if ({done_dly,done} == 2'b01)
        vic_delay   <= 16'd0;
    else if (&vic_delay)
        vic_delay   <= vic_delay;
    else
        vic_delay   <= vic_delay + 1'b1;
end

always @ (posedge clk_in)
begin
    if (vic_delay == 16'd5000)
        begin
            $fclose(fd_out);
            $stop;
        end
    else
        ;
end


rgb2YCbCr#(
    .pix_per_clock ( 1 ),
    .data_width    ( 8 )
)u_rgb2YCbCr(
    .clk_in        ( clk_in        ),
    .reset         ( reset         ),

    .rdata         ( tdata         ),
    .rlast         ( tlast         ),
    .rready        ( tready       ),
    .ruser         ( tuser         ),
    .rvalid        ( tvalid        ),

    .tdata         ( tdata_1       ),
    .tlast         ( tlast_1       ),
    .tready        ( tready_1     ),
    .tuser         ( tuser_1       ),
    .tvalid        ( tvalid_1      )
);

wire[64:0]  tdata_2         ; 
wire        tlast_2         ;
wire        tready_2         = 1'b1;
wire        tuser_2         ;
wire        tvalid_2        ;


YUV_2xy_scaler#(
    .pix_per_clock ( 1 ),
    .data_width    ( 8 ),
    .scaler_rate   ( 2 ),
    .out_pix_per_clock ( 4 )
)u_YUV_2xy_scaler(
    .clk_in        ( clk_in        ),
    .reset         ( reset         ),

    .rdata         ( tdata_1        ),
    .rlast         ( tlast_1        ),
    .rready        ( tready_1      ),
    .ruser         ( tuser_1        ),
    .rvalid        ( tvalid_1       ),
    
    .tdata         ( tdata_2        ),
    .tlast         ( tlast_2        ),
    .tready        ( tready_2       ),
    .tuser         ( tuser_2        ),
    .tvalid        ( tvalid_2       )
);


always @ (posedge clk_in)
begin
    if (tvalid_2)
        begin
            $fwrite(fd_out,"%c",tdata_2[7:0]);
            $fwrite(fd_out,"%c",tdata_2[15:8]);
            $fwrite(fd_out,"%c",tdata_2[23:16]);
            $fwrite(fd_out,"%c",tdata_2[31:24]);
            $fwrite(fd_out,"%c",tdata_2[39:32]);
            $fwrite(fd_out,"%c",tdata_2[47:40]);
            $fwrite(fd_out,"%c",tdata_2[55:48]);
            $fwrite(fd_out,"%c",tdata_2[63:56]);
        end
    else
        ;
end






endmodule
