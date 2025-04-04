vcom gray2binary.vhd
vcom gray2binary_tb.vhd

vsim work.gray2binary_tb

puts "g b"

run 100 ms
examine sim:/gray2binary_tb/*

run 100 ms
examine sim:/gray2binary_tb/*

run 100 ms
examine sim:/gray2binary_tb/*

run 100 ms
examine sim:/gray2binary_tb/*
