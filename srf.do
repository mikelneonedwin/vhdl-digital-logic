vcom srf.vhd
vcom srf_tb.vhd
vsim work.srf_tb

puts "S R CLK RST Q QB"

run 100 ms
examine sim:/srf_tb/*

run 100 ms
examine sim:/srf_tb/*

run 100 ms
examine sim:/srf_tb/*

run 100 ms
examine sim:/srf_tb/*

run 100 ms
examine sim:/srf_tb/*

run 100 ms
examine sim:/srf_tb/*