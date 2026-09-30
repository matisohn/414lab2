transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"C:/AMDDesignTools/2026.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2026.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../../stopwatch.gen/sources_1/ip/ip_clk_div/ip_clk_div_clk_wiz.v" \
"../../../../stopwatch.gen/sources_1/ip/ip_clk_div/ip_clk_div.v" \

vlog -work xil_defaultlib \
"glbl.v"

