transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ip_clk_div  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ip_clk_div xil_defaultlib.glbl

do {ip_clk_div.udo}

run 1000ns

endsim

quit -force
