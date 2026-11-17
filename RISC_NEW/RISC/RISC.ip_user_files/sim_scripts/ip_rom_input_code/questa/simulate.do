onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ip_rom_input_code_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ip_rom_input_code.udo}

run 1000ns

quit -force
