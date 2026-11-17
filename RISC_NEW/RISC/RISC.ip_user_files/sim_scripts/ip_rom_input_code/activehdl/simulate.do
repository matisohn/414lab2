transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ip_rom_input_code  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ip_rom_input_code xil_defaultlib.glbl

do {ip_rom_input_code.udo}

run 1000ns

endsim

quit -force
