vcom dff.vhd
vcom dff_tb.vhd
vsim work.dff_tb

puts "D CLK RST Q"

run 100 ms
examine sim:/dff_tb/*

run 100 ms
examine sim:/dff_tb/*

run 100 ms
examine sim:/dff_tb/*

run 100 ms
examine sim:/dff_tb/*

run 100 ms
examine sim:/dff_tb/*