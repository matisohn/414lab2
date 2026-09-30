transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../ipstatic" "+incdir+../../../../../../../../AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"C:/AMDDesignTools/2026.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/AMDDesignTools/2026.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../../stopwatch.gen/sources_1/ip/ip_clock_div_top/ip_clock_div_top_clk_wiz.v" \
"../../../../stopwatch.gen/sources_1/ip/ip_clock_div_top/ip_clock_div_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

