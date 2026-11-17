transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_13
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_13 riviera/blk_mem_gen_v8_4_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+C:/AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_13 -l xil_defaultlib \
"C:/AMDDesignTools/2026.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/AMDDesignTools/2026.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_13  -incr -v2k5 "+incdir+C:/AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_13 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+C:/AMDDesignTools/2026.1/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_13 -l xil_defaultlib \
"../../../../RISC.gen/sources_1/ip/ip_rom_input_code/sim/ip_rom_input_code.v" \


vlog -work xil_defaultlib \
"glbl.v"

