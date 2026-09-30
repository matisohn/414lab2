## Clock (100 MHz onboard oscillator)
set_property PACKAGE_PIN E3 [get_ports board_clk]
set_property IOSTANDARD LVCMOS33 [get_ports board_clk]

## Reset (center pushbutton, cluster of 5)
set_property PACKAGE_PIN v10 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

# switches
set_property PACKAGE_PIN U9 [get_ports on_switch]
set_property IOSTANDARD LVCMOS33 [get_ports on_switch]

set_property PACKAGE_PIN U8 [get_ports blink_switch]
set_property IOSTANDARD LVCMOS33 [get_ports blink_switch]
## LEDS
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_disable[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_enable[3]}]
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

set_property PACKAGE_PIN N2 [get_ports {led_enable[3]}]
set_property PACKAGE_PIN N4 [get_ports {led_enable[2]}]
set_property PACKAGE_PIN M3 [get_ports {led_enable[1]}]
set_property PACKAGE_PIN M6 [get_ports {led_enable[0]}]