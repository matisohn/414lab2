## Lab 3 stopwatch - Nexys 4 DDR / Nexys A7

## clock 100MHz
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## buttons / switch
set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports clr_n]
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports btn_start]
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports sw_blink]

## 7 segment
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports {seg[0]}]
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports {seg[1]}]
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports {seg[2]}]
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports {seg[3]}]
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports {seg[4]}]
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports {seg[5]}]
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports {seg[6]}]
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports dp]

set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports {an[0]}]
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports {an[1]}]
set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports {an[2]}]
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports {an[3]}]
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports {an[4]}]
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports {an[5]}]
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports {an[6]}]
set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports {an[7]}]

## timing budget (10ns clock)
## all logic inside the fpga runs on the 100MHz clock -> 10ns per path.
## the buttons, switch and display are not synchronous to any outside chip
## (a person presses the buttons and looks at the display), so the paths
## between the pins and the flip flops are not timed. the inputs go through
## synchronizers and the outputs only change every 5ms.
set_false_path -from [get_ports {btn_start sw_blink}] -to [all_registers]
set_false_path -from [all_registers] -to [get_ports {an[*] seg[*] dp}]

## pad to pad (should be no paths since outputs are registered)
set_max_delay 15 -from [get_ports {btn_start sw_blink}] -to [all_outputs]

## clear is async
set_false_path -from [get_ports clr_n]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
