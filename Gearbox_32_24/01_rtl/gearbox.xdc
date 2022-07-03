create_clock -period 2.857 -name clk_in -waveform {0.000 1.429} [get_ports clk_in]
create_clock -period 2.000 -name clk_out -waveform {0.000 1.000} [get_ports clk_out]
