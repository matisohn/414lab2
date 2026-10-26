set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports data_in_A]
set_property IOSTANDARD LVCMOS33 [get_ports data_in_B]
set_property IOSTANDARD LVCMOS33 [get_ports count_out]

#set_property PACKAGE_PIN E3 [get_ports clk]
set_property PACKAGE_PIN P4 [get_ports reset]
set_property PACKAGE_PIN U8 [get_ports data_in_A]
set_property PACKAGE_PIN U9 [get_ports data_in_B]
set_property PACKAGE_PIN T8 [get_ports count_out]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

create_clock -period 10.0 -name clk [get_ports clk]
#set_input_delay  -clock clk -max 5.0 [get_ports data_in]
#set_output_delay -clock clk -max 5.0 [get_ports data_out]   