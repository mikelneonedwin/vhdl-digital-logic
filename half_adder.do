vcom half_adder.vhd
vcom half_adder_tb.vhd

vsim work.half_adder_tb

puts "a b s c"

run 100 ms
examine sim:/half_adder_tb/*

run 100 ms
examine sim:/half_adder_tb/*

run 100 ms
examine sim:/half_adder_tb/*

run 100 ms
examine sim:/half_adder_tb/*
