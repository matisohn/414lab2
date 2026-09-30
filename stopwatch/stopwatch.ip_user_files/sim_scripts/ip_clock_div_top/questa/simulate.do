onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ip_clock_div_top_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ip_clock_div_top.udo}

run 1000ns

quit -force
