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
reg         tready_1       = 1'b1;
wire        tuser_1         ;
wire        tvalid_1        ;

// vivado sim file path
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



always @ (posedge clk_in)
begin
    if (tvalid_1)
        begin
            $fwrite(fd_out,"%c",tdata_1[7:0]);
            $fwrite(fd_out,"%c",tdata_1[15:8]);
            $fwrite(fd_out,"%c",tdata_1[23:16]);
        end
    else
        ;
end





endmodule
