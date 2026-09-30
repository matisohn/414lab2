## Clock (100 MHz onboard oscillator)
set_property PACKAGE_PIN E3 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} [get_ports Clk]

## Reset (center pushbutton, cluster of 5)
set_property PACKAGE_PIN P4 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## Enable pin
set_property PACKAGE_PIN P3 [get_ports {E}]
set_property IOSTANDARD LVCMOS33 [get_ports {E}]

## overflow and sign
set_property PACKAGE_PIN T8 [get_ports OF]
set_property IOSTANDARD LVCMOS33 [get_ports OF]
set_property PACKAGE_PIN V9 [get_ports sign]
set_property IOSTANDARD LVCMOS33 [get_ports sign]

## A[3:0] -> SW0-SW3
set_property PACKAGE_PIN R5 [get_ports {A[0]}]
set_property PACKAGE_PIN V7 [get_ports {A[1]}]
set_property PACKAGE_PIN V6 [get_ports {A[2]}]
set_property PACKAGE_PIN V5 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[*]}]

## B[3:0] -> SW4-SW7
set_property PACKAGE_PIN U9 [get_ports {B[0]}]
set_property PACKAGE_PIN U8 [get_ports {B[1]}]
set_property PACKAGE_PIN R7 [get_ports {B[2]}]
set_property PACKAGE_PIN R6 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[*]}]

## LEDS
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_enable[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_enable[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_enable[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sev_seg_leds[0]}]

set_property PACKAGE_PIN N2 [get_ports {led_disable[4]}]
set_property PACKAGE_PIN N5 [get_ports {led_disable[3]}]
set_property PACKAGE_PIN M1 [get_ports {led_disable[2]}]
set_property PACKAGE_PIN L1 [get_ports {led_disable[1]}]
set_property PACKAGE_PIN N6 [get_ports {led_disable[0]}]

set_property PACKAGE_PIN L6 [get_ports {sev_seg_leds[7]}]
set_property PACKAGE_PIN M2 [get_ports {sev_seg_leds[6]}]
set_property PACKAGE_PIN K3 [get_ports {sev_seg_leds[5]}]
set_property PACKAGE_PIN L4 [get_ports {sev_seg_leds[4]}]
set_property PACKAGE_PIN L5 [get_ports {sev_seg_leds[3]}]
set_property PACKAGE_PIN N1 [get_ports {sev_seg_leds[2]}]
set_property PACKAGE_PIN L3 [get_ports {sev_seg_leds[1]}]
set_property PACKAGE_PIN M4 [get_ports {sev_seg_leds[0]}]

set_property PACKAGE_PIN N4 [get_ports {led_enable[2]}]
set_property PACKAGE_PIN M3 [get_ports {led_enable[1]}]
set_property PACKAGE_PIN M6 [get_ports {led_enable[0]}]