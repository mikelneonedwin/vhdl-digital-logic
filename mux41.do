vcom mux41.vhd
vcom mux41_tb.vhd

vsim work.mux41_tb

puts "S I Y"

run 100 ms
examine sim:/mux41_tb/*

run 100 ms
examine sim:/mux41_tb/*

run 100 ms
examine sim:/mux41_tb/*

run 100 ms
examine sim:/mux41_tb/*
