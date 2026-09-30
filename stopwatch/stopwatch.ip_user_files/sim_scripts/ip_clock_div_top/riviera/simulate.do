transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ip_clock_div_top  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ip_clock_div_top xil_defaultlib.glbl

do {ip_clock_div_top.udo}

run 1000ns

endsim

quit -force
